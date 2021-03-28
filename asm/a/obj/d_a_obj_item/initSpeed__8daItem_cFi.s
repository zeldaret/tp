lbl_8015DC40:
/* 8015DC40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8015DC44  7C 08 02 A6 */	mflr r0
/* 8015DC48  90 01 00 64 */	stw r0, 0x64(r1)
/* 8015DC4C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8015DC50  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8015DC54  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8015DC58  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8015DC5C  39 61 00 40 */	addi r11, r1, 0x40
/* 8015DC60  48 20 45 7D */	bl _savegpr_29
/* 8015DC64  7C 7D 1B 78 */	mr r29, r3
/* 8015DC68  7C 9E 23 78 */	mr r30, r4
/* 8015DC6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015DC70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015DC74  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 8015DC78  C0 22 9B C4 */	lfs f1, lit_5050(r2)
/* 8015DC7C  48 10 9D 11 */	bl cM_rndFX__Ff
/* 8015DC80  FF E0 08 90 */	fmr f31, f1
/* 8015DC84  7F A3 EB 78 */	mr r3, r29
/* 8015DC88  4B FF D4 31 */	bl getData__12daItemBase_cFv
/* 8015DC8C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8015DC90  EF E0 F8 2A */	fadds f31, f0, f31
/* 8015DC94  7F A3 EB 78 */	mr r3, r29
/* 8015DC98  4B FF D4 21 */	bl getData__12daItemBase_cFv
/* 8015DC9C  C3 C3 00 10 */	lfs f30, 0x10(r3)
/* 8015DCA0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8015DCA4  54 03 47 3E */	rlwinm r3, r0, 8, 0x1c, 0x1f
/* 8015DCA8  2C 1E 00 00 */	cmpwi r30, 0
/* 8015DCAC  40 82 01 40 */	bne lbl_8015DDEC
/* 8015DCB0  28 03 00 03 */	cmplwi r3, 3
/* 8015DCB4  41 82 00 18 */	beq lbl_8015DCCC
/* 8015DCB8  28 03 00 05 */	cmplwi r3, 5
/* 8015DCBC  41 82 00 10 */	beq lbl_8015DCCC
/* 8015DCC0  88 1D 09 2A */	lbz r0, 0x92a(r29)
/* 8015DCC4  28 00 00 40 */	cmplwi r0, 0x40
/* 8015DCC8  40 82 00 10 */	bne lbl_8015DCD8
lbl_8015DCCC:
/* 8015DCCC  C3 E2 9B 50 */	lfs f31, lit_3857(r2)
/* 8015DCD0  FF C0 F8 90 */	fmr f30, f31
/* 8015DCD4  48 00 01 18 */	b lbl_8015DDEC
lbl_8015DCD8:
/* 8015DCD8  28 03 00 06 */	cmplwi r3, 6
/* 8015DCDC  41 82 00 0C */	beq lbl_8015DCE8
/* 8015DCE0  28 03 00 01 */	cmplwi r3, 1
/* 8015DCE4  40 82 00 20 */	bne lbl_8015DD04
lbl_8015DCE8:
/* 8015DCE8  7F A3 EB 78 */	mr r3, r29
/* 8015DCEC  4B FF D3 CD */	bl getData__12daItemBase_cFv
/* 8015DCF0  C3 E3 00 08 */	lfs f31, 8(r3)
/* 8015DCF4  7F A3 EB 78 */	mr r3, r29
/* 8015DCF8  4B FF D3 C1 */	bl getData__12daItemBase_cFv
/* 8015DCFC  C3 C3 00 10 */	lfs f30, 0x10(r3)
/* 8015DD00  48 00 00 EC */	b lbl_8015DDEC
lbl_8015DD04:
/* 8015DD04  28 03 00 08 */	cmplwi r3, 8
/* 8015DD08  40 82 00 6C */	bne lbl_8015DD74
/* 8015DD0C  7F A3 EB 78 */	mr r3, r29
/* 8015DD10  4B FF D3 A9 */	bl getData__12daItemBase_cFv
/* 8015DD14  C0 23 00 08 */	lfs f1, 8(r3)
/* 8015DD18  C0 02 9B D0 */	lfs f0, lit_5230(r2)
/* 8015DD1C  EF E0 00 72 */	fmuls f31, f0, f1
/* 8015DD20  7F A3 EB 78 */	mr r3, r29
/* 8015DD24  4B FF D3 95 */	bl getData__12daItemBase_cFv
/* 8015DD28  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8015DD2C  C0 02 9B D0 */	lfs f0, lit_5230(r2)
/* 8015DD30  EF C0 00 72 */	fmuls f30, f0, f1
/* 8015DD34  C0 22 9B A8 */	lfs f1, lit_4666(r2)
/* 8015DD38  48 10 9C 55 */	bl cM_rndFX__Ff
/* 8015DD3C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8015DD40  C8 42 9B B0 */	lfd f2, lit_4668(r2)
/* 8015DD44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8015DD48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8015DD4C  3C 00 43 30 */	lis r0, 0x4330
/* 8015DD50  90 01 00 18 */	stw r0, 0x18(r1)
/* 8015DD54  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8015DD58  EC 00 10 28 */	fsubs f0, f0, f2
/* 8015DD5C  EC 00 08 2A */	fadds f0, f0, f1
/* 8015DD60  FC 00 00 1E */	fctiwz f0, f0
/* 8015DD64  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8015DD68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015DD6C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8015DD70  48 00 00 7C */	b lbl_8015DDEC
lbl_8015DD74:
/* 8015DD74  28 03 00 09 */	cmplwi r3, 9
/* 8015DD78  40 82 00 74 */	bne lbl_8015DDEC
/* 8015DD7C  7F A3 EB 78 */	mr r3, r29
/* 8015DD80  4B FF D3 39 */	bl getData__12daItemBase_cFv
/* 8015DD84  C0 23 00 08 */	lfs f1, 8(r3)
/* 8015DD88  C0 02 9B D4 */	lfs f0, lit_5231(r2)
/* 8015DD8C  EF E0 00 72 */	fmuls f31, f0, f1
/* 8015DD90  7F A3 EB 78 */	mr r3, r29
/* 8015DD94  4B FF D3 25 */	bl getData__12daItemBase_cFv
/* 8015DD98  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8015DD9C  C0 02 9B D8 */	lfs f0, lit_5232(r2)
/* 8015DDA0  EF C0 00 72 */	fmuls f30, f0, f1
/* 8015DDA4  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015DDA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8015DDAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8015DDB0  C0 02 9B DC */	lfs f0, lit_5233(r2)
/* 8015DDB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015DDB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8015DDBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8015DDC0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8015DDC4  4B EA E6 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 8015DDC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8015DDCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8015DDD0  38 81 00 08 */	addi r4, r1, 8
/* 8015DDD4  7C 85 23 78 */	mr r5, r4
/* 8015DDD8  48 1E 8F 95 */	bl PSMTXMultVec
/* 8015DDDC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8015DDE0  38 81 00 08 */	addi r4, r1, 8
/* 8015DDE4  7C 65 1B 78 */	mr r5, r3
/* 8015DDE8  48 1E 92 A9 */	bl PSVECAdd
lbl_8015DDEC:
/* 8015DDEC  7F A3 EB 78 */	mr r3, r29
/* 8015DDF0  4B FF D2 C9 */	bl getData__12daItemBase_cFv
/* 8015DDF4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8015DDF8  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8015DDFC  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015DE00  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8015DE04  D3 FD 04 FC */	stfs f31, 0x4fc(r29)
/* 8015DE08  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8015DE0C  D3 DD 05 2C */	stfs f30, 0x52c(r29)
/* 8015DE10  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8015DE14  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8015DE18  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8015DE1C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8015DE20  39 61 00 40 */	addi r11, r1, 0x40
/* 8015DE24  48 20 44 05 */	bl _restgpr_29
/* 8015DE28  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8015DE2C  7C 08 03 A6 */	mtlr r0
/* 8015DE30  38 21 00 60 */	addi r1, r1, 0x60
/* 8015DE34  4E 80 00 20 */	blr 
