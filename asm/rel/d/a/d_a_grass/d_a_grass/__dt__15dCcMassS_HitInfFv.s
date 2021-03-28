lbl_8051ED98:
/* 8051ED98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051ED9C  7C 08 02 A6 */	mflr r0
/* 8051EDA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051EDA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051EDA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8051EDAC  41 82 00 1C */	beq lbl_8051EDC8
/* 8051EDB0  3C A0 80 52 */	lis r5, __vt__15dCcMassS_HitInf@ha
/* 8051EDB4  38 05 78 B8 */	addi r0, r5, __vt__15dCcMassS_HitInf@l
/* 8051EDB8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8051EDBC  7C 80 07 35 */	extsh. r0, r4
/* 8051EDC0  40 81 00 08 */	ble lbl_8051EDC8
/* 8051EDC4  4B DA FF 78 */	b __dl__FPv
lbl_8051EDC8:
/* 8051EDC8  7F E3 FB 78 */	mr r3, r31
/* 8051EDCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051EDD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051EDD4  7C 08 03 A6 */	mtlr r0
/* 8051EDD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051EDDC  4E 80 00 20 */	blr 
