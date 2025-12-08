<CsoundSynthesizer>
<CsOptions>
    -W -o bass.wav
</CsOptions>
<CsInstruments>

sr = 44100
kr = 4410
ksmps = 10
nchnls = 2
0dbfs = 1


;giwave ftgen 1, 0, 4096, 10, 1, 0, 0.3, 0, 0.2, 0, 0.1, 0, 0.05

instr 1
   
    kfreq = cpspch(p4)
    ;kknob = p5  
    
   
    a1 vco2 0.7, kfreq, 2, 0.5, 1
    
    kfilt_env linseg 0, 0.001, 1, p3-0.102, 0.1, 0.1, 0
    ; segundo parâmetro para controle
    
    kbase_cutoff = 80 + (kfreq * 3) 
    kcutoff = kbase_cutoff + (kfilt_env * 5000)  
    

    kresonance = 0.2 ;(kknob * 1.5) + 0.3
    
  
    abass moogladder a1, kcutoff, kresonance
    
  
    kamp linseg 0, 0.001, 1, p3-0.102, 1, 0.1, 0
    

    aout = abass * kamp * 0.7
    aout limit aout, -0.8, 0.8
    outs aout, aout
endin

</CsInstruments>
<CsScore>

f1 0 4096 10 1

   i1 0 0.25    5.00 
   i1 + .    5.07 
   i1 . .    5.05 
   i1 . 0.5    5.04 
   i1 . 0.25    5.02 
   i1 . 0.5    5.00 
;     i1 0 2 5.00
 ;    i1 + . 5.01
  ;   i1 . . 5.02
    ; i1 . . 5.03
   ;  i1 . . 5.04
    e
</CsScore>
</CsoundSynthesizer>