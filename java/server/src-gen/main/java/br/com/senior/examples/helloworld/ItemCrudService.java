/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import java.util.List;

import br.com.senior.examples.helloworld.Item.Id;
import br.com.senior.springbatchintegration.importer.CrudService;
import org.springframework.data.domain.Page;

public interface ItemCrudService extends CrudService<ItemEntity> {

	public ItemEntity createItem(ItemEntity toCreate);

	public ItemEntity createMergeItem(ItemEntity toCreateMerge);

	public ItemEntity updateItem(ItemEntity toUpdate);

	public ItemEntity updateMergeItem(ItemEntity toUpdateMerge);

	public void deleteItem(Id id);

	public ItemEntity retrieveItem(Id id);

	@Deprecated
	public List<ItemEntity> listItem(int skip, int top);
	
	public Page<ItemEntity> listItemPageable(int skip, int top);
	
	public Page<ItemEntity> listItemPageable(int skip, int top, String orderBy);

	public void createBulkItem(List<ItemEntity> entities);

	public ItemBaseRepository getRepository();
}
