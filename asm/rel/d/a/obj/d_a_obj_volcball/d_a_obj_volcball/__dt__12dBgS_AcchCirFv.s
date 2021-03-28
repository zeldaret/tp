lbl_80D223B4:
/* 80D223B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D223B8  7C 08 02 A6 */	mflr r0
/* 80D223BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D223C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D223C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D223C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D223CC  7C 9F 23 78 */	mr r31, r4
/* 80D223D0  41 82 00 38 */	beq lbl_80D22408
/* 80D223D4  3C 60 80 D2 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80D223D8  38 03 40 60 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80D223DC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80D223E0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D223E4  38 80 FF FF */	li r4, -1
/* 80D223E8  4B 54 CB 30 */	b __dt__8cM3dGCirFv
/* 80D223EC  7F C3 F3 78 */	mr r3, r30
/* 80D223F0  38 80 00 00 */	li r4, 0
/* 80D223F4  4B 54 5C BC */	b __dt__13cBgS_PolyInfoFv
/* 80D223F8  7F E0 07 35 */	extsh. r0, r31
/* 80D223FC  40 81 00 0C */	ble lbl_80D22408
/* 80D22400  7F C3 F3 78 */	mr r3, r30
/* 80D22404  4B 5A C9 38 */	b __dl__FPv
lbl_80D22408:
/* 80D22408  7F C3 F3 78 */	mr r3, r30
/* 80D2240C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D22410  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D22414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D22418  7C 08 03 A6 */	mtlr r0
/* 80D2241C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D22420  4E 80 00 20 */	blr 
