lbl_80BE9404:
/* 80BE9404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9408  7C 08 02 A6 */	mflr r0
/* 80BE940C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE9414  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE9418  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BE941C  7C 9F 23 78 */	mr r31, r4
/* 80BE9420  41 82 00 38 */	beq lbl_80BE9458
/* 80BE9424  3C 60 80 BF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80BE9428  38 03 9B D8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80BE942C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BE9430  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BE9434  38 80 FF FF */	li r4, -1
/* 80BE9438  4B 68 5A E0 */	b __dt__8cM3dGCirFv
/* 80BE943C  7F C3 F3 78 */	mr r3, r30
/* 80BE9440  38 80 00 00 */	li r4, 0
/* 80BE9444  4B 67 EC 6C */	b __dt__13cBgS_PolyInfoFv
/* 80BE9448  7F E0 07 35 */	extsh. r0, r31
/* 80BE944C  40 81 00 0C */	ble lbl_80BE9458
/* 80BE9450  7F C3 F3 78 */	mr r3, r30
/* 80BE9454  4B 6E 58 E8 */	b __dl__FPv
lbl_80BE9458:
/* 80BE9458  7F C3 F3 78 */	mr r3, r30
/* 80BE945C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE9460  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE9464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE9468  7C 08 03 A6 */	mtlr r0
/* 80BE946C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9470  4E 80 00 20 */	blr 
