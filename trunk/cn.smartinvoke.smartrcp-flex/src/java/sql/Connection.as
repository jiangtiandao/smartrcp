package java.sql
{
 import cn.smartinvoke.RemoteObject;
 import java.sql.Wrapper;
 import java.util.Properties;
 import java.util.Properties;

[Bindable]
[RemoteClass(alias="java.sql.Connection")]
 public class Connection extends Wrapper {
  public function Connection(){
	 super();
  }

   public function setReadOnly(readOnly:Boolean):void{
	 var retObj:Object=this.call("setReadOnly",arguments);

   }
   public function getTransactionIsolation():int{
	 var retObj:Object=this.call("getTransactionIsolation",arguments);
	 return Number(retObj);

   }
   public function releaseSavepoint(savepoint:Savepoint):void{
	 var retObj:Object=this.call("releaseSavepoint",arguments);

   }
   public function createSQLXML():SQLXML{
	 var retObj:Object=this.call("createSQLXML",arguments);
	 return retObj as SQLXML;

   }
   public function getMetaData():DatabaseMetaData{
	 var retObj:Object=this.call("getMetaData",arguments);
	 return retObj as DatabaseMetaData;

   }
   public function clearWarnings():void{
	 var retObj:Object=this.call("clearWarnings",arguments);

   }
   public function rollback():void{
	 var retObj:Object=this.call("rollback",arguments);

   }
   public function rollback1(savepoint:Savepoint):void{
	 var retObj:Object=this.call("rollback",arguments);

   }
   public function close():void{
	 var retObj:Object=this.call("close",arguments);

   }
   public function nativeSQL(sql:String):String{
	 var retObj:Object=this.call("nativeSQL",arguments);
	 return retObj as String;

   }
   public function getWarnings():SQLWarning{
	 var retObj:Object=this.call("getWarnings",arguments);
	 return retObj as SQLWarning;

   }
   public function setHoldability(holdability:int):void{
	 var retObj:Object=this.call("setHoldability",arguments);

   }
   public function commit():void{
	 var retObj:Object=this.call("commit",arguments);

   }
   public function prepareCall(sql:String):CallableStatement{
	 var retObj:Object=this.call("prepareCall",arguments);
	 return retObj as CallableStatement;

   }
   public function prepareCall1(sql:String,resultSetType:int,resultSetConcurrency:int):CallableStatement{
	 var retObj:Object=this.call("prepareCall",arguments);
	 return retObj as CallableStatement;

   }
   public function prepareCall2(sql:String,resultSetType:int,resultSetConcurrency:int,resultSetHoldability:int):CallableStatement{
	 var retObj:Object=this.call("prepareCall",arguments);
	 return retObj as CallableStatement;

   }
   public function getAutoCommit():Boolean{
	 var retObj:Object=this.call("getAutoCommit",arguments);
	 return retObj as Boolean;

   }
   public function setSavepoint():Savepoint{
	 var retObj:Object=this.call("setSavepoint",arguments);
	 return retObj as Savepoint;

   }
   public function setSavepoint1(name:String):Savepoint{
	 var retObj:Object=this.call("setSavepoint",arguments);
	 return retObj as Savepoint;

   }
   public function isReadOnly():Boolean{
	 var retObj:Object=this.call("isReadOnly",arguments);
	 return retObj as Boolean;

   }
   public function createStatement():Statement{
	 var retObj:Object=this.call("createStatement",arguments);
	 return retObj as Statement;

   }
   public function createStatement1(resultSetType:int,resultSetConcurrency:int):Statement{
	 var retObj:Object=this.call("createStatement",arguments);
	 return retObj as Statement;

   }
   public function createStatement2(resultSetType:int,resultSetConcurrency:int,resultSetHoldability:int):Statement{
	 var retObj:Object=this.call("createStatement",arguments);
	 return retObj as Statement;

   }
   public function prepareStatement(sql:String):PreparedStatement{
	 var retObj:Object=this.call("prepareStatement",arguments);
	 return retObj as PreparedStatement;

   }
   public function prepareStatement1(sql:String,resultSetType:int,resultSetConcurrency:int):PreparedStatement{
	 var retObj:Object=this.call("prepareStatement",arguments);
	 return retObj as PreparedStatement;

   }
   public function prepareStatement2(sql:String,resultSetType:int,resultSetConcurrency:int,resultSetHoldability:int):PreparedStatement{
	 var retObj:Object=this.call("prepareStatement",arguments);
	 return retObj as PreparedStatement;

   }
   public function prepareStatement3(sql:String,autoGeneratedKeys:int):PreparedStatement{
	 var retObj:Object=this.call("prepareStatement",arguments);
	 return retObj as PreparedStatement;

   }
   public function prepareStatement4(sql:String,columnIndexes[]:int):PreparedStatement{
	 var retObj:Object=this.call("prepareStatement",arguments);
	 return retObj as PreparedStatement;

   }
   public function prepareStatement5(sql:String,columnNames[]:String):PreparedStatement{
	 var retObj:Object=this.call("prepareStatement",arguments);
	 return retObj as PreparedStatement;

   }
   public function setClientInfo(name:String,value:String):void{
	 var retObj:Object=this.call("setClientInfo",arguments);

   }
   public function setClientInfo1(properties:Properties):void{
	 var retObj:Object=this.call("setClientInfo",arguments);

   }
   public function isClosed():Boolean{
	 var retObj:Object=this.call("isClosed",arguments);
	 return retObj as Boolean;

   }
   public function getHoldability():int{
	 var retObj:Object=this.call("getHoldability",arguments);
	 return Number(retObj);

   }
   public function createArrayOf(typeName:String,elements:Array):Array{
	 var retObj:Object=this.call("createArrayOf",arguments);
	 return retObj as Array;

   }
   public function getCatalog():String{
	 var retObj:Object=this.call("getCatalog",arguments);
	 return retObj as String;

   }
   public function setTransactionIsolation(level:int):void{
	 var retObj:Object=this.call("setTransactionIsolation",arguments);

   }
   public function createStruct(typeName:String,attributes:Array):Struct{
	 var retObj:Object=this.call("createStruct",arguments);
	 return retObj as Struct;

   }
   public function getTypeMap():Object{
	 var retObj:Object=this.call("getTypeMap",arguments);
	 return retObj;
   }
   public function getClientInfo(name:String):String{
	 var retObj:Object=this.call("getClientInfo",arguments);
	 return retObj as String;

   }
   public function getClientInfo1():Properties{
	 var retObj:Object=this.call("getClientInfo",arguments);
	 return retObj as Properties;

   }
   public function setCatalog(catalog:String):void{
	 var retObj:Object=this.call("setCatalog",arguments);

   }
   public function createClob():Clob{
	 var retObj:Object=this.call("createClob",arguments);
	 return retObj as Clob;

   }
   public function setTypeMap(map:Object):void{
	 var retObj:Object=this.call("setTypeMap",arguments);

   }
   public function setAutoCommit(autoCommit:Boolean):void{
	 var retObj:Object=this.call("setAutoCommit",arguments);

   }
   public function createNClob():NClob{
	 var retObj:Object=this.call("createNClob",arguments);
	 return retObj as NClob;

   }
   public function isValid(timeout:int):Boolean{
	 var retObj:Object=this.call("isValid",arguments);
	 return retObj as Boolean;

   }
   public function createBlob():Blob{
	 var retObj:Object=this.call("createBlob",arguments);
	 return retObj as Blob;

   }
 }

}
