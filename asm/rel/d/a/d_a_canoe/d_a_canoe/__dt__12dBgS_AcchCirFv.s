lbl_804DADBC:
/* 804DADBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DADC0  7C 08 02 A6 */	mflr r0
/* 804DADC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DADC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DADCC  93 C1 00 08 */	stw r30, 8(r1)
/* 804DADD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 804DADD4  7C 9F 23 78 */	mr r31, r4
/* 804DADD8  41 82 00 38 */	beq lbl_804DAE10
/* 804DADDC  3C 60 80 4E */	lis r3, __vt__12dBgS_AcchCir@ha
/* 804DADE0  38 03 D7 A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 804DADE4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804DADE8  38 7E 00 14 */	addi r3, r30, 0x14
/* 804DADEC  38 80 FF FF */	li r4, -1
/* 804DADF0  4B D9 41 28 */	b __dt__8cM3dGCirFv
/* 804DADF4  7F C3 F3 78 */	mr r3, r30
/* 804DADF8  38 80 00 00 */	li r4, 0
/* 804DADFC  4B D8 D2 B4 */	b __dt__13cBgS_PolyInfoFv
/* 804DAE00  7F E0 07 35 */	extsh. r0, r31
/* 804DAE04  40 81 00 0C */	ble lbl_804DAE10
/* 804DAE08  7F C3 F3 78 */	mr r3, r30
/* 804DAE0C  4B DF 3F 30 */	b __dl__FPv
lbl_804DAE10:
/* 804DAE10  7F C3 F3 78 */	mr r3, r30
/* 804DAE14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAE18  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DAE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAE20  7C 08 03 A6 */	mtlr r0
/* 804DAE24  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAE28  4E 80 00 20 */	blr 
