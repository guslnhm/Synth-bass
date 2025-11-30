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

    f1 0 4096 10 1 0.5 0.333 0.25 0.2 0.166 0.142 0.125 0.111 0.1 0.091 0.083 0.076 0.071 0.066 0.0625

    i1 0 2 6.00
    i1 + . 6.02
    i1 . . 6.04
    i1 . . 6.05
    i1 . . 6.07
    e

</CsScore>
</CsoundSynthesizer>