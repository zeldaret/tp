lbl_801D38FC:
/* 801D38FC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801D3900  7C 08 02 A6 */	mflr r0
/* 801D3904  90 01 00 84 */	stw r0, 0x84(r1)
/* 801D3908  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801D390C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 801D3910  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801D3914  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 801D3918  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 801D391C  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 801D3920  39 61 00 50 */	addi r11, r1, 0x50
/* 801D3924  48 18 E8 B5 */	bl _savegpr_28
/* 801D3928  7C 7E 1B 78 */	mr r30, r3
/* 801D392C  3B E0 00 00 */	li r31, 0
/* 801D3930  3B A0 00 00 */	li r29, 0
/* 801D3934  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D3938  3B 83 FC 60 */	addi r28, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D393C  C3 E2 A7 D0 */	lfs f31, lit_3970(r2)
lbl_801D3940:
/* 801D3940  C0 1E 0F A0 */	lfs f0, 0xfa0(r30)
/* 801D3944  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 801D3948  41 82 00 10 */	beq lbl_801D3958
/* 801D394C  88 1E 12 27 */	lbz r0, 0x1227(r30)
/* 801D3950  7C 1F 00 00 */	cmpw r31, r0
/* 801D3954  40 82 01 64 */	bne lbl_801D3AB8
lbl_801D3958:
/* 801D3958  88 1C 03 06 */	lbz r0, 0x306(r28)
/* 801D395C  28 00 00 00 */	cmplwi r0, 0
/* 801D3960  41 82 00 24 */	beq lbl_801D3984
/* 801D3964  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D3968  38 03 FC 60 */	addi r0, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D396C  7C 60 EA 14 */	add r3, r0, r29
/* 801D3970  C0 23 01 CC */	lfs f1, 0x1cc(r3)
/* 801D3974  C0 43 01 EC */	lfs f2, 0x1ec(r3)
/* 801D3978  C3 C3 02 0C */	lfs f30, 0x20c(r3)
/* 801D397C  C3 A3 02 2C */	lfs f29, 0x22c(r3)
/* 801D3980  48 00 00 18 */	b lbl_801D3998
lbl_801D3984:
/* 801D3984  7C 7E EA 14 */	add r3, r30, r29
/* 801D3988  C0 23 0D 8C */	lfs f1, 0xd8c(r3)
/* 801D398C  C0 43 0D AC */	lfs f2, 0xdac(r3)
/* 801D3990  C3 C3 0D CC */	lfs f30, 0xdcc(r3)
/* 801D3994  C3 A3 0D EC */	lfs f29, 0xdec(r3)
lbl_801D3998:
/* 801D3998  7F C3 F3 78 */	mr r3, r30
/* 801D399C  C0 1E 0F C8 */	lfs f0, 0xfc8(r30)
/* 801D39A0  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D39A4  C0 1E 0F CC */	lfs f0, 0xfcc(r30)
/* 801D39A8  EC 42 00 28 */	fsubs f2, f2, f0
/* 801D39AC  38 81 00 34 */	addi r4, r1, 0x34
/* 801D39B0  38 A1 00 30 */	addi r5, r1, 0x30
/* 801D39B4  4B FF D3 65 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D39B8  7F C3 F3 78 */	mr r3, r30
/* 801D39BC  C0 1E 0F C8 */	lfs f0, 0xfc8(r30)
/* 801D39C0  EC 3E 00 28 */	fsubs f1, f30, f0
/* 801D39C4  C0 1E 0F CC */	lfs f0, 0xfcc(r30)
/* 801D39C8  EC 5D 00 28 */	fsubs f2, f29, f0
/* 801D39CC  38 81 00 2C */	addi r4, r1, 0x2c
/* 801D39D0  38 A1 00 28 */	addi r5, r1, 0x28
/* 801D39D4  4B FF D3 45 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D39D8  38 00 00 FF */	li r0, 0xff
/* 801D39DC  98 01 00 20 */	stb r0, 0x20(r1)
/* 801D39E0  98 01 00 21 */	stb r0, 0x21(r1)
/* 801D39E4  98 01 00 22 */	stb r0, 0x22(r1)
/* 801D39E8  98 01 00 23 */	stb r0, 0x23(r1)
/* 801D39EC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801D39F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D39F4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801D39F8  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 801D39FC  FC 60 08 90 */	fmr f3, f1
/* 801D3A00  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 801D3A04  38 61 00 24 */	addi r3, r1, 0x24
/* 801D3A08  38 80 00 06 */	li r4, 6
/* 801D3A0C  48 11 5F 8D */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D3A10  38 00 00 FF */	li r0, 0xff
/* 801D3A14  98 01 00 18 */	stb r0, 0x18(r1)
/* 801D3A18  98 01 00 19 */	stb r0, 0x19(r1)
/* 801D3A1C  98 01 00 1A */	stb r0, 0x1a(r1)
/* 801D3A20  98 01 00 1B */	stb r0, 0x1b(r1)
/* 801D3A24  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801D3A28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801D3A2C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801D3A30  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 801D3A34  FC 60 08 90 */	fmr f3, f1
/* 801D3A38  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 801D3A3C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801D3A40  38 80 00 06 */	li r4, 6
/* 801D3A44  48 11 5F 55 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D3A48  38 00 00 FF */	li r0, 0xff
/* 801D3A4C  98 01 00 10 */	stb r0, 0x10(r1)
/* 801D3A50  98 01 00 11 */	stb r0, 0x11(r1)
/* 801D3A54  98 01 00 12 */	stb r0, 0x12(r1)
/* 801D3A58  98 01 00 13 */	stb r0, 0x13(r1)
/* 801D3A5C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801D3A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D3A64  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 801D3A68  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801D3A6C  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 801D3A70  FC 80 10 90 */	fmr f4, f2
/* 801D3A74  38 61 00 14 */	addi r3, r1, 0x14
/* 801D3A78  38 80 00 06 */	li r4, 6
/* 801D3A7C  48 11 5F 1D */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D3A80  38 00 00 FF */	li r0, 0xff
/* 801D3A84  98 01 00 08 */	stb r0, 8(r1)
/* 801D3A88  98 01 00 09 */	stb r0, 9(r1)
/* 801D3A8C  98 01 00 0A */	stb r0, 0xa(r1)
/* 801D3A90  98 01 00 0B */	stb r0, 0xb(r1)
/* 801D3A94  80 01 00 08 */	lwz r0, 8(r1)
/* 801D3A98  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D3A9C  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801D3AA0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801D3AA4  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 801D3AA8  FC 80 10 90 */	fmr f4, f2
/* 801D3AAC  38 61 00 0C */	addi r3, r1, 0xc
/* 801D3AB0  38 80 00 06 */	li r4, 6
/* 801D3AB4  48 11 5E E5 */	bl J2DDrawLine__FffffQ28JUtility6TColori
lbl_801D3AB8:
/* 801D3AB8  3B FF 00 01 */	addi r31, r31, 1
/* 801D3ABC  2C 1F 00 08 */	cmpwi r31, 8
/* 801D3AC0  3B BD 00 04 */	addi r29, r29, 4
/* 801D3AC4  41 80 FE 7C */	blt lbl_801D3940
/* 801D3AC8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 801D3ACC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801D3AD0  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 801D3AD4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801D3AD8  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 801D3ADC  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 801D3AE0  39 61 00 50 */	addi r11, r1, 0x50
/* 801D3AE4  48 18 E7 41 */	bl _restgpr_28
/* 801D3AE8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801D3AEC  7C 08 03 A6 */	mtlr r0
/* 801D3AF0  38 21 00 80 */	addi r1, r1, 0x80
/* 801D3AF4  4E 80 00 20 */	blr 
