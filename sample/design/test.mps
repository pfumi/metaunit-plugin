<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2e1dde5c-c44d-4e36-b946-814775e937e9(test)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="73112f28-9a00-4b9a-b6eb-75eaec038bc6" name="metaunit" version="0" />
  </languages>
  <imports>
    <import index="5j87" ref="48137e9a-dca8-469f-9e9a-a563f3ba6b1f/f:java_stub#48137e9a-dca8-469f-9e9a-a563f3ba6b1f#package1(sample/package1@java_stub)" />
    <import index="5j88" ref="48137e9a-dca8-469f-9e9a-a563f3ba6b1f/f:java_stub#48137e9a-dca8-469f-9e9a-a563f3ba6b1f#package2(sample/package2@java_stub)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
    </language>
    <language id="73112f28-9a00-4b9a-b6eb-75eaec038bc6" name="metaunit">
      <concept id="6609529470440566335" name="metaunit.structure.AssureCondExpression" flags="ng" index="21F2CR">
        <child id="6609529470440584337" name="condition" index="21FZ2p" />
      </concept>
      <concept id="6609529470440445161" name="metaunit.structure.AssureBinaryExpression" flags="ng" index="21Ft3x">
        <child id="6609529470440445350" name="actual" index="21Ft6I" />
        <child id="6609529470440445351" name="expected" index="21Ft6J" />
      </concept>
      <concept id="4455754886704703263" name="metaunit.structure.ExceptionSetting" flags="ng" index="1Ua9D">
        <reference id="8222850995635697009" name="exception" index="29M5Co" />
      </concept>
      <concept id="4455754886704703634" name="metaunit.structure.TimeoutSetting" flags="ng" index="1UaR$">
        <property id="4455754886705687487" name="value" index="1AUV9" />
      </concept>
      <concept id="524618843561893859" name="metaunit.structure.PrepareType" flags="ng" index="3J4RG">
        <child id="524618843561898041" name="prepare" index="3J68Q" />
      </concept>
      <concept id="5101302039398732105" name="metaunit.structure.ClassSuiteWrapper" flags="ng" index="8Bip$">
        <child id="5101302039398779976" name="suiteRef" index="8B7H_" />
      </concept>
      <concept id="5101302039398718503" name="metaunit.structure.JUnit4Suite" flags="ng" index="8BmGa">
        <child id="8398098353307570517" name="timeoutSuite" index="1_fdyw" />
      </concept>
      <concept id="8928240434008646461" name="metaunit.structure.ClassUnit" flags="ng" index="29Ixxz">
        <property id="5101302039400851312" name="testFramework" index="8Jt1t" />
      </concept>
      <concept id="5101302039386912692" name="metaunit.structure.ClassRefWrapper" flags="ng" index="bqC2p">
        <child id="5101302039386915115" name="classRef" index="bqno6" />
      </concept>
      <concept id="5101302039379004526" name="metaunit.structure.JUnit3ClassRef" flags="ng" index="bSzH3" />
      <concept id="5101302039379004213" name="metaunit.structure.JUnit4ClassRef" flags="ng" index="bSzKo">
        <child id="5101302039379004717" name="timeout" index="bSzC0" />
        <child id="6466330821514825910" name="timeoutTests" index="pc1kD" />
      </concept>
      <concept id="8324124963030453755" name="metaunit.structure.MessageWrapper" flags="ng" index="2cSnpR">
        <child id="8324124963030484650" name="message" index="2cSvOA" />
      </concept>
      <concept id="5121026032608574852" name="metaunit.structure.StatementVariable" flags="ng" index="gefuf" />
      <concept id="5121026032611572494" name="metaunit.structure.PrepCreation" flags="ng" index="ghF45" />
      <concept id="5121026032611573860" name="metaunit.structure.PrepReference" flags="ng" index="ghGDJ">
        <child id="5121026032614735327" name="statement" index="g_Jvk" />
      </concept>
      <concept id="2048481652021855062" name="metaunit.structure.TestCaseEntry" flags="ng" index="2hLExz">
        <reference id="2048481652021855454" name="classUnit" index="2hLEZF" />
      </concept>
      <concept id="6763585705788449432" name="metaunit.structure.MethodRef" flags="ng" index="kGNv5">
        <reference id="6763585705788749789" name="targetMethod" index="kFUa0" />
        <child id="4455754886703675165" name="settings" index="1Yf9F" />
        <child id="4534603706911764997" name="prepare" index="3PiLge" />
        <child id="8881975248431181714" name="statements" index="1TNBbW" />
      </concept>
      <concept id="2498800373069028052" name="metaunit.structure.PrepareAfter" flags="ng" index="rMhXB" />
      <concept id="7961547283284151124" name="metaunit.structure.NullLiteralNegated" flags="ng" index="sRt96" />
      <concept id="1171499738711880649" name="metaunit.structure.AssureEquals" flags="ng" index="$87c7" />
      <concept id="1171499738711881166" name="metaunit.structure.AssureNotEquals" flags="ng" index="$87k0" />
      <concept id="5488491640757736731" name="metaunit.structure.AssureResult" flags="ng" index="$eXWa" />
      <concept id="7248803099231443545" name="metaunit.structure.ClassSuite" flags="ng" index="OU3pq">
        <child id="2542874752944989700" name="suiteHeader" index="1mOBOp" />
        <child id="2542874752946592236" name="testCaseEntry" index="1mYGbL" />
      </concept>
      <concept id="470192355514148960" name="metaunit.structure.ClassRef" flags="ng" index="3001Ok">
        <reference id="5101302039382508845" name="targetClass" index="b_r80" />
        <child id="6763585705788749780" name="method" index="kFUa9" />
        <child id="5488491640755165584" name="prepare" index="FKDe1" />
        <child id="3548190160439561032" name="repeat" index="3HHfXI" />
      </concept>
      <concept id="1634595119708097944" name="metaunit.structure.AssureArrayEquals" flags="ng" index="33pJ81" />
      <concept id="7817868479846106800" name="metaunit.structure.AssureTrue" flags="ng" index="15zud6" />
      <concept id="2411018196168697262" name="metaunit.structure.CyclesOption" flags="ng" index="1oPGRC">
        <property id="7100530858695731218" name="value" index="1ZM0Ww" />
      </concept>
      <concept id="2411018196156714896" name="metaunit.structure.SuiteColumn" flags="ng" index="1pAivm" />
      <concept id="1077383863244267196" name="metaunit.structure.AssureFloatDelta" flags="ng" index="1pAzLm">
        <child id="1077383863244268255" name="delta" index="1pAw0P" />
      </concept>
      <concept id="152935766187667055" name="metaunit.structure.DisableSetting" flags="ng" index="3z3zwF" />
      <concept id="549890684262731004" name="metaunit.structure.DotExpressionStatement" flags="ng" index="3NpPpl" />
      <concept id="8881975248431181650" name="metaunit.structure.TestStatement" flags="ng" index="1TNB8W">
        <child id="5121026032608575023" name="variableRef" index="gefg$" />
        <child id="4009835720074537369" name="assure" index="2h4Ine" />
      </concept>
      <concept id="7471974914008281417" name="metaunit.structure.PrepareBefore" flags="ng" index="3ZDzzh" />
      <concept id="7471974914012723837" name="metaunit.structure.Prepare" flags="ng" index="3ZUBf_">
        <child id="7471974914012724059" name="before" index="3ZUBb3" />
        <child id="7471974914012724060" name="after" index="3ZUBb4" />
      </concept>
      <concept id="7471974914011892185" name="metaunit.structure.PrepareTests" flags="ng" index="3ZZG11" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1156234966388" name="shortDescription" index="OYnhT" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bqC2p" id="7ROFVlI4Ndx">
    <property role="8Jt1t" value="junit4" />
    <property role="TrG5h" value="StackTest" />
    <node concept="bSzKo" id="7ROFVlI4Ndy" role="bqno6">
      <ref role="b_r80" to="5j87:~Stack" resolve="Stack" />
      <node concept="1oPGRC" id="7ROFVlI4Ndz" role="3HHfXI">
        <property role="1ZM0Ww" value="2" />
      </node>
      <node concept="1UaR$" id="7ROFVlI4Nd$" role="bSzC0">
        <property role="1AUV9" value="2000" />
      </node>
      <node concept="1UaR$" id="7ROFVlI4Nd_" role="pc1kD">
        <property role="1AUV9" value="500" />
      </node>
      <node concept="3ZZG11" id="1IKWrVSCzHw" role="FKDe1">
        <node concept="3ZDzzh" id="1IKWrVSCzHx" role="3ZUBb3">
          <node concept="ghF45" id="1IKWrVSCzHz" role="3J68Q">
            <property role="TrG5h" value="stack" />
            <node concept="2ShNRf" id="1IKWrVSCBvv" role="33vP2m">
              <node concept="1pGfFk" id="1IKWrVSCBvu" role="2ShVmc">
                <ref role="37wK5l" to="5j87:~Stack(int)" resolve="Stack" />
                <node concept="3cmrfG" id="1IKWrVSCBvH" role="37wK5m">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="1IKWrVSCBvf" role="1tU5fm">
              <ref role="3uigEE" to="5j87:~Stack" resolve="Stack" />
            </node>
          </node>
          <node concept="ghF45" id="1IKWrVSCBw1" role="3J68Q">
            <property role="TrG5h" value="arg" />
            <node concept="3cmrfG" id="1IKWrVSCBwm" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="10Oyi0" id="1IKWrVSCBw8" role="1tU5fm" />
          </node>
          <node concept="ghGDJ" id="1IKWrVSCBx9" role="3J68Q">
            <node concept="3clFbF" id="1IKWrVSCBxb" role="g_Jvk">
              <node concept="2OqwBi" id="1IKWrVSCCgD" role="3clFbG">
                <node concept="gefuf" id="1IKWrVSCBxg" role="2Oq$k0">
                  <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
                </node>
                <node concept="liA8E" id="1IKWrVSCCii" role="2OqNvi">
                  <ref role="37wK5l" to="5j87:~Stack.push(E)" resolve="push" />
                  <node concept="gefuf" id="1IKWrVSCCiP" role="37wK5m">
                    <ref role="3cqZAo" node="1IKWrVSCBw1" resolve="arg" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="rMhXB" id="1IKWrVSCCjW" role="3ZUBb4">
          <node concept="ghGDJ" id="1IKWrVSCCkZ" role="3J68Q">
            <node concept="3clFbF" id="1IKWrVSCCl1" role="g_Jvk">
              <node concept="37vLTI" id="1IKWrVSCCmO" role="3clFbG">
                <node concept="10Nm6u" id="1IKWrVSCCn1" role="37vLTx" />
                <node concept="gefuf" id="1IKWrVSCCm0" role="37vLTJ">
                  <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="kGNv5" id="1IKWrVSCCnf" role="kFUa9">
        <ref role="kFUa0" to="5j87:~Stack.isEmpty()" resolve="isEmpty" />
        <node concept="1TNB8W" id="1IKWrVSCCqn" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCCqo" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCCqF" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCCqs" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCCoS" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCCsk" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.push(E)" resolve="push" />
                <node concept="gefuf" id="1IKWrVSCCsR" role="37wK5m">
                  <ref role="3cqZAo" node="1IKWrVSCCpN" resolve="argument" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCCtu" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCCtv" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCCtx" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCCty" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCCoS" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCCvE" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="$87c7" id="1IKWrVSCCz$" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCCz_" role="21Ft6I" />
            <node concept="3clFbT" id="1IKWrVSCCAj" role="21Ft6J">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCCAH" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCCAI" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCCAK" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCCAL" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCCoS" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCCFy" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.pop()" resolve="pop" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCCFU" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCCFV" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCCFX" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCCFY" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCCoS" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCCKW" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="15zud6" id="1IKWrVSCPTv" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCPTz" role="21FZ2p" />
          </node>
        </node>
        <node concept="ghF45" id="1IKWrVSCCos" role="3PiLge">
          <property role="TrG5h" value="size" />
          <node concept="3cmrfG" id="1IKWrVSCCoJ" role="33vP2m">
            <property role="3cmrfH" value="4" />
          </node>
          <node concept="10Oyi0" id="1IKWrVSCCox" role="1tU5fm" />
        </node>
        <node concept="ghF45" id="1IKWrVSCCoS" role="3PiLge">
          <property role="TrG5h" value="stack" />
          <node concept="2ShNRf" id="1IKWrVSCCph" role="33vP2m">
            <node concept="1pGfFk" id="1IKWrVSCCpg" role="2ShVmc">
              <ref role="37wK5l" to="5j87:~Stack(int)" resolve="Stack" />
              <node concept="gefuf" id="1IKWrVSCCpw" role="37wK5m">
                <ref role="3cqZAo" node="1IKWrVSCCos" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="1IKWrVSCCoZ" role="1tU5fm">
            <ref role="3uigEE" to="5j87:~Stack" resolve="Stack" />
          </node>
        </node>
        <node concept="ghF45" id="1IKWrVSCCpN" role="3PiLge">
          <property role="TrG5h" value="argument" />
          <node concept="3clFbT" id="1IKWrVSCCqf" role="33vP2m">
            <property role="3clFbU" value="false" />
          </node>
          <node concept="10P_77" id="1IKWrVSCCpV" role="1tU5fm" />
        </node>
      </node>
      <node concept="kGNv5" id="1IKWrVSCCQW" role="kFUa9">
        <ref role="kFUa0" to="5j87:~Stack.size()" resolve="size" />
        <node concept="1TNB8W" id="1IKWrVSCD0y" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCD0z" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCD0P" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCD0A" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCD2u" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="$87c7" id="1IKWrVSCD8G" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCD8H" role="21Ft6I" />
            <node concept="3cmrfG" id="1IKWrVSCDai" role="21Ft6J">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCDaG" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCDaH" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCDaJ" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCDaK" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCDdM" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.push(E)" resolve="push" />
                <node concept="3cmrfG" id="1IKWrVSCDea" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCDfc" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCDfd" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCDff" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCDfg" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCDjj" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="$87k0" id="1IKWrVSCDCp" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCDCr" role="21Ft6I" />
            <node concept="3cmrfG" id="1IKWrVSCDCs" role="21Ft6J">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCDJW" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCDJX" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCDJZ" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCDK0" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCDOp" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.pop()" resolve="pop" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCDOL" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCDOM" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCDOO" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCDOP" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCDTr" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="$87c7" id="1IKWrVSCE5J" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCE5K" role="21Ft6I" />
            <node concept="3cmrfG" id="1IKWrVSCE7l" role="21Ft6J">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="kGNv5" id="1IKWrVSCEeI" role="kFUa9">
        <property role="OYnhT" value="Push illegal value" />
        <ref role="kFUa0" to="5j87:~Stack.push(E)" resolve="push" />
        <node concept="1TNB8W" id="1IKWrVSCP1M" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCP1N" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCP26" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCP1R" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCP3J" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.push(E)" resolve="push" />
                <node concept="10Nm6u" id="1IKWrVSCP4j" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Ua9D" id="1IKWrVSCOZ7" role="1Yf9F">
          <ref role="29M5Co" to="e2lb:~IllegalArgumentException" resolve="IllegalArgumentException" />
        </node>
        <node concept="3z3zwF" id="1IKWrVSCP17" role="1Yf9F">
          <node concept="Xl_RD" id="1IKWrVSCP1j" role="2cSvOA">
            <property role="Xl_RC" value="Disabled Test Message" />
          </node>
        </node>
      </node>
      <node concept="kGNv5" id="1IKWrVSCP4L" role="kFUa9">
        <property role="OYnhT" value="Push values to full stack" />
        <ref role="kFUa0" to="5j87:~Stack.push(E)" resolve="push" />
        <node concept="1Ua9D" id="1IKWrVSCPkt" role="1Yf9F">
          <ref role="29M5Co" to="e2lb:~StackOverflowError" resolve="StackOverflowError" />
        </node>
        <node concept="ghF45" id="1IKWrVSCPql" role="3PiLge">
          <property role="TrG5h" value="stack" />
          <node concept="2ShNRf" id="1IKWrVSCPqJ" role="33vP2m">
            <node concept="1pGfFk" id="1IKWrVSCPqI" role="2ShVmc">
              <ref role="37wK5l" to="5j87:~Stack(int)" resolve="Stack" />
              <node concept="3cmrfG" id="1IKWrVSCPqZ" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="1IKWrVSCPqr" role="1tU5fm">
            <ref role="3uigEE" to="5j87:~Stack" resolve="Stack" />
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCPrh" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCPri" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCPrA" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCPrn" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCPql" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCPtf" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.push(E)" resolve="push" />
                <node concept="Xl_RD" id="1IKWrVSCPtM" role="37wK5m">
                  <property role="Xl_RC" value="element" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCPv1" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCPv2" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCPv4" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCPv5" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCPql" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCPxf" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.push(E)" resolve="push" />
                <node concept="3b6qkQ" id="1IKWrVSCPyy" role="37wK5m">
                  <property role="$nhwW" value="5.5" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="kGNv5" id="1IKWrVSCPzo" role="kFUa9">
        <property role="OYnhT" value="Check pushed values" />
        <ref role="kFUa0" to="5j87:~Stack.push(E)" resolve="push" />
        <node concept="1TNB8W" id="1IKWrVSCPTS" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCPTT" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCPUn" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCPTW" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCPW0" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.push(E)" resolve="push" />
                <node concept="1Xhbcc" id="1IKWrVSCPWz" role="37wK5m">
                  <property role="1XhdNS" value="A" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCPXQ" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCPXR" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCPXT" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCPXU" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCQ05" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.push(E)" resolve="push" />
                <node concept="2ShNRf" id="1IKWrVSCQ0A" role="37wK5m">
                  <node concept="3g6Rrh" id="1IKWrVSCTPd" role="2ShVmc">
                    <node concept="10Oyi0" id="1IKWrVSCQzQ" role="3g7fb8" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCTQ4" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCTQ5" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCTQ7" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCTQ8" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCTT1" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.pop()" resolve="pop" />
              </node>
            </node>
          </node>
          <node concept="15zud6" id="1IKWrVSCTYJ" role="2h4Ine">
            <node concept="2ZW3vV" id="1IKWrVSCUd0" role="21FZ2p">
              <node concept="10Q1$e" id="1IKWrVSCUjd" role="2ZW6by">
                <node concept="10Oyi0" id="1IKWrVSCUdx" role="10Q1$1" />
              </node>
              <node concept="$eXWa" id="1IKWrVSCTYN" role="2ZW6bz" />
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCUjK" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCUjL" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCUjN" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCUjO" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCUnb" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.pop()" resolve="pop" />
              </node>
            </node>
          </node>
          <node concept="$87c7" id="1IKWrVSCUnR" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCUnS" role="21Ft6I" />
            <node concept="1Xhbcc" id="1IKWrVSCUoj" role="21Ft6J">
              <property role="1XhdNS" value="A" />
            </node>
          </node>
        </node>
      </node>
      <node concept="kGNv5" id="1IKWrVSCUph" role="kFUa9">
        <ref role="kFUa0" to="5j87:~Stack.pop()" resolve="pop" />
        <node concept="1TNB8W" id="1IKWrVSCUJd" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCUJe" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCUJw" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCUJh" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCULa" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.pop()" resolve="pop" />
              </node>
            </node>
          </node>
          <node concept="$87c7" id="1IKWrVSCULK" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCULL" role="21Ft6I" />
            <node concept="sRt96" id="1IKWrVSCUMc" role="21Ft6J" />
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCUME" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCUMF" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCUMH" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCUMI" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCUOA" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.pop()" resolve="pop" />
              </node>
            </node>
          </node>
          <node concept="$87c7" id="1IKWrVSCUPi" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCUPj" role="21Ft6I" />
            <node concept="10Nm6u" id="1IKWrVSCUPI" role="21Ft6J" />
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCUQc" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCUQd" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCUQf" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCUQg" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCUSs" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.push(E)" resolve="push" />
                <node concept="Xl_RD" id="1IKWrVSCUSX" role="37wK5m">
                  <property role="Xl_RC" value="test" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCUVt" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCUVu" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCUVw" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCUVx" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCzHz" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCUYk" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.pop()" resolve="pop" />
              </node>
            </node>
          </node>
          <node concept="15zud6" id="1IKWrVSCUZ_" role="2h4Ine">
            <node concept="1Wc70l" id="1IKWrVSCVd_" role="21FZ2p">
              <node concept="3clFbC" id="1IKWrVSCVfp" role="3uHU7w">
                <node concept="Xl_RD" id="1IKWrVSCVgf" role="3uHU7w">
                  <property role="Xl_RC" value="test" />
                </node>
                <node concept="$eXWa" id="1IKWrVSCVes" role="3uHU7B" />
              </node>
              <node concept="2ZW3vV" id="1IKWrVSCV7P" role="3uHU7B">
                <node concept="17QB3L" id="1IKWrVSCV8m" role="2ZW6by" />
                <node concept="$eXWa" id="1IKWrVSCUZD" role="2ZW6bz" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="kGNv5" id="1IKWrVSCVm7" role="kFUa9">
        <ref role="kFUa0" to="5j87:~Stack.peek()" resolve="peek" />
        <node concept="1TNB8W" id="1IKWrVSCWZB" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCWZC" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCX1P" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCX1v" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCW1m" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCX69" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.peek()" resolve="peek" />
              </node>
            </node>
          </node>
          <node concept="$87c7" id="1IKWrVSCXaf" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCXag" role="21Ft6I" />
            <node concept="3b6qkQ" id="1IKWrVSCXgG" role="21Ft6J">
              <property role="$nhwW" value="1.0" />
            </node>
            <node concept="Xl_RD" id="1IKWrVSCXkJ" role="2cSvOA">
              <property role="Xl_RC" value="Assure with delta" />
            </node>
            <node concept="3b6qkQ" id="1eSHYfx0tOL" role="1pAw0P">
              <property role="$nhwW" value="0.5" />
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCXo4" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCXo5" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCXo7" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCXo8" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCW1m" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCXve" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="$87c7" id="1IKWrVSCX_T" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCX_U" role="21Ft6I" />
            <node concept="3cmrfG" id="1IKWrVSCXBE" role="21Ft6J">
              <property role="3cmrfH" value="5" />
            </node>
          </node>
        </node>
        <node concept="1UaR$" id="1IKWrVSCVJu" role="1Yf9F">
          <property role="1AUV9" value="1000" />
        </node>
        <node concept="ghF45" id="1IKWrVSCW1m" role="3PiLge">
          <property role="TrG5h" value="stack" />
          <node concept="2ShNRf" id="1IKWrVSCW2R" role="33vP2m">
            <node concept="1pGfFk" id="1IKWrVSCW2P" role="2ShVmc">
              <ref role="37wK5l" to="5j87:~Stack(int)" resolve="Stack" />
              <node concept="3uibUv" id="1IKWrVSCW2Q" role="1pMfVU">
                <ref role="3uigEE" to="e2lb:~Double" resolve="Double" />
              </node>
              <node concept="3cmrfG" id="1IKWrVSCW3S" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="1IKWrVSCW1r" role="1tU5fm">
            <ref role="3uigEE" to="5j87:~Stack" resolve="Stack" />
            <node concept="3uibUv" id="1IKWrVSCW1Z" role="11_B2D">
              <ref role="3uigEE" to="e2lb:~Double" resolve="Double" />
            </node>
          </node>
        </node>
        <node concept="ghGDJ" id="1IKWrVSCW4V" role="3PiLge">
          <node concept="3clFbF" id="1IKWrVSCW4X" role="g_Jvk">
            <node concept="2OqwBi" id="1IKWrVSCW5p" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCW53" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCW1m" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCW9F" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.push(E)" resolve="push" />
                <node concept="3b6qkQ" id="1IKWrVSCWb0" role="37wK5m">
                  <property role="$nhwW" value="0.5" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ghGDJ" id="1IKWrVSCWfi" role="3PiLge">
          <node concept="3clFbF" id="1IKWrVSCWfk" role="g_Jvk">
            <node concept="2OqwBi" id="1IKWrVSCWgG" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCWgm" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCW1m" resolve="stack" />
              </node>
              <node concept="liA8E" id="1IKWrVSCWl0" role="2OqNvi">
                <ref role="37wK5l" to="5j87:~Stack.push(E)" resolve="push" />
                <node concept="3b6qkQ" id="1IKWrVSCWUy" role="37wK5m">
                  <property role="$nhwW" value="1.5" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="bqC2p" id="1IKWrVSCY_b">
    <property role="8Jt1t" value="junit4" />
    <property role="TrG5h" value="BlubTest" />
    <node concept="bSzKo" id="1IKWrVSCY_c" role="bqno6">
      <ref role="b_r80" to="5j88:~Blub" resolve="Blub" />
      <node concept="kGNv5" id="1IKWrVSCYD3" role="kFUa9">
        <ref role="kFUa0" to="5j88:~Blub.blubArray()" resolve="blubArray" />
        <node concept="1TNB8W" id="1IKWrVSCYWK" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCYWL" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCYXg" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCYX1" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCYD9" resolve="blub" />
              </node>
              <node concept="liA8E" id="1IKWrVSCYYQ" role="2OqNvi">
                <ref role="37wK5l" to="5j88:~Blub.blubArray()" resolve="blubArray" />
              </node>
            </node>
          </node>
          <node concept="33pJ81" id="1IKWrVSCZ1J" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCZ1L" role="21Ft6I" />
            <node concept="gefuf" id="1IKWrVSCZ1M" role="21Ft6J">
              <ref role="3cqZAo" node="1IKWrVSCYFX" resolve="array" />
            </node>
            <node concept="Xl_RD" id="1IKWrVSCZ3w" role="2cSvOA">
              <property role="Xl_RC" value="isEqual with arrays" />
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCZ69" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCZ6a" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCZ6c" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCZ6d" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCYD9" resolve="blub" />
              </node>
              <node concept="liA8E" id="1IKWrVSCZ8E" role="2OqNvi">
                <ref role="37wK5l" to="5j88:~Blub.blubArrayDouble()" resolve="blubArrayDouble" />
              </node>
            </node>
          </node>
          <node concept="33pJ81" id="1IKWrVSCZed" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCZ9H" role="21Ft6I" />
            <node concept="gefuf" id="1IKWrVSCZay" role="21Ft6J">
              <ref role="3cqZAo" node="1IKWrVSCYRc" resolve="doubleArray" />
            </node>
            <node concept="3b6qkQ" id="1IKWrVSCZgJ" role="1pAw0P">
              <property role="$nhwW" value="1.5" />
            </node>
            <node concept="Xl_RD" id="1IKWrVSCZiw" role="2cSvOA">
              <property role="Xl_RC" value="Delta for double arrays" />
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSCZln" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSCZlo" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSCZlq" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSCZlr" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCYD9" resolve="blub" />
              </node>
              <node concept="liA8E" id="1IKWrVSCZo_" role="2OqNvi">
                <ref role="37wK5l" to="5j88:~Blub.blubDouble()" resolve="blubDouble" />
              </node>
            </node>
          </node>
          <node concept="$87k0" id="1IKWrVSCZqf" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSCZqh" role="21Ft6I" />
            <node concept="3cmrfG" id="1IKWrVSCZqE" role="21Ft6J">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="Xl_RD" id="1IKWrVSCZRg" role="2cSvOA">
              <property role="Xl_RC" value="isNotEqual with double" />
            </node>
            <node concept="3cmrfG" id="1eSHYfx0K_9" role="1pAw0P">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSD0qQ" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSD0qR" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSD0qT" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSD0qU" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCYD9" resolve="blub" />
              </node>
              <node concept="liA8E" id="1IKWrVSD0xJ" role="2OqNvi">
                <ref role="37wK5l" to="5j88:~Blub.blubBlub()" resolve="blubBlub" />
              </node>
            </node>
          </node>
          <node concept="$87c7" id="1IKWrVSD0yr" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSD0ys" role="21Ft6I" />
            <node concept="sRt96" id="1IKWrVSD0yS" role="21Ft6J" />
            <node concept="Xl_RD" id="1IKWrVSD0zT" role="2cSvOA">
              <property role="Xl_RC" value="Custom not null expression" />
            </node>
          </node>
        </node>
        <node concept="1TNB8W" id="1IKWrVSD0$Y" role="1TNBbW">
          <node concept="3NpPpl" id="1IKWrVSD0$Z" role="gefg$">
            <node concept="2OqwBi" id="1IKWrVSD0_1" role="3clFbG">
              <node concept="gefuf" id="1IKWrVSD0_2" role="2Oq$k0">
                <ref role="3cqZAo" node="1IKWrVSCYD9" resolve="blub" />
              </node>
              <node concept="liA8E" id="1IKWrVSD0Gf" role="2OqNvi">
                <ref role="37wK5l" to="5j88:~Blub.blubObject()" resolve="blubObject" />
              </node>
            </node>
          </node>
          <node concept="$87c7" id="1IKWrVSD0GV" role="2h4Ine">
            <node concept="$eXWa" id="1IKWrVSD0GW" role="21Ft6I" />
            <node concept="10Nm6u" id="1IKWrVSD0Ho" role="21Ft6J" />
          </node>
        </node>
        <node concept="ghF45" id="1IKWrVSCYD9" role="3PiLge">
          <property role="TrG5h" value="blub" />
          <node concept="2ShNRf" id="1IKWrVSCYDv" role="33vP2m">
            <node concept="HV5vD" id="1IKWrVSCYFK" role="2ShVmc">
              <ref role="HV5vE" to="5j88:~Blub" resolve="Blub" />
            </node>
          </node>
          <node concept="3uibUv" id="1IKWrVSCYDg" role="1tU5fm">
            <ref role="3uigEE" to="5j88:~Blub" resolve="Blub" />
          </node>
        </node>
        <node concept="ghF45" id="1IKWrVSCYFX" role="3PiLge">
          <property role="TrG5h" value="array" />
          <node concept="2ShNRf" id="1IKWrVSCYML" role="33vP2m">
            <node concept="3g6Rrh" id="1IKWrVSCYPY" role="2ShVmc">
              <node concept="10Oyi0" id="1IKWrVSCYP9" role="3g7fb8" />
              <node concept="3cmrfG" id="1IKWrVSCYQv" role="3g7hyw">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="10Q1$e" id="1IKWrVSCYGd" role="1tU5fm">
            <node concept="10Oyi0" id="1IKWrVSCYG4" role="10Q1$1" />
          </node>
        </node>
        <node concept="ghF45" id="1IKWrVSCYRc" role="3PiLge">
          <property role="TrG5h" value="doubleArray" />
          <node concept="2ShNRf" id="1IKWrVSCYSy" role="33vP2m">
            <node concept="3g6Rrh" id="1IKWrVSCYVJ" role="2ShVmc">
              <node concept="10P55v" id="1IKWrVSCYUV" role="3g7fb8" />
              <node concept="3b6qkQ" id="1IKWrVSCYWh" role="3g7hyw">
                <property role="$nhwW" value="1.1" />
              </node>
            </node>
          </node>
          <node concept="10Q1$e" id="1IKWrVSCYRD" role="1tU5fm">
            <node concept="10P55v" id="1IKWrVSCYRw" role="10Q1$1" />
          </node>
        </node>
      </node>
      <node concept="kGNv5" id="1IKWrVSD0HR" role="kFUa9">
        <ref role="kFUa0" to="5j88:~Blub.blubBlub()" resolve="blubBlub" />
      </node>
      <node concept="1oPGRC" id="1IKWrVSCY_d" role="3HHfXI" />
      <node concept="1UaR$" id="1IKWrVSCY_e" role="bSzC0" />
      <node concept="1UaR$" id="1IKWrVSCY_f" role="pc1kD" />
    </node>
  </node>
  <node concept="bqC2p" id="1IKWrVSD0YT">
    <property role="8Jt1t" value="junit3" />
    <property role="TrG5h" value="Test" />
    <node concept="bSzH3" id="1IKWrVSD13S" role="bqno6">
      <ref role="b_r80" to="5j87:~Stack" resolve="Stack" />
      <node concept="1oPGRC" id="1IKWrVSD13U" role="3HHfXI" />
    </node>
  </node>
  <node concept="8Bip$" id="1IKWrVSD18P">
    <property role="8Jt1t" value="junit4" />
    <property role="TrG5h" value="Suite" />
    <node concept="8BmGa" id="1IKWrVSD18Q" role="8B7H_">
      <node concept="1pAivm" id="1IKWrVSD18R" role="1mOBOp">
        <property role="TrG5h" value="test case/suite" />
      </node>
      <node concept="1pAivm" id="1IKWrVSD18S" role="1mOBOp">
        <property role="TrG5h" value="# cycles" />
      </node>
      <node concept="1pAivm" id="1IKWrVSD18T" role="1mOBOp">
        <property role="TrG5h" value="timeout case (ms)" />
      </node>
      <node concept="1pAivm" id="1IKWrVSD18U" role="1mOBOp">
        <property role="TrG5h" value="timeout tests (ms)" />
      </node>
      <node concept="1pAivm" id="1IKWrVSD18V" role="1mOBOp">
        <property role="TrG5h" value=" " />
      </node>
      <node concept="1UaR$" id="1IKWrVSD18W" role="1_fdyw" />
      <node concept="2hLExz" id="1IKWrVSD18Y" role="1mYGbL">
        <ref role="2hLEZF" node="1IKWrVSD0YT" resolve="Test" />
      </node>
      <node concept="2hLExz" id="1IKWrVSD194" role="1mYGbL">
        <ref role="2hLEZF" node="7ROFVlI4Ndx" resolve="StackTest" />
      </node>
    </node>
  </node>
  <node concept="8Bip$" id="1IKWrVSD1e7">
    <property role="8Jt1t" value="junit4" />
    <property role="TrG5h" value="AllSuite" />
    <node concept="8BmGa" id="1IKWrVSD1e8" role="8B7H_">
      <node concept="1pAivm" id="1IKWrVSD1e9" role="1mOBOp">
        <property role="TrG5h" value="test case/suite" />
      </node>
      <node concept="1pAivm" id="1IKWrVSD1ea" role="1mOBOp">
        <property role="TrG5h" value="# cycles" />
      </node>
      <node concept="1pAivm" id="1IKWrVSD1eb" role="1mOBOp">
        <property role="TrG5h" value="timeout case (ms)" />
      </node>
      <node concept="1pAivm" id="1IKWrVSD1ec" role="1mOBOp">
        <property role="TrG5h" value="timeout tests (ms)" />
      </node>
      <node concept="1pAivm" id="1IKWrVSD1ed" role="1mOBOp">
        <property role="TrG5h" value=" " />
      </node>
      <node concept="1UaR$" id="1IKWrVSD1ee" role="1_fdyw" />
      <node concept="2hLExz" id="1IKWrVSD1jr" role="1mYGbL">
        <ref role="2hLEZF" node="1IKWrVSCY_b" resolve="BlubTest" />
      </node>
      <node concept="2hLExz" id="1IKWrVSD1ju" role="1mYGbL">
        <ref role="2hLEZF" node="1IKWrVSD18P" resolve="Suite" />
      </node>
    </node>
  </node>
</model>

