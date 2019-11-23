namespace SeniorSistemas.Examples.Helloworld
{
    
    /// This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.

    using System;
    using System.Collections;
    using System.Collections.Generic;
    
    ///<summary>
    /// Item do pedido
    ///</summary>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("sdl", "25.1.1")]
    public class Item
    {
        
        ///<summary>Identifier for id-based queries/actions involving Item.</summary>
        public class Id
        {
            ///<summary>The value of the identifier of the object of interest.</summary>
            public string IdValue { get; set; }
            ///<summary>A convenience accessor for the value of the id property.</summary>
            public string GetItemId
            {
                get { return IdValue; }
            }
        }
        
        ///<summary>Paged results for queries involving Item.</summary>
        public class PagedResults
        {
            ///<summary>The contents of the query.</summary>
            public IList<Item> Contents { get; set; }
        }
        
        ///<summary>Paged request for queries involving Item.</summary>                    
        public class PageRequest
        {
        
            ///<summary>The optional offset for the request.</summary>
            public long? Offset { get; set; }
            
            ///<summary>The optional size limit for the response.</summary>
            public int? Size { get; set; }
        }
        
        ///<summary>
        /// Chave primária
        ///</summary>
        public string Id { get; set; }
        ///<summary>
        /// descrição
        ///</summary>
        public string Descricao { get; set; }
        
        ///<summary>
        /// quantidade
        ///</summary>
        public double? Quantidade { get; set; }
        
        ///<summary>
        /// valor unitário
        ///</summary>
        public double? ValorUnitario { get; set; }
        
        /// <summary>
        /// Constructor for Item
        /// </summary>
        /// <param name="descricao">
        ///<summary>
        /// descrição
        ///</summary>
        /// </param>
        /// <param name="quantidade">
        ///<summary>
        /// quantidade
        ///</summary>
        /// </param>
        /// <param name="valorUnitario">
        ///<summary>
        /// valor unitário
        ///</summary>
        /// </param>
        public Item(string descricao, double? quantidade, double? valorUnitario)
        {
            this.Descricao = descricao;
            this.Quantidade = quantidade;
            this.ValorUnitario = valorUnitario;
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
