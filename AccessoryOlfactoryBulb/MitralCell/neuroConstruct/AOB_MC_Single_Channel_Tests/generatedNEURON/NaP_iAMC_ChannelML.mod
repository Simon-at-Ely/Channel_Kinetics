COMMENT

   **************************************************
   File generated by: neuroConstruct v1.7.1 
   **************************************************

   This file holds the implementation in NEURON of the Cell Mechanism:
   NaP_iAMC_ChannelML (Type: Channel mechanism, Model: ChannelML based process)

   with parameters: 
   /channelml/@units = Physiological Units 
   /channelml/notes = Mitral Cell Persistent Sodium ion Channel 
   /channelml/channel_type/@name = NaP_iAMC_ChannelML 
   /channelml/channel_type/@density = yes 
   /channelml/channel_type/status/@value = stable 
   /channelml/channel_type/status/comment = Sodium Persistent conductance modified from Rubin an Cleland 2006 using AOB mitral cell data from the Marc Spehr RWTH Aachen 
   /channelml/channel_type/status/contributor/name = Simon O'Connor 
   /channelml/channel_type/notes = Na Channel 
   /channelml/channel_type/authorList/modelTranslator/name = Simon O'Connor 
   /channelml/channel_type/authorList/modelTranslator/institution = UH 
   /channelml/channel_type/authorList/modelTranslator/email = simon.oconnor - at - btinternet.com 
   /channelml/channel_type/current_voltage_relation/@cond_law = ohmic 
   /channelml/channel_type/current_voltage_relation/@ion = na 
   /channelml/channel_type/current_voltage_relation/@default_gmax = 0.06 
   /channelml/channel_type/current_voltage_relation/@default_erev = 67 
   /channelml/channel_type/current_voltage_relation/@charge = 1 
   /channelml/channel_type/current_voltage_relation/gate[1]/@name = m 
   /channelml/channel_type/current_voltage_relation/gate[1]/@instances = 3 
   /channelml/channel_type/current_voltage_relation/gate[1]/closed_state/@id = m0 
   /channelml/channel_type/current_voltage_relation/gate[1]/open_state/@id = m 
   /channelml/channel_type/current_voltage_relation/gate[1]/open_state/@fraction = 1 
   /channelml/channel_type/current_voltage_relation/gate[1]/time_course/@name = tau 
   /channelml/channel_type/current_voltage_relation/gate[1]/time_course/@from = m0 
   /channelml/channel_type/current_voltage_relation/gate[1]/time_course/@to = m 
   /channelml/channel_type/current_voltage_relation/gate[1]/time_course/@expr_form = generic 
   /channelml/channel_type/current_voltage_relation/gate[1]/time_course/@expr = (fabs(v + 38)) &lt; 0.0001 ? 0.0013071895424837 : 1 / ((91 * (v + 38))/(1 - exp(-(v + 38)/5)) + (-62 * (v + 38))/(1 - exp((v + 38)/5))) 
   /channelml/channel_type/current_voltage_relation/gate[1]/steady_state/@name = inf 
   /channelml/channel_type/current_voltage_relation/gate[1]/steady_state/@from = m0 
   /channelml/channel_type/current_voltage_relation/gate[1]/steady_state/@to = m 
   /channelml/channel_type/current_voltage_relation/gate[1]/steady_state/@expr_form = generic 
   /channelml/channel_type/current_voltage_relation/gate[1]/steady_state/@expr = (0.41431+(108.69/(1+exp((-60.563-v)/5.2909))))/(v-67)/(109/(-107)) &gt; 0.499622025796 ? 0.499622025796 : (0.41431+(108.69/(1+exp((-60.563-v)/5.2909)) ... 
   /channelml/channel_type/current_voltage_relation/gate[2]/@name = h 
   /channelml/channel_type/current_voltage_relation/gate[2]/@instances = 1 
   /channelml/channel_type/current_voltage_relation/gate[2]/closed_state/@id = h0 
   /channelml/channel_type/current_voltage_relation/gate[2]/open_state/@id = h 
   /channelml/channel_type/current_voltage_relation/gate[2]/open_state/@fraction = 1 
   /channelml/channel_type/current_voltage_relation/gate[2]/time_course/@name = tau 
   /channelml/channel_type/current_voltage_relation/gate[2]/time_course/@from = h0 
   /channelml/channel_type/current_voltage_relation/gate[2]/time_course/@to = h 
   /channelml/channel_type/current_voltage_relation/gate[2]/time_course/@expr_form = generic 
   /channelml/channel_type/current_voltage_relation/gate[2]/time_course/@expr = 1 / ((-0.00288*(v + 17.049))/(1 - exp((v - 49.1)/4.63)) + (0.00694*(v + 64.409))/(1 - exp(-(v + 447)/2.63))) 
   /channelml/channel_type/current_voltage_relation/gate[2]/steady_state/@name = inf 
   /channelml/channel_type/current_voltage_relation/gate[2]/steady_state/@from = h0 
   /channelml/channel_type/current_voltage_relation/gate[2]/steady_state/@to = h 
   /channelml/channel_type/current_voltage_relation/gate[2]/steady_state/@expr_form = generic 
   /channelml/channel_type/current_voltage_relation/gate[2]/steady_state/@expr = (0.41431+(108.69/(1+exp((-60.563-v)/-5.2909))))/(v-67)/(109/(-107)) 
   /channelml/channel_type/impl_prefs/table_settings/@max_v = 100 
   /channelml/channel_type/impl_prefs/table_settings/@min_v = -100 
   /channelml/channel_type/impl_prefs/table_settings/@table_divisions = 2000 

// File from which this was generated: /home/Simon/Channel_Kinetics/AccessoryOlfactoryBulb/MitralCell/neuroConstruct/AOB_MC_Single_Channel_Tests/cellMechanisms/NaP_iAMC_ChannelML/NaChannel.xml

// XSL file with mapping to simulator: /home/Simon/Channel_Kinetics/AccessoryOlfactoryBulb/MitralCell/neuroConstruct/AOB_MC_Single_Channel_Tests/cellMechanisms/NaP_iAMC_ChannelML/ChannelML_v1.8.1_NEURONmod.xsl

ENDCOMMENT


?  This is a NEURON mod file generated from a ChannelML file

?  Unit system of original ChannelML file: Physiological Units

COMMENT
    Mitral Cell Persistent Sodium ion Channel
ENDCOMMENT

TITLE Channel: NaP_iAMC_ChannelML

COMMENT
    Na Channel
ENDCOMMENT


UNITS {
    (mA) = (milliamp)
    (mV) = (millivolt)
    (S) = (siemens)
    (um) = (micrometer)
    (molar) = (1/liter)
    (mM) = (millimolar)
    (l) = (liter)
}


    
NEURON {
      

    SUFFIX NaP_iAMC_ChannelML
    USEION na READ ena WRITE ina VALENCE 1 ? reversal potential of ion is read, outgoing current is written
           
        
    RANGE gmax, gion
    
    RANGE minf, mtau
    
    RANGE hinf, htau
    
}

PARAMETER { 
      

    gmax = 0.000059999999999999995 (S/cm2)  ? default value, should be overwritten when conductance placed on cell
    
}



ASSIGNED {
      

    v (mV)
    
    celsius (degC)
          

    ? Reversal potential of na
    ena (mV)
    ? The outward flow of ion: na calculated by rate equations...
    ina (mA/cm2)
    
    
    gion (S/cm2)
    minf
    mtau (ms)
    hinf
    htau (ms)
    
}

BREAKPOINT { 
                        
    SOLVE states METHOD cnexp
        
    gion = gmax * ((1*m)
^3) * ((1*h)
^1)      

    ina = gion*(v - ena)
            

}



INITIAL {
    
    ena = 67
        
    rates(v)
    m = minf
        h = hinf
        
    
}
    
STATE {
    m
    h
    
}



DERIVATIVE states {
    rates(v)
    m' = (minf - m)/mtau
            h' = (hinf - h)/htau
            

}

PROCEDURE rates(v(mV)) {  
    
    ? Note: not all of these may be used, depending on the form of rate equations
    LOCAL  alpha, beta, tau, inf, gamma, zeta
, temp_adj_m
, temp_adj_h
    
    TABLE minf, mtau,hinf, htau
 DEPEND celsius FROM -100 TO 100 WITH 2000
    
    UNITSOFF
    temp_adj_m = 1
    temp_adj_h = 1
    
            
                
           

        
    ?      ***  Adding rate equations for gate: m  ***
         
    ? Found a generic form of the rate equation for tau, using expression: (fabs(v + 38)) < 0.0001 ? 0.0013071895424837 : 1 / ((91 * (v + 38))/(1 - exp(-(v + 38)/5)) + (-62 * (v + 38))/(1 - exp((v + 38)/5)))
    
    
    if ((fabs(v + 38)) < 0.0001 ) {
        tau =  0.0013071895424837 
    } else {
        tau =  1 / ((91 * (v + 38))/(1 - exp(-(v + 38)/5)) + (-62 * (v + 38))/(1 - exp((v + 38)/5)))
    }
    mtau = tau/temp_adj_m
     
    ? Found a generic form of the rate equation for inf, using expression: (0.41431+(108.69/(1+exp((-60.563-v)/5.2909))))/(v-67)/(109/(-107)) > 0.499622025796 ? 0.499622025796 : (0.41431+(108.69/(1+exp((-60.563-v)/5.2909))))/(v-67)/(109/(-107))
    
    
    if ((0.41431+(108.69/(1+exp((-60.563-v)/5.2909))))/(v-67)/(109/(-107)) > 0.499622025796 ) {
        inf =  0.499622025796 
    } else {
        inf =  (0.41431+(108.69/(1+exp((-60.563-v)/5.2909))))/(v-67)/(109/(-107))
    }
    minf = inf
    


    ?     *** Finished rate equations for gate: m ***
    

    
            
                
           

        
    ?      ***  Adding rate equations for gate: h  ***
         
    ? Found a generic form of the rate equation for tau, using expression: 1 / ((-0.00288*(v + 17.049))/(1 - exp((v - 49.1)/4.63)) + (0.00694*(v + 64.409))/(1 - exp(-(v + 447)/2.63)))
    tau = 1 / ((-0.00288*(v + 17.049))/(1 - exp((v - 49.1)/4.63)) + (0.00694*(v + 64.409))/(1 - exp(-(v + 447)/2.63)))
        
    htau = tau/temp_adj_h
     
    ? Found a generic form of the rate equation for inf, using expression: (0.41431+(108.69/(1+exp((-60.563-v)/-5.2909))))/(v-67)/(109/(-107))
    inf = (0.41431+(108.69/(1+exp((-60.563-v)/-5.2909))))/(v-67)/(109/(-107))
        
    hinf = inf
    


    ?     *** Finished rate equations for gate: h ***
    

         

}


UNITSON


