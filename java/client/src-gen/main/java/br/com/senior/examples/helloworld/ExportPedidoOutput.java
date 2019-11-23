package br.com.senior.examples.helloworld;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import br.com.senior.examples.helloworld.HelloWorldValidator;

public class ExportPedidoOutput {
    
    public String exportJobId;
    
    public ExportPedidoOutput() {
    }
    
    /** 
     * This constructor allows initialization of all fields, required and optional.
     */
    public ExportPedidoOutput(String exportJobId) {
        this.exportJobId = exportJobId;
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
        if (exportJobId != null) {
            ret = 31 * ret + exportJobId.hashCode();
        }
        return ret;
    }
    
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExportPedidoOutput)) {
            return false;
        }
        ExportPedidoOutput other = (ExportPedidoOutput) obj;
        if ((exportJobId == null) != (other.exportJobId == null)) {
            return false;
        }
        if ((exportJobId != null) && !exportJobId.equals(other.exportJobId)) {
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
    	sb.append("exportJobId=").append(exportJobId == null ? "null" : exportJobId);
    	sb.append(']');
    }
    
}
