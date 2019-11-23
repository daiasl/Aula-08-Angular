package br.com.senior.examples.helloworld;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import br.com.senior.examples.helloworld.HelloWorldValidator;

public class ImportPedidoOutput {
    
    public String importJobId;
    
    public ImportPedidoOutput() {
    }
    
    /** 
     * This constructor allows initialization of all fields, required and optional.
     */
    public ImportPedidoOutput(String importJobId) {
        this.importJobId = importJobId;
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
        if (importJobId != null) {
            ret = 31 * ret + importJobId.hashCode();
        }
        return ret;
    }
    
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImportPedidoOutput)) {
            return false;
        }
        ImportPedidoOutput other = (ImportPedidoOutput) obj;
        if ((importJobId == null) != (other.importJobId == null)) {
            return false;
        }
        if ((importJobId != null) && !importJobId.equals(other.importJobId)) {
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
    	sb.append("importJobId=").append(importJobId == null ? "null" : importJobId);
    	sb.append(']');
    }
    
}
