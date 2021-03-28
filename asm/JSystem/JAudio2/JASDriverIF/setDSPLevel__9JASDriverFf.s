lbl_8029E130:
/* 8029E130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E134  7C 08 02 A6 */	mflr r0
/* 8029E138  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E13C  4B FF F8 C9 */	bl setDSPMixerLevel__6JASDspFf
/* 8029E140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E144  7C 08 03 A6 */	mtlr r0
/* 8029E148  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E14C  4E 80 00 20 */	blr 
