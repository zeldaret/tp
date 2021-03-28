lbl_8029E6E0:
/* 8029E6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E6E4  7C 08 02 A6 */	mflr r0
/* 8029E6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E6EC  60 00 00 00 */	nop 
lbl_8029E6F0:
/* 8029E6F0  48 0B 3D 51 */	bl DSPCheckMailFromDSP
/* 8029E6F4  28 03 00 00 */	cmplwi r3, 0
/* 8029E6F8  41 82 FF F8 */	beq lbl_8029E6F0
/* 8029E6FC  48 0B 3D 55 */	bl DSPReadMailFromDSP
/* 8029E700  48 0B 3D 41 */	bl DSPCheckMailFromDSP
/* 8029E704  48 00 08 9D */	bl Dsp_Running_Start__Fv
/* 8029E708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E70C  7C 08 03 A6 */	mtlr r0
/* 8029E710  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E714  4E 80 00 20 */	blr 
