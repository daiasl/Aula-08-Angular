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
import br.com.senior.examples.helloworld.Item.Id;
import org.springframework.data.domain.Page;
import java.util.ArrayList;
import br.com.senior.messaging.customspringdata.CustomOrder;

@Service
public class ItemCrudServiceImpl implements ItemCrudService {

	@Inject
	private ItemBaseRepository repository;

	@Override
	public ItemBaseRepository getRepository() {
		return repository;
	}

	@Override
	@Transactional
	public ItemEntity create(ItemEntity entity) {
		return this.repository.save(entity);
	}

	@Override
	@Transactional
	public ItemEntity createItem(ItemEntity entity) {
		return create(entity);
	}

	@Override
	@Transactional
	public ItemEntity createMergeItem(ItemEntity entity) {
		return create(entity);
	}

	@Override
	@Transactional
	public ItemEntity updateItem(ItemEntity entity) {
		return repository.save(entity);
	}

	@Override
	@Transactional
	public ItemEntity updateMergeItem(ItemEntity entity) {
		ItemEntity current = this.repository.findById(entity.getId()).orElse(null);
		EntityMergeUtil.doMerge(current, entity);
		return repository.save(current);
	}

	@Override
	@Transactional
	public void deleteItem(Id id) {
	    repository.deleteById(id.id);
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public ItemEntity retrieveItem(Id id) {
	    return this.repository.findById(id.id).orElse(null);
	}

	@Override
	@Deprecated
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
	public List<ItemEntity> listItem(int skip, int top) {
		List<ItemEntity> entities = this.repository.findAll(null, null, null, skip, top);
		return entities;
	}
	
	@Override
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
	public Page<ItemEntity> listItemPageable(int skip, int top) {
		return this.listItemPageable(skip, top, null);
	}

	@Override
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
	public Page<ItemEntity> listItemPageable(int skip, int top, String orderBy) {
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
		Page<ItemEntity> requestedPage = this.repository.findAllPageable(null, null, customOrder, page, size);
		return requestedPage;
	}

	@Override
	public void createBulk(List<ItemEntity> entities) {
		if (entities != null && !entities.isEmpty()) {
			this.repository.saveAll(entities);
		}
	}

	@Override
	public void createBulkItem(List<ItemEntity> entities) {
		this.createBulk(entities);
	}
}
