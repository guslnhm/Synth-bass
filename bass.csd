<CsoundSynthesizer>
<CsOptions>
    -odac -+rtmidi=portmidi -Ma
</CsOptions>
<CsInstruments>

sr = 44100
kr = 4410
ksmps = 10
nchnls = 2
0dbfs = 1


instr 1
   
    ifreq cpsmidi
    ;kknob = p5  
    
   
    a1 oscil 0.7, ifreq, 1
    
    ;kfilt_env linseg 0, 0.001, 1, p3-0.102, 0.1, 0.1, 0
    kfilt_env madsr 0.001, 0.2, 0.8, 0.1
    
    ; segundo parâmetro para controle
    
    kbase_cutoff = 80 + (ifreq * 3) 
    kcutoff = kbase_cutoff + (kfilt_env * 5000)  
    

    kresonance = 0.2 ;(kknob * 1.5) + 0.3
    
  
    abass moogladder a1, kcutoff, kresonance
    
  
    ;kamp linseg 0, 0.001, 1, p3-0.102, 1, 0.1, 0
    kamp madsr 0.001, 0.2, 1.0, 0.1
    

    aout = abass * kamp * 0.7
    aout limit aout, -0.8, 0.8
    outs aout, aout
endin

</CsInstruments>
<CsScore>

f1 0 4096 10 1
massign 1, 1
f0 3600

</CsScore>

</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="background">
  <r>240</r>
  <g>240</g>
  <b>240</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
