<?xml version="1.0" encoding="UTF-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://www.portalfiscal.inf.br/nfe/wsdl/CadConsultaCadastro" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/CadConsultaCadastro" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/CadConsultaCadastro">
      <s:element name="consultaCadastro">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="nfeCabecMsg" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="nfeDadosMsg" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="consultaCadastroResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="consultaCadastroResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="consultaCadastroSoapIn">
    <wsdl:part name="parameters" element="tns:consultaCadastro" />
  </wsdl:message>
  <wsdl:message name="consultaCadastroSoapOut">
    <wsdl:part name="parameters" element="tns:consultaCadastroResponse" />
  </wsdl:message>
  <wsdl:portType name="CadConsultaCadastroWSSoap">
    <wsdl:operation name="consultaCadastro">
      <wsdl:input message="tns:consultaCadastroSoapIn" />
      <wsdl:output message="tns:consultaCadastroSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="CadConsultaCadastroWSSoap" type="tns:CadConsultaCadastroWSSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="consultaCadastro">
      <soap:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/CadConsultaCadastro/consultaCadastro" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="CadConsultaCadastroWSSoap12" type="tns:CadConsultaCadastroWSSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="consultaCadastro">
      <soap12:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/CadConsultaCadastro/consultaCadastro" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="CadConsultaCadastroWS">
    <wsdl:port name="CadConsultaCadastroWSSoap" binding="tns:CadConsultaCadastroWSSoap">
      <soap:address location="https://webservice.set.rn.gov.br/projetonfehomolog/set_nfe/servicos/CadConsultaCadastroWS.asmx" />
    </wsdl:port>
    <wsdl:port name="CadConsultaCadastroWSSoap12" binding="tns:CadConsultaCadastroWSSoap12">
      <soap12:address location="https://webservice.set.rn.gov.br/projetonfehomolog/set_nfe/servicos/CadConsultaCadastroWS.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>