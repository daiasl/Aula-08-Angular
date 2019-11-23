/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.persistence.Id;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import br.com.senior.customspringodata.Metadata;
import br.com.senior.customspringodata.MetadataService;
import br.com.senior.customspringodata.ODataEntity;
import br.com.senior.messaging.Message;
import br.com.senior.messaging.customspringdata.CustomEntity;
import br.com.senior.messaging.model.Service;
import br.com.senior.messaging.model.ServiceContext;
import br.com.senior.messaging.model.ServiceRunner;
import br.com.senior.messaging.utils.DtoJsonConverter;
import br.com.senior.platform.fieldcustomization.EntityDef;
import br.com.senior.platform.fieldcustomization.FieldCustomizationConstants;
import br.com.senior.platform.fieldcustomization.FieldDef;
import br.com.senior.platform.fieldcustomization.FieldTypeDef;
import br.com.senior.platform.fieldcustomization.GetFieldCustomizationsMetadataInput;
import br.com.senior.platform.fieldcustomization.GetFieldCustomizationsMetadataOutput;
import br.com.senior.platform.fieldcustomization.ServiceIdDef;
import br.com.senior.platform.translationhub.api.TranslationHubApi;

@Component("examples.hello_world.MetadataServiceImpl")
public class MetadataServiceImpl implements MetadataService, Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private static final Logger log = LoggerFactory.getLogger(MetadataServiceImpl.class);
    
    private static final String CUSTOM_DOMAIN = "custom";
    private static final String CUSTOM_SERVICE_FMT = "entity_%s_%s_%s";
    private static final String LABEL_FMT = "%s.%s.%s_label";
    private static final String TOOLTIP_FMT = "%s.%s.%s_tooltip";
    
    private Map<String, Map<String, EntityDef>> cache; //Multi-tenant support
    protected List<Class<? extends CustomEntity>> entityClasses;
    @Inject
    private TranslationHubApi thApi;

	public MetadataServiceImpl() {
		cache = new HashMap<>();
    	loadEntityClasses();    	
    }

    @Override
    public List<Metadata> getMetadata(String entity) {
        this.loadCache();
        if (log.isDebugEnabled()) {
            log.debug("getting metadata for " + entity);
        }
        
        ServiceContext serviceContext = ServiceContext.get();
        Service service = serviceContext.getCurrentService();
        String serviceName = String.format(CUSTOM_SERVICE_FMT, service.getDomain(), service.getName(), entity);
        List<Metadata> metadataList = new ArrayList<>();
        Map<String, EntityDef> tenantCache = cache.get(serviceContext.getCurrentTenant());
        EntityDef entityDef = tenantCache.get(entity);
        int sequence = 1;
        for (FieldDef fieldDef : entityDef.fields) {
            Metadata metadata = new Metadata();
            metadataList.add(metadata);
            metadata.setCustom(fieldDef.customizable);
            metadata.setEntity(entity);
            metadata.setField(fieldDef.id);
            metadata.setKey(fieldDef.key);
            metadata.setNullable(Boolean.TRUE);
            metadata.setSequence(sequence++);
            metadata.setType(toOdataType(fieldDef.type));
            if (metadata.isCustom()) {
            	String key = String.format(LABEL_FMT, CUSTOM_DOMAIN, serviceName, fieldDef.id);
            	metadata.setLabel(thApi.getString(CUSTOM_DOMAIN, serviceName, key, fieldDef.customization.label));
                metadata.setMask(fieldDef.customization.mask);
                metadata.setRegex(fieldDef.customization.validationRegex);
                key = String.format(TOOLTIP_FMT, CUSTOM_DOMAIN, serviceName, fieldDef.id);
                metadata.setTooltip(thApi.getString(CUSTOM_DOMAIN, serviceName, key, fieldDef.customization.tooltip));
            }
        }
        return metadataList;
    }
    
    @Override
    public List<String> getEntities() {
		this.loadCache();
		List<String> ret = new ArrayList<>();
		ServiceContext serviceContext = ServiceContext.get();
		Map<String, EntityDef> tenantCache = cache.get(serviceContext.getCurrentTenant());
		ret.addAll(tenantCache.keySet());
		return ret;
    }
	
    @Override
    public Class<? extends CustomEntity> getEntityClass(String entity) {
        String aux = entity.toLowerCase();
        Class<? extends CustomEntity> entityClass = null;
        this.loadCache();
        if (log.isDebugEnabled()) {
            log.debug("getting entity class for " + entity);
        }
        for (Class<? extends CustomEntity> clazz : this.entityClasses) {
            if (clazz.isAnnotationPresent(ODataEntity.class)) {
                ODataEntity ode = clazz.getDeclaredAnnotation(ODataEntity.class);
                if (ode.id().toLowerCase().equals(aux)) {
                    entityClass = clazz;
                    break;
                }
            } else if (clazz.getSimpleName().toLowerCase().equals(aux)) {
                entityClass = clazz;
                break;
            }
        }
        return entityClass;
    }
	
    @Override
    public synchronized void cleanCache() {
        log.debug("Cleanning entities cache for tenant");
        ServiceContext serviceContext = ServiceContext.get();
        this.cache.remove(serviceContext.getCurrentTenant());
    }
    
	@Override
	public String getPkField(Class<? extends CustomEntity> clazz) {
	    if (log.isDebugEnabled()) {
	        log.debug("Getting pkField for " + clazz.getName());
	    }
	    String ret = null;
	    List<Field> fields = new ArrayList<>();
	    this.getFields(fields, clazz);
	    for (Field field : fields) {
	        if (field.isAnnotationPresent(Id.class)) {
	            ret = field.getName();
	            break;
	        }
	    }
	    return ret;
	}
	
	@Override
	public String getPkField(String entity) {
	    Class<? extends CustomEntity> clazz = this.getEntityClass(entity);
	    return this.getPkField(clazz);
	}
	
	@Override
	public String getReferenceField(String startEntity, String targetEntity) {
	    String ret = null;
	    List<Metadata> metas = this.getMetadata(startEntity);
	    for (Metadata meta : metas) {
	        if (meta.getType().equals("reference") && meta.getEntity().equals(targetEntity)) {
	            ret = meta.getField();
	        }
	    }
	    return ret;
	}
	
	private void getFields(List<Field> fields, Class<?> clazz) {
	    if (clazz != null) {
	        Field[] ff = clazz.getDeclaredFields();
	        for (Field f : ff) {
	            fields.add(f);
	        }
	        this.getFields(fields, clazz.getSuperclass());
	    }
	}

    private synchronized void loadCache() {
        ServiceContext serviceContext = ServiceContext.get();
		if (!cache.containsKey(serviceContext.getCurrentTenant())) {
		    if (log.isDebugEnabled()) {
		        log.debug("Loading entities cache for tenant " + serviceContext.getCurrentTenant());
		    }
		    Service service = serviceContext.getCurrentService();
		    ServiceRunner serviceRunner = serviceContext.getRunnerFor(service);
		
		    GetFieldCustomizationsMetadataInput input = new GetFieldCustomizationsMetadataInput(
		            new ServiceIdDef(service.getDomain(), service.getName()));
		
		    Message message = new Message(serviceContext.getCurrentTenant(), FieldCustomizationConstants.DOMAIN,
		            FieldCustomizationConstants.SERVICE,
		            FieldCustomizationConstants.Commands.GET_FIELD_CUSTOMIZATIONS_METADATA,
		            DtoJsonConverter.toJSON(input));
		    message.setUsername(serviceContext.getCurrentUsername());
		
		    try {
		    	Message response = serviceRunner.requestSync(message, 30000);
				GetFieldCustomizationsMetadataOutput output = DtoJsonConverter.toDTO(
		        	response.getContent(), GetFieldCustomizationsMetadataOutput.class);
				
				int size = output.entities_ != null ? output.entities_.size() : 0;
				Map<String, EntityDef> tenantCache = new HashMap<>(size);
		    	if (size > 0) {
		    		for (EntityDef entityDef : output.entities_) {
			    		tenantCache.put(entityDef.id, entityDef);
			    	}
		    	}
		    	else {
		    		log.warn("No metadata was loaded from Field Customization for tenant:" + serviceContext.getCurrentTenant());
		    	}
		    	cache.put(serviceContext.getCurrentTenant(), tenantCache);
			}
			catch(Exception e) {
				log.error("Error loading metadata from Field Customization.", e);
			}
		}
    }

    private static String toOdataType(FieldTypeDef type) {
        if (type != null) {
            switch (type) {
                case Any:
                    break;
                case Binary:
                    break;
                case Blob:
                    break;
                case Boolean:
                    return "boolean";
                case Date:
                    return "date";
                case DateTime:
                    return "datetime";
                case Double:
                    return "double";
                case Integer:
                    return "int";
                case Money:
                    return "money";
                case String:
                    return "string";
                case Time:
                    return "time";
                    
                default: break;
            }
        }
        return null;
    }
    
   /**
    * Load all active custom entities defined in the SDL service.
    */
	private void internalLoadEntityClasses() {
		if (entityClasses == null) {
			entityClasses = new ArrayList<>();
		}
		entityClasses.add(ClienteEntity.class);
		entityClasses.add(ItemEntity.class);
		entityClasses.add(PedidoEntity.class);
	}
	
   /**
	* The user can override this method and add his own custom entity classes. 
	* It is a good idea call super.loadEntityClasses() after, to load SDL active custom entities too.
	*/
	protected void loadEntityClasses() {
    	internalLoadEntityClasses();
	}
}

