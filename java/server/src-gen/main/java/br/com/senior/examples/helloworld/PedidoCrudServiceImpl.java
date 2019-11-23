/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import java.util.List;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import br.com.senior.messaging.springdata.EntityMergeUtil;
import br.com.senior.examples.helloworld.Pedido.Id;
import org.springframework.data.domain.Page;
import java.util.ArrayList;
import br.com.senior.messaging.customspringdata.CustomOrder;

@Service
public class PedidoCrudServiceImpl implements PedidoCrudService {

	@Inject
	private PedidoBaseRepository repository;

	@Override
	public PedidoBaseRepository getRepository() {
		return repository;
	}

	@Override
	@Transactional
	public PedidoEntity create(PedidoEntity entity) {
		return this.repository.save(entity);
	}

	@Override
	@Transactional
	public PedidoEntity createPedido(PedidoEntity entity) {
		return create(entity);
	}

	@Override
	@Transactional
	public PedidoEntity createMergePedido(PedidoEntity entity) {
		return create(entity);
	}

	@Override
	@Transactional
	public PedidoEntity updatePedido(PedidoEntity entity) {
		return repository.save(entity);
	}

	@Override
	@Transactional
	public PedidoEntity updateMergePedido(PedidoEntity entity) {
		PedidoEntity current = this.repository.findById(entity.getId()).orElse(null);
		EntityMergeUtil.doMerge(current, entity);
		return repository.save(current);
	}

	@Override
	@Transactional
	public void deletePedido(Id id) {
	    repository.deleteById(id.id);
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public PedidoEntity retrievePedido(Id id) {
	    return this.repository.findById(id.id).orElse(null);
	}

	@Override
	@Deprecated
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
	public List<PedidoEntity> listPedido(int skip, int top) {
		List<PedidoEntity> entities = this.repository.findAll(null, null, null, skip, top);
		return entities;
	}
	
	@Override
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
	public Page<PedidoEntity> listPedidoPageable(int skip, int top) {
		return this.listPedidoPageable(skip, top, null);
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
	public Page<PedidoEntity> listPedidoPageable(int skip, int top, String orderBy) {
		int page = skip * top; //zero-based page index.
		int size = top > 0 ? top : 10; //the size of the page to be returned.
		List<CustomOrder> customOrder = new ArrayList<>();
		if (orderBy != null && !orderBy.trim().isEmpty()) {
			String[] ordersby = orderBy.split(",");
			for (String orderby : ordersby) {
				String[] orderparts = orderby.trim().split("\\s+");
				boolean desc = orderparts.length > 1 && orderparts[1].toUpperCase().equals("DESC");
				CustomOrder co = new CustomOrder(orderparts[0]);
				co.setDesc(desc);
				customOrder.add(co);
			}
		}
		Page<PedidoEntity> requestedPage = this.repository.findAllPageable(null, null, customOrder, page, size);
		return requestedPage;
	}

	@Override
	public void createBulk(List<PedidoEntity> entities) {
		if (entities != null && !entities.isEmpty()) {
			this.repository.saveAll(entities);
		}
	}

	@Override
	public void createBulkPedido(List<PedidoEntity> entities) {
		this.createBulk(entities);
	}
}
