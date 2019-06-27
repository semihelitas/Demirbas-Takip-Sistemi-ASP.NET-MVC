﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DTS.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class DTSDataEntities : DbContext
    {
        public DTSDataEntities()
            : base("name=DTSDataEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Category> Category { get; set; }
        public virtual DbSet<Location> Location { get; set; }
        public virtual DbSet<Login> Login { get; set; }
        public virtual DbSet<Person> Person { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<UserAccount> UserAccount { get; set; }
    
        public virtual ObjectResult<LoginByUsernamePassword_Result> LoginByUsernamePassword(string username, string password)
        {
            var usernameParameter = username != null ?
                new ObjectParameter("username", username) :
                new ObjectParameter("username", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<LoginByUsernamePassword_Result>("LoginByUsernamePassword", usernameParameter, passwordParameter);
        }
    }
}
