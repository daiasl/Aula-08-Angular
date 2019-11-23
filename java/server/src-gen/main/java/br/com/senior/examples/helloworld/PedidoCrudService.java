/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import java.util.List;

import br.com.senior.examples.helloworld.Pedido.Id;
import br.com.senior.springbatchintegration.importer.CrudService;
import org.springframework.data.domain.Page;

public interface PedidoCrudService extends CrudService<PedidoEntity> {

	public PedidoEntity createPedido(PedidoEntity toCreate);

	public PedidoEntity createMergePedido(PedidoEntity toCreateMerge);

	public PedidoEntity updatePedido(PedidoEntity toUpdate);

	public PedidoEntity updateMergePedido(PedidoEntity toUpdateMerge);

	public void deletePedido(Id id);

	public PedidoEntity retrievePedido(Id id);

	@Deprecated
	public List<PedidoEntity> listPedido(int skip, int top);
	
	public Page<PedidoEntity> listPedidoPageable(int skip, int top);
	
	public Page<PedidoEntity> listPedidoPageable(int skip, int top, String orderBy);

	public void createBulkPedido(List<PedidoEntity> entities);

	public PedidoBaseRepository getRepository();
}
