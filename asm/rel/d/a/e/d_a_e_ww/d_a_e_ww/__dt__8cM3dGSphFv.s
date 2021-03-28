lbl_807EEC88:
/* 807EEC88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EEC8C  7C 08 02 A6 */	mflr r0
/* 807EEC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EEC94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EEC98  7C 7F 1B 79 */	or. r31, r3, r3
/* 807EEC9C  41 82 00 1C */	beq lbl_807EECB8
/* 807EECA0  3C A0 80 7F */	lis r5, __vt__8cM3dGSph@ha
/* 807EECA4  38 05 FB 00 */	addi r0, r5, __vt__8cM3dGSph@l
/* 807EECA8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807EECAC  7C 80 07 35 */	extsh. r0, r4
/* 807EECB0  40 81 00 08 */	ble lbl_807EECB8
/* 807EECB4  4B AE 00 88 */	b __dl__FPv
lbl_807EECB8:
/* 807EECB8  7F E3 FB 78 */	mr r3, r31
/* 807EECBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EECC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EECC4  7C 08 03 A6 */	mtlr r0
/* 807EECC8  38 21 00 10 */	addi r1, r1, 0x10
/* 807EECCC  4E 80 00 20 */	blr 
