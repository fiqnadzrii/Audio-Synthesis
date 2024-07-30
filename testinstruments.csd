<CsoundSynthesizer>
<CsOptions>
-odac 
</CsOptions>
<CsInstruments>
sr = 44100       
kr = 4410        
ksmps = 10       
nchnls = 1  

instr 3 ;guitar
    ifreq = cpspch(p4)      
    iamp = p5      
    kenv linseg 9, 0.5, iamp, p3-0.02, iamp, 0.01, 5
    aout pluck kenv, ifreq, 100, 0, 1 ; pluck opcode
    out aout, aout
endin

</CsInstruments>
<CsScore>
f 1 0 4096 10 1
f 2 0 4096 9 1 .5 .333 .25 .2 .167 .143 .1 .1 .1

i 3 0 4 8.06 30000 

</CsScore>
</CsoundSynthesizer>