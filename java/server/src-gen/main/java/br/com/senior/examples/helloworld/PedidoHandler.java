/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import javax.inject.Inject;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.scheduling.annotation.Async;
import org.springframework.transaction.annotation.Transactional;
import br.com.senior.examples.helloworld.Pedido;
import br.com.senior.examples.helloworld.Pedido.Id;
import br.com.senior.examples.helloworld.Pedido.PageRequest;
import br.com.senior.examples.helloworld.Pedido.PagedResults;
import br.com.senior.examples.helloworld.HelloWorldConstants;
import br.com.senior.examples.helloworld.CreatePedido;
import br.com.senior.examples.helloworld.UpdatePedido;
import br.com.senior.examples.helloworld.DeletePedido;
import br.com.senior.examples.helloworld.RetrievePedido;
import br.com.senior.examples.helloworld.ListPedido;
import br.com.senior.examples.helloworld.ImportConfig;
import br.com.senior.examples.helloworld.LayoutDTOConverter;
import br.com.senior.examples.helloworld.ImportPedidoInput;
import br.com.senior.examples.helloworld.ImportPedidoOutput;
import br.com.senior.examples.helloworld.ExportPedidoInput;
import br.com.senior.examples.helloworld.ExportPedidoOutput;
import br.com.senior.messaging.ErrorCategory;
import br.com.senior.messaging.model.HandlerImpl;
import br.com.senior.messaging.model.ServiceException;
import br.com.senior.springbatchintegration.control.BatchIntegrationController;
import br.com.senior.springbatchintegration.importer.Importer;
import br.com.senior.springbatchintegration.importer.ImporterException;
import br.com.senior.springbatchintegration.model.Layout;
import java.util.stream.Collectors;
import br.com.senior.examples.helloworld.PedidoDTOConverter;

