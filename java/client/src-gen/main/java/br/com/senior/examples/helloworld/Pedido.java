package br.com.senior.examples.helloworld;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import br.com.senior.messaging.model.EntityDescription;
import br.com.senior.messaging.model.EntityId;
import br.com.senior.messaging.customspringdata.CustomDTO;

/**
 * Pedido
 */
@EntityDescription
public class Pedido extends CustomDTO {
    
    public static class Id {
    	
        public String id;
        
        public Id() {
        }
        
        public Id(String pedidoId) {
            this.id = pedidoId;
        }
        
        public String getPedidoId() {
            return id;
        }
        
        public String getId() {
            return id;
        }
        
    	public void normalize(Map<String, Object> headers) {
    		HelloWorldNormalizer.normalize(this, headers);
    	}
    	
    }
    
    public static class PagedResults {
    	public Long totalPages;
    	public Long totalElements;
    	
        public List<Pedido> contents;
        
        public PagedResults() {
        }
        
        public PagedResults(List<Pedido> contents) {
            this.contents = contents;
        }
        
        public PagedResults(List<Pedido> contents, Long totalPages, Long totalElements) {
            this.contents = contents;
            this.totalPages = totalPages;
            this.totalElements = totalElements;
        }
    }
    
    public static class PageRequest {
        public Long offset;
        public Long size;
        public boolean translations;
        public String orderBy;
        public String filter;
        public List<String> displayFields;
        
        public PageRequest() {
        }
        
        public PageRequest(Long offset, Long size) {
            this(offset, size, null, null);
        }
        
        public PageRequest(Long offset, Long size, String orderBy) {
            this(offset, size, orderBy, null);
        }
        
        public PageRequest(Long offset, Long size, String orderBy, String filter) {
            this(offset, size, orderBy, filter, null);
       	}
        
        public PageRequest(Long offset, Long size, String orderBy, String filter, List<String> displayFields) {
            this.offset = offset;
        	this.size = size;
        	this.orderBy = orderBy;
        	this.filter = filter;
        	this.displayFields = displayFields;
        }
    }

    @EntityId
    /**
     * Chave primaria
     */
    public String id;
    /**
     * Data do pedido
     */
    public java.time.LocalDate data;
    /**
     * Observações do pedido
     */
    public String observacoes;
    /**
     * Cliente do pedido
     */
    public Cliente cliente;
    /**
     * Itens do pedido
     */
    public java.util.List<Item> itens;
    
    public Pedido() {
    }
    
    /** 
     * This constructor allows initialization of all fields, required and optional.
     */
    public Pedido(String id, java.time.LocalDate data, String observacoes, Cliente cliente, java.util.List<Item> itens) {
        this.id = id;
        this.data = data;
        this.observacoes = observacoes;
        this.cliente = cliente;
        this.itens = itens;
    }
    /** 
     * This convenience constructor allows initialization of all required fields.
     */
    public Pedido(java.time.LocalDate data, Cliente cliente, java.util.List<Item> itens) {
        this.data = data;
        this.cliente = cliente;
        this.itens = itens;
    }
    
    public void normalize(Map<String, Object> headers) {
    	HelloWorldNormalizer.normalize(this, headers);
    }
    
    public void validate() {
    	validate(true);
    }
    
    public void validate(boolean required) {
    	validate(null, true);
    }
    
    public void validate(Map<String, Object> headers, boolean required) {
    	validate(headers, required, new ArrayList<>());
    }
    
    void validate(Map<String, Object> headers, boolean required, List<Object> validated) {
    	HelloWorldValidator.validate(this, headers, required, validated);
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
        if (!(obj instanceof Pedido)) {
            return false;
        }
        Pedido other = (Pedido) obj;
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
    	sb.append('>').append(", ");
    	sb.append("custom=").append(getCustom());
    	sb.append(']');
    }
    
}
