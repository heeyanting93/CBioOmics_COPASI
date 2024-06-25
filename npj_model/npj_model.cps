<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.36 (Build 260) (http://www.copasi.org) at 2024-06-25T17:58:02Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="36" versionDevel="260" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for A" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (Glcex/Km_Glcex)) - (Vr * (Glc/Km_Glc))) / (1 + Glcex/Km_Glcex + Glc/Km_Glc)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="Glcex" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="Km_Glcex" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="Glc" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_265" name="Km_Glc" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for TPI" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (DHAP/Km_DHAP)) - (Vr * (GAP/Km_GAP))) / (1 + DHAP/Km_DHAP + GAP/Km_GAP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="DHAP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_269" name="Km_DHAP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="GAP" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_266" name="Km_GAP" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for GDH" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (GAP/Km_GAP) * (NAD/Km_NAD)) - (Vr * (BPG/Km_BPG) * (NADH/Km_NADH))) / (1 + GAP/Km_GAP + NAD/Km_NAD + BPG/Km_BPG + NADH/Km_NADH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="GAP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="Km_GAP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="NAD" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="Km_NAD" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="BPG" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_279" name="Km_BPG" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="NADH" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_281" name="Km_NADH" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for PGK" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (BPG/Km_BPG) * (ADP/Km_ADP)) - (Vr * (PG3/Km_PG3) * (ATP/Km_ATP))) / (1 + BPG/Km_BPG + ADP/Km_ADP + PG3/Km_PG3 + ATP/Km_ATP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="BPG" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_289" name="Km_BPG" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="ADP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="Km_ADP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="PG3" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_284" name="Km_PG3" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="ATP" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_282" name="Km_ATP" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for HMGS" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (AcCoA/Km_AcCoA) * (AtAcCoA/Km_AtAcCoA)) / (1 + AcCoA/Km_AcCoA + AtAcCoA/Km_AtAcCoA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="AcCoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_299" name="Km_AcCoA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="AtAcCoA" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_297" name="Km_AtAcCoA" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for HMGR" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (HMGCoA/Km_HMGCoA) * (NADPH/Km_NADPH)^2) / (1 + HMGCoA/Km_HMGCoA + (2*NADPH)/Km_NADPH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_292" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="HMGCoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_294" name="Km_HMGCoA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="NADPH" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="Km_NADPH" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for PMK" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (MVAP/Km_MVAP) * (ATP/Km_ATP)) - (Vr * (MVAPP/Km_MVAPP) * (ADP/Km_ADP))) / (1 + MVAP/Km_MVAP + ATP/Km_ATP + MVAPP/Km_MVAPP + ADP/Km_ADP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_306" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="MVAP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_304" name="Km_MVAP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="ATP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_302" name="Km_ATP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="MVAPP" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_309" name="Km_MVAPP" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="ADP" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_311" name="Km_ADP" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for PMD" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (MVAPP/Km_MVAPP) * (ATP/Km_ATP)) / (1 + MVAPP/Km_MVAPP + ATP/Km_ATP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="MVAPP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_319" name="Km_MVAPP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="ATP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_317" name="Km_ATP" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for ISPD" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (MEP/Km_MEP)) / (1 + MEP/Km_MEP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_312" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="MEP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_314" name="Km_MEP" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for ISPE" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (CDPME/Km_CDPME) * (ATP/Km_ATP)) / (1 + CDPME/Km_CDPME + ATP/Km_ATP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="CDPME" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_315" name="Km_CDPME" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="ATP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_324" name="Km_ATP" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for ISPG" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (MEcPP/Km_MEcPP) * (NADPH/Km_NADPH)) / (1 + MEcPP/Km_MEcPP + NADPH/Km_NADPH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_329" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="MEcPP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_327" name="Km_MEcPP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="NADPH" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_325" name="Km_NADPH" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for ISPH" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (HMBPP/Km_HMBPP) * (NADPH/Km_NADPH)) / (1 + HMBPP/Km_HMBPP + NADPH/Km_NADPH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="HMBPP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="Km_HMBPP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="NADPH" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_330" name="Km_NADPH" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for ISPA_1" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (DMAPP/Km_DMAPP) * (IPP/Km_IPP)) / (1 + DMAPP/Km_DMAPP + IPP/Km_IPP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="DMAPP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="Km_DMAPP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="IPP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_335" name="Km_IPP" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for LS" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (GPP/Km_GPP)) / (1 + GPP/Km_GPP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="GPP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_342" name="Km_GPP" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for DXR" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (DXP/Km_DXP) * (NADPH/Km_NADPH)) - (Vr * (MEP/Km_MEP) * (NADP/Km_NADP))) / (1 + DXP/Km_DXP + NADPH/Km_NADPH + MEP/Km_MEP + NADP/Km_NADP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_345" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="DXP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_341" name="Km_DXP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="NADPH" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="Km_NADPH" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="MEP" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_350" name="Km_MEP" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="NADP" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_352" name="Km_NADP" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for PCK" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (OAA/Km_OAA) * (ATP/Km_ATP)) - (Vr * (PEP/Km_PEP) * (ADP/Km_ADP) * (CO2/Km_CO2))) / (1 + OAA/Km_OAA + ATP/Km_ATP + PEP/Km_PEP + ADP/Km_ADP + CO2/Km_CO2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_362" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="OAA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_360" name="Km_OAA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="ATP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_358" name="Km_ATP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="PEP" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_355" name="Km_PEP" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="ADP" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_353" name="Km_ADP" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="CO2" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_364" name="Km_CO2" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for ACS" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (ACE/Km_ACE) * (ATP/Km_ATP) * (CoA/Km_CoA)) / (1 + ACE/Km_ACE + ATP/Km_ATP + CoA/Km_CoA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_376" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_375" name="ACE" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_374" name="Km_ACE" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="ATP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_372" name="Km_ATP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="CoA" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_370" name="Km_CoA" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for ADH" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (ACTLD/Km_ACTLD) * (NADH/Km_NADH)) - (Vr * (ETH/Km_ETH) * (NAD/Km_NAD))) / (1 + ACTLD/Km_ACTLD + NADH/Km_NADH + ETH/Km_ETH + NAD/Km_NAD)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_378" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="ACTLD" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_365" name="Km_ACTLD" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="NADH" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_367" name="Km_NADH" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="ETH" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_379" name="Km_ETH" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="NAD" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_381" name="Km_NAD" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for ALDH" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (AcCoA/Km_AcCoA) * (NADH/Km_NADH)) - (Vr * (ACTLD/Km_ACTLD) * (NAD/Km_NAD) * (CoA/Km_CoA))) / (1 + AcCoA/Km_AcCoA + NADH/Km_NADH + ACTLD/Km_ACTLD + NAD/Km_NAD + CoA/Km_CoA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_390" name="AcCoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_389" name="Km_AcCoA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="NADH" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_387" name="Km_NADH" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="ACTLD" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_384" name="Km_ACTLD" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="NAD" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_382" name="Km_NAD" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="CoA" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_393" name="Km_CoA" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for ALDHB" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (ACTLD/Km_ACTLD) * (NADP/Km_NADP)) / (1 + ACTLD/Km_ACTLD + NADP/Km_NADP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_405" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="ACTLD" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_403" name="Km_ACTLD" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="NADP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_401" name="Km_NADP" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for ETH transport" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (ETH/Km_ETH)) / (1 + ETH/Km_ETH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_396" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="ETH" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_398" name="Km_ETH" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for AKGDH" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (AKG/Km_AKG) * (NAD/Km_NAD) * (CoA/Km_CoA)) / (1 + AKG/Km_AKG + NAD/Km_NAD + CoA/Km_CoA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_395" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="AKG" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_399" name="Km_AKG" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_394" name="NAD" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_406" name="Km_NAD" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_407" name="CoA" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_408" name="Km_CoA" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for SCS" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (SucCoA/Km_SucCoA) * (ADP/Km_ADP)) - (Vr * (SUC/Km_SUC) * (ATP/Km_ATP) * (CoA/Km_CoA))) / (1 + SucCoA/Km_SucCoA + ADP/Km_ADP + SUC/Km_SUC + ATP/Km_ATP + CoA/Km_CoA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_415" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="SucCoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_413" name="Km_SucCoA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="ADP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_411" name="Km_ADP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_410" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="SUC" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_416" name="Km_SUC" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="ATP" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_418" name="Km_ATP" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="CoA" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_420" name="Km_CoA" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for SUC transport" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (SUC/Km_SUC)) / (1 + SUC/Km_SUC)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_432" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_431" name="SUC" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_430" name="Km_SUC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for MDH" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (FUM/Km_FUM) * (NAD/Km_NAD)) - (Vr * (OAA/Km_OAA) * (NADH/Km_NADH))) / (1 + FUM/Km_FUM + NAD/Km_NAD + OAA/Km_OAA + NADH/Km_NADH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_427" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="FUM" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_429" name="Km_FUM" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="NAD" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_425" name="Km_NAD" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_423" name="OAA" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_422" name="Km_OAA" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="NADH" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_433" name="Km_NADH" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for ENO" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (PG3/Km_PG3)) - (Vr * (PEP/Km_PEP))) / (1 + PG3/Km_PG3 + PEP/Km_PEP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_443" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_442" name="PG3" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_441" name="Km_PG3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_440" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="PEP" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_438" name="Km_PEP" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for B" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (DXP/Km_DXP)) / (1 + DXP/Km_DXP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_445" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="DXP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_434" name="Km_DXP" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for Tkb" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (Y/Km_Y)) - (Vr * (GAP/Km_GAP) * (F6P/Km_F6P))) / (1 + Y/Km_Y + GAP/Km_GAP + F6P/Km_F6P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_437" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_436" name="Y" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_435" name="Km_Y" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_447" name="GAP" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_448" name="Km_GAP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="F6P" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_450" name="Km_F6P" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for ADK" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (AMP/Km_AMP) * (ATP/Km_ATP)) - (Vr * (ADP/Km_ADP)^2)) / (1 + AMP/Km_AMP + ATP/Km_ATP + (2*ADP)/Km_ADP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_458" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_457" name="AMP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_456" name="Km_AMP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_455" name="ATP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_454" name="Km_ATP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_453" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="ADP" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_451" name="Km_ADP" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for IDI" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (IPP/Km_IPP)) - (Vr * (DMAPP/Km_DMAPP))) / (1 + IPP/Km_IPP + DMAPP/Km_DMAPP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_466" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="IPP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_464" name="Km_IPP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_463" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_462" name="DMAPP" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_461" name="Km_DMAPP" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for HK" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (Glc/Km_Glc) * (ATP/Km_ATP)) / (1 + Glc/Km_Glc + ATP/Km_ATP + G6P/Ki_G6P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_470" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_469" name="Glc" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_468" name="Km_Glc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_467" name="ATP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_459" name="Km_ATP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="G6P" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_471" name="Ki_G6P" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for PGI" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (G6P/Km_G6P)) - (Vr * (F6P/Km_F6P))) / (1 + G6P/Km_G6P + F6P/Km_F6P + PEP/Ki_PEP + PG6/Ki_PG6)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_478" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_477" name="G6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_476" name="Km_G6P" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_475" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_474" name="F6P" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_473" name="Km_F6P" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_472" name="PEP" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_479" name="Ki_PEP" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="PG6" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_481" name="Ki_PG6" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for MK" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (MVA/Km_MVA) * (ATP/Km_ATP)) / (1 + MVA/Km_MVA + ATP/Km_ATP + DMAPP/Ki_DMAPP + GPP/Ki_GPP + FPP/Ki_FPP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_491" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_490" name="MVA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_489" name="Km_MVA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_488" name="ATP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_487" name="Km_ATP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_486" name="DMAPP" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_485" name="Ki_DMAPP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_484" name="GPP" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_483" name="Ki_GPP" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_482" name="FPP" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_492" name="Ki_FPP" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for DXS" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (PYR/Km_PYR) * (GAP/Km_GAP)) / (1 + PYR/Km_PYR + GAP/Km_GAP + IPP/Ki_IPP + DMAPP/Ki_DMAPP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_503" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_502" name="PYR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_501" name="Km_PYR" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_500" name="GAP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_499" name="Km_GAP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_498" name="IPP" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_497" name="Ki_IPP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_496" name="DMAPP" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_495" name="Ki_DMAPP" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for ISPF" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (CDPMEP/Km_CDPMEP) * (MEP/Ka_MEP)) / (1 + CDPMEP/Km_CDPMEP + FPP/Ki_FPP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_510" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_509" name="CDPMEP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_508" name="Km_CDPMEP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_507" name="MEP" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_506" name="Ka_MEP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_505" name="FPP" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_504" name="Ki_FPP" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for FRD" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (FUM/Km_FUM) * (NADH/Km_NADH) * (ADP/Km_ADP)^0.75) - (Vr * (SUC/Km_SUC) * (NAD/Km_NAD) * (ATP/Km_ATP)^0.75)) / (1 + FUM/Km_FUM + NADH/Km_NADH + (0.75*ADP)/Km_ADP + SUC/Km_SUC + NAD/Km_NAD + (0.75*ATP)/Km_ATP + OAA/Ki_OAA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_515" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_514" name="FUM" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_513" name="Km_FUM" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_512" name="NADH" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_511" name="Km_NADH" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_494" name="ADP" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_493" name="Km_ADP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_516" name="Vr" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_517" name="SUC" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_518" name="Km_SUC" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_519" name="NAD" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_520" name="Km_NAD" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_521" name="ATP" order="12" role="product"/>
        <ParameterDescription key="FunctionParameter_522" name="Km_ATP" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_523" name="OAA" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_524" name="Ki_OAA" order="15" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for PGDH" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (PG6/Km_PG6) * (NADP/Km_NADP)) / (1 + PG6/Km_PG6 + NADP/Km_NADP + FBP/Ki_FBP + ATP/Ki_ATP + NADPH/Ki_NADPH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_540" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_539" name="PG6" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_538" name="Km_PG6" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_537" name="NADP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_536" name="Km_NADP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_535" name="FBP" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_534" name="Ki_FBP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_533" name="ATP" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_532" name="Ki_ATP" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_531" name="NADPH" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_530" name="Ki_NADPH" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for PTACK" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (AcCoA/Km_AcCoA) * (ADP/Km_ADP) * (PEP/Ka_PEP) * (PYR/Ka_PYR)) - (Vr * (ACE/Km_ACE) * (ATP/Km_ATP) * (CoA/Km_CoA))) / (1 + AcCoA/Km_AcCoA + ADP/Km_ADP + ACE/Km_ACE + ATP/Km_ATP + CoA/Km_CoA + NADH/Ki_NADH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_546" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_545" name="AcCoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_544" name="Km_AcCoA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_543" name="ADP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_542" name="Km_ADP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_541" name="PEP" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_525" name="Ka_PEP" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_526" name="PYR" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_527" name="Ka_PYR" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="Vr" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_529" name="ACE" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_547" name="Km_ACE" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_548" name="ATP" order="12" role="product"/>
        <ParameterDescription key="FunctionParameter_549" name="Km_ATP" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="CoA" order="14" role="product"/>
        <ParameterDescription key="FunctionParameter_551" name="Km_CoA" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_552" name="NADH" order="16" role="modifier"/>
        <ParameterDescription key="FunctionParameter_553" name="Ki_NADH" order="17" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for G6PDH" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (G6P/Km_G6P) * (NADP/Km_NADP)) / (1 + G6P/Km_G6P + NADP/Km_NADP + NADPH/Ki_NADPH + G6P/Ki_G6P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_571" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_570" name="G6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_569" name="Km_G6P" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_568" name="NADP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_567" name="Km_NADP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_566" name="NADPH" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_565" name="Ki_NADPH" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_564" name="Ki_G6P" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for AtoB" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (AcCoA/Km_AcCoA)^2) - (Vr * (AtAcCoA/Km_AtAcCoA) * (CoA/Km_CoA))) / (1 + (2*AcCoA)/Km_AcCoA + AtAcCoA/Km_AtAcCoA + CoA/Km_CoA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_556" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_557" name="AcCoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_558" name="Km_AcCoA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_559" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_560" name="AtAcCoA" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_561" name="Km_AtAcCoA" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_562" name="CoA" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_563" name="Km_CoA" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for PYK" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (PEP/Km_PEP)^nKm_PEP * (ADP/Km_ADP) * (FBP/Ka_FBP)^nKa_FBP) / (1 + (PEP/Km_PEP)^nKm_PEP + ADP/Km_ADP + ATP/Ki_ATP + SucCoA/Ki_SucCoA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_577" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_576" name="PEP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_575" name="Km_PEP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_574" name="nKm_PEP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_573" name="ADP" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_572" name="Km_ADP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_554" name="FBP" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_555" name="Ka_FBP" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_578" name="nKa_FBP" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_579" name="ATP" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_580" name="Ki_ATP" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_581" name="SucCoA" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_582" name="Ki_SucCoA" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for PPC" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (PEP/Km_PEP)^nKm_PEP * (CO2/Km_CO2) * (AcCoA/Ka_AcCoA)^nKa_AcCoA * (FBP/Ka_FBP)) / (1 + (PEP/Km_PEP)^nKm_PEP + CO2/Km_CO2 + FUM/Ki_FUM + SUC/Ki_SUC)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_595" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_594" name="PEP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_593" name="Km_PEP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_592" name="nKm_PEP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_591" name="CO2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_590" name="Km_CO2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_589" name="AcCoA" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_588" name="Ka_AcCoA" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_587" name="nKa_AcCoA" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_586" name="FBP" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_585" name="Ka_FBP" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_584" name="FUM" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_583" name="Ki_FUM" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_596" name="SUC" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_597" name="Ki_SUC" order="14" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for PFK" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (F6P/Km_F6P)^nKm_F6P * (ATP/Km_ATP) * (ADP/Ka_ADP)) / (1 + (F6P/Km_F6P)^nKm_F6P + ATP/Km_ATP + (PEP/Ki_PEP)^nKi_PEP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_612" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_611" name="F6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_610" name="Km_F6P" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_609" name="nKm_F6P" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_608" name="ATP" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_607" name="Km_ATP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_606" name="ADP" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_605" name="Ka_ADP" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_604" name="PEP" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_603" name="Ki_PEP" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_602" name="nKi_PEP" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for NGAM" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (ATP^n/Km_ATP^n)) / (1 + ATP^n/Km_ATP^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_619" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_618" name="ATP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_617" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_616" name="Km_ATP" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function for FBA" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (FBP/Km_FBP)) - (Vr * (GAP/Km_GAP) * (DHAP/Km_DHAP))) / (1 + FBP/Km_FBP + GAP/Km_GAP + DHAP/Km_DHAP + (PEP/Ki_PEP)^nKi_PEP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_598" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_613" name="FBP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_614" name="Km_FBP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_615" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_599" name="GAP" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_600" name="Km_GAP" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_601" name="DHAP" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_620" name="Km_DHAP" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_621" name="PEP" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_622" name="Ki_PEP" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_623" name="nKi_PEP" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Function for CSICD" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (Vmax * (AcCoA/Km_AcCoA) * (OAA/Km_OAA) * (NAD/Km_NAD)) / (1 + AcCoA/Km_AcCoA + OAA/Km_OAA + NAD/Km_NAD + (AKG/Ki_AKG)^nKi_AKG + NADH/Ki_NADH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_634" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_633" name="AcCoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_632" name="Km_AcCoA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_631" name="OAA" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_630" name="Km_OAA" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_629" name="NAD" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_628" name="Km_NAD" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_627" name="AKG" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_626" name="Ki_AKG" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_625" name="nKi_AKG" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_624" name="NADH" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_635" name="Ki_NADH" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Function for PTS" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (Glcex/Km_Glcex) * (PEP/Km_PEP)) - (Vr * (G6P/Km_G6P) * (PYR/Km_PYR))) / (1 + Glcex/Km_Glcex + PEP/Km_PEP + G6P/Km_G6P + PYR/Km_PYR)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_647" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_646" name="Glcex" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_645" name="Km_Glcex" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_644" name="PEP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_643" name="Km_PEP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_642" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_641" name="G6P" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_640" name="Km_G6P" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_639" name="PYR" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_638" name="Km_PYR" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Function for ACE transport" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (ACE/Km_ACE)) - (Vr * (ACEex/Km_ACEex))) / (1 + ACE/Km_ACE + ACEex/Km_ACEex)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_655" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_654" name="ACE" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_653" name="Km_ACE" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_652" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_651" name="ACEex" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_650" name="Km_ACEex" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Function for ISPA_2" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        ((Vf * (GPP/Km_GPP) * (IPP/Km_IPP)) - (Vr * (FPP/Km_FPP))) / (1 + GPP/Km_GPP + IPP/Km_IPP + FPP/Km_FPP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_657" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_656" name="GPP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_637" name="Km_GPP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_636" name="IPP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_648" name="Km_IPP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_649" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_658" name="FPP" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_659" name="Km_FPP" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function for LDH" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (k_f * PYR * NADH) - (k_r * LAC * NAD)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_667" name="k_f" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_666" name="PYR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_665" name="NADH" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_664" name="k_r" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_663" name="LAC" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_662" name="NAD" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Function for PDH" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (k_f * PYR * CoA * NAD)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_671" name="k_f" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_670" name="PYR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_669" name="CoA" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_668" name="NAD" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="Function for POXB" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (k_f * PYR) - (k_r * ACE)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_673" name="k_f" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_672" name="PYR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_661" name="k_r" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_660" name="ACE" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="Function for KDPGA" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2023-07-19T09:03:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ((Vf * (KDPG/Km_KDPG)) - (Vr * (GAP/Km_GAP) * (PYR/Km_PYR))) / (1 + KDPG/Km_KDPG + GAP/Km_GAP + PYR/Km_PYR)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_677" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_676" name="Vr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_675" name="GAP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_674" name="Km_GAP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_678" name="KDPG" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_679" name="Km_KDPG" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_680" name="PYR" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_681" name="Km_PYR" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="Function for PG6D" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2023-07-19T09:10:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ((Vf * (PG6/Km_PG6)) - (Vr * (KDPG/Km_KDPG))) / (1 + PG6/Km_PG6 + KDPG/Km_KDPG)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_689" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_688" name="PG6" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_687" name="Km_PG6" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_686" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_685" name="KDPG" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_684" name="Km_KDPG" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="Function for LIM transport" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2023-08-07T01:35:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf * (LIM/Km_LIM)) / (1 + LIM/Km_LIM)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_693" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_692" name="LIM" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_691" name="Km_LIM" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="New Model" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-10-18T02:57:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Glc" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Glcex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="G6P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="ADP" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="ATP" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="F6P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="FBP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="DHAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <InitialExpression>
          34.86619-&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GAP],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="GAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="BPG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="NAD" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="NADH" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="PG3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="PEP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="PYR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="AcCoA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="CoA" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="CO2" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="AtAcCoA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="HMGCoA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="MVA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="NADP" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="NADPH" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="MVAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="MVAPP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="IPP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="DXP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="MEP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="CDPME" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="CDPMEP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="MEcPP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="HMBPP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="DMAPP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="GPP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="FPP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="LIM" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="LAC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="OAA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="ACE" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="AMP" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="ACEex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="ACTLD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="ETH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="ETHex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="AKG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="SucCoA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="SUC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="SUCex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="FUM" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="B" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="PG6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="Y" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="LACex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="LIMex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="KDPG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2023-07-19T09:08:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="DHAP+GAP" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DHAP],Reference=Concentration>+&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GAP],Reference=Concentration>
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="A" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5416" name="Vf" value="11283"/>
          <Constant key="Parameter_5419" name="Km_Glcex" value="14311.2"/>
          <Constant key="Parameter_4585" name="Vr" value="916.759"/>
          <Constant key="Parameter_4586" name="Km_Glc" value="189662"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5416"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Parameter_5419"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Parameter_4585"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4586"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="HK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4589" name="Vmax" value="22.0722"/>
          <Constant key="Parameter_4584" name="Km_Glc" value="97038.7"/>
          <Constant key="Parameter_4588" name="Km_ATP" value="142201"/>
          <Constant key="Parameter_4587" name="Ki_G6P" value="140634"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Parameter_4589"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Parameter_4584"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Parameter_4588"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Parameter_4587"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="PGI" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6833" name="Vf" value="81.0943"/>
          <Constant key="Parameter_6834" name="Km_G6P" value="398841"/>
          <Constant key="Parameter_6837" name="Vr" value="1.8879"/>
          <Constant key="Parameter_6832" name="Km_F6P" value="23355"/>
          <Constant key="Parameter_6836" name="Ki_PEP" value="8195.44"/>
          <Constant key="Parameter_6835" name="Ki_PG6" value="160354"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Parameter_6833"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Parameter_6834"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="Parameter_6837"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="Parameter_6832"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Parameter_6836"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Parameter_6835"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="PFK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4557" name="Vmax" value="1"/>
          <Constant key="Parameter_4558" name="Km_F6P" value="12362.6"/>
          <Constant key="Parameter_4564" name="nKm_F6P" value="1"/>
          <Constant key="Parameter_4556" name="Km_ATP" value="2679.07"/>
          <Constant key="Parameter_4561" name="Ka_ADP" value="4115.15"/>
          <Constant key="Parameter_4563" name="Ki_PEP" value="1000"/>
          <Constant key="Parameter_4562" name="nKi_PEP" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="Parameter_4557"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="Parameter_4558"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Parameter_4564"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="Parameter_4556"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="Parameter_4561"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="Parameter_4563"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="Parameter_4562"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="FBA" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4560" name="Vf" value="7.13104"/>
          <Constant key="Parameter_4559" name="Km_FBP" value="28441.4"/>
          <Constant key="Parameter_7417" name="Vr" value="1143.05"/>
          <Constant key="Parameter_7418" name="Km_GAP" value="17388.1"/>
          <Constant key="Parameter_7421" name="Km_DHAP" value="8078.8"/>
          <Constant key="Parameter_7416" name="Ki_PEP" value="2795.05"/>
          <Constant key="Parameter_7420" name="nKi_PEP" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="Parameter_4560"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="Parameter_4559"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="Parameter_7417"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="Parameter_7418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="Parameter_7421"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="Parameter_7416"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="Parameter_7420"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="TPI" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7419" name="Vf" value="3.42989"/>
          <Constant key="Parameter_5936" name="Km_DHAP" value="1781.75"/>
          <Constant key="Parameter_5937" name="Vr" value="4.52873"/>
          <Constant key="Parameter_5939" name="Km_GAP" value="108238"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_7419"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_5936"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Parameter_5937"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_5939"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="GDH" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5935" name="Vf" value="2.28865"/>
          <Constant key="Parameter_5938" name="Km_GAP" value="16182.8"/>
          <Constant key="Parameter_6420" name="Km_NAD" value="2346.41"/>
          <Constant key="Parameter_6421" name="Vr" value="24690"/>
          <Constant key="Parameter_6423" name="Km_BPG" value="350855"/>
          <Constant key="Parameter_6419" name="Km_NADH" value="2445"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_5935"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_5938"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_6420"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_6421"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_6423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Parameter_6419"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="PGK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6422" name="Vf" value="3.26222"/>
          <Constant key="Parameter_7255" name="Km_BPG" value="210711"/>
          <Constant key="Parameter_7256" name="Km_ADP" value="1191.55"/>
          <Constant key="Parameter_7258" name="Vr" value="166.707"/>
          <Constant key="Parameter_7254" name="Km_PG3" value="2161.21"/>
          <Constant key="Parameter_7257" name="Km_ATP" value="1000"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Parameter_6422"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_7255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Parameter_7256"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Parameter_7258"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_7254"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_7257"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="ENO" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4836" name="Vf" value="1.66703"/>
          <Constant key="Parameter_4837" name="Km_PG3" value="175019"/>
          <Constant key="Parameter_4839" name="Vr" value="3519.95"/>
          <Constant key="Parameter_4835" name="Km_PEP" value="25530.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Parameter_4836"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Parameter_4837"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Parameter_4839"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Parameter_4835"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="PYK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4838" name="Vmax" value="23.8976"/>
          <Constant key="Parameter_6687" name="Km_PEP" value="1611.62"/>
          <Constant key="Parameter_6688" name="nKm_PEP" value="1"/>
          <Constant key="Parameter_6690" name="Km_ADP" value="10901.5"/>
          <Constant key="Parameter_6686" name="Ka_FBP" value="17739.9"/>
          <Constant key="Parameter_6689" name="nKa_FBP" value="1"/>
          <Constant key="Parameter_7942" name="Ki_ATP" value="91671.1"/>
          <Constant key="Parameter_7943" name="Ki_SucCoA" value="546468"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Parameter_4838"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Parameter_6687"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="Parameter_6688"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Parameter_6690"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Parameter_6686"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="Parameter_6689"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="Parameter_7942"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="Parameter_7943"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="PDH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7945" name="k_f" value="955.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_90" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="Parameter_7945"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_670">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_669">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_668">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="AtoB" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7941" name="Vf" value="37.9786"/>
          <Constant key="Parameter_7944" name="Km_AcCoA" value="1506.05"/>
          <Constant key="Parameter_7917" name="Vr" value="22.7725"/>
          <Constant key="Parameter_7918" name="Km_AtAcCoA" value="1913.16"/>
          <Constant key="Parameter_7920" name="Km_CoA" value="469243"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Parameter_7941"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Parameter_7944"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Parameter_7917"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Parameter_7918"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Parameter_7920"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="HMGS" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Reaction requires H2O, but ignored to simplify model
