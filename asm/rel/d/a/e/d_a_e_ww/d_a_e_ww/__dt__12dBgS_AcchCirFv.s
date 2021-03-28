lbl_807EEDE4:
/* 807EEDE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EEDE8  7C 08 02 A6 */	mflr r0
/* 807EEDEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EEDF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EEDF4  93 C1 00 08 */	stw r30, 8(r1)
/* 807EEDF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 807EEDFC  7C 9F 23 78 */	mr r31, r4
/* 807EEE00  41 82 00 38 */	beq lbl_807EEE38
/* 807EEE04  3C 60 80 7F */	lis r3, __vt__12dBgS_AcchCir@ha
/* 807EEE08  38 03 FA D0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 807EEE0C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807EEE10  38 7E 00 14 */	addi r3, r30, 0x14
/* 807EEE14  38 80 FF FF */	li r4, -1
/* 807EEE18  4B A8 01 00 */	b __dt__8cM3dGCirFv
/* 807EEE1C  7F C3 F3 78 */	mr r3, r30
/* 807EEE20  38 80 00 00 */	li r4, 0
/* 807EEE24  4B A7 92 8C */	b __dt__13cBgS_PolyInfoFv
/* 807EEE28  7F E0 07 35 */	extsh. r0, r31
/* 807EEE2C  40 81 00 0C */	ble lbl_807EEE38
/* 807EEE30  7F C3 F3 78 */	mr r3, r30
/* 807EEE34  4B AD FF 08 */	b __dl__FPv
lbl_807EEE38:
/* 807EEE38  7F C3 F3 78 */	mr r3, r30
/* 807EEE3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EEE40  83 C1 00 08 */	lwz r30, 8(r1)
/* 807EEE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EEE48  7C 08 03 A6 */	mtlr r0
/* 807EEE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 807EEE50  4E 80 00 20 */	blr 
