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

@Entity
@ODataEntity(id = "item")
@Table(name="item")
public class ItemEntity extends CustomEntity {
	private static final long serialVersionUID = 1L;

	/**
	 * Chave primária
	 */
	@Id
	@Column(name = "id")
	private String id;
	
	/**
	 * descrição
	 */
	@Column(name = "descricao")
	private String descricao;
	
	/**
	 * quantidade
	 */
	@Column(name = "quantidade")
	private Double quantidade;
	
	/**
	 * valor unitário
	 */
	@Column(name = "valor_unitario")
	private Double valorUnitario;
	
	@Override
	public String getPk() {
		return this.id;
	}
	
	@Override
	public String getServiceEntityName() {
		return "item";
	}
	
	public String getId() {
		return this.id;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
	
	public Double getQuantidade() {
		return this.quantidade;
	}
	
	public Double getValorUnitario() {
		return this.valorUnitario;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public void setQuantidade(Double quantidade) {
		this.quantidade = quantidade;
	}
	
	public void setValorUnitario(Double valorUnitario) {
		this.valorUnitario = valorUnitario;
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
	    if (!(obj instanceof ItemEntity)) {
	        return false;
	    }
	    ItemEntity other = (ItemEntity) obj;
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
		sb.append("descricao=").append(descricao == null ? "null" : descricao).append(", ");
		sb.append("quantidade=").append(quantidade == null ? "null" : quantidade).append(", ");
		sb.append("valorUnitario=").append(valorUnitario == null ? "null" : valorUnitario);
		sb.append(']');
	}
	
}
