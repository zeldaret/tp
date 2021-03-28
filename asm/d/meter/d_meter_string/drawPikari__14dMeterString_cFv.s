lbl_8020F6EC:
/* 8020F6EC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8020F6F0  7C 08 02 A6 */	mflr r0
/* 8020F6F4  90 01 01 04 */	stw r0, 0x104(r1)
/* 8020F6F8  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 8020F6FC  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 8020F700  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 8020F704  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 8020F708  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 8020F70C  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 8020F710  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 8020F714  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 8020F718  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 8020F71C  F3 61 00 B8 */	psq_st f27, 184(r1), 0, 0 /* qr0 */
/* 8020F720  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 8020F724  F3 41 00 A8 */	psq_st f26, 168(r1), 0, 0 /* qr0 */
/* 8020F728  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 8020F72C  F3 21 00 98 */	psq_st f25, 152(r1), 0, 0 /* qr0 */
/* 8020F730  DB 01 00 80 */	stfd f24, 0x80(r1)
/* 8020F734  F3 01 00 88 */	psq_st f24, 136(r1), 0, 0 /* qr0 */
/* 8020F738  39 61 00 80 */	addi r11, r1, 0x80
/* 8020F73C  48 15 2A 89 */	bl _savegpr_23
/* 8020F740  7C 7F 1B 78 */	mr r31, r3
/* 8020F744  C3 C3 00 30 */	lfs f30, 0x30(r3)
/* 8020F748  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8020F74C  38 61 00 24 */	addi r3, r1, 0x24
/* 8020F750  80 A4 00 04 */	lwz r5, 4(r4)
/* 8020F754  38 C0 00 00 */	li r6, 0
/* 8020F758  38 E0 00 00 */	li r7, 0
/* 8020F75C  48 04 57 61 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8020F760  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8020F764  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8020F768  90 61 00 30 */	stw r3, 0x30(r1)
/* 8020F76C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8020F770  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8020F774  90 01 00 38 */	stw r0, 0x38(r1)
/* 8020F778  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8020F77C  80 63 00 04 */	lwz r3, 4(r3)
/* 8020F780  48 0F 0E D9 */	bl getStringPtr__10J2DTextBoxCFv
/* 8020F784  7C 7B 1B 78 */	mr r27, r3
/* 8020F788  3B 40 00 00 */	li r26, 0
/* 8020F78C  C3 22 AE 58 */	lfs f25, lit_3762(r2)
/* 8020F790  FF A0 C8 90 */	fmr f29, f25
/* 8020F794  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8020F798  80 63 00 04 */	lwz r3, 4(r3)
/* 8020F79C  C3 E3 01 1C */	lfs f31, 0x11c(r3)
/* 8020F7A0  4B E0 52 51 */	bl mDoExt_getMesgFont__Fv
/* 8020F7A4  7C 79 1B 78 */	mr r25, r3
/* 8020F7A8  C3 82 AE 60 */	lfs f28, lit_3820(r2)
/* 8020F7AC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8020F7B0  80 63 00 04 */	lwz r3, 4(r3)
/* 8020F7B4  48 00 00 10 */	b lbl_8020F7C4
lbl_8020F7B8:
/* 8020F7B8  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 8020F7BC  EF 9C 00 32 */	fmuls f28, f28, f0
/* 8020F7C0  48 0E 83 3D */	bl getParentPane__7J2DPaneFv
lbl_8020F7C4:
/* 8020F7C4  28 03 00 00 */	cmplwi r3, 0
/* 8020F7C8  40 82 FF F0 */	bne lbl_8020F7B8
/* 8020F7CC  CB 62 AE 70 */	lfd f27, lit_3824(r2)
/* 8020F7D0  3F 80 43 30 */	lis r28, 0x4330
/* 8020F7D4  48 00 00 C4 */	b lbl_8020F898
lbl_8020F7D8:
/* 8020F7D8  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8020F7DC  7F 40 07 35 */	extsh. r0, r26
/* 8020F7E0  40 81 00 18 */	ble lbl_8020F7F8
/* 8020F7E4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8020F7E8  80 63 00 04 */	lwz r3, 4(r3)
/* 8020F7EC  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 8020F7F0  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8020F7F4  EF 39 00 2A */	fadds f25, f25, f0
lbl_8020F7F8:
/* 8020F7F8  7F E3 FB 78 */	mr r3, r31
/* 8020F7FC  48 00 02 8D */	bl isLeadByte__14dMeterString_cFi
/* 8020F800  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020F804  41 82 00 24 */	beq lbl_8020F828
/* 8020F808  7C 1B C0 AE */	lbzx r0, r27, r24
/* 8020F80C  7C 05 07 74 */	extsb r5, r0
/* 8020F810  7F 43 07 34 */	extsh r3, r26
/* 8020F814  38 03 00 01 */	addi r0, r3, 1
/* 8020F818  7C 9B 00 AE */	lbzx r4, r27, r0
/* 8020F81C  50 A4 44 2E */	rlwimi r4, r5, 8, 0x10, 0x17
/* 8020F820  3B 5A 00 01 */	addi r26, r26, 1
/* 8020F824  48 00 00 08 */	b lbl_8020F82C
lbl_8020F828:
/* 8020F828  7C 9B C0 AE */	lbzx r4, r27, r24
lbl_8020F82C:
/* 8020F82C  7F 23 CB 78 */	mr r3, r25
/* 8020F830  38 A1 00 0C */	addi r5, r1, 0xc
/* 8020F834  81 99 00 00 */	lwz r12, 0(r25)
/* 8020F838  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020F83C  7D 89 03 A6 */	mtctr r12
/* 8020F840  4E 80 04 21 */	bctrl 
/* 8020F844  8B 01 00 0D */	lbz r24, 0xd(r1)
/* 8020F848  7F 23 CB 78 */	mr r3, r25
/* 8020F84C  81 99 00 00 */	lwz r12, 0(r25)
/* 8020F850  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8020F854  7D 89 03 A6 */	mtctr r12
/* 8020F858  4E 80 04 21 */	bctrl 
/* 8020F85C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8020F860  90 01 00 44 */	stw r0, 0x44(r1)
/* 8020F864  93 81 00 40 */	stw r28, 0x40(r1)
/* 8020F868  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8020F86C  EC 20 D8 28 */	fsubs f1, f0, f27
/* 8020F870  6F 00 80 00 */	xoris r0, r24, 0x8000
/* 8020F874  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8020F878  93 81 00 48 */	stw r28, 0x48(r1)
/* 8020F87C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8020F880  EC 00 D8 28 */	fsubs f0, f0, f27
/* 8020F884  EC 00 08 24 */	fdivs f0, f0, f1
/* 8020F888  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8020F88C  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8020F890  EF 39 00 2A */	fadds f25, f25, f0
/* 8020F894  3B 5A 00 01 */	addi r26, r26, 1
lbl_8020F898:
/* 8020F898  7F 58 07 34 */	extsh r24, r26
/* 8020F89C  7C 7B C0 AE */	lbzx r3, r27, r24
/* 8020F8A0  7C 60 07 75 */	extsb. r0, r3
/* 8020F8A4  40 82 FF 34 */	bne lbl_8020F7D8
/* 8020F8A8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8020F8AC  C0 02 AE 7C */	lfs f0, lit_3979(r2)
/* 8020F8B0  EC 19 00 32 */	fmuls f0, f25, f0
/* 8020F8B4  EF 21 00 28 */	fsubs f25, f1, f0
/* 8020F8B8  3B 40 00 00 */	li r26, 0
/* 8020F8BC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020F8C0  3B 83 EB C8 */	addi r28, r3, g_drawHIO@l
/* 8020F8C4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020F8C8  3B A3 01 88 */	addi r29, r3, g_meter2_info@l
/* 8020F8CC  C3 41 00 34 */	lfs f26, 0x34(r1)
/* 8020F8D0  CB 62 AE 70 */	lfd f27, lit_3824(r2)
/* 8020F8D4  3F C0 43 30 */	lis r30, 0x4330
/* 8020F8D8  48 00 01 40 */	b lbl_8020FA18
lbl_8020F8DC:
/* 8020F8DC  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 8020F8E0  7C 9B C0 AE */	lbzx r4, r27, r24
/* 8020F8E4  7F 40 07 35 */	extsh. r0, r26
/* 8020F8E8  40 81 00 18 */	ble lbl_8020F900
/* 8020F8EC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8020F8F0  80 63 00 04 */	lwz r3, 4(r3)
/* 8020F8F4  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 8020F8F8  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8020F8FC  EF BD 00 2A */	fadds f29, f29, f0
lbl_8020F900:
/* 8020F900  7F E3 FB 78 */	mr r3, r31
/* 8020F904  48 00 01 85 */	bl isLeadByte__14dMeterString_cFi
/* 8020F908  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020F90C  41 82 00 24 */	beq lbl_8020F930
/* 8020F910  7C 1B C0 AE */	lbzx r0, r27, r24
/* 8020F914  7C 04 07 74 */	extsb r4, r0
/* 8020F918  7F 43 07 34 */	extsh r3, r26
/* 8020F91C  38 03 00 01 */	addi r0, r3, 1
/* 8020F920  7E FB 00 AE */	lbzx r23, r27, r0
/* 8020F924  50 97 44 2E */	rlwimi r23, r4, 8, 0x10, 0x17
/* 8020F928  3B 5A 00 01 */	addi r26, r26, 1
/* 8020F92C  48 00 00 08 */	b lbl_8020F934
lbl_8020F930:
/* 8020F930  7E FB C0 AE */	lbzx r23, r27, r24
lbl_8020F934:
/* 8020F934  7F 23 CB 78 */	mr r3, r25
/* 8020F938  7E E4 BB 78 */	mr r4, r23
/* 8020F93C  38 A1 00 08 */	addi r5, r1, 8
/* 8020F940  81 99 00 00 */	lwz r12, 0(r25)
/* 8020F944  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020F948  7D 89 03 A6 */	mtctr r12
/* 8020F94C  4E 80 04 21 */	bctrl 
/* 8020F950  8B 01 00 09 */	lbz r24, 9(r1)
/* 8020F954  7F 23 CB 78 */	mr r3, r25
/* 8020F958  81 99 00 00 */	lwz r12, 0(r25)
/* 8020F95C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8020F960  7D 89 03 A6 */	mtctr r12
/* 8020F964  4E 80 04 21 */	bctrl 
/* 8020F968  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8020F96C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8020F970  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8020F974  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8020F978  EC 20 D8 28 */	fsubs f1, f0, f27
/* 8020F97C  6F 00 80 00 */	xoris r0, r24, 0x8000
/* 8020F980  90 01 00 44 */	stw r0, 0x44(r1)
/* 8020F984  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8020F988  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8020F98C  EC 00 D8 28 */	fsubs f0, f0, f27
/* 8020F990  EC 00 08 24 */	fdivs f0, f0, f1
/* 8020F994  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8020F998  EF 1C 00 32 */	fmuls f24, f28, f0
/* 8020F99C  2C 17 00 20 */	cmpwi r23, 0x20
/* 8020F9A0  41 82 00 70 */	beq lbl_8020FA10
/* 8020F9A4  3C 17 00 00 */	addis r0, r23, 0
/* 8020F9A8  28 00 81 40 */	cmplwi r0, 0x8140
/* 8020F9AC  41 82 00 64 */	beq lbl_8020FA10
/* 8020F9B0  80 1C 0C 10 */	lwz r0, 0xc10(r28)
/* 8020F9B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8020F9B8  80 1C 0C 14 */	lwz r0, 0xc14(r28)
/* 8020F9BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020F9C0  80 1C 0C 08 */	lwz r0, 0xc08(r28)
/* 8020F9C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8020F9C8  80 1C 0C 0C */	lwz r0, 0xc0c(r28)
/* 8020F9CC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8020F9D0  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8020F9D4  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 8020F9D8  C0 02 AE 7C */	lfs f0, lit_3979(r2)
/* 8020F9DC  EC 38 00 32 */	fmuls f1, f24, f0
/* 8020F9E0  EC 19 E8 2A */	fadds f0, f25, f29
/* 8020F9E4  EC 21 00 2A */	fadds f1, f1, f0
/* 8020F9E8  FC 40 D0 90 */	fmr f2, f26
/* 8020F9EC  38 81 00 20 */	addi r4, r1, 0x20
/* 8020F9F0  C0 7C 0C 04 */	lfs f3, 0xc04(r28)
/* 8020F9F4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8020F9F8  38 C1 00 18 */	addi r6, r1, 0x18
/* 8020F9FC  38 E1 00 14 */	addi r7, r1, 0x14
/* 8020FA00  39 01 00 10 */	addi r8, r1, 0x10
/* 8020FA04  C0 9C 0C 18 */	lfs f4, 0xc18(r28)
/* 8020FA08  39 20 00 00 */	li r9, 0
/* 8020FA0C  48 00 46 D1 */	bl drawPikari__13dMeter2Draw_cFffPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
lbl_8020FA10:
/* 8020FA10  EF BD C0 2A */	fadds f29, f29, f24
/* 8020FA14  3B 5A 00 01 */	addi r26, r26, 1
lbl_8020FA18:
/* 8020FA18  7F 58 07 34 */	extsh r24, r26
/* 8020FA1C  7C 1B C0 AE */	lbzx r0, r27, r24
/* 8020FA20  7C 00 07 75 */	extsb. r0, r0
/* 8020FA24  40 82 FE B8 */	bne lbl_8020F8DC
/* 8020FA28  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8020FA2C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8020FA30  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 8020FA34  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 8020FA38  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 8020FA3C  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 8020FA40  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 8020FA44  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 8020FA48  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 8020FA4C  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 8020FA50  E3 61 00 B8 */	psq_l f27, 184(r1), 0, 0 /* qr0 */
/* 8020FA54  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 8020FA58  E3 41 00 A8 */	psq_l f26, 168(r1), 0, 0 /* qr0 */
/* 8020FA5C  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 8020FA60  E3 21 00 98 */	psq_l f25, 152(r1), 0, 0 /* qr0 */
/* 8020FA64  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 8020FA68  E3 01 00 88 */	psq_l f24, 136(r1), 0, 0 /* qr0 */
/* 8020FA6C  CB 01 00 80 */	lfd f24, 0x80(r1)
/* 8020FA70  39 61 00 80 */	addi r11, r1, 0x80
/* 8020FA74  48 15 27 9D */	bl _restgpr_23
/* 8020FA78  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8020FA7C  7C 08 03 A6 */	mtlr r0
/* 8020FA80  38 21 01 00 */	addi r1, r1, 0x100
/* 8020FA84  4E 80 00 20 */	blr 
