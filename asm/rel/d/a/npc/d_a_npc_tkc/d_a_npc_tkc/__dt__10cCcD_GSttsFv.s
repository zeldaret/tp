lbl_80B10670:
/* 80B10670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B10674  7C 08 02 A6 */	mflr r0
/* 80B10678  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1067C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B10680  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B10684  41 82 00 1C */	beq lbl_80B106A0
/* 80B10688  3C A0 80 B1 */	lis r5, __vt__10cCcD_GStts@ha
/* 80B1068C  38 05 0C 90 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80B10690  90 1F 00 00 */	stw r0, 0(r31)
/* 80B10694  7C 80 07 35 */	extsh. r0, r4
/* 80B10698  40 81 00 08 */	ble lbl_80B106A0
/* 80B1069C  4B 7B E6 A0 */	b __dl__FPv
lbl_80B106A0:
/* 80B106A0  7F E3 FB 78 */	mr r3, r31
/* 80B106A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B106A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B106AC  7C 08 03 A6 */	mtlr r0
/* 80B106B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B106B4  4E 80 00 20 */	blr 
