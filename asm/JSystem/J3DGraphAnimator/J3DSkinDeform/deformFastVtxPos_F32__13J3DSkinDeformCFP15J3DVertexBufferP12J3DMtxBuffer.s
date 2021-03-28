lbl_8032D8F4:
/* 8032D8F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032D8F8  7C 08 02 A6 */	mflr r0
/* 8032D8FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032D900  39 61 00 30 */	addi r11, r1, 0x30
/* 8032D904  48 03 48 C9 */	bl _savegpr_25
/* 8032D908  7C 9C 23 78 */	mr r28, r4
/* 8032D90C  7C BD 2B 78 */	mr r29, r5
/* 8032D910  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 8032D914  80 1C 00 20 */	lwz r0, 0x20(r28)
/* 8032D918  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 8032D91C  90 9C 00 20 */	stw r4, 0x20(r28)
/* 8032D920  80 A5 00 00 */	lwz r5, 0(r5)
/* 8032D924  80 9C 00 00 */	lwz r4, 0(r28)
/* 8032D928  80 04 00 00 */	lwz r0, 0(r4)
/* 8032D92C  83 FC 00 2C */	lwz r31, 0x2c(r28)
/* 8032D930  80 DC 00 1C */	lwz r6, 0x1c(r28)
/* 8032D934  7C DE 33 78 */	mr r30, r6
/* 8032D938  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8032D93C  38 04 00 1F */	addi r0, r4, 0x1f
/* 8032D940  54 00 D9 7E */	srwi r0, r0, 5
/* 8032D944  7C 09 03 A6 */	mtctr r0
lbl_8032D948:
/* 8032D948  7C 00 37 EC */	dcbz 0, r6
/* 8032D94C  38 C6 00 20 */	addi r6, r6, 0x20
/* 8032D950  42 00 FF F8 */	bdnz lbl_8032D948
/* 8032D954  A0 05 00 1E */	lhz r0, 0x1e(r5)
/* 8032D958  28 00 00 00 */	cmplwi r0, 0
/* 8032D95C  41 82 00 4C */	beq lbl_8032D9A8
/* 8032D960  A3 45 00 1C */	lhz r26, 0x1c(r5)
/* 8032D964  3B 20 00 00 */	li r25, 0
/* 8032D968  83 A3 00 24 */	lwz r29, 0x24(r3)
/* 8032D96C  83 63 00 0C */	lwz r27, 0xc(r3)
/* 8032D970  48 00 00 28 */	b lbl_8032D998
lbl_8032D974:
/* 8032D974  57 24 04 3E */	clrlwi r4, r25, 0x10
/* 8032D978  1C 04 00 14 */	mulli r0, r4, 0x14
/* 8032D97C  7C 7D 02 14 */	add r3, r29, r0
/* 8032D980  1C 04 00 30 */	mulli r0, r4, 0x30
/* 8032D984  7C 9B 02 14 */	add r4, r27, r0
/* 8032D988  7F E5 FB 78 */	mr r5, r31
/* 8032D98C  7F C6 F3 78 */	mr r6, r30
/* 8032D990  4B FF EE CD */	bl calcSkin_VtxPosF32__12J3DSkinNListFPA4_fPvPv
/* 8032D994  3B 39 00 01 */	addi r25, r25, 1
lbl_8032D998:
/* 8032D998  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 8032D99C  7C 00 D0 40 */	cmplw r0, r26
/* 8032D9A0  41 80 FF D4 */	blt lbl_8032D974
/* 8032D9A4  48 00 00 48 */	b lbl_8032D9EC
lbl_8032D9A8:
/* 8032D9A8  A3 65 00 1C */	lhz r27, 0x1c(r5)
/* 8032D9AC  3B 20 00 00 */	li r25, 0
/* 8032D9B0  83 43 00 24 */	lwz r26, 0x24(r3)
/* 8032D9B4  48 00 00 2C */	b lbl_8032D9E0
lbl_8032D9B8:
/* 8032D9B8  57 25 04 3E */	clrlwi r5, r25, 0x10
/* 8032D9BC  1C 05 00 14 */	mulli r0, r5, 0x14
/* 8032D9C0  7C 7A 02 14 */	add r3, r26, r0
/* 8032D9C4  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8032D9C8  1C 05 00 30 */	mulli r0, r5, 0x30
/* 8032D9CC  7C 84 02 14 */	add r4, r4, r0
/* 8032D9D0  7F E5 FB 78 */	mr r5, r31
/* 8032D9D4  7F C6 F3 78 */	mr r6, r30
/* 8032D9D8  4B FF EE 85 */	bl calcSkin_VtxPosF32__12J3DSkinNListFPA4_fPvPv
/* 8032D9DC  3B 39 00 01 */	addi r25, r25, 1
lbl_8032D9E0:
/* 8032D9E0  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 8032D9E4  7C 00 D8 40 */	cmplw r0, r27
/* 8032D9E8  41 80 FF D0 */	blt lbl_8032D9B8
lbl_8032D9EC:
/* 8032D9EC  80 7C 00 00 */	lwz r3, 0(r28)
/* 8032D9F0  80 03 00 00 */	lwz r0, 0(r3)
/* 8032D9F4  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 8032D9F8  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8032D9FC  48 00 DB E1 */	bl DCStoreRange
/* 8032DA00  93 DC 00 2C */	stw r30, 0x2c(r28)
/* 8032DA04  39 61 00 30 */	addi r11, r1, 0x30
/* 8032DA08  48 03 48 11 */	bl _restgpr_25
/* 8032DA0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032DA10  7C 08 03 A6 */	mtlr r0
/* 8032DA14  38 21 00 30 */	addi r1, r1, 0x30
/* 8032DA18  4E 80 00 20 */	blr 
