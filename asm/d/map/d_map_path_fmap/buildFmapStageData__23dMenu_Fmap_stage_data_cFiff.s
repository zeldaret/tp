lbl_8003D9D8:
/* 8003D9D8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8003D9DC  7C 08 02 A6 */	mflr r0
/* 8003D9E0  90 01 00 84 */	stw r0, 0x84(r1)
/* 8003D9E4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8003D9E8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8003D9EC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8003D9F0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8003D9F4  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8003D9F8  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8003D9FC  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8003DA00  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 8003DA04  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 8003DA08  F3 61 00 38 */	psq_st f27, 56(r1), 0, 0 /* qr0 */
/* 8003DA0C  DB 41 00 20 */	stfd f26, 0x20(r1)
/* 8003DA10  F3 41 00 28 */	psq_st f26, 40(r1), 0, 0 /* qr0 */
/* 8003DA14  39 61 00 20 */	addi r11, r1, 0x20
/* 8003DA18  48 32 47 C1 */	bl _savegpr_28
/* 8003DA1C  7C 7C 1B 78 */	mr r28, r3
/* 8003DA20  7C 9D 23 78 */	mr r29, r4
/* 8003DA24  FF 40 08 90 */	fmr f26, f1
/* 8003DA28  FF 60 10 90 */	fmr f27, f2
/* 8003DA2C  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 8003DA30  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 8003DA34  C0 03 0A E8 */	lfs f0, __float_max@l(r3)  /* 0x80450AE8@l */
/* 8003DA38  FF E0 00 90 */	fmr f31, f0
/* 8003DA3C  FF C0 00 90 */	fmr f30, f0
/* 8003DA40  FC 00 00 50 */	fneg f0, f0
/* 8003DA44  FF A0 00 90 */	fmr f29, f0
/* 8003DA48  FF 80 00 90 */	fmr f28, f0
/* 8003DA4C  3B C0 00 00 */	li r30, 0
/* 8003DA50  48 00 00 74 */	b lbl_8003DAC4
lbl_8003DA54:
/* 8003DA54  7F E3 FB 78 */	mr r3, r31
/* 8003DA58  7F A4 EB 78 */	mr r4, r29
/* 8003DA5C  7F C5 F3 78 */	mr r5, r30
/* 8003DA60  FC 20 D0 90 */	fmr f1, f26
/* 8003DA64  FC 40 D8 90 */	fmr f2, f27
/* 8003DA68  C0 7C 00 14 */	lfs f3, 0x14(r28)
/* 8003DA6C  C0 9C 00 18 */	lfs f4, 0x18(r28)
/* 8003DA70  4B FF FE BD */	bl buildFmapRoomData__22dMenu_Fmap_room_data_cFiiffff
/* 8003DA74  80 7F 00 00 */	lwz r3, 0(r31)
/* 8003DA78  80 63 00 04 */	lwz r3, 4(r3)
/* 8003DA7C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8003DA80  C0 23 00 04 */	lfs f1, 4(r3)
/* 8003DA84  C0 43 00 08 */	lfs f2, 8(r3)
/* 8003DA88  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 8003DA8C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8003DA90  40 80 00 08 */	bge lbl_8003DA98
/* 8003DA94  FF E0 00 90 */	fmr f31, f0
lbl_8003DA98:
/* 8003DA98  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8003DA9C  40 80 00 08 */	bge lbl_8003DAA4
/* 8003DAA0  FF C0 08 90 */	fmr f30, f1
lbl_8003DAA4:
/* 8003DAA4  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 8003DAA8  40 81 00 08 */	ble lbl_8003DAB0
/* 8003DAAC  FF A0 10 90 */	fmr f29, f2
lbl_8003DAB0:
/* 8003DAB0  FC 03 E0 40 */	fcmpo cr0, f3, f28
/* 8003DAB4  40 81 00 08 */	ble lbl_8003DABC
/* 8003DAB8  FF 80 18 90 */	fmr f28, f3
lbl_8003DABC:
/* 8003DABC  83 FF 00 08 */	lwz r31, 8(r31)
/* 8003DAC0  3B DE 00 01 */	addi r30, r30, 1
lbl_8003DAC4:
/* 8003DAC4  28 1F 00 00 */	cmplwi r31, 0
/* 8003DAC8  40 82 FF 8C */	bne lbl_8003DA54
/* 8003DACC  2C 1E 00 00 */	cmpwi r30, 0
/* 8003DAD0  40 81 00 18 */	ble lbl_8003DAE8
/* 8003DAD4  D3 FC 00 1C */	stfs f31, 0x1c(r28)
/* 8003DAD8  D3 DC 00 20 */	stfs f30, 0x20(r28)
/* 8003DADC  D3 BC 00 24 */	stfs f29, 0x24(r28)
/* 8003DAE0  D3 9C 00 28 */	stfs f28, 0x28(r28)
/* 8003DAE4  48 00 00 18 */	b lbl_8003DAFC
lbl_8003DAE8:
/* 8003DAE8  C0 02 84 20 */	lfs f0, lit_3894(r2)
/* 8003DAEC  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 8003DAF0  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 8003DAF4  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 8003DAF8  D0 1C 00 28 */	stfs f0, 0x28(r28)
lbl_8003DAFC:
/* 8003DAFC  7F C3 F3 78 */	mr r3, r30
/* 8003DB00  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8003DB04  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8003DB08  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8003DB0C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8003DB10  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8003DB14  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8003DB18  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 8003DB1C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 8003DB20  E3 61 00 38 */	psq_l f27, 56(r1), 0, 0 /* qr0 */
/* 8003DB24  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 8003DB28  E3 41 00 28 */	psq_l f26, 40(r1), 0, 0 /* qr0 */
/* 8003DB2C  CB 41 00 20 */	lfd f26, 0x20(r1)
/* 8003DB30  39 61 00 20 */	addi r11, r1, 0x20
/* 8003DB34  48 32 46 F1 */	bl _restgpr_28
/* 8003DB38  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8003DB3C  7C 08 03 A6 */	mtlr r0
/* 8003DB40  38 21 00 80 */	addi r1, r1, 0x80
/* 8003DB44  4E 80 00 20 */	blr 
