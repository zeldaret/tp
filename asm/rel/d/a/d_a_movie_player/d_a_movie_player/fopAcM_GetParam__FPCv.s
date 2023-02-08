lbl_80878BDC:
/* 80878BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878BE0  7C 08 02 A6 */	mflr r0
/* 80878BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878BE8  48 00 00 15 */	bl fpcM_GetParam__FPCv
/* 80878BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878BF0  7C 08 03 A6 */	mtlr r0
/* 80878BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80878BF8  4E 80 00 20 */	blr 
