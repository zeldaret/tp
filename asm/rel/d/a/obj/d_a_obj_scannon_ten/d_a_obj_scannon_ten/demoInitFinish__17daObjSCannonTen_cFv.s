lbl_80CCC3D4:
/* 80CCC3D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCC3D8  7C 08 02 A6 */	mflr r0
/* 80CCC3DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCC3E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CCC3E4  7C 7F 1B 78 */	mr r31, r3
/* 80CCC3E8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001008E@ha */
/* 80CCC3EC  38 03 00 8E */	addi r0, r3, 0x008E /* 0x0001008E@l */
/* 80CCC3F0  90 01 00 08 */	stw r0, 8(r1)
/* 80CCC3F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CCC3F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CCC3FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCC400  38 81 00 08 */	addi r4, r1, 8
/* 80CCC404  38 A0 00 00 */	li r5, 0
/* 80CCC408  38 C0 00 00 */	li r6, 0
/* 80CCC40C  38 E0 00 00 */	li r7, 0
/* 80CCC410  3D 00 80 CD */	lis r8, lit_3987@ha
/* 80CCC414  C0 28 CC 4C */	lfs f1, lit_3987@l(r8)
/* 80CCC418  FC 40 08 90 */	fmr f2, f1
/* 80CCC41C  3D 00 80 CD */	lis r8, lit_4133@ha
/* 80CCC420  C0 68 CC 5C */	lfs f3, lit_4133@l(r8)
/* 80CCC424  FC 80 18 90 */	fmr f4, f3
/* 80CCC428  39 00 00 00 */	li r8, 0
/* 80CCC42C  4B 5D F5 58 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CCC430  7F E3 FB 78 */	mr r3, r31
/* 80CCC434  48 00 03 9D */	bl initEmtLine__17daObjSCannonTen_cFv
/* 80CCC438  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CCC43C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80CCC440  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80CCC444  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCC448  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCC44C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CCC450  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 80CCC454  3C A0 80 CD */	lis r5, stringBase0@ha
/* 80CCC458  38 A5 CC 80 */	addi r5, r5, stringBase0@l
/* 80CCC45C  38 A5 00 47 */	addi r5, r5, 0x47
/* 80CCC460  38 C0 00 03 */	li r6, 3
/* 80CCC464  4B 37 BC 88 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CCC468  28 03 00 00 */	cmplwi r3, 0
/* 80CCC46C  41 82 00 10 */	beq lbl_80CCC47C
/* 80CCC470  80 03 00 00 */	lwz r0, 0(r3)
/* 80CCC474  90 1F 05 E0 */	stw r0, 0x5e0(r31)
/* 80CCC478  48 00 00 0C */	b lbl_80CCC484
lbl_80CCC47C:
/* 80CCC47C  38 00 00 01 */	li r0, 1
/* 80CCC480  90 1F 05 E0 */	stw r0, 0x5e0(r31)
lbl_80CCC484:
/* 80CCC484  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CCC488  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCC48C  7C 08 03 A6 */	mtlr r0
/* 80CCC490  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCC494  4E 80 00 20 */	blr 
