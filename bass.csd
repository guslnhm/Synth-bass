<CsoundSynthesizer>
<CsOptions>
    ;-W -o bass.wav
    -odac -+rtmidi=portmidi -Ma
</CsOptions>
<CsInstruments>

sr = 44100
kr = 4410
ksmps = 10
nchnls = 2
0dbfs = 1

instr 1
    knote init p4
    kfreq = 440 * exp(log(2) * ((knote - 69) / 12.0))

    kvel init 1

    kvol ctrl7 1, 7, 0, 1
    kmod ctrl7 1, 1, 0, 1
    
    a1 vco2 0.7, kfreq, 2, 0.5, 1
    kfenv madsr 0.005, 0.20, 0.0, 0.30
    
    kbase_cutoff = 80 + (kfreq * 3)
    kcutoff = kbase_cutoff + (kfenv + kmod) * 5000
    
    kresonance = 0.2
    abass moogladder a1, kcutoff, kresonance

    kamp madsr 0.01, 0.10, 0.70, 0.30
    
    aout = abass * kamp * kvel * kvol * 0.8
    aout limit aout, -0.9, 0.9
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
