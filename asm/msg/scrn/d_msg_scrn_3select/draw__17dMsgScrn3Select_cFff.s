lbl_80239DD4:
/* 80239DD4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80239DD8  7C 08 02 A6 */	mflr r0
/* 80239DDC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80239DE0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80239DE4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80239DE8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80239DEC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80239DF0  39 61 00 50 */	addi r11, r1, 0x50
/* 80239DF4  48 12 83 E1 */	bl _savegpr_27
/* 80239DF8  7C 7D 1B 78 */	mr r29, r3
/* 80239DFC  FF C0 08 90 */	fmr f30, f1
/* 80239E00  FF E0 10 90 */	fmr f31, f2
/* 80239E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80239E08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80239E0C  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 80239E10  7F E3 FB 78 */	mr r3, r31
/* 80239E14  81 9F 00 00 */	lwz r12, 0(r31)
/* 80239E18  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80239E1C  7D 89 03 A6 */	mtctr r12
/* 80239E20  4E 80 04 21 */	bctrl 
/* 80239E24  88 1D 00 C8 */	lbz r0, 0xc8(r29)
/* 80239E28  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 80239E2C  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 80239E30  88 A4 01 88 */	lbz r5, 0x188(r4)
/* 80239E34  7C 00 28 40 */	cmplw r0, r5
/* 80239E38  40 82 00 24 */	bne lbl_80239E5C
/* 80239E3C  88 7D 00 C9 */	lbz r3, 0xc9(r29)
/* 80239E40  88 04 01 89 */	lbz r0, 0x189(r4)
/* 80239E44  7C 03 00 40 */	cmplw r3, r0
/* 80239E48  40 82 00 14 */	bne lbl_80239E5C
/* 80239E4C  88 7D 00 CA */	lbz r3, 0xca(r29)
/* 80239E50  88 04 01 8A */	lbz r0, 0x18a(r4)
/* 80239E54  7C 03 00 40 */	cmplw r3, r0
/* 80239E58  41 82 00 F8 */	beq lbl_80239F50
lbl_80239E5C:
/* 80239E5C  98 BD 00 C8 */	stb r5, 0xc8(r29)
/* 80239E60  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 80239E64  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 80239E68  88 03 01 89 */	lbz r0, 0x189(r3)
/* 80239E6C  98 1D 00 C9 */	stb r0, 0xc9(r29)
/* 80239E70  88 03 01 8A */	lbz r0, 0x18a(r3)
/* 80239E74  98 1D 00 CA */	stb r0, 0xca(r29)
/* 80239E78  3B C0 00 00 */	li r30, 0
/* 80239E7C  3B 80 00 00 */	li r28, 0
lbl_80239E80:
/* 80239E80  88 1D 01 0E */	lbz r0, 0x10e(r29)
/* 80239E84  7C 1E 00 00 */	cmpw r30, r0
/* 80239E88  40 82 00 60 */	bne lbl_80239EE8
/* 80239E8C  80 1D 00 C4 */	lwz r0, 0xc4(r29)
/* 80239E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80239E94  7F 7D E2 14 */	add r27, r29, r28
/* 80239E98  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 80239E9C  80 63 00 04 */	lwz r3, 4(r3)
/* 80239EA0  38 81 00 14 */	addi r4, r1, 0x14
/* 80239EA4  81 83 00 00 */	lwz r12, 0(r3)
/* 80239EA8  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 80239EAC  7D 89 03 A6 */	mtctr r12
/* 80239EB0  4E 80 04 21 */	bctrl 
/* 80239EB4  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 80239EB8  28 00 00 00 */	cmplwi r0, 0
/* 80239EBC  41 82 00 84 */	beq lbl_80239F40
/* 80239EC0  80 1D 00 C4 */	lwz r0, 0xc4(r29)
/* 80239EC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80239EC8  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 80239ECC  80 63 00 04 */	lwz r3, 4(r3)
/* 80239ED0  38 81 00 10 */	addi r4, r1, 0x10
/* 80239ED4  81 83 00 00 */	lwz r12, 0(r3)
/* 80239ED8  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 80239EDC  7D 89 03 A6 */	mtctr r12
/* 80239EE0  4E 80 04 21 */	bctrl 
/* 80239EE4  48 00 00 5C */	b lbl_80239F40
lbl_80239EE8:
/* 80239EE8  80 1D 00 C8 */	lwz r0, 0xc8(r29)
/* 80239EEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80239EF0  7F 7D E2 14 */	add r27, r29, r28
/* 80239EF4  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 80239EF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80239EFC  38 81 00 0C */	addi r4, r1, 0xc
/* 80239F00  81 83 00 00 */	lwz r12, 0(r3)
/* 80239F04  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 80239F08  7D 89 03 A6 */	mtctr r12
/* 80239F0C  4E 80 04 21 */	bctrl 
/* 80239F10  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 80239F14  28 00 00 00 */	cmplwi r0, 0
/* 80239F18  41 82 00 28 */	beq lbl_80239F40
/* 80239F1C  80 1D 00 C8 */	lwz r0, 0xc8(r29)
/* 80239F20  90 01 00 08 */	stw r0, 8(r1)
/* 80239F24  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 80239F28  80 63 00 04 */	lwz r3, 4(r3)
/* 80239F2C  38 81 00 08 */	addi r4, r1, 8
/* 80239F30  81 83 00 00 */	lwz r12, 0(r3)
/* 80239F34  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 80239F38  7D 89 03 A6 */	mtctr r12
/* 80239F3C  4E 80 04 21 */	bctrl 
lbl_80239F40:
/* 80239F40  3B DE 00 01 */	addi r30, r30, 1
/* 80239F44  2C 1E 00 03 */	cmpwi r30, 3
/* 80239F48  3B 9C 00 04 */	addi r28, r28, 4
/* 80239F4C  41 80 FF 34 */	blt lbl_80239E80
lbl_80239F50:
/* 80239F50  80 7D 00 04 */	lwz r3, 4(r29)
/* 80239F54  FC 20 F0 90 */	fmr f1, f30
/* 80239F58  FC 40 F8 90 */	fmr f2, f31
/* 80239F5C  7F E4 FB 78 */	mr r4, r31
/* 80239F60  48 0B EF 75 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 80239F64  88 1D 01 10 */	lbz r0, 0x110(r29)
/* 80239F68  28 00 00 FF */	cmplwi r0, 0xff
/* 80239F6C  41 82 01 00 */	beq lbl_8023A06C
/* 80239F70  88 7D 01 0E */	lbz r3, 0x10e(r29)
/* 80239F74  28 03 00 FF */	cmplwi r3, 0xff
/* 80239F78  41 82 00 F4 */	beq lbl_8023A06C
/* 80239F7C  88 1D 01 17 */	lbz r0, 0x117(r29)
/* 80239F80  28 00 00 00 */	cmplwi r0, 0
/* 80239F84  41 82 00 E8 */	beq lbl_8023A06C
/* 80239F88  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 80239F8C  7C 7D 02 14 */	add r3, r29, r0
/* 80239F90  80 83 00 B8 */	lwz r4, 0xb8(r3)
/* 80239F94  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 80239F98  C0 22 B1 64 */	lfs f1, lit_4154(r2)
/* 80239F9C  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 80239FA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80239FA4  EC 02 00 2A */	fadds f0, f2, f0
/* 80239FA8  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80239FAC  C0 63 00 24 */	lfs f3, 0x24(r3)
/* 80239FB0  C0 9D 01 04 */	lfs f4, 0x104(r29)
/* 80239FB4  C0 42 B1 60 */	lfs f2, lit_3911(r2)
/* 80239FB8  EC 24 10 28 */	fsubs f1, f4, f2
/* 80239FBC  EC 00 18 28 */	fsubs f0, f0, f3
/* 80239FC0  EF E1 00 32 */	fmuls f31, f1, f0
/* 80239FC4  FC 02 20 00 */	fcmpu cr0, f2, f4
/* 80239FC8  40 82 00 0C */	bne lbl_80239FD4
/* 80239FCC  C0 02 B1 68 */	lfs f0, lit_4155(r2)
/* 80239FD0  EF FF 00 28 */	fsubs f31, f31, f0
lbl_80239FD4:
/* 80239FD4  38 61 00 18 */	addi r3, r1, 0x18
/* 80239FD8  80 A4 00 04 */	lwz r5, 4(r4)
/* 80239FDC  38 C0 00 01 */	li r6, 1
/* 80239FE0  38 E0 00 00 */	li r7, 0
/* 80239FE4  48 01 AE D9 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80239FE8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80239FEC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80239FF0  90 61 00 24 */	stw r3, 0x24(r1)
/* 80239FF4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80239FF8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80239FFC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8023A000  88 BD 01 0E */	lbz r5, 0x10e(r29)
/* 8023A004  54 A0 10 3A */	slwi r0, r5, 2
/* 8023A008  7C 7D 02 14 */	add r3, r29, r0
/* 8023A00C  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 8023A010  80 83 00 04 */	lwz r4, 4(r3)
/* 8023A014  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8023A018  C0 3D 00 FC */	lfs f1, 0xfc(r29)
/* 8023A01C  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8023A020  7C BD 02 14 */	add r5, r29, r0
/* 8023A024  C0 05 00 CC */	lfs f0, 0xcc(r5)
/* 8023A028  EC 00 F8 2A */	fadds f0, f0, f31
/* 8023A02C  EC 21 00 2A */	fadds f1, f1, f0
/* 8023A030  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8023A034  38 A0 00 01 */	li r5, 1
/* 8023A038  4B F5 B0 BD */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 8023A03C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8023A040  C0 22 B1 6C */	lfs f1, lit_4156(r2)
/* 8023A044  C0 42 B1 70 */	lfs f2, lit_4157(r2)
/* 8023A048  C0 62 B1 74 */	lfs f3, lit_4158(r2)
/* 8023A04C  C0 82 B1 64 */	lfs f4, lit_4154(r2)
/* 8023A050  FC A0 20 90 */	fmr f5, f4
/* 8023A054  4B F5 B1 5D */	bl setParam__16dSelect_cursor_cFfffff
/* 8023A058  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8023A05C  81 83 00 00 */	lwz r12, 0(r3)
/* 8023A060  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023A064  7D 89 03 A6 */	mtctr r12
/* 8023A068  4E 80 04 21 */	bctrl 
lbl_8023A06C:
/* 8023A06C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8023A070  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8023A074  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8023A078  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8023A07C  39 61 00 50 */	addi r11, r1, 0x50
/* 8023A080  48 12 81 A1 */	bl _restgpr_27
/* 8023A084  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8023A088  7C 08 03 A6 */	mtlr r0
/* 8023A08C  38 21 00 70 */	addi r1, r1, 0x70
/* 8023A090  4E 80 00 20 */	blr 
