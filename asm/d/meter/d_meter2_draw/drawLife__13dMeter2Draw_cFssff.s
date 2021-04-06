lbl_802149F4:
/* 802149F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802149F8  7C 08 02 A6 */	mflr r0
/* 802149FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80214A00  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80214A04  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80214A08  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80214A0C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80214A10  39 61 00 20 */	addi r11, r1, 0x20
/* 80214A14  48 14 D7 BD */	bl _savegpr_26
/* 80214A18  7C 7F 1B 78 */	mr r31, r3
/* 80214A1C  FF C0 08 90 */	fmr f30, f1
/* 80214A20  FF E0 10 90 */	fmr f31, f2
/* 80214A24  7C 83 07 34 */	extsh r3, r4
/* 80214A28  38 00 00 05 */	li r0, 5
/* 80214A2C  7C 03 03 D6 */	divw r0, r3, r0
/* 80214A30  7C 1C 07 34 */	extsh r28, r0
/* 80214A34  7C A4 07 34 */	extsh r4, r5
/* 80214A38  7C 80 16 70 */	srawi r0, r4, 2
/* 80214A3C  7C 00 01 94 */	addze r0, r0
/* 80214A40  7C 1D 07 34 */	extsh r29, r0
/* 80214A44  54 80 F0 02 */	slwi r0, r4, 0x1e
/* 80214A48  54 83 0F FE */	srwi r3, r4, 0x1f
/* 80214A4C  7C 03 00 50 */	subf r0, r3, r0
/* 80214A50  54 00 10 3E */	rotlwi r0, r0, 2
/* 80214A54  7C 00 1A 14 */	add r0, r0, r3
/* 80214A58  7C 1B 07 34 */	extsh r27, r0
/* 80214A5C  57 80 10 3A */	slwi r0, r28, 2
/* 80214A60  7C 04 00 00 */	cmpw r4, r0
/* 80214A64  40 82 00 08 */	bne lbl_80214A6C
/* 80214A68  3B 60 00 00 */	li r27, 0
lbl_80214A6C:
/* 80214A6C  7F 60 07 35 */	extsh. r0, r27
/* 80214A70  40 82 00 08 */	bne lbl_80214A78
/* 80214A74  3B BD FF FF */	addi r29, r29, -1
lbl_80214A78:
/* 80214A78  7C A0 07 35 */	extsh. r0, r5
/* 80214A7C  40 82 00 10 */	bne lbl_80214A8C
/* 80214A80  80 7F 01 C8 */	lwz r3, 0x1c8(r31)
/* 80214A84  48 04 0B 85 */	bl hide__13CPaneMgrAlphaFv
/* 80214A88  48 00 00 0C */	b lbl_80214A94
lbl_80214A8C:
/* 80214A8C  80 7F 01 C8 */	lwz r3, 0x1c8(r31)
/* 80214A90  48 04 0B 39 */	bl show__13CPaneMgrAlphaFv
lbl_80214A94:
/* 80214A94  3B 40 00 00 */	li r26, 0
/* 80214A98  3B C0 00 00 */	li r30, 0
/* 80214A9C  7F BD 07 34 */	extsh r29, r29
lbl_80214AA0:
/* 80214AA0  7C 1A E0 00 */	cmpw r26, r28
/* 80214AA4  40 80 00 64 */	bge lbl_80214B08
/* 80214AA8  38 1E 01 28 */	addi r0, r30, 0x128
/* 80214AAC  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80214AB0  48 04 0B 19 */	bl show__13CPaneMgrAlphaFv
/* 80214AB4  7C 1A E8 00 */	cmpw r26, r29
/* 80214AB8  40 82 00 1C */	bne lbl_80214AD4
/* 80214ABC  7F E3 FB 78 */	mr r3, r31
/* 80214AC0  7F 44 D3 78 */	mr r4, r26
/* 80214AC4  38 A0 00 01 */	li r5, 1
/* 80214AC8  57 66 06 3E */	clrlwi r6, r27, 0x18
/* 80214ACC  4B FF FD 01 */	bl changeTextureLife__13dMeter2Draw_cFibUc
/* 80214AD0  48 00 00 58 */	b lbl_80214B28
lbl_80214AD4:
/* 80214AD4  40 80 00 1C */	bge lbl_80214AF0
/* 80214AD8  7F E3 FB 78 */	mr r3, r31
/* 80214ADC  7F 44 D3 78 */	mr r4, r26
/* 80214AE0  38 A0 00 01 */	li r5, 1
/* 80214AE4  38 C0 00 FF */	li r6, 0xff
/* 80214AE8  4B FF FC E5 */	bl changeTextureLife__13dMeter2Draw_cFibUc
/* 80214AEC  48 00 00 3C */	b lbl_80214B28
lbl_80214AF0:
/* 80214AF0  7F E3 FB 78 */	mr r3, r31
/* 80214AF4  7F 44 D3 78 */	mr r4, r26
/* 80214AF8  38 A0 00 00 */	li r5, 0
/* 80214AFC  38 C0 00 FF */	li r6, 0xff
/* 80214B00  4B FF FC CD */	bl changeTextureLife__13dMeter2Draw_cFibUc
/* 80214B04  48 00 00 24 */	b lbl_80214B28
lbl_80214B08:
/* 80214B08  38 1E 01 28 */	addi r0, r30, 0x128
/* 80214B0C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80214B10  48 04 0A F9 */	bl hide__13CPaneMgrAlphaFv
/* 80214B14  7F E3 FB 78 */	mr r3, r31
/* 80214B18  7F 44 D3 78 */	mr r4, r26
/* 80214B1C  38 A0 00 00 */	li r5, 0
/* 80214B20  38 C0 00 FF */	li r6, 0xff
/* 80214B24  4B FF FC A9 */	bl changeTextureLife__13dMeter2Draw_cFibUc
lbl_80214B28:
/* 80214B28  3B 5A 00 01 */	addi r26, r26, 1
/* 80214B2C  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80214B30  3B DE 00 04 */	addi r30, r30, 4
/* 80214B34  41 80 FF 6C */	blt lbl_80214AA0
/* 80214B38  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80214B3C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80214B40  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80214B44  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80214B48  80 63 00 04 */	lwz r3, 4(r3)
/* 80214B4C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80214B50  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80214B54  81 83 00 00 */	lwz r12, 0(r3)
/* 80214B58  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80214B5C  7D 89 03 A6 */	mtctr r12
/* 80214B60  4E 80 04 21 */	bctrl 
/* 80214B64  3B 40 00 00 */	li r26, 0
/* 80214B68  3B C0 00 00 */	li r30, 0
/* 80214B6C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80214B70  3B A3 EB C8 */	addi r29, r3, g_drawHIO@l /* 0x8042EBC8@l */
lbl_80214B74:
/* 80214B74  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80214B78  38 1E 01 78 */	addi r0, r30, 0x178
/* 80214B7C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80214B80  80 63 00 04 */	lwz r3, 4(r3)
/* 80214B84  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80214B88  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80214B8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80214B90  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80214B94  7D 89 03 A6 */	mtctr r12
/* 80214B98  4E 80 04 21 */	bctrl 
/* 80214B9C  3B 5A 00 01 */	addi r26, r26, 1
/* 80214BA0  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80214BA4  3B DE 00 04 */	addi r30, r30, 4
/* 80214BA8  41 80 FF CC */	blt lbl_80214B74
/* 80214BAC  3B 40 00 00 */	li r26, 0
/* 80214BB0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80214BB4  3B C3 EB C8 */	addi r30, r3, g_drawHIO@l /* 0x8042EBC8@l */
lbl_80214BB8:
/* 80214BB8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80214BBC  80 7F 01 C8 */	lwz r3, 0x1c8(r31)
/* 80214BC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80214BC4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80214BC8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80214BCC  81 83 00 00 */	lwz r12, 0(r3)
/* 80214BD0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80214BD4  7D 89 03 A6 */	mtctr r12
/* 80214BD8  4E 80 04 21 */	bctrl 
/* 80214BDC  3B 5A 00 01 */	addi r26, r26, 1
/* 80214BE0  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80214BE4  41 80 FF D4 */	blt lbl_80214BB8
/* 80214BE8  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80214BEC  FC 20 F0 90 */	fmr f1, f30
/* 80214BF0  FC 40 F8 90 */	fmr f2, f31
/* 80214BF4  48 03 F9 BD */	bl paneTrans__8CPaneMgrFff
/* 80214BF8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80214BFC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80214C00  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80214C04  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80214C08  39 61 00 20 */	addi r11, r1, 0x20
/* 80214C0C  48 14 D6 11 */	bl _restgpr_26
/* 80214C10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80214C14  7C 08 03 A6 */	mtlr r0
/* 80214C18  38 21 00 40 */	addi r1, r1, 0x40
/* 80214C1C  4E 80 00 20 */	blr 
