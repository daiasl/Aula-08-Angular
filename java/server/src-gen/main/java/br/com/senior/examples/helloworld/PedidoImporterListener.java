/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.ServiceContext;
import br.com.senior.messaging.model.ServiceRunner;
import br.com.senior.examples.helloworld.HelloWorldConstants;
import br.com.senior.examples.helloworld.EventType;
import br.com.senior.examples.helloworld.ImportPedidoEventPayload;
import br.com.senior.examples.helloworld.ImportEventStatus;
import br.com.senior.examples.helloworld.Status;
import br.com.senior.examples.helloworld.ReportLogConverter;

import br.com.senior.springbatchintegration.importer.ImporterListener;
import br.com.senior.springbatchintegration.model.BatchLog;
import br.com.senior.springbatchintegration.model.ImportLog;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PedidoImporterListener implements ImporterListener {
	
	private static final Logger logger = LoggerFactory.getLogger(PedidoImporterListener.class);

    @Override
    public void chunck(String id, int recordCount) {
        ImportEventStatus stat = new ImportEventStatus(id, EventType.CHUNK, Status.RUNNING, Long.valueOf(recordCount));
        publishEventStatus(stat);
    }

    @Override
    public void download(String id) {
        ImportEventStatus stat = new ImportEventStatus(id, EventType.DOWNLOAD, Status.DOWNLOADING, Long.valueOf(0));
        publishEventStatus(stat);
    }

    @Override
    public void error(String id, String message, int recordCount, BatchLog log) {
        ImportEventStatus stat = new ImportEventStatus(id, EventType.ERROR, Status.ERROR, Long.valueOf(recordCount));
        stat.errorMessage = message;
        
        stat.importReport = ReportLogConverter.toDTO((ImportLog) log, id);
        publishEventStatus(stat);
    }

    @Override
    public void finish(String id, int recordCount, br.com.senior.springbatchintegration.control.Status status, BatchLog log){
        ImportEventStatus stat = new ImportEventStatus(id, EventType.FINISH, Status.valueOf(status.name()), Long.valueOf(recordCount));
        
        stat.importReport = ReportLogConverter.toDTO((ImportLog) log, id);
        publishEventStatus(stat);
    }

    @Override
    public void start(String id) {
        ImportEventStatus stat = new ImportEventStatus(id, EventType.START, Status.RUNNING, Long.valueOf(0));
        publishEventStatus(stat);
    }
    
    @SuppressWarnings("static-method")		    
	private void publishEventStatus(ImportEventStatus status) {
		ServiceRunner runner = getServiceRunner();
		if (runner != null) {
			runner.publish(ServiceContext.get().getCurrentTenant(),  HelloWorldConstants.Events.IMPORT_PEDIDO_EVENT, new ImportPedidoEventPayload(status));
		}
	}
        
	private ServiceRunner getServiceRunner() {
		ServiceRunner runner = ServiceContext.get().getServiceRunner(HelloWorldConstants.DOMAIN, HelloWorldConstants.SERVICE);
		if (runner == null) {
			logger.warn("Cannot get service runner for domain: " + HelloWorldConstants.DOMAIN + " and service: " + HelloWorldConstants.SERVICE);
		}
		return runner;
	}
}
