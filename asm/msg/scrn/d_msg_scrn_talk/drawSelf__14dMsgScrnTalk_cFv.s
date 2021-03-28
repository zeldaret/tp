lbl_80247E4C:
/* 80247E4C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80247E50  7C 08 02 A6 */	mflr r0
/* 80247E54  90 01 00 64 */	stw r0, 0x64(r1)
/* 80247E58  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80247E5C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80247E60  39 61 00 50 */	addi r11, r1, 0x50
/* 80247E64  48 11 A3 59 */	bl _savegpr_21
/* 80247E68  7C 78 1B 78 */	mr r24, r3
/* 80247E6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80247E70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80247E74  83 63 5F 50 */	lwz r27, 0x5f50(r3)
/* 80247E78  7F 63 DB 78 */	mr r3, r27
/* 80247E7C  81 9B 00 00 */	lwz r12, 0(r27)
/* 80247E80  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80247E84  7D 89 03 A6 */	mtctr r12
/* 80247E88  4E 80 04 21 */	bctrl 
/* 80247E8C  83 98 00 50 */	lwz r28, 0x50(r24)
/* 80247E90  A8 1C 10 68 */	lha r0, 0x1068(r28)
/* 80247E94  2C 00 00 00 */	cmpwi r0, 0
/* 80247E98  40 81 01 94 */	ble lbl_8024802C
/* 80247E9C  80 78 00 0C */	lwz r3, 0xc(r24)
/* 80247EA0  48 00 D9 89 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80247EA4  FF E0 08 90 */	fmr f31, f1
/* 80247EA8  3B 20 00 00 */	li r25, 0
/* 80247EAC  3A E0 00 00 */	li r23, 0
/* 80247EB0  3A C0 00 00 */	li r22, 0
/* 80247EB4  3A A0 00 00 */	li r21, 0
/* 80247EB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80247EBC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80247EC0  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 80247EC4  3B C3 02 8C */	addi r30, r3, g_MsgObject_HIO_c@l
/* 80247EC8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80247ECC  3B E3 01 88 */	addi r31, r3, g_meter2_info@l
/* 80247ED0  48 00 01 4C */	b lbl_8024801C
lbl_80247ED4:
/* 80247ED4  80 7D 5D BC */	lwz r3, 0x5dbc(r29)
/* 80247ED8  88 03 01 9A */	lbz r0, 0x19a(r3)
/* 80247EDC  28 00 00 08 */	cmplwi r0, 8
/* 80247EE0  40 82 00 FC */	bne lbl_80247FDC
/* 80247EE4  7F 58 AA 14 */	add r26, r24, r21
/* 80247EE8  C0 3A 00 F8 */	lfs f1, 0xf8(r26)
/* 80247EEC  C0 02 B3 04 */	lfs f0, lit_4087(r2)
/* 80247EF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80247EF4  4C 41 13 82 */	cror 2, 1, 2
/* 80247EF8  40 82 00 94 */	bne lbl_80247F8C
/* 80247EFC  80 78 00 50 */	lwz r3, 0x50(r24)
/* 80247F00  38 16 00 19 */	addi r0, r22, 0x19
/* 80247F04  7C 03 00 AE */	lbzx r0, r3, r0
/* 80247F08  28 00 00 00 */	cmplwi r0, 0
/* 80247F0C  40 82 00 0C */	bne lbl_80247F18
/* 80247F10  C0 62 B3 14 */	lfs f3, lit_4278(r2)
/* 80247F14  48 00 00 08 */	b lbl_80247F1C
lbl_80247F18:
/* 80247F18  C0 7E 02 D0 */	lfs f3, 0x2d0(r30)
lbl_80247F1C:
/* 80247F1C  80 1E 02 DC */	lwz r0, 0x2dc(r30)
/* 80247F20  90 01 00 08 */	stw r0, 8(r1)
/* 80247F24  80 1E 02 E0 */	lwz r0, 0x2e0(r30)
/* 80247F28  90 01 00 0C */	stw r0, 0xc(r1)
/* 80247F2C  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 80247F30  90 01 00 10 */	stw r0, 0x10(r1)
/* 80247F34  80 1E 02 D8 */	lwz r0, 0x2d8(r30)
/* 80247F38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80247F3C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80247F40  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80247F44  80 18 00 50 */	lwz r0, 0x50(r24)
/* 80247F48  7C 80 B2 14 */	add r4, r0, r22
/* 80247F4C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80247F50  C0 44 00 04 */	lfs f2, 4(r4)
/* 80247F54  38 9A 00 F8 */	addi r4, r26, 0xf8
/* 80247F58  38 A1 00 14 */	addi r5, r1, 0x14
/* 80247F5C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80247F60  38 E1 00 0C */	addi r7, r1, 0xc
/* 80247F64  39 01 00 08 */	addi r8, r1, 8
/* 80247F68  C0 9E 02 EC */	lfs f4, 0x2ec(r30)
/* 80247F6C  39 20 00 04 */	li r9, 4
/* 80247F70  4B FC C1 6D */	bl drawPikari__13dMeter2Draw_cFffPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
/* 80247F74  C0 22 B3 04 */	lfs f1, lit_4087(r2)
/* 80247F78  C0 1A 00 F8 */	lfs f0, 0xf8(r26)
/* 80247F7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80247F80  40 82 00 0C */	bne lbl_80247F8C
/* 80247F84  C0 02 B3 18 */	lfs f0, lit_4279(r2)
/* 80247F88  D0 1A 00 F8 */	stfs f0, 0xf8(r26)
lbl_80247F8C:
/* 80247F8C  38 97 03 5C */	addi r4, r23, 0x35c
/* 80247F90  7C 78 22 AE */	lhax r3, r24, r4
/* 80247F94  2C 03 00 00 */	cmpwi r3, 0
/* 80247F98  40 81 00 10 */	ble lbl_80247FA8
/* 80247F9C  38 03 FF FF */	addi r0, r3, -1
/* 80247FA0  7C 18 23 2E */	sthx r0, r24, r4
/* 80247FA4  48 00 00 68 */	b lbl_8024800C
lbl_80247FA8:
/* 80247FA8  80 18 00 50 */	lwz r0, 0x50(r24)
/* 80247FAC  7C A0 B2 14 */	add r5, r0, r22
/* 80247FB0  80 78 00 D0 */	lwz r3, 0xd0(r24)
/* 80247FB4  38 85 00 14 */	addi r4, r5, 0x14
/* 80247FB8  C0 25 00 00 */	lfs f1, 0(r5)
/* 80247FBC  C0 45 00 04 */	lfs f2, 4(r5)
/* 80247FC0  C0 65 00 08 */	lfs f3, 8(r5)
/* 80247FC4  C0 85 00 0C */	lfs f4, 0xc(r5)
/* 80247FC8  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80247FCC  EC BF 00 32 */	fmuls f5, f31, f0
/* 80247FD0  88 A5 00 18 */	lbz r5, 0x18(r5)
/* 80247FD4  4B FF DC 31 */	bl draw__15dMsgScrnLight_cFPffffffUc
/* 80247FD8  48 00 00 34 */	b lbl_8024800C
lbl_80247FDC:
/* 80247FDC  80 18 00 50 */	lwz r0, 0x50(r24)
/* 80247FE0  7C A0 B2 14 */	add r5, r0, r22
/* 80247FE4  80 78 00 D0 */	lwz r3, 0xd0(r24)
/* 80247FE8  38 85 00 14 */	addi r4, r5, 0x14
/* 80247FEC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80247FF0  C0 45 00 04 */	lfs f2, 4(r5)
/* 80247FF4  C0 65 00 08 */	lfs f3, 8(r5)
/* 80247FF8  C0 85 00 0C */	lfs f4, 0xc(r5)
/* 80247FFC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80248000  EC BF 00 32 */	fmuls f5, f31, f0
/* 80248004  88 A5 00 18 */	lbz r5, 0x18(r5)
/* 80248008  4B FF DB FD */	bl draw__15dMsgScrnLight_cFPffffffUc
lbl_8024800C:
/* 8024800C  3B 39 00 01 */	addi r25, r25, 1
/* 80248010  3A F7 00 02 */	addi r23, r23, 2
/* 80248014  3A D6 00 1C */	addi r22, r22, 0x1c
/* 80248018  3A B5 00 04 */	addi r21, r21, 4
lbl_8024801C:
/* 8024801C  A8 1C 10 68 */	lha r0, 0x1068(r28)
/* 80248020  7C 19 00 00 */	cmpw r25, r0
/* 80248024  41 80 FE B0 */	blt lbl_80247ED4
/* 80248028  48 00 00 60 */	b lbl_80248088
lbl_8024802C:
/* 8024802C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80248030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80248034  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80248038  88 03 01 9A */	lbz r0, 0x19a(r3)
/* 8024803C  28 00 00 08 */	cmplwi r0, 8
/* 80248040  40 82 00 48 */	bne lbl_80248088
/* 80248044  38 60 00 00 */	li r3, 0
/* 80248048  38 80 00 00 */	li r4, 0
/* 8024804C  3C A0 80 43 */	lis r5, g_MsgObject_HIO_c@ha
/* 80248050  38 C5 02 8C */	addi r6, r5, g_MsgObject_HIO_c@l
/* 80248054  C0 22 B3 00 */	lfs f1, lit_4086(r2)
/* 80248058  38 00 00 96 */	li r0, 0x96
/* 8024805C  7C 09 03 A6 */	mtctr r0
lbl_80248060:
/* 80248060  C0 06 02 D0 */	lfs f0, 0x2d0(r6)
/* 80248064  EC 01 00 28 */	fsubs f0, f1, f0
/* 80248068  38 04 00 F8 */	addi r0, r4, 0xf8
/* 8024806C  7C 18 05 2E */	stfsx f0, r24, r0
/* 80248070  A8 A6 02 F0 */	lha r5, 0x2f0(r6)
/* 80248074  38 03 03 5C */	addi r0, r3, 0x35c
/* 80248078  7C B8 03 2E */	sthx r5, r24, r0
/* 8024807C  38 63 00 02 */	addi r3, r3, 2
/* 80248080  38 84 00 04 */	addi r4, r4, 4
/* 80248084  42 00 FF DC */	bdnz lbl_80248060
lbl_80248088:
/* 80248088  7F 03 C3 78 */	mr r3, r24
/* 8024808C  C0 22 B3 04 */	lfs f1, lit_4087(r2)
/* 80248090  FC 40 08 90 */	fmr f2, f1
/* 80248094  C0 62 B3 10 */	lfs f3, lit_4197(r2)
/* 80248098  4B FF 42 95 */	bl drawOutFont__14dMsgScrnBase_cFfff
/* 8024809C  80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 802480A0  C0 22 B3 04 */	lfs f1, lit_4087(r2)
/* 802480A4  FC 40 08 90 */	fmr f2, f1
/* 802480A8  7F 64 DB 78 */	mr r4, r27
/* 802480AC  48 0B 0E 29 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 802480B0  80 78 00 CC */	lwz r3, 0xcc(r24)
/* 802480B4  28 03 00 00 */	cmplwi r3, 0
/* 802480B8  41 82 00 10 */	beq lbl_802480C8
/* 802480BC  C0 22 B3 04 */	lfs f1, lit_4087(r2)
/* 802480C0  FC 40 08 90 */	fmr f2, f1
/* 802480C4  4B FF 1D 11 */	bl draw__17dMsgScrn3Select_cFff
lbl_802480C8:
/* 802480C8  80 78 00 C8 */	lwz r3, 0xc8(r24)
/* 802480CC  4B FF 3C F5 */	bl draw__15dMsgScrnArrow_cFv
/* 802480D0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 802480D4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 802480D8  39 61 00 50 */	addi r11, r1, 0x50
/* 802480DC  48 11 A1 2D */	bl _restgpr_21
/* 802480E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802480E4  7C 08 03 A6 */	mtlr r0
/* 802480E8  38 21 00 60 */	addi r1, r1, 0x60
/* 802480EC  4E 80 00 20 */	blr 