Reversed reaction involving HMGCoA cleavage demonstrated (https://doi.org/10.1073/pnas.0405809101), however reaction takes days thus the reverse reaction is ignored here
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7916" name="Vmax" value="43.6724"/>
          <Constant key="Parameter_7919" name="Km_AcCoA" value="4071.74"/>
          <Constant key="Parameter_6748" name="Km_AtAcCoA" value="5394.92"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Parameter_7916"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Parameter_7919"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Parameter_6748"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="HMGR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="2"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6749" name="Vmax" value="95375.1"/>
          <Constant key="Parameter_6751" name="Km_HMGCoA" value="1250"/>
          <Constant key="Parameter_6747" name="Km_NADPH" value="1250"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_6749"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_6751"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Parameter_6747"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="MK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6750" name="Vmax" value="1e+06"/>
          <Constant key="Parameter_6536" name="Km_MVA" value="100"/>
          <Constant key="Parameter_6537" name="Km_ATP" value="100"/>
          <Constant key="Parameter_6539" name="Ki_DMAPP" value="1e+06"/>
          <Constant key="Parameter_6535" name="Ki_GPP" value="1e+06"/>
          <Constant key="Parameter_6538" name="Ki_FPP" value="1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="Parameter_6750"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="Parameter_6536"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Parameter_6537"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Parameter_6539"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Parameter_6535"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="Parameter_6538"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="PMK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8577" name="Vf" value="1e+06"/>
          <Constant key="Parameter_8578" name="Km_MVAP" value="100"/>
          <Constant key="Parameter_8580" name="Km_ATP" value="100"/>
          <Constant key="Parameter_8576" name="Vr" value="0"/>
          <Constant key="Parameter_8579" name="Km_MVAPP" value="10000"/>
          <Constant key="Parameter_8052" name="Km_ADP" value="5783.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Parameter_8577"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Parameter_8578"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_8580"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Parameter_8576"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Parameter_8579"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Parameter_8052"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="PMD" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8053" name="Vmax" value="300000"/>
          <Constant key="Parameter_8055" name="Km_MVAPP" value="189.24"/>
          <Constant key="Parameter_8051" name="Km_ATP" value="174.726"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Parameter_8053"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_8055"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Parameter_8051"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="DXS" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8054" name="Vmax" value="1904.83"/>
          <Constant key="Parameter_5649" name="Km_PYR" value="18536.9"/>
          <Constant key="Parameter_5650" name="Km_GAP" value="28453.3"/>
          <Constant key="Parameter_5652" name="Ki_IPP" value="1000"/>
          <Constant key="Parameter_5648" name="Ki_DMAPP" value="1141.73"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Parameter_8054"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Parameter_5649"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Parameter_5650"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="Parameter_5652"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Parameter_5648"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="DXR" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5651" name="Vf" value="3206.16"/>
          <Constant key="Parameter_6099" name="Km_DXP" value="4655.26"/>
          <Constant key="Parameter_6100" name="Km_NADPH" value="20713.9"/>
          <Constant key="Parameter_6102" name="Vr" value="22.2757"/>
          <Constant key="Parameter_6098" name="Km_MEP" value="300332"/>
          <Constant key="Parameter_6101" name="Km_NADP" value="4872.81"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Parameter_5651"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Parameter_6099"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Parameter_6100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Parameter_6102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Parameter_6098"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Parameter_6101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="ISPD" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Reaction requires CTP (cytidine triphosphate) and productes PPi (pyrophosphate), but ignored to simplify model
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6531" name="Vmax" value="50"/>
          <Constant key="Parameter_6532" name="Km_MEP" value="15185.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Parameter_6531"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_6532"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="ISPE" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6534" name="Vmax" value="3345.35"/>
          <Constant key="Parameter_6530" name="Km_CDPME" value="1000"/>
          <Constant key="Parameter_6533" name="Km_ATP" value="3726.99"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Parameter_6534"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Parameter_6530"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Parameter_6533"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="ISPF" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Reaction produces CMP, but ignored to simplify model
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7681" name="Vmax" value="18773"/>
          <Constant key="Parameter_7682" name="Km_CDPMEP" value="1000"/>
          <Constant key="Parameter_7684" name="Ka_MEP" value="1000"/>
          <Constant key="Parameter_7680" name="Ki_FPP" value="159542"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Parameter_7681"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="Parameter_7682"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="Parameter_7684"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="Parameter_7680"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="ISPG" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Ignore production of H2O to simplify model
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7683" name="Vmax" value="15346.8"/>
          <Constant key="Parameter_7717" name="Km_MEcPP" value="1000"/>
          <Constant key="Parameter_7718" name="Km_NADPH" value="1247.88"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Parameter_7683"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Parameter_7717"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Parameter_7718"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="ISPH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Ignore production of H2O to simplify model
ISPH actually produces both IPP and DMAPP in the ratio of 5:1 (https://doi.org/10.1073/pnas.032658999), but to simplify the model the dominant species being produced (IPP) is used to represent the reaction instead
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7720" name="Vmax" value="0"/>
          <Constant key="Parameter_7716" name="Km_HMBPP" value="8104.21"/>
          <Constant key="Parameter_7719" name="Km_NADPH" value="1597.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Parameter_7720"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Parameter_7716"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_7719"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="ISPA_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7697" name="Vmax" value="101932"/>
          <Constant key="Parameter_7698" name="Km_DMAPP" value="500"/>
          <Constant key="Parameter_7700" name="Km_IPP" value="500"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_7697"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Parameter_7698"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Parameter_7700"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="ISPA_2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7696" name="Vf" value="541.808"/>
          <Constant key="Parameter_7699" name="Km_GPP" value="102904"/>
          <Constant key="Parameter_8182" name="Km_IPP" value="292262"/>
          <Constant key="Parameter_8183" name="Vr" value="200"/>
          <Constant key="Parameter_8185" name="Km_FPP" value="100000"/>
        </ListOfConstants>
        <KineticLaw function="Function_88" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_657">
              <SourceParameter reference="Parameter_7696"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_656">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="Parameter_7699"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="Parameter_8182"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="Parameter_8183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_658">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_659">
              <SourceParameter reference="Parameter_8185"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="LS" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8181" name="Vmax" value="8210.7"/>
          <Constant key="Parameter_8184" name="Km_GPP" value="1643.31"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Parameter_8181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Parameter_8184"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="LDH" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5740" name="k_f" value="10.239"/>
          <Constant key="Parameter_5741" name="k_r" value="8.46512e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_89" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_667">
              <SourceParameter reference="Parameter_5740"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_666">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_665">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_664">
              <SourceParameter reference="Parameter_5741"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="PPC" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          The active species for initial carboxylation is not CO2 but the chemically less reactive bicarbonate anion (HCO3-), but indicte as CO2 for model simplification
Also produces Pi, using Mg2+ or Mn2+ as a cofactor
Activated by  AcCoA, FBP, long-chain fatty acids, and guanosine 3',5'-bisphosphate and inhibited by C4-dicarboxylic acids, especially Asp and L-malate (MA)

Inhibition by fumarate?
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5743" name="Vmax" value="25.9766"/>
          <Constant key="Parameter_5739" name="Km_PEP" value="2716.98"/>
          <Constant key="Parameter_5742" name="nKm_PEP" value="1"/>
          <Constant key="Parameter_8152" name="Km_CO2" value="40471.7"/>
          <Constant key="Parameter_8153" name="Ka_AcCoA" value="388963"/>
          <Constant key="Parameter_8155" name="nKa_AcCoA" value="1"/>
          <Constant key="Parameter_8151" name="Ka_FBP" value="179882"/>
          <Constant key="Parameter_8154" name="Ki_FUM" value="4203.01"/>
          <Constant key="Parameter_6859" name="Ki_SUC" value="7726.24"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Parameter_5743"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="Parameter_5739"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="Parameter_5742"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="Parameter_8152"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="Parameter_8153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Parameter_8155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="Parameter_8151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Parameter_8154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="Parameter_6859"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="PCK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6860" name="Vf" value="6.64861"/>
          <Constant key="Parameter_6862" name="Km_OAA" value="1757.7"/>
          <Constant key="Parameter_6858" name="Km_ATP" value="1000"/>
          <Constant key="Parameter_6861" name="Vr" value="92.9095"/>
          <Constant key="Parameter_6864" name="Km_PEP" value="17031.3"/>
          <Constant key="Parameter_6865" name="Km_ADP" value="172064"/>
          <Constant key="Parameter_6867" name="Km_CO2" value="385787"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Parameter_6860"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_6862"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Parameter_6858"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Parameter_6861"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Parameter_6864"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Parameter_6865"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Parameter_6867"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="POXB" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Pyruvate oxidase
Also requires FAD to produce FADH2, but ignored to simplify model
https://doi.org/10.1038/srep42135
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6863" name="k_f" value="0.00199717"/>
          <Constant key="Parameter_6866" name="k_r" value="339.361"/>
        </ListOfConstants>
        <KineticLaw function="Function_91" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Parameter_6863"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="Parameter_6866"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="ACS" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Irreversible reaction - https://doi.org/10.1038/srep42135
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8452" name="Vmax" value="22596.5"/>
          <Constant key="Parameter_8453" name="Km_ACE" value="31960.1"/>
          <Constant key="Parameter_8455" name="Km_ATP" value="13420"/>
          <Constant key="Parameter_8451" name="Km_CoA" value="41071.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Parameter_8452"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Parameter_8453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Parameter_8455"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Parameter_8451"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="PTACK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Lumped reaction of PTA (phosphate acetyltransferase) and ACK (acetate kinase)
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8454" name="Vf" value="26.4958"/>
          <Constant key="Parameter_6743" name="Km_AcCoA" value="37591.8"/>
          <Constant key="Parameter_6744" name="Km_ADP" value="1660.61"/>
          <Constant key="Parameter_6746" name="Ka_PEP" value="310301"/>
          <Constant key="Parameter_6742" name="Ka_PYR" value="44082.2"/>
          <Constant key="Parameter_6745" name="Vr" value="1.18498"/>
          <Constant key="Parameter_8507" name="Km_ACE" value="174489"/>
          <Constant key="Parameter_8508" name="Km_ATP" value="11661.8"/>
          <Constant key="Parameter_8510" name="Km_CoA" value="4355.81"/>
          <Constant key="Parameter_8506" name="Ki_NADH" value="10510.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Parameter_8454"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Parameter_6743"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_6744"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Parameter_6746"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Parameter_6742"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Parameter_6745"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Parameter_8507"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Parameter_8508"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_8510"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Parameter_8506"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="ACE transport" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8509" name="Vf" value="9.64742"/>
          <Constant key="Parameter_7641" name="Km_ACE" value="4735.42"/>
          <Constant key="Parameter_7642" name="Vr" value="811.22"/>
          <Constant key="Parameter_7644" name="Km_ACEex" value="500000"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_655">
              <SourceParameter reference="Parameter_8509"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_654">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_653">
              <SourceParameter reference="Parameter_7641"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="Parameter_7642"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="Parameter_7644"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="ADH" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Alcohol dehydrogenase
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7640" name="Vf" value="31135.7"/>
          <Constant key="Parameter_7643" name="Km_ACTLD" value="2947.93"/>
          <Constant key="Parameter_6259" name="Km_NADH" value="1000"/>
          <Constant key="Parameter_6260" name="Vr" value="1.5811"/>
          <Constant key="Parameter_6262" name="Km_ETH" value="100000"/>
          <Constant key="Parameter_6258" name="Km_NAD" value="108286"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Parameter_7640"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Parameter_7643"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Parameter_6259"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Parameter_6260"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Parameter_6262"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Parameter_6258"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="ALDH" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6261" name="Vf" value="227712"/>
          <Constant key="Parameter_5159" name="Km_AcCoA" value="709.653"/>
          <Constant key="Parameter_5160" name="Km_NADH" value="547.927"/>
          <Constant key="Parameter_5167" name="Vr" value="521277"/>
          <Constant key="Parameter_5158" name="Km_ACTLD" value="1643.89"/>
          <Constant key="Parameter_5166" name="Km_NAD" value="542.68"/>
          <Constant key="Parameter_5165" name="Km_CoA" value="558.236"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Parameter_6261"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Parameter_5159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Parameter_5160"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Parameter_5167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Parameter_5158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Parameter_5166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Parameter_5165"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="ALDHB" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5164" name="Vmax" value="1.8111"/>
          <Constant key="Parameter_5163" name="Km_ACTLD" value="19351"/>
          <Constant key="Parameter_5162" name="Km_NADP" value="18281.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Parameter_5164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Parameter_5163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Parameter_5162"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="ETH transport" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5161" name="Vmax" value="3.27458"/>
          <Constant key="Parameter_4874" name="Km_ETH" value="15275.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Parameter_5161"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Parameter_4874"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="CSICD" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4875" name="Vmax" value="3.9575"/>
          <Constant key="Parameter_4877" name="Km_AcCoA" value="14739.9"/>
          <Constant key="Parameter_4873" name="Km_OAA" value="9656.43"/>
          <Constant key="Parameter_4876" name="Km_NAD" value="67324.4"/>
          <Constant key="Parameter_6738" name="Ki_AKG" value="254162"/>
          <Constant key="Parameter_6739" name="nKi_AKG" value="1"/>
          <Constant key="Parameter_6741" name="Ki_NADH" value="159499"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="Parameter_4875"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="Parameter_4877"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="Parameter_4873"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="Parameter_4876"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="Parameter_6738"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="Parameter_6739"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="Parameter_6741"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="AKGDH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6737" name="Vmax" value="1.89161"/>
          <Constant key="Parameter_6740" name="Km_AKG" value="27153.5"/>
          <Constant key="Parameter_5297" name="Km_NAD" value="10750.2"/>
          <Constant key="Parameter_5298" name="Km_CoA" value="3940.68"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Parameter_6737"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Parameter_6740"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Parameter_5297"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Parameter_5298"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="SCS" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5300" name="Vf" value="13.1672"/>
          <Constant key="Parameter_5296" name="Km_SucCoA" value="9111.67"/>
          <Constant key="Parameter_5299" name="Km_ADP" value="49517"/>
          <Constant key="Parameter_8412" name="Vr" value="347.439"/>
          <Constant key="Parameter_8413" name="Km_SUC" value="23166.5"/>
          <Constant key="Parameter_8415" name="Km_ATP" value="7554.76"/>
          <Constant key="Parameter_8411" name="Km_CoA" value="274256"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Parameter_5300"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Parameter_5296"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Parameter_5299"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Parameter_8412"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Parameter_8413"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Parameter_8415"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Parameter_8411"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="SUC transport" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8414" name="Vmax" value="49.9909"/>
          <Constant key="Parameter_4399" name="Km_SUC" value="1199.57"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Parameter_8414"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Parameter_4399"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="FRD" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Lumped reaction describing ATP synthesis via fumarate reduction
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="0.75"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="0.75"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4400" name="Vf" value="252.349"/>
          <Constant key="Parameter_4405" name="Vr" value="2.67232"/>
          <Constant key="Parameter_4398" name="Km_FUM" value="254036"/>
          <Constant key="Parameter_4404" name="Km_NADH" value="74064.8"/>
          <Constant key="Parameter_4403" name="Km_ADP" value="396763"/>
          <Constant key="Parameter_4402" name="Km_SUC" value="643183"/>
          <Constant key="Parameter_4401" name="Km_NAD" value="33882.8"/>
          <Constant key="Parameter_6440" name="Km_ATP" value="807176"/>
          <Constant key="Parameter_6441" name="Ki_OAA" value="160548"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Parameter_4400"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="Parameter_4398"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Parameter_4404"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Parameter_4403"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Parameter_4405"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Parameter_4402"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="Parameter_4401"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="Parameter_6440"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="Parameter_6441"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="MDH" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Lumped reaction of malate dehydrogenase and fumarase
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6443" name="Vf" value="7156.65"/>
          <Constant key="Parameter_6439" name="Km_FUM" value="7499.4"/>
          <Constant key="Parameter_6442" name="Km_NAD" value="423139"/>
          <Constant key="Parameter_8092" name="Vr" value="2.80486"/>
          <Constant key="Parameter_8093" name="Km_OAA" value="115924"/>
          <Constant key="Parameter_8095" name="Km_NADH" value="98267.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Parameter_6443"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Parameter_6439"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Parameter_6442"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Parameter_8092"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Parameter_8093"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Parameter_8095"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="B" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8091" name="Vmax" value="1.52353"/>
          <Constant key="Parameter_8094" name="Km_DXP" value="1770.77"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Parameter_8091"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Parameter_8094"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="G6PDH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Lumped reaction of:
G6P (+ NADP) -G6PDH-> 6-phosphogluconolactone (+ NADPH) -6PGL-> 6-phosphogluconate (PG6)
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7360" name="Vmax" value="48512.1"/>
          <Constant key="Parameter_7361" name="Km_G6P" value="7797.16"/>
          <Constant key="Parameter_7363" name="Km_NADP" value="1332.17"/>
          <Constant key="Parameter_7359" name="Ki_NADPH" value="263829"/>
          <Constant key="Parameter_7362" name="Ki_G6P" value="41750.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Parameter_7360"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Parameter_7361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Parameter_7363"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Parameter_7359"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Parameter_7362"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="PGDH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7265" name="Vmax" value="62.2647"/>
          <Constant key="Parameter_7266" name="Km_PG6" value="22421.5"/>
          <Constant key="Parameter_7268" name="Km_NADP" value="662493"/>
          <Constant key="Parameter_7264" name="Ki_FBP" value="17462.3"/>
          <Constant key="Parameter_7267" name="Ki_ATP" value="196487"/>
          <Constant key="Parameter_4647" name="Ki_NADPH" value="9947.46"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Parameter_7265"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Parameter_7266"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Parameter_7268"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Parameter_7264"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="Parameter_7267"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_4647"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="Tkb" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4648" name="Vf" value="44.2569"/>
          <Constant key="Parameter_4650" name="Km_Y" value="957442"/>
          <Constant key="Parameter_4646" name="Vr" value="5761.94"/>
          <Constant key="Parameter_4649" name="Km_GAP" value="19792.6"/>
          <Constant key="Parameter_6229" name="Km_F6P" value="2116.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Parameter_4648"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Parameter_4650"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Parameter_4646"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Parameter_4649"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Parameter_6229"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="NGAM" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6230" name="Vmax" value="4.95185"/>
          <Constant key="Parameter_6232" name="n" value="1"/>
          <Constant key="Parameter_6228" name="Km_ATP" value="151617"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_619">
              <SourceParameter reference="Parameter_6230"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_618">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="Parameter_6232"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="Parameter_6228"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="ADK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6231" name="Vf" value="3940.7"/>
          <Constant key="Parameter_7199" name="Km_AMP" value="1376.48"/>
          <Constant key="Parameter_7200" name="Km_ATP" value="443497"/>
          <Constant key="Parameter_7202" name="Vr" value="127.426"/>
          <Constant key="Parameter_7198" name="Km_ADP" value="22419.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Parameter_6231"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Parameter_7199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Parameter_7200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Parameter_7202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Parameter_7198"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="IDI" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7201" name="Vf" value="100"/>
          <Constant key="Parameter_7163" name="Km_IPP" value="1000"/>
          <Constant key="Parameter_7164" name="Vr" value="50"/>
          <Constant key="Parameter_7166" name="Km_DMAPP" value="1000"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Parameter_7201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Parameter_7163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Parameter_7164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Parameter_7166"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="PTS" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7162" name="Vf" value="3.54601"/>
          <Constant key="Parameter_7165" name="Km_Glcex" value="129820"/>
          <Constant key="Parameter_7305" name="Km_PEP" value="636260"/>
          <Constant key="Parameter_7306" name="Vr" value="20923.9"/>
          <Constant key="Parameter_7308" name="Km_G6P" value="33743.5"/>
          <Constant key="Parameter_7304" name="Km_PYR" value="43152.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="Parameter_7162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_646">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_645">
              <SourceParameter reference="Parameter_7165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_644">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="Parameter_7305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_642">
              <SourceParameter reference="Parameter_7306"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_641">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_640">
              <SourceParameter reference="Parameter_7308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="Parameter_7304"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="LAC transport" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7307" name="k1" value="0.03"/>
          <Constant key="Parameter_8597" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7307"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_8597"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="LIM transport" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8598" name="Vf" value="19.175"/>
          <Constant key="Parameter_8600" name="Km_LIM" value="36.2854"/>
        </ListOfConstants>
        <KineticLaw function="Function_94" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Parameter_8598"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_692">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_691">
              <SourceParameter reference="Parameter_8600"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="KDPGA" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2023-07-19T09:07:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8596" name="Vf" value="20496.1"/>
          <Constant key="Parameter_8599" name="Vr" value="2167.25"/>
          <Constant key="Parameter_6124" name="Km_GAP" value="40066.1"/>
          <Constant key="Parameter_6125" name="Km_KDPG" value="40217.9"/>
          <Constant key="Parameter_6127" name="Km_PYR" value="1867.62"/>
        </ListOfConstants>
        <KineticLaw function="Function_92" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="Parameter_8596"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="Parameter_8599"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="Parameter_6124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="Parameter_6125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_680">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="Parameter_6127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="PG6D" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2023-07-19T09:13:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6123" name="Vf" value="8078.72"/>
          <Constant key="Parameter_6126" name="Km_PG6" value="42636.1"/>
          <Constant key="Parameter_6134" name="Vr" value="27.1009"/>
          <Constant key="Parameter_6135" name="Km_KDPG" value="27446.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_93" unitType="Default" scalingCompartment="CN=Root,Model=New Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Parameter_6123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="Parameter_6126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="Parameter_6134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_685">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Parameter_6135"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Glc]" value="3661022463348464" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Glcex]" value="2.9989311473866372e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[G6P]" value="5.492665609802915e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ADP]" value="2.0892552819636792e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ATP]" value="1.0250452360009419e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[F6P]" value="5.1141163757461463e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FBP]" value="1.736358123694864e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DHAP]" value="2.0996562197264359e+19" type="Species" simulationType="reactions">
            <InitialExpression>
              34.86619-&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GAP],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GAP]" value="348197226084518.31" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[BPG]" value="4866451657699959" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NAD]" value="1.2450677648609569e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NADH]" value="9.2494333835787942e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PG3]" value="20783960016745792" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PEP]" value="1.8867077127639744e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PYR]" value="3.2403894291736463e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AcCoA]" value="2.1785622359400178e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CoA]" value="14948576357343382" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CO2]" value="17571684194330602" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AtAcCoA]" value="564208269907412.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[HMGCoA]" value="19149374578774028" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NADP]" value="1.8218781131774909e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NADPH]" value="8.7328732859507118e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVAP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVAPP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[IPP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DXP]" value="2.7862452961581665e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MEP]" value="6.02214076e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CDPME]" value="6.02214076e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CDPMEP]" value="6.02214076e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MEcPP]" value="1.204428152e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[HMBPP]" value="6.02214076e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DMAPP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GPP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FPP]" value="3.613284456e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LIM]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LAC]" value="3.01107038e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[OAA]" value="7433833663508337" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ACE]" value="3.01107038e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AMP]" value="45757580489731296" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ACEex]" value="1.2968852094911544e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ACTLD]" value="8.5364311983473019e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ETH]" value="9745059689055800" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ETHex]" value="1270434331781353" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AKG]" value="34300581348278944" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SucCoA]" value="4035298779963138.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SUC]" value="4896866962413876" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SUCex]" value="32265868654815256" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FUM]" value="3.9186359773313568e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[B]" value="1.8360768846792797e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PG6]" value="94024041947085584" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Y]" value="3.006812139323956e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LACex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LIMex]" value="5.0619471713519145e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[KDPG]" value="6.02214076e+17" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[DHAP+GAP]" value="34.866190000000003" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Vf" value="11283" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Km_Glcex" value="14311.200000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Vr" value="916.75900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Km_Glc" value="189662" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[HK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Vmax" value="22.072199999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Km_Glc" value="97038.699999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Km_ATP" value="142201" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Ki_G6P" value="140634" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PGI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Vf" value="81.094300000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Km_G6P" value="398841" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Vr" value="1.8878999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Km_F6P" value="23355" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Ki_PEP" value="8195.4400000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Ki_PG6" value="160354" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PFK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Vmax" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Km_F6P" value="12362.6" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=nKm_F6P" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Km_ATP" value="2679.0700000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Ka_ADP" value="4115.1499999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Ki_PEP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=nKi_PEP" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[FBA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Vf" value="7.1310399999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Km_FBP" value="28441.400000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Vr" value="1143.05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Km_GAP" value="17388.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Km_DHAP" value="8078.8000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Ki_PEP" value="2795.0500000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=nKi_PEP" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[TPI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Vf" value="3.4298899999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Km_DHAP" value="1781.75" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Vr" value="4.5287300000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Km_GAP" value="108238" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[GDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Vf" value="2.2886500000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_GAP" value="16182.799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_NAD" value="2346.4099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Vr" value="24690" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_BPG" value="350855" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_NADH" value="2445" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Vf" value="3.2622200000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_BPG" value="210711" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_ADP" value="1191.55" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Vr" value="166.70699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_PG3" value="2161.21" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_ATP" value="1000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ENO]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Vf" value="1.66703" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Km_PG3" value="175019" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Vr" value="3519.9499999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Km_PEP" value="25530.299999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PYK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Vmax" value="23.897600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Km_PEP" value="1611.6199999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=nKm_PEP" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Km_ADP" value="10901.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Ka_FBP" value="17739.900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=nKa_FBP" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Ki_ATP" value="91671.100000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Ki_SucCoA" value="546468" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=k_f" value="955.21000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[AtoB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Vf" value="37.9786" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Km_AcCoA" value="1506.05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Vr" value="22.772500000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Km_AtAcCoA" value="1913.1600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Km_CoA" value="469243" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[HMGS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGS],ParameterGroup=Parameters,Parameter=Vmax" value="43.672400000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGS],ParameterGroup=Parameters,Parameter=Km_AcCoA" value="4071.7399999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGS],ParameterGroup=Parameters,Parameter=Km_AtAcCoA" value="5394.9200000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[HMGR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGR],ParameterGroup=Parameters,Parameter=Vmax" value="95375.100000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGR],ParameterGroup=Parameters,Parameter=Km_HMGCoA" value="1250" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGR],ParameterGroup=Parameters,Parameter=Km_NADPH" value="1250" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[MK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Vmax" value="1000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Km_MVA" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Km_ATP" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Ki_DMAPP" value="1000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Ki_GPP" value="1000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Ki_FPP" value="1000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PMK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Vf" value="1000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_MVAP" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_ATP" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Vr" value="0" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_MVAPP" value="10000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_ADP" value="5783.1000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PMD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMD],ParameterGroup=Parameters,Parameter=Vmax" value="300000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMD],ParameterGroup=Parameters,Parameter=Km_MVAPP" value="189.24000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMD],ParameterGroup=Parameters,Parameter=Km_ATP" value="174.726" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[DXS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Vmax" value="1904.8299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Km_PYR" value="18536.900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Km_GAP" value="28453.299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Ki_IPP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Ki_DMAPP" value="1141.73" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[DXR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Vf" value="3206.1599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_DXP" value="4655.2600000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_NADPH" value="20713.900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Vr" value="22.275700000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_MEP" value="300332" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_NADP" value="4872.8100000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPD],ParameterGroup=Parameters,Parameter=Vmax" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPD],ParameterGroup=Parameters,Parameter=Km_MEP" value="15185.9" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPE],ParameterGroup=Parameters,Parameter=Vmax" value="3345.3499999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPE],ParameterGroup=Parameters,Parameter=Km_CDPME" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPE],ParameterGroup=Parameters,Parameter=Km_ATP" value="3726.9899999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Vmax" value="18773" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Km_CDPMEP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Ka_MEP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Ki_FPP" value="159542" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPG]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPG],ParameterGroup=Parameters,Parameter=Vmax" value="15346.799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPG],ParameterGroup=Parameters,Parameter=Km_MEcPP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPG],ParameterGroup=Parameters,Parameter=Km_NADPH" value="1247.8800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPH],ParameterGroup=Parameters,Parameter=Vmax" value="0" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPH],ParameterGroup=Parameters,Parameter=Km_HMBPP" value="8104.21" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPH],ParameterGroup=Parameters,Parameter=Km_NADPH" value="1597.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_1],ParameterGroup=Parameters,Parameter=Vmax" value="101932" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_1],ParameterGroup=Parameters,Parameter=Km_DMAPP" value="500" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_1],ParameterGroup=Parameters,Parameter=Km_IPP" value="500" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Vf" value="541.80799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Km_GPP" value="102904" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Km_IPP" value="292262" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Vr" value="200" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Km_FPP" value="100000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[LS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LS],ParameterGroup=Parameters,Parameter=Vmax" value="8210.7000000000007" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LS],ParameterGroup=Parameters,Parameter=Km_GPP" value="1643.3099999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[LDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=k_f" value="10.239000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=k_r" value="8.4651199999999993e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PPC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Vmax" value="25.976600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Km_PEP" value="2716.98" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=nKm_PEP" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Km_CO2" value="40471.699999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ka_AcCoA" value="388963" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=nKa_AcCoA" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ka_FBP" value="179882" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ki_FUM" value="4203.0100000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ki_SUC" value="7726.2399999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PCK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Vf" value="6.6486099999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_OAA" value="1757.7" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_ATP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Vr" value="92.909499999999994" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_PEP" value="17031.299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_ADP" value="172064" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_CO2" value="385787" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[POXB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[POXB],ParameterGroup=Parameters,Parameter=k_f" value="0.0019971699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[POXB],ParameterGroup=Parameters,Parameter=k_r" value="339.36099999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ACS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Vmax" value="22596.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Km_ACE" value="31960.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Km_ATP" value="13420" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Km_CoA" value="41071.699999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PTACK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Vf" value="26.495799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_AcCoA" value="37591.800000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_ADP" value="1660.6099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Ka_PEP" value="310301" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Ka_PYR" value="44082.199999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Vr" value="1.1849799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_ACE" value="174489" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_ATP" value="11661.799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_CoA" value="4355.8100000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Ki_NADH" value="10510.9" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ACE transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Vf" value="9.6474200000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Km_ACE" value="4735.4200000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Vr" value="811.22000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Km_ACEex" value="500000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ADH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Vf" value="31135.700000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_ACTLD" value="2947.9299999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_NADH" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Vr" value="1.5810999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_ETH" value="100000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_NAD" value="108286" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ALDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Vf" value="227712" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_AcCoA" value="709.65300000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_NADH" value="547.92700000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Vr" value="521277" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_ACTLD" value="1643.8900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_NAD" value="542.67999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_CoA" value="558.23599999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ALDHB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDHB],ParameterGroup=Parameters,Parameter=Vmax" value="1.8110999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDHB],ParameterGroup=Parameters,Parameter=Km_ACTLD" value="19351" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDHB],ParameterGroup=Parameters,Parameter=Km_NADP" value="18281.900000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ETH transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ETH transport],ParameterGroup=Parameters,Parameter=Vmax" value="3.2745799999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ETH transport],ParameterGroup=Parameters,Parameter=Km_ETH" value="15275.799999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[CSICD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Vmax" value="3.9575" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Km_AcCoA" value="14739.9" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Km_OAA" value="9656.4300000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Km_NAD" value="67324.399999999994" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Ki_AKG" value="254162" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=nKi_AKG" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Ki_NADH" value="159499" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[AKGDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Vmax" value="1.89161" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Km_AKG" value="27153.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Km_NAD" value="10750.200000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Km_CoA" value="3940.6799999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[SCS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Vf" value="13.167199999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_SucCoA" value="9111.6700000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_ADP" value="49517" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Vr" value="347.43900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_SUC" value="23166.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_ATP" value="7554.7600000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_CoA" value="274256" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[SUC transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SUC transport],ParameterGroup=Parameters,Parameter=Vmax" value="49.990900000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SUC transport],ParameterGroup=Parameters,Parameter=Km_SUC" value="1199.5699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[FRD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Vf" value="252.34899999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Vr" value="2.67232" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_FUM" value="254036" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_NADH" value="74064.800000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_ADP" value="396763" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_SUC" value="643183" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_NAD" value="33882.800000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_ATP" value="807176" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Ki_OAA" value="160548" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[MDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Vf" value="7156.6499999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_FUM" value="7499.3999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_NAD" value="423139" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Vr" value="2.8048600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_OAA" value="115924" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_NADH" value="98267.699999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[B]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[B],ParameterGroup=Parameters,Parameter=Vmax" value="1.5235300000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[B],ParameterGroup=Parameters,Parameter=Km_DXP" value="1770.77" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Vmax" value="48512.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Km_G6P" value="7797.1599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Km_NADP" value="1332.1700000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Ki_NADPH" value="263829" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Ki_G6P" value="41750.199999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PGDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Vmax" value="62.264699999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Km_PG6" value="22421.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Km_NADP" value="662493" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Ki_FBP" value="17462.299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Ki_ATP" value="196487" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Ki_NADPH" value="9947.4599999999991" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[Tkb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Vf" value="44.256900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Km_Y" value="957442" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Vr" value="5761.9399999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Km_GAP" value="19792.599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Km_F6P" value="2116.6300000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[NGAM]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[NGAM],ParameterGroup=Parameters,Parameter=Vmax" value="4.9518500000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[NGAM],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[NGAM],ParameterGroup=Parameters,Parameter=Km_ATP" value="151617" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ADK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Vf" value="3940.6999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Km_AMP" value="1376.48" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Km_ATP" value="443497" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Vr" value="127.426" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Km_ADP" value="22419.200000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[IDI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Vf" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Km_IPP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Vr" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Km_DMAPP" value="1000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PTS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Vf" value="3.5460099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_Glcex" value="129820" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_PEP" value="636260" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Vr" value="20923.900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_G6P" value="33743.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_PYR" value="43152.199999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[LAC transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LAC transport],ParameterGroup=Parameters,Parameter=k1" value="0.029999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LAC transport],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[LIM transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LIM transport],ParameterGroup=Parameters,Parameter=Vf" value="19.175000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LIM transport],ParameterGroup=Parameters,Parameter=Km_LIM" value="36.285400000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Vf" value="20496.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Vr" value="2167.25" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Km_GAP" value="40066.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Km_KDPG" value="40217.900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Km_PYR" value="1867.6199999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PG6D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Vf" value="8078.7200000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Km_PG6" value="42636.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Vr" value="27.100899999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Km_KDPG" value="27446.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_7" name="tuned">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Glc]" value="3661022463348464" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Glcex]" value="2.9989311473866372e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[G6P]" value="5.492665609802915e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ADP]" value="2.0892552819636792e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ATP]" value="1.0250452360009419e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[F6P]" value="5.1141163757461463e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FBP]" value="1.736358123694864e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DHAP]" value="2.0996562197264359e+19" type="Species" simulationType="reactions">
            <InitialExpression>
              34.86619-&lt;CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GAP],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GAP]" value="348197226084518.31" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[BPG]" value="4866451657699959" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NAD]" value="1.2450677648609569e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NADH]" value="9.2494333835787942e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PG3]" value="20783960016745792" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PEP]" value="1.8867077127639744e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PYR]" value="3.2403894291736463e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AcCoA]" value="2.1785622359400178e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CoA]" value="14948576357343382" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CO2]" value="17571684194330602" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AtAcCoA]" value="564208269907412.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[HMGCoA]" value="19149374578774028" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NADP]" value="1.8218781131774909e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NADPH]" value="8.7328732859507118e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVAP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVAPP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[IPP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DXP]" value="2.7862452961581665e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MEP]" value="6.02214076e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CDPME]" value="6.02214076e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CDPMEP]" value="6.02214076e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MEcPP]" value="1.204428152e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[HMBPP]" value="6.02214076e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DMAPP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GPP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FPP]" value="3.613284456e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LIM]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LAC]" value="3.01107038e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[OAA]" value="7433833663508337" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ACE]" value="3.01107038e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AMP]" value="45757580489731296" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ACEex]" value="1.2968852094911544e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ACTLD]" value="8.5364311983473019e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ETH]" value="9745059689055800" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ETHex]" value="1270434331781353" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AKG]" value="34300581348278944" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SucCoA]" value="4035298779963138.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SUC]" value="4896866962413876" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SUCex]" value="32265868654815256" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FUM]" value="3.9186359773313568e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[B]" value="1.8360768846792797e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PG6]" value="94024041947085584" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Y]" value="3.006812139323956e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LACex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LIMex]" value="5.0619471713519145e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[KDPG]" value="6.02214076e+17" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Values[DHAP+GAP]" value="34.866190000000003" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Vf" value="11283" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Km_Glcex" value="14311.200000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Vr" value="916.75900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Km_Glc" value="189662" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[HK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Vmax" value="22.072199999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Km_Glc" value="97038.699999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Km_ATP" value="142201" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Ki_G6P" value="140634" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PGI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Vf" value="81.094300000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Km_G6P" value="398841" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Vr" value="1.8878999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Km_F6P" value="23355" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Ki_PEP" value="8195.4400000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Ki_PG6" value="160354" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PFK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Vmax" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Km_F6P" value="12362.6" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=nKm_F6P" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Km_ATP" value="2679.0700000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Ka_ADP" value="4115.1499999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Ki_PEP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=nKi_PEP" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[FBA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Vf" value="7.1310399999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Km_FBP" value="28441.400000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Vr" value="1143.05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Km_GAP" value="17388.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Km_DHAP" value="8078.8000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Ki_PEP" value="2795.0500000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=nKi_PEP" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[TPI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Vf" value="3.4298899999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Km_DHAP" value="1781.75" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Vr" value="4.5287300000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Km_GAP" value="108238" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[GDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Vf" value="2.2886500000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_GAP" value="16182.799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_NAD" value="2346.4099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Vr" value="24690" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_BPG" value="350855" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_NADH" value="2445" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Vf" value="3.2622200000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_BPG" value="210711" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_ADP" value="1191.55" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Vr" value="166.70699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_PG3" value="2161.21" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_ATP" value="1000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ENO]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Vf" value="1.66703" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Km_PG3" value="175019" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Vr" value="3519.9499999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Km_PEP" value="25530.299999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PYK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Vmax" value="23.897600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Km_PEP" value="1611.6199999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=nKm_PEP" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Km_ADP" value="10901.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Ka_FBP" value="17739.900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=nKa_FBP" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Ki_ATP" value="91671.100000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Ki_SucCoA" value="546468" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=k_f" value="955.21000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[AtoB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Vf" value="37.9786" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Km_AcCoA" value="1506.05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Vr" value="22.772500000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Km_AtAcCoA" value="1913.1600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Km_CoA" value="469243" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[HMGS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGS],ParameterGroup=Parameters,Parameter=Vmax" value="43.672400000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGS],ParameterGroup=Parameters,Parameter=Km_AcCoA" value="4071.7399999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGS],ParameterGroup=Parameters,Parameter=Km_AtAcCoA" value="5394.9200000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[HMGR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGR],ParameterGroup=Parameters,Parameter=Vmax" value="95375.100000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGR],ParameterGroup=Parameters,Parameter=Km_HMGCoA" value="1250" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[HMGR],ParameterGroup=Parameters,Parameter=Km_NADPH" value="1250" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[MK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Vmax" value="1000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Km_MVA" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Km_ATP" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Ki_DMAPP" value="1000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Ki_GPP" value="1000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Ki_FPP" value="1000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PMK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Vf" value="1000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_MVAP" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_ATP" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Vr" value="0" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_MVAPP" value="10000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_ADP" value="5783.1000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PMD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMD],ParameterGroup=Parameters,Parameter=Vmax" value="300000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMD],ParameterGroup=Parameters,Parameter=Km_MVAPP" value="189.24000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PMD],ParameterGroup=Parameters,Parameter=Km_ATP" value="174.726" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[DXS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Vmax" value="1904.8299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Km_PYR" value="18536.900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Km_GAP" value="28453.299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Ki_IPP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Ki_DMAPP" value="1141.73" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[DXR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Vf" value="3206.1599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_DXP" value="4655.2600000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_NADPH" value="20713.900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Vr" value="22.275700000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_MEP" value="300332" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_NADP" value="4872.8100000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPD],ParameterGroup=Parameters,Parameter=Vmax" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPD],ParameterGroup=Parameters,Parameter=Km_MEP" value="15185.9" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPE],ParameterGroup=Parameters,Parameter=Vmax" value="3345.3499999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPE],ParameterGroup=Parameters,Parameter=Km_CDPME" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPE],ParameterGroup=Parameters,Parameter=Km_ATP" value="3726.9899999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Vmax" value="18773.02" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Km_CDPMEP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Ka_MEP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Ki_FPP" value="159542" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPG]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPG],ParameterGroup=Parameters,Parameter=Vmax" value="15346.799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPG],ParameterGroup=Parameters,Parameter=Km_MEcPP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPG],ParameterGroup=Parameters,Parameter=Km_NADPH" value="1247.8800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPH],ParameterGroup=Parameters,Parameter=Vmax" value="5000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPH],ParameterGroup=Parameters,Parameter=Km_HMBPP" value="8104.21" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPH],ParameterGroup=Parameters,Parameter=Km_NADPH" value="1597.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_1],ParameterGroup=Parameters,Parameter=Vmax" value="101932" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_1],ParameterGroup=Parameters,Parameter=Km_DMAPP" value="500" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_1],ParameterGroup=Parameters,Parameter=Km_IPP" value="500" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Vf" value="541.80799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Km_GPP" value="102904" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Km_IPP" value="292262" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Vr" value="200" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Km_FPP" value="100000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[LS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LS],ParameterGroup=Parameters,Parameter=Vmax" value="8210.7000000000007" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LS],ParameterGroup=Parameters,Parameter=Km_GPP" value="1643.3099999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[LDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=k_f" value="10.23902" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=k_r" value="8.4651199999999993e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PPC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Vmax" value="25.976600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Km_PEP" value="2716.98" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=nKm_PEP" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Km_CO2" value="40471.699999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ka_AcCoA" value="388963" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=nKa_AcCoA" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ka_FBP" value="179882" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ki_FUM" value="4203.0100000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ki_SUC" value="7726.2399999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PCK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Vf" value="6.6486099999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_OAA" value="1757.7" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_ATP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Vr" value="92.909499999999994" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_PEP" value="17031.299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_ADP" value="172064" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_CO2" value="385787" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[POXB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[POXB],ParameterGroup=Parameters,Parameter=k_f" value="0.0019971699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[POXB],ParameterGroup=Parameters,Parameter=k_r" value="339.36099999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ACS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Vmax" value="22596.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Km_ACE" value="31960.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Km_ATP" value="13420" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Km_CoA" value="41071.699999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PTACK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Vf" value="26.495799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_AcCoA" value="37591.800000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_ADP" value="1660.6099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Ka_PEP" value="310301" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Ka_PYR" value="44082.199999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Vr" value="1.1849799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_ACE" value="174489" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_ATP" value="11661.799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_CoA" value="4355.8100000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Ki_NADH" value="10510.9" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ACE transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Vf" value="9.6474200000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Km_ACE" value="4735.4200000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Vr" value="811.22000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Km_ACEex" value="500000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ADH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Vf" value="31135.700000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_ACTLD" value="2947.9299999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_NADH" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Vr" value="1.5810999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_ETH" value="100000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_NAD" value="108286" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ALDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Vf" value="227712" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_AcCoA" value="709.65300000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_NADH" value="547.92700000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Vr" value="521277" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_ACTLD" value="1643.8900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_NAD" value="542.67999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_CoA" value="558.23599999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ALDHB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDHB],ParameterGroup=Parameters,Parameter=Vmax" value="1.8110999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDHB],ParameterGroup=Parameters,Parameter=Km_ACTLD" value="19351" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ALDHB],ParameterGroup=Parameters,Parameter=Km_NADP" value="18281.900000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ETH transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ETH transport],ParameterGroup=Parameters,Parameter=Vmax" value="3.2745799999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ETH transport],ParameterGroup=Parameters,Parameter=Km_ETH" value="15275.799999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[CSICD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Vmax" value="3.9575" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Km_AcCoA" value="14739.9" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Km_OAA" value="9656.4300000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Km_NAD" value="67324.399999999994" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Ki_AKG" value="254162" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=nKi_AKG" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Ki_NADH" value="159499" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[AKGDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Vmax" value="1.89161" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Km_AKG" value="27153.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Km_NAD" value="10750.200000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Km_CoA" value="3940.6799999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[SCS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Vf" value="13.167199999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_SucCoA" value="9111.6700000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_ADP" value="49517" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Vr" value="347.43900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_SUC" value="23166.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_ATP" value="7554.7600000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_CoA" value="274256" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[SUC transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SUC transport],ParameterGroup=Parameters,Parameter=Vmax" value="49.990900000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[SUC transport],ParameterGroup=Parameters,Parameter=Km_SUC" value="1199.5699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[FRD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Vf" value="252.34899999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Vr" value="2.67232" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_FUM" value="254036" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_NADH" value="74064.800000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_ADP" value="396763" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_SUC" value="643183" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_NAD" value="33882.800000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_ATP" value="807176" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Ki_OAA" value="160548" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[MDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Vf" value="7156.6499999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_FUM" value="7499.3999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_NAD" value="423139" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Vr" value="2.8048600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_OAA" value="115924" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_NADH" value="98267.699999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[B]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[B],ParameterGroup=Parameters,Parameter=Vmax" value="1.5235300000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[B],ParameterGroup=Parameters,Parameter=Km_DXP" value="1770.77" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Vmax" value="48512.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Km_G6P" value="7797.1599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Km_NADP" value="1332.1700000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Ki_NADPH" value="263829" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Ki_G6P" value="41750.199999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PGDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Vmax" value="62.264699999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Km_PG6" value="22421.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Km_NADP" value="662493" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Ki_FBP" value="17462.299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Ki_ATP" value="196487" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Ki_NADPH" value="9947.4599999999991" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[Tkb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Vf" value="44.256900000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Km_Y" value="957442" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Vr" value="5761.9399999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Km_GAP" value="19792.599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Km_F6P" value="2116.6300000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[NGAM]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[NGAM],ParameterGroup=Parameters,Parameter=Vmax" value="4.9518500000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[NGAM],ParameterGroup=Parameters,Parameter=n" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[NGAM],ParameterGroup=Parameters,Parameter=Km_ATP" value="151617" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[ADK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Vf" value="3940.6999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Km_AMP" value="1376.48" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Km_ATP" value="443497" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Vr" value="127.426" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Km_ADP" value="22419.200000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[IDI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Vf" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Km_IPP" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Vr" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Km_DMAPP" value="1000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PTS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Vf" value="3.5460099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_Glcex" value="129820" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_PEP" value="636260" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Vr" value="20923.900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_G6P" value="33743.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_PYR" value="43152.199999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[LAC transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LAC transport],ParameterGroup=Parameters,Parameter=k1" value="0.029999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LAC transport],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[LIM transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LIM transport],ParameterGroup=Parameters,Parameter=Vf" value="19.175000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[LIM transport],ParameterGroup=Parameters,Parameter=Km_LIM" value="36.285400000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Vf" value="20496.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Vr" value="2167.25" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Km_GAP" value="40066.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Km_KDPG" value="40217.900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Km_PYR" value="1867.6199999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[PG6D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Vf" value="8078.7200000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Km_PG6" value="42636.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Vr" value="27.100899999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Km_KDPG" value="27446.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 2.1785622359400178e+19 3.2403894291736463e+18 348197226084518.31 0 3.01107038e+17 1.8867077127639744e+18 5.492665609802915e+19 0 4896866962413876 7433833663508337 2.7862452961581665e+18 94024041947085584 8.5364311983473019e+18 5.1141163757461463e+19 0 6.02214076e+18 1.204428152e+19 2.0996562197264359e+19 564208269907412.25 0 4866451657699959 3.01107038e+17 3661022463348464 0 4035298779963138.5 9745059689055800 0 6.02214076e+17 6.02214076e+18 3.9186359773313568e+17 6.02214076e+18 20783960016745792 1.736358123694864e+19 0 34300581348278944 1.2968852094911544e+23 6.02214076e+18 2.9989311473866372e+24 1.8360768846792797e+17 0 5.0619471713519145e+18 1270434331781353 19149374578774028 32265868654815256 3.006812139323956e+19 3.613284456e+17 34.866190000000003 2.0892552819636792e+18 1.0250452360009419e+19 1.2450677648609569e+18 9.2494333835787942e+17 14948576357343382 17571684194330602 1.8218781131774909e+17 8.7328732859507118e+18 45757580489731296 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="480"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="480"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="1stPhase_drop1stTimepoint_G6PandF6Pseparated_PYRMA_PE.txt" append="0" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GAP],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="79.712715"/>
            <Parameter name="StartValue" type="float" value="0.00057819509700000004"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Km_Glc,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="189662.3919792365"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Km_Glcex,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="14311.180525290925"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="11282.986995743917"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[A],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="916.75875805387614"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_G6P,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="33743.519493277665"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_Glcex,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="129820.41157585263"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_PEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="636259.51100833551"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Km_PYR,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="43152.158681645211"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="3.5460050093547881"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTS],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="20923.866821224441"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Ki_G6P,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="140634.41006425899"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="142200.51234001364"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Km_Glc,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="97038.706637864569"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="22.072170922730987"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Ki_PEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="8195.4380971304399"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Ki_PG6,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="160353.71401036563"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Km_F6P,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="23355.008020378336"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Km_G6P,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="398840.72455044341"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="81.094293290915289"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="1.8878979656205535"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Ka_ADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="4115.1460192202558"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Ki_PEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="2679.0733717911894"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Km_F6P,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="12362.632955340167"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Ki_PEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="2795.0528235528304"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Km_DHAP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="8078.7967889550637"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Km_FBP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="28441.370128967021"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Km_GAP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="17388.089004931699"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="7.1310411588576237"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="1143.0533081370397"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Km_DHAP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1781.7543359140395"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Km_GAP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="108238.17554362951"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="3.429893457108466"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="4.5287298384914605"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_BPG,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="350854.50738246011"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_GAP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="16182.783048620882"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_NAD,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="2346.4138721799864"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Km_NADH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="2445.0020654510754"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="2.2886509537333786"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[GDH],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="24689.970671556683"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_ADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1191.5496978475269"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_BPG,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="210710.87710033773"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Km_PG3,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="2161.2107221643005"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="3.2622237142321917"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="166.70680225918255"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Km_PEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="25530.291286278771"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Km_PG3,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="175018.96990116697"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="1.6670261350316422"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="3519.9490302014833"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Ka_FBP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="17739.909381442347"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Ki_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="91671.112665309382"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Ki_SucCoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="546468.1051766387"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Km_ADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="10901.484463122093"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Km_PEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1611.6198574838177"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="23.897632978607916"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Km_AcCoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="150604.8856300248"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Km_AtAcCoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1913.1589045397498"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Km_CoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="469242.57654485165"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="37.978604090595411"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[AtoB],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="2277.2483892245436"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[HMGS],ParameterGroup=Parameters,Parameter=Km_AcCoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="40717.402869201134"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[HMGS],ParameterGroup=Parameters,Parameter=Km_AtAcCoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="53949.165999731267"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[HMGS],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="43.672386831390611"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[HMGR],ParameterGroup=Parameters,Parameter=Km_HMGCoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="143296.10049355551"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[HMGR],ParameterGroup=Parameters,Parameter=Km_NADPH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="147553.51669034874"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[HMGR],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="153.75109045977655"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Ki_DMAPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="34424.365115286644"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Ki_FPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="132744.39624409383"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Ki_GPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="3991.1357711005317"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="2132.4007300159319"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Km_MVA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="11894.578148510807"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MK],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="17.383839542330794"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_ADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="5783.1034334871047"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="462174.72500526469"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_MVAP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="20105.367738844154"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Km_MVAPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="15589.245790363833"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PMK],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="99.607728664875438"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PMD],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="100"/>
            <Parameter name="UpperBound" type="cn" value="1000"/>
            <Parameter name="StartValue" type="float" value="174.72606820059357"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PMD],ParameterGroup=Parameters,Parameter=Km_MVAPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="100"/>
            <Parameter name="UpperBound" type="cn" value="1000"/>
            <Parameter name="StartValue" type="float" value="459.23979567182789"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PMD],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="300000"/>
            <Parameter name="UpperBound" type="cn" value="900000"/>
            <Parameter name="StartValue" type="float" value="300000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Ki_DMAPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1141.7291815960607"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Ki_IPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Km_GAP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="28453.275795450987"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Km_PYR,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="18536.94223914087"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[DXS],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="1904.8284305377131"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_DXP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="4655.2567214773189"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_MEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="300332.27170129708"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_NADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="4872.8103776397957"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Km_NADPH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="20713.889007073987"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="32061.643750127321"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[DXR],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="22.275655988435197"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPD],ParameterGroup=Parameters,Parameter=Km_MEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="15185.926679959599"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPD],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="57978.611686273587"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPE],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="372698.5923144531"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPE],ParameterGroup=Parameters,Parameter=Km_CDPME,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="7726.1482278224721"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPE],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="3345.3480269829197"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Ka_MEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="645997.36406165012"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Ki_FPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1595.4202299055437"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Km_CDPMEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="9841.3648589510376"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPF],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="27.730245028563907"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPG],ParameterGroup=Parameters,Parameter=Km_MEcPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPG],ParameterGroup=Parameters,Parameter=Km_NADPH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="124788.06201172112"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPG],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="15346.821200012379"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPH],ParameterGroup=Parameters,Parameter=Km_HMBPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="8104.2134180789844"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPH],ParameterGroup=Parameters,Parameter=Km_NADPH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1597.4977771852086"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPH],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="49260.722324941737"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPA_1],ParameterGroup=Parameters,Parameter=Km_DMAPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="500"/>
            <Parameter name="UpperBound" type="cn" value="5000"/>
            <Parameter name="StartValue" type="float" value="5000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPA_1],ParameterGroup=Parameters,Parameter=Km_IPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="5000"/>
            <Parameter name="StartValue" type="float" value="5000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPA_1],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="100000"/>
            <Parameter name="UpperBound" type="cn" value="500000"/>
            <Parameter name="StartValue" type="float" value="101931.50984765106"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Km_FPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="20000"/>
            <Parameter name="UpperBound" type="cn" value="100000"/>
            <Parameter name="StartValue" type="float" value="100000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Km_GPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="100000"/>
            <Parameter name="UpperBound" type="cn" value="300000"/>
            <Parameter name="StartValue" type="float" value="102904.34583362243"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Km_IPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="100000"/>
            <Parameter name="UpperBound" type="cn" value="500000"/>
            <Parameter name="StartValue" type="float" value="292262.30004371831"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="300"/>
            <Parameter name="UpperBound" type="cn" value="3000"/>
            <Parameter name="StartValue" type="float" value="541.80803666213046"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ISPA_2],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="300"/>
            <Parameter name="UpperBound" type="cn" value="1000"/>
            <Parameter name="StartValue" type="float" value="300"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[LS],ParameterGroup=Parameters,Parameter=Km_GPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="50000"/>
            <Parameter name="StartValue" type="float" value="40433.12762176423"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[LS],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="40000"/>
            <Parameter name="StartValue" type="float" value="12210.703758312782"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Km_DMAPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="60000"/>
            <Parameter name="StartValue" type="float" value="10361.020635185418"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Km_IPP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="100000"/>
            <Parameter name="UpperBound" type="cn" value="600000"/>
            <Parameter name="StartValue" type="float" value="600000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="50000"/>
            <Parameter name="UpperBound" type="cn" value="120000"/>
            <Parameter name="StartValue" type="float" value="51012.517731567692"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[IDI],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="500"/>
            <Parameter name="UpperBound" type="cn" value="4000"/>
            <Parameter name="StartValue" type="float" value="4000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ka_AcCoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="388962.59326319792"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ka_FBP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="179881.6690681664"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ki_FUM,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="4203.0145255208308"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Ki_SUC,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="7726.2441973997866"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Km_CO2,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="40471.730208677647"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Km_PEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="2716.9801503016461"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PPC],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="25.976553647365748"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_ADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="172063.75227406839"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_CO2,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="385787.44673741388"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_OAA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1757.7033452378705"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Km_PEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="17031.257655517755"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="6.6486089895418079"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PCK],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="92.90946093854582"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Km_ACE,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="50000"/>
            <Parameter name="StartValue" type="float" value="31960.060512084012"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="50000"/>
            <Parameter name="StartValue" type="float" value="13420.0205621315"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Km_CoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="50000"/>
            <Parameter name="StartValue" type="float" value="41071.705145877902"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ACS],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="50000"/>
            <Parameter name="StartValue" type="float" value="22596.478695148813"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Ka_PEP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="100000"/>
            <Parameter name="UpperBound" type="cn" value="500000"/>
            <Parameter name="StartValue" type="float" value="310300.65711251635"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Ka_PYR,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="60000"/>
            <Parameter name="StartValue" type="float" value="44082.226465196756"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Ki_NADH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="50000"/>
            <Parameter name="StartValue" type="float" value="10510.863772068011"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_ACE,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="100000"/>
            <Parameter name="UpperBound" type="cn" value="500000"/>
            <Parameter name="StartValue" type="float" value="174488.8120964785"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_ADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="6000"/>
            <Parameter name="StartValue" type="float" value="1660.6117883228324"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="50000"/>
            <Parameter name="StartValue" type="float" value="11661.765863998564"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_AcCoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="80000"/>
            <Parameter name="StartValue" type="float" value="37591.771057936814"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Km_CoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="8000"/>
            <Parameter name="StartValue" type="float" value="4355.8079153347671"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10"/>
            <Parameter name="UpperBound" type="cn" value="80"/>
            <Parameter name="StartValue" type="float" value="26.495779823326437"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PTACK],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <Parameter name="StartValue" type="float" value="1.1849758898367657"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Km_ACE,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="6000"/>
            <Parameter name="StartValue" type="float" value="4735.4163500023487"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Km_ACEex,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="100000"/>
            <Parameter name="UpperBound" type="cn" value="500000"/>
            <Parameter name="StartValue" type="float" value="500000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="20"/>
            <Parameter name="StartValue" type="float" value="9.6474239967095379"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ACE transport],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="3000"/>
            <Parameter name="StartValue" type="float" value="1062.2155762224925"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_ACTLD,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="5000"/>
            <Parameter name="StartValue" type="float" value="2947.9292761613619"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_ETH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="100000"/>
            <Parameter name="UpperBound" type="cn" value="200000"/>
            <Parameter name="StartValue" type="float" value="100000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_NAD,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="100000"/>
            <Parameter name="UpperBound" type="cn" value="200000"/>
            <Parameter name="StartValue" type="float" value="108285.90008926482"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Km_NADH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="4000"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="40000"/>
            <Parameter name="UpperBound" type="cn" value="100000"/>
            <Parameter name="StartValue" type="float" value="71135.691982267846"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="5"/>
            <Parameter name="StartValue" type="float" value="1.5810954339094614"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_ACTLD,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="500"/>
            <Parameter name="UpperBound" type="cn" value="2000"/>
            <Parameter name="StartValue" type="float" value="1643.8870698292535"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_AcCoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="500"/>
            <Parameter name="UpperBound" type="cn" value="2000"/>
            <Parameter name="StartValue" type="float" value="709.65309316160119"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_CoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="500"/>
            <Parameter name="UpperBound" type="cn" value="2000"/>
            <Parameter name="StartValue" type="float" value="558.23623162865283"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_NAD,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="500"/>
            <Parameter name="UpperBound" type="cn" value="2000"/>
            <Parameter name="StartValue" type="float" value="542.68011724856547"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Km_NADH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="500"/>
            <Parameter name="UpperBound" type="cn" value="2000"/>
            <Parameter name="StartValue" type="float" value="547.92663954224349"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="500000"/>
            <Parameter name="UpperBound" type="cn" value="900000"/>
            <Parameter name="StartValue" type="float" value="537712.28684663621"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ALDH],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="500000"/>
            <Parameter name="UpperBound" type="cn" value="900000"/>
            <Parameter name="StartValue" type="float" value="521277.17342622182"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ALDHB],ParameterGroup=Parameters,Parameter=Km_ACTLD,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="60000"/>
            <Parameter name="StartValue" type="float" value="19350.982327545466"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ALDHB],ParameterGroup=Parameters,Parameter=Km_NADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="UpperBound" type="cn" value="60000"/>
            <Parameter name="StartValue" type="float" value="18281.90171072396"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ALDHB],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="5"/>
            <Parameter name="StartValue" type="float" value="1.8110960929567783"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ETH transport],ParameterGroup=Parameters,Parameter=Km_ETH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="15275.779359904453"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ETH transport],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="3.2745799338486701"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Ki_AKG,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="254161.71315270534"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Ki_NADH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="159499.16168805439"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Km_AcCoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="14739.921665365657"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Km_NAD,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="67324.442106610077"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Km_OAA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="9656.4281260792013"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[CSICD],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="3.9575027342212463"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Km_AKG,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="27153.496276859874"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Km_CoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="3940.6811322417043"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Km_NAD,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="10750.151308873928"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[AKGDH],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="1.8916054229506536"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_ADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="49516.988914934569"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="7554.7580677338683"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_CoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="274256.00372953113"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_SUC,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="23166.526894006111"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Km_SucCoA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="9111.6735339226634"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="13.167209272562369"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[SCS],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="347.43854435529499"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[SUC transport],ParameterGroup=Parameters,Parameter=Km_SUC,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1199.5667004299019"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[SUC transport],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="49.990928440900994"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Ki_OAA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="160548.408189081"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_ADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="396762.63284068572"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="807175.58969093638"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_FUM,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="254035.6449422864"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_NAD,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="33882.839056335732"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_NADH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="74064.836531750552"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Km_SUC,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="643182.6456954052"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="252.34884856040691"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[FRD],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="2.6723155838048704"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_FUM,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="7499.3981644942469"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_NAD,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="423139.26784421358"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_NADH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="98267.737962800282"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Km_OAA,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="115924.13014097369"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="7156.6486079420893"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[MDH],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="2.8048621937916605"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[B],ParameterGroup=Parameters,Parameter=Km_DXP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1770.7736753508123"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[B],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="1.5235280201326189"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Ki_G6P,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="41750.224778363568"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Ki_NADPH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="263829.19825601979"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Km_G6P,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="7797.1649263125064"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Km_NADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1332.167547604208"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[G6PDH],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="48512.083202627051"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Ki_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="196487.21658596868"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Ki_FBP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="17462.335416141905"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Ki_NADPH,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="9947.4638254321708"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Km_NADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="662493.42586599244"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Km_PG6,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="22421.490291894872"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PGDH],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="62.264675687669545"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Km_F6P,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="2116.6293239406641"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Km_GAP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="19792.564983310433"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Km_Y,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="957441.93211899197"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="44.256872926791836"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[Tkb],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="5761.9439114110328"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[NGAM],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="151617.41833330342"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[NGAM],ParameterGroup=Parameters,Parameter=Vmax,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="4.9518548902224913"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Km_ADP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="22419.215223505205"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Km_AMP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="1376.4759565343832"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Km_ATP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000.0"/>
            <Parameter name="StartValue" type="float" value="443496.78876937745"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="3940.6998393767271"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[ADK],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000.0"/>
            <Parameter name="StartValue" type="float" value="127.4259416393118"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ACTLD],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="3000"/>
            <Parameter name="StartValue" type="float" value="14.17507749909735"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ADP],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.009929078014"/>
            <Parameter name="UpperBound" type="cn" value="99.29078014"/>
            <Parameter name="StartValue" type="float" value="34.692900168441838"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AKG],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.00780141844"/>
            <Parameter name="UpperBound" type="cn" value="78.0141844"/>
            <Parameter name="StartValue" type="float" value="0.056957455355591761"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AMP],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.004964539007"/>
            <Parameter name="UpperBound" type="cn" value="49.64539007"/>
            <Parameter name="StartValue" type="float" value="0.075982250022550615"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ATP],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.170212766"/>
            <Parameter name="UpperBound" type="cn" value="1702.12766"/>
            <Parameter name="StartValue" type="float" value="0.17985035856458065"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AcCoA],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.01081560284"/>
            <Parameter name="UpperBound" type="cn" value="108.1560284"/>
            <Parameter name="StartValue" type="float" value="36.175877030480066"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AtAcCoA],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.000390070922"/>
            <Parameter name="UpperBound" type="cn" value="3.90070922"/>
            <Parameter name="StartValue" type="float" value="0.00093688987420382434"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[BPG],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001418439716"/>
            <Parameter name="UpperBound" type="cn" value="1.418439716"/>
            <Parameter name="StartValue" type="float" value="0.0080809330961237099"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[B],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="3000"/>
            <Parameter name="StartValue" type="float" value="0.30488773973447936"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CDPMEP],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <Parameter name="StartValue" type="float" value="6.0800286144509732"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CDPME],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <Parameter name="StartValue" type="float" value="0.00083365439854160821"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CO2],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.02478"/>
            <Parameter name="UpperBound" type="cn" value="247.8"/>
            <Parameter name="StartValue" type="float" value="0.029178468080727164"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CoA],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.02482269504"/>
            <Parameter name="UpperBound" type="cn" value="248.2269504"/>
            <Parameter name="StartValue" type="float" value="0.024822695039999999"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DMAPP],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <Parameter name="StartValue" type="float" value="98.017202993007601"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ETH],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="3000"/>
            <Parameter name="StartValue" type="float" value="0.016182052325618174"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ETHex],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="3000"/>
            <Parameter name="StartValue" type="float" value="0.002109605840201837"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FUM],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.002127659574"/>
            <Parameter name="UpperBound" type="cn" value="21.27659574"/>
            <Parameter name="StartValue" type="float" value="0.65070481303916861"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Glc],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.004078014184"/>
            <Parameter name="UpperBound" type="cn" value="40.78014184"/>
            <Parameter name="StartValue" type="float" value="0.0060792708261911566"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[HMBPP],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <Parameter name="StartValue" type="float" value="100"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[HMGCoA],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <Parameter name="StartValue" type="float" value="0.031798284598203642"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MEP],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <Parameter name="StartValue" type="float" value="0.3262315874052692"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MEcPP],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <Parameter name="StartValue" type="float" value="0.19947923915570243"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NADH],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.001471631206"/>
            <Parameter name="UpperBound" type="cn" value="14.71631206"/>
            <Parameter name="StartValue" type="float" value="1.5359045482654567"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NADPH],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.002127659574"/>
            <Parameter name="UpperBound" type="cn" value="21.27659574"/>
            <Parameter name="StartValue" type="float" value="0.45012772545768565"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NADP],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.00003723404255"/>
            <Parameter name="UpperBound" type="cn" value="0.3723404255"/>
            <Parameter name="StartValue" type="float" value="0.30252997825601985"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[NAD],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.04609929078"/>
            <Parameter name="UpperBound" type="cn" value="460.9929078"/>
            <Parameter name="StartValue" type="float" value="2.0674836648304398"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[OAA],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="3000"/>
            <Parameter name="StartValue" type="float" value="0.012344171217127673"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PEP],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.003191489362"/>
            <Parameter name="UpperBound" type="cn" value="31.91489362"/>
            <Parameter name="StartValue" type="float" value="3.1329518653827919"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PG3],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.02659574468"/>
            <Parameter name="UpperBound" type="cn" value="265.9574468"/>
            <Parameter name="StartValue" type="float" value="0.034512577578385585"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PG6],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.06737588653"/>
            <Parameter name="UpperBound" type="cn" value="673.7588653"/>
            <Parameter name="StartValue" type="float" value="0.15613059490672812"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SUC],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0009888965996"/>
            <Parameter name="UpperBound" type="cn" value="9.888965996"/>
            <Parameter name="StartValue" type="float" value="0.0081314388978411655"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SUCex],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="3000"/>
            <Parameter name="StartValue" type="float" value="0.053578735437620782"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SucCoA],Reference=InitialConcentration"/>
            <Parameter name="LowerBound" type="cn" value="0.00407801418"/>
            <Parameter name="UpperBound" type="cn" value="40.7801418"/>
            <Parameter name="StartValue" type="float" value="0.0067007712718477512"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=k_f,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="2.2390155440634412"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=k_r,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="8.4651230761311426e-06"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=k_f,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
            <Parameter name="StartValue" type="float" value="1555.2145456923415"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[POXB],ParameterGroup=Parameters,Parameter=k_f,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="0.01"/>
            <Parameter name="StartValue" type="float" value="0.001997170664480072"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[POXB],ParameterGroup=Parameters,Parameter=k_r,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="300"/>
            <Parameter name="UpperBound" type="cn" value="900"/>
            <Parameter name="StartValue" type="float" value="339.36117208046494"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Km_GAP,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
            <Parameter name="StartValue" type="float" value="40066.142142163349"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Km_KDPG,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
            <Parameter name="StartValue" type="float" value="40217.865865271313"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Km_PYR,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
            <Parameter name="StartValue" type="float" value="1867.6193922385103"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000"/>
            <Parameter name="StartValue" type="float" value="20496.085341422619"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[KDPGA],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000"/>
            <Parameter name="StartValue" type="float" value="2167.2473602613904"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Km_KDPG,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
            <Parameter name="StartValue" type="float" value="27446.487522445736"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Km_PG6,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="1000000"/>
            <Parameter name="StartValue" type="float" value="42636.060635046502"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000"/>
            <Parameter name="StartValue" type="float" value="8078.7206420898083"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[PG6D],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="100000"/>
            <Parameter name="StartValue" type="float" value="27.100852519098989"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[LIM transport],ParameterGroup=Parameters,Parameter=Km_LIM,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="10"/>
            <Parameter name="UpperBound" type="cn" value="200"/>
            <Parameter name="StartValue" type="float" value="36.285438160153845"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[LIM transport],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="UpperBound" type="cn" value="80"/>
            <Parameter name="StartValue" type="float" value="19.174998924012677"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="1"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="File Name" type="file" value="../../experimental_measurements/May_2023_avg_1stPhase.txt"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="19"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DXP],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Values[DHAP+GAP],Reference=Value"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FBP],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FPP],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GPP],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVA],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVAP],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVAPP],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[IPP],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PYR],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Y],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Glcex],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LACex],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ACEex],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LIMex],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[G6P],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[F6P],Reference=Concentration"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Genetic Algorithm" type="GeneticAlgorithm">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="1000"/>
        <Parameter name="Population Size" type="unsignedInteger" value="300"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Mutation Variance" type="float" value="0.10000000000000001"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Glc]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Glc],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Glcex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Glcex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G6P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[G6P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[F6P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[F6P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FBP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FBP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[DHAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DHAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BPG]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[BPG],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PG3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PG3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PEP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PEP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PYR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PYR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AcCoA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AcCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AtAcCoA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AtAcCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HMGCoA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[HMGCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MVA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MVAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MVAPP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MVAPP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IPP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[IPP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[DXP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DXP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MEP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MEP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CDPME]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CDPME],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CDPMEP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[CDPMEP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MEcPP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[MEcPP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HMBPP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[HMBPP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[DMAPP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[DMAPP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GPP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[GPP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FPP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FPP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LIM]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LIM],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LAC]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LAC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[OAA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[OAA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ACE]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ACE],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ACEex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ACEex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ACTLD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ACTLD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ETH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ETH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ETHex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[ETHex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AKG]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[AKG],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SucCoA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SucCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SUC]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SUC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SUCex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[SUCex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FUM]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[FUM],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[B]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[B],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PG6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PG6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Y]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Y],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[DHAP+GAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Values[DHAP+GAP],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LACex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LACex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LIMex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[LIMex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[KDPG]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[KDPG],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Parameter Estimation Result" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Experiment,[DXP](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[DXP](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[DXP](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,Values[DHAP+GAP](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,Values[DHAP+GAP](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,Values[DHAP+GAP](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[FBP](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[FBP](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[FBP](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[FPP](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[FPP](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[FPP](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[GPP](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[GPP](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[GPP](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[MVA](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[MVA](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[MVA](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[MVAP](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#000000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[6],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[MVAP](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#000000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[6],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[MVAP](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#000000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[6],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[MVAPP](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#7051A7"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[7],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[MVAPP](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#7051A7"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[7],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[MVAPP](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#7051A7"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[7],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[IPP](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FD8D3C"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[8],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[IPP](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FD8D3C"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[8],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[IPP](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FD8D3C"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[8],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[PYR](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#1B9E77"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[9],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[PYR](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#1B9E77"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[9],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[PYR](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#1B9E77"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[9],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Y](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[10],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Y](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[10],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Y](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[10],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Glcex](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[11],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Glcex](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[11],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Glcex](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[11],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[LACex](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[12],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[LACex](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[12],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[LACex](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[12],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[ACEex](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[13],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[ACEex](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[13],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[ACEex](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[13],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[LIMex](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[14],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[LIMex](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[14],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[LIMex](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[14],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[G6P](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[15],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[G6P](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[15],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[G6P](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[15],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[F6P](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#000000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[16],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[F6P](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#000000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[16],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[F6P](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#000000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[16],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Progress of Fit" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="sum of squares" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_65" name="minute" symbol="min">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
