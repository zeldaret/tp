lbl_80D4A840:
/* 80D4A840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D4A844  7C 08 02 A6 */	mflr r0
/* 80D4A848  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D4A84C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D4A850  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D4A854  38 63 0E 48 */	addi r3, r3, 0xe48
/* 80D4A858  4B 3F AE B1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80D4A85C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4A860  41 82 00 A8 */	beq lbl_80D4A908
/* 80D4A864  4B E7 9A 55 */	bl attr__14daObjCatDoor_cCFv
/* 80D4A868  A8 03 00 02 */	lha r0, 2(r3)
/* 80D4A86C  B0 1F 07 90 */	sth r0, 0x790(r31)
/* 80D4A870  3B DF 05 74 */	addi r30, r31, 0x574
/* 80D4A874  7F C3 F3 78 */	mr r3, r30
/* 80D4A878  4B 51 D9 5D */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D4A87C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D4A880  41 82 00 18 */	beq lbl_80D4A898
/* 80D4A884  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4A888  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4A88C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D4A890  7F C4 F3 78 */	mr r4, r30
/* 80D4A894  4B 32 99 BD */	bl Release__4cBgSFP9dBgW_Base
lbl_80D4A898:
/* 80D4A898  3B DF 06 6C */	addi r30, r31, 0x66c
/* 80D4A89C  7F C3 F3 78 */	mr r3, r30
/* 80D4A8A0  4B 51 D9 35 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D4A8A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D4A8A8  41 82 00 18 */	beq lbl_80D4A8C0
/* 80D4A8AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4A8B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4A8B4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D4A8B8  7F C4 F3 78 */	mr r4, r30
/* 80D4A8BC  4B 32 99 95 */	bl Release__4cBgSFP9dBgW_Base
lbl_80D4A8C0:
/* 80D4A8C0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008026B@ha */
/* 80D4A8C4  38 03 02 6B */	addi r0, r3, 0x026B /* 0x0008026B@l */
/* 80D4A8C8  90 01 00 08 */	stw r0, 8(r1)
/* 80D4A8CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D4A8D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D4A8D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4A8D8  38 81 00 08 */	addi r4, r1, 8
/* 80D4A8DC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D4A8E0  38 C0 00 00 */	li r6, 0
/* 80D4A8E4  38 E0 00 00 */	li r7, 0
/* 80D4A8E8  3D 00 80 D5 */	lis r8, lit_4348@ha /* 0x80D4C114@ha */
/* 80D4A8EC  C0 28 C1 14 */	lfs f1, lit_4348@l(r8)  /* 0x80D4C114@l */
/* 80D4A8F0  FC 40 08 90 */	fmr f2, f1
/* 80D4A8F4  3D 00 80 D5 */	lis r8, lit_4548@ha /* 0x80D4C128@ha */
/* 80D4A8F8  C0 68 C1 28 */	lfs f3, lit_4548@l(r8)  /* 0x80D4C128@l */
/* 80D4A8FC  FC 80 18 90 */	fmr f4, f3
/* 80D4A900  39 00 00 00 */	li r8, 0
/* 80D4A904  4B 56 10 81 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D4A908:
/* 80D4A908  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D4A90C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D4A910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D4A914  7C 08 03 A6 */	mtlr r0
/* 80D4A918  38 21 00 20 */	addi r1, r1, 0x20
/* 80D4A91C  4E 80 00 20 */	blr 