@HandlerImpl(serviceClass = HelloWorldConstants.class)
public class PedidoHandler implements CreatePedido, UpdatePedido, DeletePedido, RetrievePedido,
		ListPedido, CreateBulkPedido, ImportPedido, ExportPedido, CreateMergePedido,
		UpdateMergePedido	{
	static final Logger logger = LoggerFactory.getLogger(PedidoHandler.class);

	@Inject
	PedidoCrudService service;
	
	@Inject
	PedidoDTOConverter dtoConverter;
	
	@Override
	public Pedido createPedido(Pedido toCreate) {
		try {
			HelloWorldValidator.validate(toCreate);
			PedidoEntity entity = service.createPedido(dtoConverter.toEntity(toCreate));
			return dtoConverter.toDTO(entity);
			
		} catch (ServiceException | IllegalArgumentException e) {
			logger.error(e.getMessage(), e);
			throw e;
			
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			throw new ServiceException(ErrorCategory.INTERNAL_ERROR, "An internal error occurred: "
					+ e.getClass().getSimpleName() + ". Please check the request parameters and try again.", e);
		}
	}

	@Override
	public Pedido createMergePedido(Pedido toCreate) {
		try {
			HelloWorldValidator.validate(toCreate, false);
			PedidoEntity entity = service.createMergePedido(dtoConverter.toEntity(toCreate));
			return dtoConverter.toDTO(entity);
			
		} catch (ServiceException | IllegalArgumentException e) {
			logger.error(e.getMessage(), e);
			throw e;
			
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			throw new ServiceException(ErrorCategory.INTERNAL_ERROR, "An internal error occurred: "
					+ e.getClass().getSimpleName() + ". Please check the request parameters and try again.", e);
		}
	}
	
	@Override
	public Pedido updatePedido(Pedido toUpdate) {
		try {
			HelloWorldValidator.validate(toUpdate);
			PedidoEntity modified = doUpdate(toUpdate);
			return dtoConverter.toDTO(modified);
			
		} catch (ServiceException | IllegalArgumentException e) {
			logger.error(e.getMessage(), e);
			throw e;
			
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			throw new ServiceException(ErrorCategory.INTERNAL_ERROR, "An internal error occurred: "
					+ e.getClass().getSimpleName() + ". Please check the request parameters and try again.", e);
		}
	}
	
	@Override
	public Pedido updateMergePedido(Pedido toUpdate) {
		try {
			HelloWorldValidator.validate(toUpdate, false);
			PedidoEntity entity = dtoConverter.toEntity(toUpdate);
			entity = service.updateMergePedido(entity);
			return dtoConverter.toDTO(entity);
			
		} catch (ServiceException | IllegalArgumentException e) {
			logger.error(e.getMessage(), e);
			throw e;
			
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			throw new ServiceException(ErrorCategory.INTERNAL_ERROR, "An internal error occurred: "
					+ e.getClass().getSimpleName() + ". Please check the request parameters and try again.", e);
		}
	}
	
	private PedidoEntity doUpdate(Pedido toUpdate) {
		PedidoEntity entity = service.getRepository().findById(toUpdate.id).orElse(null);
		dtoConverter.mergeEntity(entity, toUpdate);
		return doUpdate(entity);
	}
	
	private PedidoEntity doUpdate(PedidoEntity entity) {
		return service.updatePedido(entity);
	}
	
	@Override
	public void deletePedido(Id id) {
		this.service.deletePedido(id);
	}

	@Override
	public Pedido retrievePedido(Id id) {
		PedidoEntity entity = service.retrievePedido(id);
		return dtoConverter.toDTO(entity);
	}

	@Override
	public PagedResults listPedido(PageRequest pageRequest) {
		int skip = pageRequest.offset != null ? pageRequest.offset.intValue() : 0;
		int top = pageRequest.size != null ? pageRequest.size.intValue() : 0;
		String orderBy = pageRequest.orderBy;
		Page<PedidoEntity> pages = this.service.listPedidoPageable(skip, top, orderBy);
		List<PedidoEntity> entities = pages.getContent();
		List<Pedido> dtos = null;

		dtos = entities != null ? entities.stream().map(e -> dtoConverter.toDTO(e)).collect(Collectors.toList()) : null;
		return new PagedResults(dtos, Long.valueOf(pages.getTotalPages()), Long.valueOf(pages.getTotalElements()));
	}

	@Override
	@Transactional
	public CreateBulkPedidoOutput createBulkPedido(CreateBulkPedidoInput toCreate) {
		if (toCreate != null) {
			List<Pedido> entitiesToCreate = toCreate.entities;
			if (entitiesToCreate != null && !entitiesToCreate.isEmpty()) {
				entitiesToCreate.forEach(bean -> bean.validate());

				List<PedidoEntity> entities = entitiesToCreate.stream().map(bean -> dtoConverter.toEntity(bean))
						.collect(Collectors.toList());
				this.service.createBulk(entities);
			}
		}
		return new CreateBulkPedidoOutput();
	}

	@Override
	@Transactional
	public ImportPedidoOutput importPedido(ImportPedidoInput request) {
		Importer importer = BatchIntegrationController.getInstance().newImporter();
		StartImportProcess startImportProcess = new StartImportProcess(importer, request.config);
		startImportProcess.start();
		ImportPedidoOutput output = new ImportPedidoOutput(importer.getId());
		return output;
	}

	@Override
	@Transactional
	public ExportPedidoOutput exportPedido(ExportPedidoInput request) {
		/*
		 * **** Not implemented yet **** ExporterControl control =
		 * ExporterControl.getInstance(); Exporter exporter =
		 * control.newExporter(); StartExportProcess startExportProcess = new
		 * StartExportProcess(exporter, request.config);
		 * startExportProcess.start();
		 */
		ExportPedidoOutput output = new ExportPedidoOutput(
				null /* exporter.getId() */);
		return output;
	}

	class StartImportProcess extends Thread {

		private Importer importer;
		private ImportConfig config;

		StartImportProcess(Importer importer, ImportConfig config) {
			this.importer = importer;
			this.importer.addListener(new PedidoImporterListener());
			this.config = config;
			this.importer.logUri(this.config.uri);
		}

		@Async
		@Override
		public void run() {
			File blob = getBlobFile();
			try {
				Layout layout = LayoutDTOConverter.dtoToLayout(config.layout);
				try (FileReader reader = new FileReader(blob)) {
					importer.setReader(reader);
					importer.setLayout(layout);
					importer.setBeanClass(Pedido.class.getName());
					importer.setCrudService(PedidoHandler.this.service, (config.batchSize > 0));
					importer.setBatchSize(config.batchSize);
					if (config.async) {
						importer.startAsync();
					} else {
						try {
							importer.start();
						} catch (ImporterException e) {
							logger.error(e.getMessage(), e);
						}
					}
				}
			} catch (IOException e) {
				// isto nao deveria ocorrer
				logger.error(e.getMessage(), e);
			}
		}

		private File getBlobFile() {
			URI uri = null;
			try {
				uri = new URI(config.uri);
			} catch (URISyntaxException e1) {
				logger.error(e1.getMessage(), e1);
			}
			String scheme = uri.getScheme();
			if (scheme.equals("file")) {
				return new File(uri);
			} else if (scheme.startsWith("http")) {
				return getHttpBlobFile(uri);
			}
			return null;
		}

		private File getHttpBlobFile(URI uri) {
			importer.notifyDownload();
			HttpGet get = new HttpGet(uri);
			try (CloseableHttpClient httpClient = HttpClients.createDefault();
					CloseableHttpResponse httpResponse = httpClient.execute(get);
					InputStream is = httpResponse.getEntity().getContent()) {
				File blob = File.createTempFile("pedido", "blob");
				try (FileOutputStream fos = new FileOutputStream(blob);
						BufferedOutputStream bos = new BufferedOutputStream(fos);
						BufferedInputStream bis = new BufferedInputStream(is)) {
					byte[] bytes = new byte[8192];
					int tam = 0;
					while ((tam = bis.read(bytes)) > 0) {
						bos.write(bytes, 0, tam);
					}
					bos.flush();
					fos.flush();
				}
				return blob;
			} catch (IOException e) {
				logger.error(e.getMessage(), e);
			}
			return null;
		}
	}
}
