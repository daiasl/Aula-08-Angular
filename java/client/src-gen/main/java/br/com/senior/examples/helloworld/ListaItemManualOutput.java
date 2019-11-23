package br.com.senior.examples.helloworld;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import br.com.senior.examples.helloworld.HelloWorldValidator;

public class ListaItemManualOutput {
    
    public java.util.List<Item> listItens;
    
    public ListaItemManualOutput() {
    }
    
    /** 
     * This constructor allows initialization of all fields, required and optional.
     */
    public ListaItemManualOutput(java.util.List<Item> listItens) {
        this.listItens = listItens;
    }
    
    public void validate() {
        validate(true);
    }
    
    public void validate(boolean required) {
        validate(null, required);
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
        if (listItens != null) {
            ret = 31 * ret + listItens.hashCode();
        }
        return ret;
    }
    
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ListaItemManualOutput)) {
            return false;
        }
        ListaItemManualOutput other = (ListaItemManualOutput) obj;
        if ((listItens == null) != (other.listItens == null)) {
            return false;
        }
        if ((listItens != null) && !listItens.equals(other.listItens)) {
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
    	sb.append("listItens=<");
    	if (listItens == null) {
    		sb.append("null");
    	} else {
    		sb.append('[');
    		int last = listItens.size() - 1;
    		for (int i = 0; i <= last; i++) {
    			listItens.get(i).toString(sb, appended);
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
