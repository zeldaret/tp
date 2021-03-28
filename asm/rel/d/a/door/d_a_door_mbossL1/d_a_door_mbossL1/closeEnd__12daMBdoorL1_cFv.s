lbl_80675304:
/* 80675304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80675308  7C 08 02 A6 */	mflr r0
/* 8067530C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80675310  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80675314  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80675318  7C 7E 1B 78 */	mr r30, r3
/* 8067531C  3C 60 80 67 */	lis r3, l_staff_name@ha
/* 80675320  3B E3 75 58 */	addi r31, r3, l_staff_name@l
/* 80675324  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80675328  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8067532C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80675330  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80675334  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80675338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067533C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80675340  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80675344  38 80 00 04 */	li r4, 4
/* 80675348  38 A0 00 1F */	li r5, 0x1f
/* 8067534C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80675350  4B 9F A6 D4 */	b StartShock__12dVibration_cFii4cXyz
/* 80675354  7F C3 F3 78 */	mr r3, r30
/* 80675358  4B FF DC 2D */	bl getDoorType__12daMBdoorL1_cFv
/* 8067535C  2C 03 00 00 */	cmpwi r3, 0
/* 80675360  40 82 00 50 */	bne lbl_806753B0
/* 80675364  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80675368  7C 03 07 74 */	extsb r3, r0
/* 8067536C  4B 9B 7D 00 */	b dComIfGp_getReverb__Fi
/* 80675370  7C 67 1B 78 */	mr r7, r3
/* 80675374  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B5@ha */
/* 80675378  38 03 00 B5 */	addi r0, r3, 0x00B5 /* 0x000800B5@l */
/* 8067537C  90 01 00 08 */	stw r0, 8(r1)
/* 80675380  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80675384  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80675388  80 63 00 00 */	lwz r3, 0(r3)
/* 8067538C  38 81 00 08 */	addi r4, r1, 8
/* 80675390  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80675394  38 C0 00 00 */	li r6, 0
/* 80675398  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8067539C  FC 40 08 90 */	fmr f2, f1
/* 806753A0  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 806753A4  FC 80 18 90 */	fmr f4, f3
/* 806753A8  39 00 00 00 */	li r8, 0
/* 806753AC  4B C3 65 D8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806753B0:
/* 806753B0  38 60 00 01 */	li r3, 1
/* 806753B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806753B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806753BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806753C0  7C 08 03 A6 */	mtlr r0
/* 806753C4  38 21 00 20 */	addi r1, r1, 0x20
/* 806753C8  4E 80 00 20 */	blr 
