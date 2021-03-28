lbl_80D5E28C:
/* 80D5E28C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D5E290  7C 08 02 A6 */	mflr r0
/* 80D5E294  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D5E298  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80D5E29C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80D5E2A0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80D5E2A4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80D5E2A8  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80D5E2AC  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 80D5E2B0  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 80D5E2B4  F3 81 00 28 */	psq_st f28, 40(r1), 0, 0 /* qr0 */
/* 80D5E2B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D5E2BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D5E2C0  7C 7E 1B 78 */	mr r30, r3
/* 80D5E2C4  FF 80 08 90 */	fmr f28, f1
/* 80D5E2C8  FF A0 10 90 */	fmr f29, f2
/* 80D5E2CC  3C 60 80 D6 */	lis r3, lit_3734@ha
/* 80D5E2D0  3B E3 EC E0 */	addi r31, r3, lit_3734@l
/* 80D5E2D4  C3 DF 00 00 */	lfs f30, 0(r31)
/* 80D5E2D8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D5E2DC  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80D5E2E0  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D5E2E4  41 82 00 78 */	beq lbl_80D5E35C
/* 80D5E2E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5E2EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5E2F0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5E2F4  7C 05 07 74 */	extsb r5, r0
/* 80D5E2F8  4B 2D 70 68 */	b isSwitch__10dSv_info_cCFii
/* 80D5E2FC  2C 03 00 00 */	cmpwi r3, 0
/* 80D5E300  41 82 00 30 */	beq lbl_80D5E330
/* 80D5E304  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80D5E308  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 80D5E30C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D5E310  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D5E314  3C 00 43 30 */	lis r0, 0x4330
/* 80D5E318  90 01 00 08 */	stw r0, 8(r1)
/* 80D5E31C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D5E320  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D5E324  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D5E328  EF C1 00 24 */	fdivs f30, f1, f0
/* 80D5E32C  48 00 00 30 */	b lbl_80D5E35C
lbl_80D5E330:
/* 80D5E330  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D5E334  20 00 00 1E */	subfic r0, r0, 0x1e
/* 80D5E338  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 80D5E33C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D5E340  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D5E344  3C 00 43 30 */	lis r0, 0x4330
/* 80D5E348  90 01 00 08 */	stw r0, 8(r1)
/* 80D5E34C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D5E350  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D5E354  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D5E358  EF C1 00 24 */	fdivs f30, f1, f0
lbl_80D5E35C:
/* 80D5E35C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80D5E360  EC 00 07 32 */	fmuls f0, f0, f28
/* 80D5E364  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80D5E368  40 81 00 14 */	ble lbl_80D5E37C
/* 80D5E36C  7F C3 F3 78 */	mr r3, r30
/* 80D5E370  4B FF FE 8D */	bl getPower__9daTagQs_cFv
/* 80D5E374  EC 3E 00 72 */	fmuls f1, f30, f1
/* 80D5E378  48 00 00 48 */	b lbl_80D5E3C0
lbl_80D5E37C:
/* 80D5E37C  7F C3 F3 78 */	mr r3, r30
/* 80D5E380  4B FF FE C5 */	bl getPower80__9daTagQs_cFv
/* 80D5E384  FF E0 08 90 */	fmr f31, f1
/* 80D5E388  7F C3 F3 78 */	mr r3, r30
/* 80D5E38C  4B FF FE DD */	bl getCenterPower__9daTagQs_cFv
/* 80D5E390  EF E1 F8 28 */	fsubs f31, f1, f31
/* 80D5E394  7F C3 F3 78 */	mr r3, r30
/* 80D5E398  4B FF FE 89 */	bl getSafeArea__9daTagQs_cFv
/* 80D5E39C  EC 1C 00 72 */	fmuls f0, f28, f1
/* 80D5E3A0  EC 3D 00 24 */	fdivs f1, f29, f0
/* 80D5E3A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D5E3A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D5E3AC  EF E0 07 F2 */	fmuls f31, f0, f31
/* 80D5E3B0  7F C3 F3 78 */	mr r3, r30
/* 80D5E3B4  4B FF FE 91 */	bl getPower80__9daTagQs_cFv
/* 80D5E3B8  EC 01 F8 2A */	fadds f0, f1, f31
/* 80D5E3BC  EC 3E 00 32 */	fmuls f1, f30, f0
lbl_80D5E3C0:
/* 80D5E3C0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80D5E3C4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80D5E3C8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80D5E3CC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80D5E3D0  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80D5E3D4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80D5E3D8  E3 81 00 28 */	psq_l f28, 40(r1), 0, 0 /* qr0 */
/* 80D5E3DC  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 80D5E3E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D5E3E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D5E3E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D5E3EC  7C 08 03 A6 */	mtlr r0
/* 80D5E3F0  38 21 00 60 */	addi r1, r1, 0x60
/* 80D5E3F4  4E 80 00 20 */	blr 
