lbl_8029E158:
/* 8029E158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E15C  7C 08 02 A6 */	mflr r0
/* 8029E160  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E164  4B FF F8 CD */	bl getDSPMixerLevel__6JASDspFv
/* 8029E168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E16C  7C 08 03 A6 */	mtlr r0
/* 8029E170  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E174  4E 80 00 20 */	blr 
