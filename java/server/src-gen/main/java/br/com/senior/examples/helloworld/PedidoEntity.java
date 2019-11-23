/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.senior.messaging.customspringdata.CustomEntity;
import br.com.senior.customspringodata.ODataEntity;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.OneToMany;
import javax.persistence.JoinTable;

@Entity
@ODataEntity(id = "pedido")
@Table(name="pedido")
public class PedidoEntity extends CustomEntity {
	private static final long serialVersionUID = 1L;

	/**
	 * Chave primaria
	 */
	@Id
	@Column(name = "id")
	private String id;
	
	/**
	 * Data do pedido
	 */
	@Column(name = "data")
	private java.time.LocalDate data;
	
	/**
	 * Observações do pedido
	 */
	@Column(name = "observacoes")
	private String observacoes;
	
	/**
	 * Cliente do pedido
	 */
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "cliente")
	private ClienteEntity cliente;
	
	/**
	 * Itens do pedido
	 */
	@OneToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "pedido_itens",
	          joinColumns = @JoinColumn(name = "pedido_id", referencedColumnName = "id"),
	          inverseJoinColumns = @JoinColumn(name = "itens_id", referencedColumnName = "id"))
	private java.util.List<ItemEntity> itens;
	
	@Override
	public String getPk() {
		return this.id;
	}
	
	@Override
	public String getServiceEntityName() {
		return "pedido";
	}
	
	public String getId() {
		return this.id;
	}
	
	public java.time.LocalDate getData() {
		return this.data;
	}
	
	public String getObservacoes() {
		return this.observacoes;
	}
	
	public ClienteEntity getCliente() {
		return this.cliente;
	}
	
	public java.util.List<ItemEntity> getItens() {
		return this.itens;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setData(java.time.LocalDate data) {
		this.data = data;
	}
	
	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}
	
	public void setCliente(ClienteEntity cliente) {
		this.cliente = cliente;
	}
	
	public void setItens(java.util.List<ItemEntity> itens) {
		this.itens = itens;
	}
	
	@Override
	public int hashCode() {
	    int ret = 1;
	    if (id != null) {
	        ret = 31 * ret + id.hashCode();
	    }
	    return ret;
	}
	
	@Override
	public boolean equals(Object obj) {
	    if (this == obj) {
	        return true;
	    }
	    if (!(obj instanceof PedidoEntity)) {
	        return false;
	    }
	    PedidoEntity other = (PedidoEntity) obj;
	    if (id == null) {
	        return false;
	    }
	    if ((id != null) && !id.equals(other.id)) {
	        return false;
	    }
	    return true;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		toString(sb, new ArrayList<>());
		return sb.toString();
	}
	
	void toString(StringBuilder sb, List<Object> appended) {
		sb.append(getClass().getSimpleName()).append(" [");
		if (appended.contains(this)) {
			sb.append("<Previously appended object>").append(']');
			return;
		}
		appended.add(this);
		sb.append("id=").append(id == null ? "null" : id).append(", ");
		sb.append("data=").append(data == null ? "null" : data).append(", ");
		sb.append("observacoes=").append(observacoes == null ? "null" : observacoes).append(", ");
		sb.append("cliente=<");
		if (cliente == null) {
			sb.append("null");
		} else {
			cliente.toString(sb, appended);
		}
		sb.append('>').append(", ");
		sb.append("itens=<");
		if (itens == null) {
			sb.append("null");
		} else {
			sb.append('[');
			int last = itens.size() - 1;
			for (int i = 0; i <= last; i++) {
				itens.get(i).toString(sb, appended);
				if (i < last) {
					sb.append(", ");
				}
			}
			sb.append(']');
		}
		sb.append('>');
		sb.append(']');
	}
	
}
