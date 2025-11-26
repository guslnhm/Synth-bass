<CsoundSynthesizer>
<CsOptions>
    
    -W -o bass.wav

</CsOptions>
<CsInstruments>

    sr = 44100
    kr = 4410
    ksmps = 10
    nchnls = 2

    instr 1
        a1 oscil 20000, cpspch(p4), 1
        outs a1, a1

    endin

</CsInstruments>
<CsScore>

    f1 0 4096 10 1

    i1 0 2 8.00
    i1 + . 8.02
    i1 . . 8.04
    i1 . . 8.05
    i1 . . 8.07
    e

</CsScore>
</CsoundSynthesizer>