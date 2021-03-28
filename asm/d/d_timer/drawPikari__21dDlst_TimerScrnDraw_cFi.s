lbl_80260B54:
/* 80260B54  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80260B58  7C 08 02 A6 */	mflr r0
/* 80260B5C  90 01 01 14 */	stw r0, 0x114(r1)
/* 80260B60  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80260B64  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80260B68  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 80260B6C  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 80260B70  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 80260B74  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 80260B78  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 80260B7C  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 80260B80  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 80260B84  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 80260B88  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 80260B8C  F3 41 00 B8 */	psq_st f26, 184(r1), 0, 0 /* qr0 */
/* 80260B90  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 80260B94  F3 21 00 A8 */	psq_st f25, 168(r1), 0, 0 /* qr0 */
/* 80260B98  DB 01 00 90 */	stfd f24, 0x90(r1)
/* 80260B9C  F3 01 00 98 */	psq_st f24, 152(r1), 0, 0 /* qr0 */
/* 80260BA0  39 61 00 90 */	addi r11, r1, 0x90
/* 80260BA4  48 10 16 19 */	bl _savegpr_21
/* 80260BA8  7C 7F 1B 78 */	mr r31, r3
/* 80260BAC  54 9A 20 36 */	slwi r26, r4, 4
/* 80260BB0  7F 3F D2 14 */	add r25, r31, r26
/* 80260BB4  C3 79 00 84 */	lfs f27, 0x84(r25)
/* 80260BB8  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80260BBC  38 61 00 34 */	addi r3, r1, 0x34
/* 80260BC0  80 A4 00 04 */	lwz r5, 4(r4)
/* 80260BC4  38 C0 00 00 */	li r6, 0
/* 80260BC8  38 E0 00 00 */	li r7, 0
/* 80260BCC  4B FF 42 F1 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80260BD0  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80260BD4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80260BD8  90 61 00 40 */	stw r3, 0x40(r1)
/* 80260BDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80260BE0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80260BE4  90 01 00 48 */	stw r0, 0x48(r1)
/* 80260BE8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80260BEC  80 63 00 04 */	lwz r3, 4(r3)
/* 80260BF0  48 09 FA 69 */	bl getStringPtr__10J2DTextBoxCFv
/* 80260BF4  7C 7B 1B 78 */	mr r27, r3
/* 80260BF8  3B 00 00 00 */	li r24, 0
/* 80260BFC  C3 A2 B5 40 */	lfs f29, lit_3919(r2)
/* 80260C00  FF 40 E8 90 */	fmr f26, f29
/* 80260C04  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80260C08  80 63 00 04 */	lwz r3, 4(r3)
/* 80260C0C  C3 C3 01 1C */	lfs f30, 0x11c(r3)
/* 80260C10  4B DB 3D E1 */	bl mDoExt_getMesgFont__Fv
/* 80260C14  7C 77 1B 78 */	mr r23, r3
/* 80260C18  C3 22 B5 4C */	lfs f25, lit_4124(r2)
/* 80260C1C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80260C20  80 63 00 04 */	lwz r3, 4(r3)
/* 80260C24  48 00 00 10 */	b lbl_80260C34
lbl_80260C28:
/* 80260C28  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 80260C2C  EF 39 00 32 */	fmuls f25, f25, f0
/* 80260C30  48 09 6E CD */	bl getParentPane__7J2DPaneFv
lbl_80260C34:
/* 80260C34  28 03 00 00 */	cmplwi r3, 0
/* 80260C38  40 82 FF F0 */	bne lbl_80260C28
/* 80260C3C  CB 82 B5 58 */	lfd f28, lit_4627(r2)
/* 80260C40  3F 80 43 30 */	lis r28, 0x4330
/* 80260C44  48 00 00 90 */	b lbl_80260CD4
lbl_80260C48:
/* 80260C48  7F 00 07 35 */	extsh. r0, r24
/* 80260C4C  40 81 00 18 */	ble lbl_80260C64
/* 80260C50  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80260C54  80 63 00 04 */	lwz r3, 4(r3)
/* 80260C58  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 80260C5C  EC 19 00 32 */	fmuls f0, f25, f0
/* 80260C60  EF BD 00 2A */	fadds f29, f29, f0
lbl_80260C64:
/* 80260C64  7E E3 BB 78 */	mr r3, r23
/* 80260C68  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80260C6C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80260C70  81 97 00 00 */	lwz r12, 0(r23)
/* 80260C74  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80260C78  7D 89 03 A6 */	mtctr r12
/* 80260C7C  4E 80 04 21 */	bctrl 
/* 80260C80  8B A1 00 0D */	lbz r29, 0xd(r1)
/* 80260C84  7E E3 BB 78 */	mr r3, r23
/* 80260C88  81 97 00 00 */	lwz r12, 0(r23)
/* 80260C8C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80260C90  7D 89 03 A6 */	mtctr r12
/* 80260C94  4E 80 04 21 */	bctrl 
/* 80260C98  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80260C9C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80260CA0  93 81 00 50 */	stw r28, 0x50(r1)
/* 80260CA4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80260CA8  EC 20 E0 28 */	fsubs f1, f0, f28
/* 80260CAC  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 80260CB0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80260CB4  93 81 00 58 */	stw r28, 0x58(r1)
/* 80260CB8  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80260CBC  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80260CC0  EC 00 08 24 */	fdivs f0, f0, f1
/* 80260CC4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80260CC8  EC 19 00 32 */	fmuls f0, f25, f0
/* 80260CCC  EF BD 00 2A */	fadds f29, f29, f0
/* 80260CD0  3B 18 00 01 */	addi r24, r24, 1
lbl_80260CD4:
/* 80260CD4  7F 00 07 34 */	extsh r0, r24
/* 80260CD8  7C 9B 00 AE */	lbzx r4, r27, r0
/* 80260CDC  7C 80 07 75 */	extsb. r0, r4
/* 80260CE0  40 82 FF 68 */	bne lbl_80260C48
/* 80260CE4  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80260CE8  C0 02 B5 98 */	lfs f0, lit_5326(r2)
/* 80260CEC  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80260CF0  EF 81 00 28 */	fsubs f28, f1, f0
/* 80260CF4  3B 00 00 00 */	li r24, 0
/* 80260CF8  3B 5A 00 8C */	addi r26, r26, 0x8c
/* 80260CFC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80260D00  3B 83 EB C8 */	addi r28, r3, g_drawHIO@l
/* 80260D04  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80260D08  3B A3 01 88 */	addi r29, r3, g_meter2_info@l
/* 80260D0C  C3 A1 00 44 */	lfs f29, 0x44(r1)
/* 80260D10  CB E2 B5 58 */	lfd f31, lit_4627(r2)
/* 80260D14  3F C0 43 30 */	lis r30, 0x4330
/* 80260D18  48 00 01 7C */	b lbl_80260E94
lbl_80260D1C:
/* 80260D1C  7F 00 07 35 */	extsh. r0, r24
/* 80260D20  40 81 00 18 */	ble lbl_80260D38
/* 80260D24  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80260D28  80 63 00 04 */	lwz r3, 4(r3)
/* 80260D2C  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 80260D30  EC 19 00 32 */	fmuls f0, f25, f0
/* 80260D34  EF 5A 00 2A */	fadds f26, f26, f0
lbl_80260D38:
/* 80260D38  54 95 06 3E */	clrlwi r21, r4, 0x18
/* 80260D3C  7E E3 BB 78 */	mr r3, r23
/* 80260D40  7E A4 AB 78 */	mr r4, r21
/* 80260D44  38 A1 00 08 */	addi r5, r1, 8
/* 80260D48  81 97 00 00 */	lwz r12, 0(r23)
/* 80260D4C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80260D50  7D 89 03 A6 */	mtctr r12
/* 80260D54  4E 80 04 21 */	bctrl 
/* 80260D58  8A C1 00 09 */	lbz r22, 9(r1)
/* 80260D5C  7E E3 BB 78 */	mr r3, r23
/* 80260D60  81 97 00 00 */	lwz r12, 0(r23)
/* 80260D64  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80260D68  7D 89 03 A6 */	mtctr r12
/* 80260D6C  4E 80 04 21 */	bctrl 
/* 80260D70  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80260D74  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80260D78  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80260D7C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80260D80  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80260D84  6E C0 80 00 */	xoris r0, r22, 0x8000
/* 80260D88  90 01 00 54 */	stw r0, 0x54(r1)
/* 80260D8C  93 C1 00 50 */	stw r30, 0x50(r1)
/* 80260D90  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80260D94  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80260D98  EC 00 08 24 */	fdivs f0, f0, f1
/* 80260D9C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80260DA0  EF 19 00 32 */	fmuls f24, f25, f0
/* 80260DA4  2C 15 00 20 */	cmpwi r21, 0x20
/* 80260DA8  41 82 00 E4 */	beq lbl_80260E8C
/* 80260DAC  3C 15 00 00 */	addis r0, r21, 0
/* 80260DB0  28 00 81 40 */	cmplwi r0, 0x8140
/* 80260DB4  41 82 00 D8 */	beq lbl_80260E8C
/* 80260DB8  D3 61 00 30 */	stfs f27, 0x30(r1)
/* 80260DBC  7C 1F D0 AE */	lbzx r0, r31, r26
/* 80260DC0  28 00 00 00 */	cmplwi r0, 0
/* 80260DC4  40 82 00 68 */	bne lbl_80260E2C
/* 80260DC8  80 1C 0B BC */	lwz r0, 0xbbc(r28)
/* 80260DCC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80260DD0  80 1C 0B C0 */	lwz r0, 0xbc0(r28)
/* 80260DD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80260DD8  80 1C 0B B4 */	lwz r0, 0xbb4(r28)
/* 80260DDC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80260DE0  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80260DE4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80260DE8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80260DEC  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80260DF0  C0 02 B5 98 */	lfs f0, lit_5326(r2)
/* 80260DF4  EC 38 00 32 */	fmuls f1, f24, f0
/* 80260DF8  EC 1C D0 2A */	fadds f0, f28, f26
/* 80260DFC  EC 21 00 2A */	fadds f1, f1, f0
/* 80260E00  FC 40 E8 90 */	fmr f2, f29
/* 80260E04  38 81 00 30 */	addi r4, r1, 0x30
/* 80260E08  C0 7C 0B B0 */	lfs f3, 0xbb0(r28)
/* 80260E0C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80260E10  38 C1 00 28 */	addi r6, r1, 0x28
/* 80260E14  38 E1 00 24 */	addi r7, r1, 0x24
/* 80260E18  39 01 00 20 */	addi r8, r1, 0x20
/* 80260E1C  C0 9C 0B C4 */	lfs f4, 0xbc4(r28)
/* 80260E20  39 20 00 00 */	li r9, 0
/* 80260E24  4B FB 32 B9 */	bl drawPikari__13dMeter2Draw_cFffPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
/* 80260E28  48 00 00 64 */	b lbl_80260E8C
lbl_80260E2C:
/* 80260E2C  80 1C 0B D8 */	lwz r0, 0xbd8(r28)
/* 80260E30  90 01 00 10 */	stw r0, 0x10(r1)
/* 80260E34  80 1C 0B DC */	lwz r0, 0xbdc(r28)
/* 80260E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80260E3C  80 1C 0B D0 */	lwz r0, 0xbd0(r28)
/* 80260E40  90 01 00 18 */	stw r0, 0x18(r1)
/* 80260E44  80 1C 0B D4 */	lwz r0, 0xbd4(r28)
/* 80260E48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80260E4C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80260E50  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80260E54  C0 02 B5 98 */	lfs f0, lit_5326(r2)
/* 80260E58  EC 38 00 32 */	fmuls f1, f24, f0
/* 80260E5C  EC 1C D0 2A */	fadds f0, f28, f26
/* 80260E60  EC 21 00 2A */	fadds f1, f1, f0
/* 80260E64  FC 40 E8 90 */	fmr f2, f29
/* 80260E68  38 81 00 30 */	addi r4, r1, 0x30
/* 80260E6C  C0 7C 0B CC */	lfs f3, 0xbcc(r28)
/* 80260E70  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80260E74  38 C1 00 18 */	addi r6, r1, 0x18
/* 80260E78  38 E1 00 14 */	addi r7, r1, 0x14
/* 80260E7C  39 01 00 10 */	addi r8, r1, 0x10
/* 80260E80  C0 9C 0B E0 */	lfs f4, 0xbe0(r28)
/* 80260E84  39 20 00 00 */	li r9, 0
/* 80260E88  4B FB 32 55 */	bl drawPikari__13dMeter2Draw_cFffPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
lbl_80260E8C:
/* 80260E8C  EF 5A C0 2A */	fadds f26, f26, f24
/* 80260E90  3B 18 00 01 */	addi r24, r24, 1
lbl_80260E94:
/* 80260E94  7F 00 07 34 */	extsh r0, r24
/* 80260E98  7C 9B 00 AE */	lbzx r4, r27, r0
/* 80260E9C  7C 80 07 75 */	extsb. r0, r4
/* 80260EA0  40 82 FE 7C */	bne lbl_80260D1C
/* 80260EA4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80260EA8  D0 19 00 84 */	stfs f0, 0x84(r25)
/* 80260EAC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80260EB0  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80260EB4  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 80260EB8  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80260EBC  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 80260EC0  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 80260EC4  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 80260EC8  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 80260ECC  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 80260ED0  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 80260ED4  E3 41 00 B8 */	psq_l f26, 184(r1), 0, 0 /* qr0 */
/* 80260ED8  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 80260EDC  E3 21 00 A8 */	psq_l f25, 168(r1), 0, 0 /* qr0 */
/* 80260EE0  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 80260EE4  E3 01 00 98 */	psq_l f24, 152(r1), 0, 0 /* qr0 */
/* 80260EE8  CB 01 00 90 */	lfd f24, 0x90(r1)
/* 80260EEC  39 61 00 90 */	addi r11, r1, 0x90
/* 80260EF0  48 10 13 19 */	bl _restgpr_21
/* 80260EF4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80260EF8  7C 08 03 A6 */	mtlr r0
/* 80260EFC  38 21 01 10 */	addi r1, r1, 0x110
/* 80260F00  4E 80 00 20 */	blr 
