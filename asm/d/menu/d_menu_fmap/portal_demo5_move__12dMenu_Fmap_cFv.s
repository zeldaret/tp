lbl_801C9FBC:
/* 801C9FBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C9FC0  7C 08 02 A6 */	mflr r0
/* 801C9FC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C9FC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C9FCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C9FD0  7C 7F 1B 78 */	mr r31, r3
/* 801C9FD4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801C9FD8  4B E6 81 C5 */	bl checkTrigger__9STControlFv
/* 801C9FDC  48 03 00 75 */	bl dMw_B_TRIGGER__Fv
/* 801C9FE0  2C 03 00 00 */	cmpwi r3, 0
/* 801C9FE4  40 82 00 60 */	bne lbl_801CA044
/* 801C9FE8  48 03 00 7D */	bl dMw_Z_TRIGGER__Fv
/* 801C9FEC  2C 03 00 00 */	cmpwi r3, 0
/* 801C9FF0  40 82 00 54 */	bne lbl_801CA044
/* 801C9FF4  48 03 00 85 */	bl dMw_START_TRIGGER__Fv
/* 801C9FF8  2C 03 00 00 */	cmpwi r3, 0
/* 801C9FFC  40 82 00 48 */	bne lbl_801CA044
/* 801CA000  48 02 FF 85 */	bl dMw_UP_TRIGGER__Fv
/* 801CA004  2C 03 00 00 */	cmpwi r3, 0
/* 801CA008  40 82 00 3C */	bne lbl_801CA044
/* 801CA00C  48 02 FF 8D */	bl dMw_DOWN_TRIGGER__Fv
/* 801CA010  2C 03 00 00 */	cmpwi r3, 0
/* 801CA014  40 82 00 30 */	bne lbl_801CA044
/* 801CA018  48 02 FF 95 */	bl dMw_LEFT_TRIGGER__Fv
/* 801CA01C  2C 03 00 00 */	cmpwi r3, 0
/* 801CA020  40 82 00 24 */	bne lbl_801CA044
/* 801CA024  48 02 FF D1 */	bl dMw_RIGHT_TRIGGER__Fv
/* 801CA028  2C 03 00 00 */	cmpwi r3, 0
/* 801CA02C  40 82 00 18 */	bne lbl_801CA044
/* 801CA030  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801CA034  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
/* 801CA038  A0 1E 00 B2 */	lhz r0, 0xb2(r30)
/* 801CA03C  54 00 A7 FF */	rlwinm. r0, r0, 0x14, 0x1f, 0x1f
/* 801CA040  41 82 00 28 */	beq lbl_801CA068
lbl_801CA044:
/* 801CA044  80 7F 00 08 */	lwz r3, 8(r31)
/* 801CA048  48 06 DA 99 */	bl setTalkHeap__12dMsgObject_cFPv
/* 801CA04C  38 60 07 DF */	li r3, 0x7df
/* 801CA050  38 80 03 E8 */	li r4, 0x3e8
/* 801CA054  4B E5 5E 31 */	bl fopMsgM_messageSet__FUlUl
/* 801CA058  7F E3 FB 78 */	mr r3, r31
/* 801CA05C  38 80 00 11 */	li r4, 0x11
/* 801CA060  48 00 16 71 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801CA064  48 00 00 C8 */	b lbl_801CA12C
lbl_801CA068:
/* 801CA068  48 02 FF D5 */	bl dMw_A_TRIGGER__Fv
/* 801CA06C  2C 03 00 00 */	cmpwi r3, 0
/* 801CA070  41 82 00 B0 */	beq lbl_801CA120
/* 801CA074  A0 1E 00 B2 */	lhz r0, 0xb2(r30)
/* 801CA078  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801CA07C  40 82 00 A4 */	bne lbl_801CA120
/* 801CA080  88 1F 03 08 */	lbz r0, 0x308(r31)
/* 801CA084  28 00 00 FF */	cmplwi r0, 0xff
/* 801CA088  41 82 00 60 */	beq lbl_801CA0E8
/* 801CA08C  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 801CA090  3B C3 00 0C */	addi r30, r3, 0xc
/* 801CA094  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA098  80 9F 00 08 */	lwz r4, 8(r31)
/* 801CA09C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 801CA0A0  48 00 D5 A1 */	bl createExplain__17dMenu_Fmap2DTop_cFP10JKRExpHeapP9STControl
/* 801CA0A4  88 1F 03 08 */	lbz r0, 0x308(r31)
/* 801CA0A8  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 801CA0AC  7C 7E 02 14 */	add r3, r30, r0
/* 801CA0B0  A0 63 00 0C */	lhz r3, 0xc(r3)
/* 801CA0B4  48 06 E3 E9 */	bl setPortalMessageID__12dMsgObject_cFUs
/* 801CA0B8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA0BC  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801CA0C0  38 80 05 1E */	li r4, 0x51e
/* 801CA0C4  38 A0 00 02 */	li r5, 2
/* 801CA0C8  38 C0 00 00 */	li r6, 0
/* 801CA0CC  38 E0 00 FF */	li r7, 0xff
/* 801CA0D0  39 00 00 01 */	li r8, 1
/* 801CA0D4  48 07 44 85 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801CA0D8  7F E3 FB 78 */	mr r3, r31
/* 801CA0DC  38 80 00 09 */	li r4, 9
/* 801CA0E0  48 00 15 F1 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801CA0E4  48 00 00 48 */	b lbl_801CA12C
lbl_801CA0E8:
/* 801CA0E8  38 00 00 4A */	li r0, 0x4a
/* 801CA0EC  90 01 00 08 */	stw r0, 8(r1)
/* 801CA0F0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801CA0F4  38 81 00 08 */	addi r4, r1, 8
/* 801CA0F8  38 A0 00 00 */	li r5, 0
/* 801CA0FC  38 C0 00 00 */	li r6, 0
/* 801CA100  38 E0 00 00 */	li r7, 0
/* 801CA104  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801CA108  FC 40 08 90 */	fmr f2, f1
/* 801CA10C  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801CA110  FC 80 18 90 */	fmr f4, f3
/* 801CA114  39 00 00 00 */	li r8, 0
/* 801CA118  48 0E 18 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801CA11C  48 00 00 10 */	b lbl_801CA12C
lbl_801CA120:
/* 801CA120  7F E3 FB 78 */	mr r3, r31
/* 801CA124  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801CA128  48 00 27 B5 */	bl portalWarpMapMove__12dMenu_Fmap_cFP9STControl
lbl_801CA12C:
/* 801CA12C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA130  88 83 12 29 */	lbz r4, 0x1229(r3)
/* 801CA134  7F E3 FB 78 */	mr r3, r31
/* 801CA138  38 A0 00 00 */	li r5, 0
/* 801CA13C  48 00 15 A5 */	bl setFlash__12dMenu_Fmap_cFUcb
/* 801CA140  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CA144  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CA148  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CA14C  7C 08 03 A6 */	mtlr r0
/* 801CA150  38 21 00 20 */	addi r1, r1, 0x20
/* 801CA154  4E 80 00 20 */	blr 
