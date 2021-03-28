lbl_80B0B7CC:
/* 80B0B7CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0B7D0  7C 08 02 A6 */	mflr r0
/* 80B0B7D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0B7D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B0B7DC  7C 7F 1B 78 */	mr r31, r3
/* 80B0B7E0  80 63 06 B0 */	lwz r3, 0x6b0(r3)
/* 80B0B7E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B0B7E8  41 82 00 0C */	beq lbl_80B0B7F4
/* 80B0B7EC  38 03 FF FF */	addi r0, r3, -1
/* 80B0B7F0  90 1F 06 B0 */	stw r0, 0x6b0(r31)
lbl_80B0B7F4:
/* 80B0B7F4  80 7F 06 B4 */	lwz r3, 0x6b4(r31)
/* 80B0B7F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B0B7FC  41 82 00 0C */	beq lbl_80B0B808
/* 80B0B800  38 03 FF FF */	addi r0, r3, -1
/* 80B0B804  90 1F 06 B4 */	stw r0, 0x6b4(r31)
lbl_80B0B808:
/* 80B0B808  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 80B0B80C  2C 03 00 00 */	cmpwi r3, 0
/* 80B0B810  41 82 00 0C */	beq lbl_80B0B81C
/* 80B0B814  38 03 FF FF */	addi r0, r3, -1
/* 80B0B818  90 1F 07 0C */	stw r0, 0x70c(r31)
lbl_80B0B81C:
/* 80B0B81C  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 80B0B820  2C 03 00 00 */	cmpwi r3, 0
/* 80B0B824  41 82 00 5C */	beq lbl_80B0B880
/* 80B0B828  38 03 FF FF */	addi r0, r3, -1
/* 80B0B82C  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80B0B830  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80B0B834  2C 00 00 00 */	cmpwi r0, 0
/* 80B0B838  40 82 00 48 */	bne lbl_80B0B880
/* 80B0B83C  38 00 00 0C */	li r0, 0xc
/* 80B0B840  90 01 00 08 */	stw r0, 8(r1)
/* 80B0B844  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B0B848  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B0B84C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B0B850  38 81 00 08 */	addi r4, r1, 8
/* 80B0B854  38 A0 00 00 */	li r5, 0
/* 80B0B858  38 C0 00 00 */	li r6, 0
/* 80B0B85C  38 E0 00 00 */	li r7, 0
/* 80B0B860  3D 00 80 B1 */	lis r8, lit_3999@ha
/* 80B0B864  C0 28 C1 C4 */	lfs f1, lit_3999@l(r8)
/* 80B0B868  FC 40 08 90 */	fmr f2, f1
/* 80B0B86C  3D 00 80 B1 */	lis r8, lit_4025@ha
/* 80B0B870  C0 68 C1 F8 */	lfs f3, lit_4025@l(r8)
/* 80B0B874  FC 80 18 90 */	fmr f4, f3
/* 80B0B878  39 00 00 00 */	li r8, 0
/* 80B0B87C  4B 7A 01 08 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80B0B880:
/* 80B0B880  80 1F 09 C4 */	lwz r0, 0x9c4(r31)
/* 80B0B884  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B0B888  90 1F 09 C4 */	stw r0, 0x9c4(r31)
/* 80B0B88C  7F E3 FB 78 */	mr r3, r31
/* 80B0B890  4B FF F9 F5 */	bl action__10daNPC_TK_cFv
/* 80B0B894  7F E3 FB 78 */	mr r3, r31
/* 80B0B898  4B FF FD 35 */	bl mtx_set__10daNPC_TK_cFv
/* 80B0B89C  7F E3 FB 78 */	mr r3, r31
/* 80B0B8A0  4B FF FE 3D */	bl cc_set__10daNPC_TK_cFv
/* 80B0B8A4  88 1F 06 C6 */	lbz r0, 0x6c6(r31)
/* 80B0B8A8  28 00 00 00 */	cmplwi r0, 0
/* 80B0B8AC  41 82 00 14 */	beq lbl_80B0B8C0
/* 80B0B8B0  38 00 00 00 */	li r0, 0
/* 80B0B8B4  98 1F 06 C6 */	stb r0, 0x6c6(r31)
/* 80B0B8B8  7F E3 FB 78 */	mr r3, r31
/* 80B0B8BC  4B FF 93 3D */	bl setCarryActorMtx__10daNPC_TK_cFv
lbl_80B0B8C0:
/* 80B0B8C0  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 80B0B8C4  D0 1F 06 28 */	stfs f0, 0x628(r31)
/* 80B0B8C8  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80B0B8CC  D0 1F 06 2C */	stfs f0, 0x62c(r31)
/* 80B0B8D0  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 80B0B8D4  D0 1F 06 30 */	stfs f0, 0x630(r31)
/* 80B0B8D8  38 60 00 01 */	li r3, 1
/* 80B0B8DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B0B8E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0B8E4  7C 08 03 A6 */	mtlr r0
/* 80B0B8E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0B8EC  4E 80 00 20 */	blr 
