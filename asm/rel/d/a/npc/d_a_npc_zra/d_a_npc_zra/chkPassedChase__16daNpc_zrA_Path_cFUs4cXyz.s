lbl_80B78CA0:
/* 80B78CA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B78CA4  7C 08 02 A6 */	mflr r0
/* 80B78CA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B78CAC  7C 68 1B 78 */	mr r8, r3
/* 80B78CB0  7C 80 23 78 */	mr r0, r4
/* 80B78CB4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80B78CB8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B78CBC  C0 05 00 04 */	lfs f0, 4(r5)
/* 80B78CC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B78CC4  C0 05 00 08 */	lfs f0, 8(r5)
/* 80B78CC8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B78CCC  80 C3 00 04 */	lwz r6, 4(r3)
/* 80B78CD0  38 61 00 08 */	addi r3, r1, 8
/* 80B78CD4  80 86 00 08 */	lwz r4, 8(r6)
/* 80B78CD8  7C 05 03 78 */	mr r5, r0
/* 80B78CDC  A0 C6 00 00 */	lhz r6, 0(r6)
/* 80B78CE0  88 E8 00 03 */	lbz r7, 3(r8)
/* 80B78CE4  89 08 00 02 */	lbz r8, 2(r8)
/* 80B78CE8  4B 5D C1 75 */	bl daNpcF_chkPassed__F4cXyzP4dPntUsUsii
/* 80B78CEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B78CF0  7C 08 03 A6 */	mtlr r0
/* 80B78CF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B78CF8  4E 80 00 20 */	blr 
