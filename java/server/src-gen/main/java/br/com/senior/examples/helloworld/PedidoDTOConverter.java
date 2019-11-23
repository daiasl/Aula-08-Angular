/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import java.util.IdentityHashMap;
import br.com.senior.messaging.customspringdata.CustomDTOConverter;
import br.com.senior.messaging.customspringdata.CustomFieldPermission;
import java.util.stream.Collectors;
import br.com.senior.examples.helloworld.Pedido;
import javax.inject.Inject;
import org.springframework.stereotype.Component;
import org.springframework.context.annotation.Lazy;

@Component
@Lazy
public final class PedidoDTOConverter {
	
	private CustomFieldPermission customFieldPermission;
	private ClienteDTOConverter clienteDTOConverter;
	private ItemDTOConverter itemDTOConverter;
	
	@Inject
	public void setCustomFieldPermission(CustomFieldPermission customFieldPermission) {
		this.customFieldPermission = customFieldPermission;
	}
	
	@Inject
	public void setClienteDTOConverter(ClienteDTOConverter clienteDTOConverter) {
		this.clienteDTOConverter = clienteDTOConverter;
	}
	
	@Inject
	public void setItemDTOConverter(ItemDTOConverter itemDTOConverter) {
		this.itemDTOConverter = itemDTOConverter;
	}
	
	public PedidoEntity toEntity(Pedido dto) {
		return toEntity(dto, new IdentityHashMap<>());
	}
	
	PedidoEntity toEntity(Pedido dto, java.util.Map<Object, Object> converted) {
		if (dto == null) {
			return null;
		}
		PedidoEntity entity = (PedidoEntity) converted.get(dto);
		if (entity != null) {
			return entity;
		}
		entity = new PedidoEntity();
		converted.put(dto, entity);
		return mergeEntity(entity, dto, converted);
	}
	
	public PedidoEntity mergeEntity(PedidoEntity entity, Pedido dto) {
		return mergeEntity(entity, dto, new IdentityHashMap<>());
	}
	
	PedidoEntity mergeEntity(PedidoEntity entity, Pedido dto, java.util.Map<Object, Object> converted) {
		entity.setId(dto.id);
		entity.setData(dto.data);
		entity.setObservacoes(dto.observacoes);
		entity.setCliente(clienteDTOConverter.toEntity(dto.cliente, converted));
		
		entity.setItens(itemDTOConverter.toEntityList(dto.itens, converted));
		entity.setCheckPermission(customFieldPermission);
		CustomDTOConverter.copyCustomFieldsToEntity(dto, entity);
		return entity;
	}
	
	public java.util.List<PedidoEntity> toEntityList(java.util.List<Pedido> dtos) {
		return toEntityList(dtos, new IdentityHashMap<>());
	}
	
	java.util.List<PedidoEntity> toEntityList(java.util.List<Pedido> dtos, java.util.Map<Object, Object> converted) {
		java.util.List<PedidoEntity> entities = null;
		if (dtos != null) {
			entities = dtos.stream().map(dto -> toEntity(dto, converted)).collect(Collectors.toList());
		}	
		return entities;
	}
	
	public Pedido toDTO(PedidoEntity entity) {
		return toDTO(entity, new IdentityHashMap<>());
	}
	
	Pedido toDTO(PedidoEntity entity, java.util.Map<Object, Object> converted) {
		if (entity == null) {
			return null;
		}
		Pedido dto = (Pedido) converted.get(entity);
		if (dto != null) {
			return dto;
		}
        dto = new Pedido();
        converted.put(entity, dto);

		dto.id = entity.getId();
		dto.data = entity.getData();
		dto.observacoes = entity.getObservacoes();
		dto.cliente = clienteDTOConverter.toDTO(entity.getCliente(), converted);
		
		dto.itens = itemDTOConverter.toDTOList(entity.getItens(), converted);
		entity.setCheckPermission(customFieldPermission);
		CustomDTOConverter.copyCustomFieldsToDTO(entity, dto);
        return dto;
    }
    
    public java.util.List<Pedido> toDTOList(java.util.List<PedidoEntity> entities) {
    	return toDTOList(entities, new IdentityHashMap<>());
    }
    
    java.util.List<Pedido> toDTOList(java.util.List<PedidoEntity> entities, java.util.Map<Object, Object> converted) {
    	java.util.List<Pedido> dtos = null;
    	if (entities != null) {
    		dtos = entities.stream().map(entity -> toDTO(entity, converted)).collect(Collectors.toList());
    	}
    	return dtos;
    }
    
}	
