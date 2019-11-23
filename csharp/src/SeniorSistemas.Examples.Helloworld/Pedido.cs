namespace SeniorSistemas.Examples.Helloworld
{
    
    /// This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.

    using System;
    using System.Collections;
    using System.Collections.Generic;
    
    ///<summary>
    /// Pedido
    ///</summary>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("sdl", "25.1.1")]
    public class Pedido
    {
        
        ///<summary>Identifier for id-based queries/actions involving Pedido.</summary>
        public class Id
        {
            ///<summary>The value of the identifier of the object of interest.</summary>
            public string IdValue { get; set; }
            ///<summary>A convenience accessor for the value of the id property.</summary>
            public string GetPedidoId
            {
                get { return IdValue; }
            }
        }
        
        ///<summary>Paged results for queries involving Pedido.</summary>
        public class PagedResults
        {
            ///<summary>The contents of the query.</summary>
            public IList<Pedido> Contents { get; set; }
        }
        
        ///<summary>Paged request for queries involving Pedido.</summary>                    
        public class PageRequest
        {
        
            ///<summary>The optional offset for the request.</summary>
            public long? Offset { get; set; }
            
            ///<summary>The optional size limit for the response.</summary>
            public int? Size { get; set; }
        }
        
        ///<summary>
        /// Chave primaria
        ///</summary>
        public string Id { get; set; }
        ///<summary>
        /// Data do pedido
        ///</summary>
        public DateTime? Data { get; set; }
        
        ///<summary>
        /// Observações do pedido
        ///</summary>
        public string Observacoes { get; set; }
        
        ///<summary>
        /// Cliente do pedido
        ///</summary>
        public Cliente Cliente { get; set; }
        
        ///<summary>
        /// Itens do pedido
        ///</summary>
        public IList<Item> Itens { get; set; }
        
        /// <summary>
        /// Constructor for Pedido
        /// </summary>
        /// <param name="data">
        ///<summary>
        /// Data do pedido
        ///</summary>
        /// </param>
        /// <param name="cliente">
        ///<summary>
        /// Cliente do pedido
        ///</summary>
        /// </param>
        /// <param name="itens">
        ///<summary>
        /// Itens do pedido
        ///</summary>
        /// </param>
        public Pedido(DateTime? data, Cliente cliente, IList<Item> itens)
        {
            this.Data = data;
            this.Cliente = cliente;
            this.Itens = itens;
        }
        
        public virtual void Validate()
        {
        	Validate(new ArrayList());
        }
        
        internal virtual void Validate(IList validated)
        {
            HelloWorldValidator.Validate(this, validated);
        }
    }
}
