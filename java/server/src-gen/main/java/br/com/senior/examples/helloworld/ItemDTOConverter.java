/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import java.util.IdentityHashMap;
import br.com.senior.messaging.customspringdata.CustomDTOConverter;
import br.com.senior.messaging.customspringdata.CustomFieldPermission;
import java.util.stream.Collectors;
import br.com.senior.examples.helloworld.Item;
import javax.inject.Inject;
import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Lazy;

@Component
@Lazy
public final class ItemDTOConverter {
	
	private CustomFieldPermission customFieldPermission;
	
	@Inject
	public void setCustomFieldPermission(CustomFieldPermission customFieldPermission) {
		this.customFieldPermission = customFieldPermission;
	}
	
	public ItemEntity toEntity(Item dto) {
		return toEntity(dto, new IdentityHashMap<>());
	}
	
	ItemEntity toEntity(Item dto, java.util.Map<Object, Object> converted) {
		if (dto == null) {
			return null;
		}
		ItemEntity entity = (ItemEntity) converted.get(dto);
		if (entity != null) {
			return entity;
		}
		entity = new ItemEntity();
		converted.put(dto, entity);
		return mergeEntity(entity, dto, converted);
	}
	
	public ItemEntity mergeEntity(ItemEntity entity, Item dto) {
		return mergeEntity(entity, dto, new IdentityHashMap<>());
	}
	
	ItemEntity mergeEntity(ItemEntity entity, Item dto, java.util.Map<Object, Object> converted) {
		entity.setId(dto.id);
		entity.setDescricao(dto.descricao);
		entity.setQuantidade(dto.quantidade);
		entity.setValorUnitario(dto.valorUnitario);
		entity.setCheckPermission(customFieldPermission);
		CustomDTOConverter.copyCustomFieldsToEntity(dto, entity);
		return entity;
	}
	
	public java.util.List<ItemEntity> toEntityList(java.util.List<Item> dtos) {
		return toEntityList(dtos, new IdentityHashMap<>());
	}
	
	java.util.List<ItemEntity> toEntityList(java.util.List<Item> dtos, java.util.Map<Object, Object> converted) {
		java.util.List<ItemEntity> entities = null;
		if (dtos != null) {
			entities = dtos.stream().map(dto -> toEntity(dto, converted)).collect(Collectors.toList());
		}	
		return entities;
	}
	
	public Item toDTO(ItemEntity entity) {
		return toDTO(entity, new IdentityHashMap<>());
	}
	
	Item toDTO(ItemEntity entity, java.util.Map<Object, Object> converted) {
		if (entity == null) {
			return null;
		}
		Item dto = (Item) converted.get(entity);
		if (dto != null) {
			return dto;
		}
        dto = new Item();
        converted.put(entity, dto);

		dto.id = entity.getId();
		dto.descricao = entity.getDescricao();
		dto.quantidade = entity.getQuantidade();
		dto.valorUnitario = entity.getValorUnitario();
		entity.setCheckPermission(customFieldPermission);
		CustomDTOConverter.copyCustomFieldsToDTO(entity, dto);
        return dto;
    }
    
    public java.util.List<Item> toDTOList(java.util.List<ItemEntity> entities) {
    	return toDTOList(entities, new IdentityHashMap<>());
    }
    
    java.util.List<Item> toDTOList(java.util.List<ItemEntity> entities, java.util.Map<Object, Object> converted) {
    	java.util.List<Item> dtos = null;
    	if (entities != null) {
    		dtos = entities.stream().map(entity -> toDTO(entity, converted)).collect(Collectors.toList());
    	}
    	return dtos;
    }
    
}	
