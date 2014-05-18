<?xml version="1.0" encoding="UTF-8"?>
<wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcao2" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcao2">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcao2">
      <s:element name="nfeDadosMsg">
        <s:complexType mixed="true">
          <s:sequence>
            <s:any/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="nfeRecepcaoLote2Result">
        <s:complexType mixed="true">
          <s:sequence>
            <s:any/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="nfeCabecMsg" type="tns:nfeCabecMsg"/>
      <s:complexType name="nfeCabecMsg">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="versaoDados" type="s:string"/>
          <s:element minOccurs="0" maxOccurs="1" name="cUF" type="s:string"/>
        </s:sequence>
        <s:anyAttribute/>
      </s:complexType>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="nfeRecepcaoLote2SoapIn">
    <wsdl:part name="nfeDadosMsg" element="tns:nfeDadosMsg"/>
  </wsdl:message>
  <wsdl:message name="nfeRecepcaoLote2SoapOut">
    <wsdl:part name="nfeRecepcaoLote2Result" element="tns:nfeRecepcaoLote2Result"/>
  </wsdl:message>
  <wsdl:message name="nfeRecepcaoLote2nfeCabecMsg">
    <wsdl:part name="nfeCabecMsg" element="tns:nfeCabecMsg"/>
  </wsdl:message>
  <wsdl:portType name="NfeRecepcao2Soap">
    <wsdl:operation name="nfeRecepcaoLote2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Serviço destinado à recepção de mensagens de lote de NF-e</wsdl:documentation>
      <wsdl:input message="tns:nfeRecepcaoLote2SoapIn"/>
      <wsdl:output message="tns:nfeRecepcaoLote2SoapOut"/>
    </wsdl:operation>
  </wsdl:portType>
  
  <wsdl:binding name="NfeRecepcao2Soap12" type="tns:NfeRecepcao2Soap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http"/>
    <wsdl:operation name="nfeRecepcaoLote2">
      <soap12:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcao2/nfeRecepcaoLote2" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
        <soap12:header message="tns:nfeRecepcaoLote2nfeCabecMsg" part="nfeCabecMsg" use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
        <soap12:header message="tns:nfeRecepcaoLote2nfeCabecMsg" part="nfeCabecMsg" use="literal"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="NfeRecepcao2">
    <wsdl:port name="NfeRecepcao2Soap12" binding="tns:NfeRecepcao2Soap12">
      <soap12:address location="https://nfe.sefaz.ce.gov.br:443/nfe2/services/NfeRecepcao2"/>
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>