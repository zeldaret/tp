lbl_804DFB38:
/* 804DFB38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFB3C  7C 08 02 A6 */	mflr r0
/* 804DFB40  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFB44  4B D8 35 4C */	b ModuleUnresolved
/* 804DFB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFB4C  7C 08 03 A6 */	mtlr r0
/* 804DFB50  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFB54  4E 80 00 20 */	blr 
