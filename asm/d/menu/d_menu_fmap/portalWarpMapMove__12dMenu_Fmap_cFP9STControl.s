lbl_801CC8DC:
/* 801CC8DC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801CC8E0  7C 08 02 A6 */	mflr r0
/* 801CC8E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 801CC8E8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801CC8EC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 801CC8F0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 801CC8F4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 801CC8F8  39 61 00 40 */	addi r11, r1, 0x40
/* 801CC8FC  48 19 58 D1 */	bl _savegpr_25
/* 801CC900  7C 7B 1B 78 */	mr r27, r3
/* 801CC904  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801CC908  48 00 82 25 */	bl regionMapMove__18dMenu_Fmap2DBack_cFP9STControl
/* 801CC90C  83 FB 00 90 */	lwz r31, 0x90(r27)
/* 801CC910  3B DF 00 0C */	addi r30, r31, 0xc
/* 801CC914  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 801CC918  C3 E3 11 94 */	lfs f31, 0x1194(r3)
/* 801CC91C  C3 C3 11 98 */	lfs f30, 0x1198(r3)
/* 801CC920  3B A0 00 FF */	li r29, 0xff
/* 801CC924  3B 80 00 00 */	li r28, 0
/* 801CC928  3B 40 00 00 */	li r26, 0
/* 801CC92C  48 00 00 C0 */	b lbl_801CC9EC
lbl_801CC930:
/* 801CC930  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 801CC934  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801CC938  7F 3E D2 14 */	add r25, r30, r26
/* 801CC93C  88 79 00 01 */	lbz r3, 1(r25)
/* 801CC940  38 04 00 01 */	addi r0, r4, 1
/* 801CC944  7C 03 00 00 */	cmpw r3, r0
/* 801CC948  40 82 00 9C */	bne lbl_801CC9E4
/* 801CC94C  7F 63 DB 78 */	mr r3, r27
/* 801CC950  88 99 00 0E */	lbz r4, 0xe(r25)
/* 801CC954  88 B9 00 0F */	lbz r5, 0xf(r25)
/* 801CC958  48 00 06 59 */	bl checkDrawPortalIcon__12dMenu_Fmap_cFii
/* 801CC95C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CC960  41 82 00 84 */	beq lbl_801CC9E4
/* 801CC964  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 801CC968  C0 39 00 10 */	lfs f1, 0x10(r25)
/* 801CC96C  C0 59 00 18 */	lfs f2, 0x18(r25)
/* 801CC970  38 81 00 10 */	addi r4, r1, 0x10
/* 801CC974  38 A1 00 0C */	addi r5, r1, 0xc
/* 801CC978  48 00 43 A1 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801CC97C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801CC980  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801CC984  EC 20 00 32 */	fmuls f1, f0, f0
/* 801CC988  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801CC98C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801CC990  EC 00 00 32 */	fmuls f0, f0, f0
/* 801CC994  EC 21 00 2A */	fadds f1, f1, f0
/* 801CC998  C0 02 A7 60 */	lfs f0, lit_6855(r2)
/* 801CC99C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801CC9A0  4C 40 13 82 */	cror 2, 0, 2
/* 801CC9A4  40 82 00 40 */	bne lbl_801CC9E4
/* 801CC9A8  57 9D 06 3E */	clrlwi r29, r28, 0x18
/* 801CC9AC  7F 63 DB 78 */	mr r3, r27
/* 801CC9B0  1C 1D 00 1C */	mulli r0, r29, 0x1c
/* 801CC9B4  7F 3E 02 14 */	add r25, r30, r0
/* 801CC9B8  A0 99 00 0C */	lhz r4, 0xc(r25)
/* 801CC9BC  4B FF FE C5 */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801CC9C0  7F 63 DB 78 */	mr r3, r27
/* 801CC9C4  38 99 00 02 */	addi r4, r25, 2
/* 801CC9C8  48 00 09 B9 */	bl searchPortalStageID__12dMenu_Fmap_cFPc
/* 801CC9CC  7C 64 1B 78 */	mr r4, r3
/* 801CC9D0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801CC9D4  28 00 00 FF */	cmplwi r0, 0xff
/* 801CC9D8  41 82 00 0C */	beq lbl_801CC9E4
/* 801CC9DC  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 801CC9E0  48 00 53 95 */	bl setSpotCursor__18dMenu_Fmap2DBack_cFUc
lbl_801CC9E4:
/* 801CC9E4  3B 9C 00 01 */	addi r28, r28, 1
/* 801CC9E8  3B 5A 00 1C */	addi r26, r26, 0x1c
lbl_801CC9EC:
/* 801CC9EC  88 1F 00 08 */	lbz r0, 8(r31)
/* 801CC9F0  7C 1C 00 00 */	cmpw r28, r0
/* 801CC9F4  41 80 FF 3C */	blt lbl_801CC930
/* 801CC9F8  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 801CC9FC  28 03 00 FF */	cmplwi r3, 0xff
/* 801CCA00  41 82 00 48 */	beq lbl_801CCA48
/* 801CCA04  88 1B 03 08 */	lbz r0, 0x308(r27)
/* 801CCA08  7C 03 00 40 */	cmplw r3, r0
/* 801CCA0C  41 82 00 38 */	beq lbl_801CCA44
/* 801CCA10  38 00 00 46 */	li r0, 0x46
/* 801CCA14  90 01 00 08 */	stw r0, 8(r1)
/* 801CCA18  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801CCA1C  38 81 00 08 */	addi r4, r1, 8
/* 801CCA20  38 A0 00 00 */	li r5, 0
/* 801CCA24  38 C0 00 00 */	li r6, 0
/* 801CCA28  38 E0 00 00 */	li r7, 0
/* 801CCA2C  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801CCA30  FC 40 08 90 */	fmr f2, f1
/* 801CCA34  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801CCA38  FC 80 18 90 */	fmr f4, f3
/* 801CCA3C  39 00 00 00 */	li r8, 0
/* 801CCA40  48 0D EF 45 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801CCA44:
/* 801CCA44  9B BB 03 08 */	stb r29, 0x308(r27)
lbl_801CCA48:
/* 801CCA48  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 801CCA4C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801CCA50  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 801CCA54  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801CCA58  39 61 00 40 */	addi r11, r1, 0x40
/* 801CCA5C  48 19 57 BD */	bl _restgpr_25
/* 801CCA60  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801CCA64  7C 08 03 A6 */	mtlr r0
/* 801CCA68  38 21 00 60 */	addi r1, r1, 0x60
/* 801CCA6C  4E 80 00 20 */	blr 
