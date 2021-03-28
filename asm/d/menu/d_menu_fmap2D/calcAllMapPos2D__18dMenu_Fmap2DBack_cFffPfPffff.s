lbl_801D0E00:
/* 801D0E00  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801D0E04  7C 08 02 A6 */	mflr r0
/* 801D0E08  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801D0E0C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801D0E10  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 801D0E14  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 801D0E18  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 801D0E1C  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 801D0E20  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 801D0E24  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 801D0E28  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 801D0E2C  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 801D0E30  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 801D0E34  DB 41 00 40 */	stfd f26, 0x40(r1)
/* 801D0E38  F3 41 00 48 */	psq_st f26, 72(r1), 0, 0 /* qr0 */
/* 801D0E3C  DB 21 00 30 */	stfd f25, 0x30(r1)
/* 801D0E40  F3 21 00 38 */	psq_st f25, 56(r1), 0, 0 /* qr0 */
/* 801D0E44  DB 01 00 20 */	stfd f24, 0x20(r1)
/* 801D0E48  F3 01 00 28 */	psq_st f24, 40(r1), 0, 0 /* qr0 */
/* 801D0E4C  39 61 00 20 */	addi r11, r1, 0x20
/* 801D0E50  48 19 13 8D */	bl _savegpr_29
/* 801D0E54  7C 7D 1B 78 */	mr r29, r3
/* 801D0E58  FF 40 08 90 */	fmr f26, f1
/* 801D0E5C  FF 60 10 90 */	fmr f27, f2
/* 801D0E60  7C 9E 23 78 */	mr r30, r4
/* 801D0E64  7C BF 2B 78 */	mr r31, r5
/* 801D0E68  FF 00 18 90 */	fmr f24, f3
/* 801D0E6C  FF 80 20 90 */	fmr f28, f4
/* 801D0E70  FF A0 28 90 */	fmr f29, f5
/* 801D0E74  48 00 18 A5 */	bl getMapAreaSizeX__18dMenu_Fmap2DBack_cFv
/* 801D0E78  7F A3 EB 78 */	mr r3, r29
/* 801D0E7C  48 00 18 AD */	bl getMapAreaSizeY__18dMenu_Fmap2DBack_cFv
/* 801D0E80  C0 42 A7 E8 */	lfs f2, lit_4202(r2)
/* 801D0E84  88 9D 12 27 */	lbz r4, 0x1227(r29)
/* 801D0E88  1C 04 00 14 */	mulli r0, r4, 0x14
/* 801D0E8C  7C 7D 02 14 */	add r3, r29, r0
/* 801D0E90  C0 23 0C E8 */	lfs f1, 0xce8(r3)
/* 801D0E94  C0 03 0C F0 */	lfs f0, 0xcf0(r3)
/* 801D0E98  EC 01 00 2A */	fadds f0, f1, f0
/* 801D0E9C  EF E2 00 32 */	fmuls f31, f2, f0
/* 801D0EA0  C0 23 0C EC */	lfs f1, 0xcec(r3)
/* 801D0EA4  C0 03 0C F4 */	lfs f0, 0xcf4(r3)
/* 801D0EA8  EC 01 00 2A */	fadds f0, f1, f0
/* 801D0EAC  EF C2 00 32 */	fmuls f30, f2, f0
/* 801D0EB0  54 80 10 3A */	slwi r0, r4, 2
/* 801D0EB4  7C 7D 02 14 */	add r3, r29, r0
/* 801D0EB8  C0 03 0E 8C */	lfs f0, 0xe8c(r3)
/* 801D0EBC  EC 20 C0 2A */	fadds f1, f0, f24
/* 801D0EC0  C0 03 0E CC */	lfs f0, 0xecc(r3)
/* 801D0EC4  EC 00 07 72 */	fmuls f0, f0, f29
/* 801D0EC8  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D0ECC  EF 21 00 2A */	fadds f25, f1, f0
/* 801D0ED0  C0 03 0E AC */	lfs f0, 0xeac(r3)
/* 801D0ED4  EC 20 E0 2A */	fadds f1, f0, f28
/* 801D0ED8  C0 03 0E EC */	lfs f0, 0xeec(r3)
/* 801D0EDC  EC 00 07 72 */	fmuls f0, f0, f29
/* 801D0EE0  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D0EE4  EF 01 00 2A */	fadds f24, f1, f0
/* 801D0EE8  7F A3 EB 78 */	mr r3, r29
/* 801D0EEC  48 00 1A AD */	bl getMapScissorAreaSizeRealY__18dMenu_Fmap2DBack_cFv
/* 801D0EF0  FF 80 08 90 */	fmr f28, f1
/* 801D0EF4  7F A3 EB 78 */	mr r3, r29
/* 801D0EF8  FC 20 E8 90 */	fmr f1, f29
/* 801D0EFC  48 00 1B CD */	bl getPathScale__18dMenu_Fmap2DBack_cFf
/* 801D0F00  EC 21 E0 24 */	fdivs f1, f1, f28
/* 801D0F04  EC 1A F8 28 */	fsubs f0, f26, f31
/* 801D0F08  EC 00 08 24 */	fdivs f0, f0, f1
/* 801D0F0C  EC 00 C8 2A */	fadds f0, f0, f25
/* 801D0F10  D0 1E 00 00 */	stfs f0, 0(r30)
/* 801D0F14  EC 1B F0 28 */	fsubs f0, f27, f30
/* 801D0F18  EC 00 08 24 */	fdivs f0, f0, f1
/* 801D0F1C  EC 00 C0 2A */	fadds f0, f0, f24
/* 801D0F20  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801D0F24  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 801D0F28  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801D0F2C  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 801D0F30  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 801D0F34  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 801D0F38  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 801D0F3C  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 801D0F40  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 801D0F44  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 801D0F48  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 801D0F4C  E3 41 00 48 */	psq_l f26, 72(r1), 0, 0 /* qr0 */
/* 801D0F50  CB 41 00 40 */	lfd f26, 0x40(r1)
/* 801D0F54  E3 21 00 38 */	psq_l f25, 56(r1), 0, 0 /* qr0 */
/* 801D0F58  CB 21 00 30 */	lfd f25, 0x30(r1)
/* 801D0F5C  E3 01 00 28 */	psq_l f24, 40(r1), 0, 0 /* qr0 */
/* 801D0F60  CB 01 00 20 */	lfd f24, 0x20(r1)
/* 801D0F64  39 61 00 20 */	addi r11, r1, 0x20
/* 801D0F68  48 19 12 C1 */	bl _restgpr_29
/* 801D0F6C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801D0F70  7C 08 03 A6 */	mtlr r0
/* 801D0F74  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801D0F78  4E 80 00 20 */	blr 
