lbl_8003F24C:
/* 8003F24C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8003F250  7C 08 02 A6 */	mflr r0
/* 8003F254  90 01 00 84 */	stw r0, 0x84(r1)
/* 8003F258  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8003F25C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8003F260  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8003F264  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8003F268  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8003F26C  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8003F270  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8003F274  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 8003F278  39 61 00 40 */	addi r11, r1, 0x40
/* 8003F27C  48 32 2F 55 */	bl _savegpr_26
/* 8003F280  FF 80 08 90 */	fmr f28, f1
/* 8003F284  7C 7B 1B 78 */	mr r27, r3
/* 8003F288  7C 9C 23 78 */	mr r28, r4
/* 8003F28C  7C BD 2B 78 */	mr r29, r5
/* 8003F290  7C DE 33 78 */	mr r30, r6
/* 8003F294  7C FF 3B 78 */	mr r31, r7
/* 8003F298  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003F29C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003F2A0  3B 43 4E 20 */	addi r26, r3, 0x4e20
/* 8003F2A4  7F 43 D3 78 */	mr r3, r26
/* 8003F2A8  81 9A 00 00 */	lwz r12, 0(r26)
/* 8003F2AC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8003F2B0  7D 89 03 A6 */	mtctr r12
/* 8003F2B4  4E 80 04 21 */	bctrl 
/* 8003F2B8  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 8003F2BC  C8 22 84 30 */	lfd f1, lit_3957(r2)
/* 8003F2C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8003F2C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003F2C8  3C 00 43 30 */	lis r0, 0x4330
/* 8003F2CC  90 01 00 08 */	stw r0, 8(r1)
/* 8003F2D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8003F2D4  EF E0 08 28 */	fsubs f31, f0, f1
/* 8003F2D8  7F 43 D3 78 */	mr r3, r26
/* 8003F2DC  81 9A 00 00 */	lwz r12, 0(r26)
/* 8003F2E0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8003F2E4  7D 89 03 A6 */	mtctr r12
/* 8003F2E8  4E 80 04 21 */	bctrl 
/* 8003F2EC  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 8003F2F0  C8 22 84 30 */	lfd f1, lit_3957(r2)
/* 8003F2F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8003F2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003F2FC  3C 00 43 30 */	lis r0, 0x4330
/* 8003F300  90 01 00 10 */	stw r0, 0x10(r1)
/* 8003F304  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8003F308  EC 00 08 28 */	fsubs f0, f0, f1
/* 8003F30C  FC 00 02 10 */	fabs f0, f0
/* 8003F310  FF C0 00 18 */	frsp f30, f0
/* 8003F314  7F 43 D3 78 */	mr r3, r26
/* 8003F318  81 9A 00 00 */	lwz r12, 0(r26)
/* 8003F31C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8003F320  7D 89 03 A6 */	mtctr r12
/* 8003F324  4E 80 04 21 */	bctrl 
/* 8003F328  A8 03 00 1E */	lha r0, 0x1e(r3)
/* 8003F32C  C8 22 84 30 */	lfd f1, lit_3957(r2)
/* 8003F330  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8003F334  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8003F338  3C 00 43 30 */	lis r0, 0x4330
/* 8003F33C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8003F340  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8003F344  EC 00 08 28 */	fsubs f0, f0, f1
/* 8003F348  FC 00 02 10 */	fabs f0, f0
/* 8003F34C  FF A0 00 18 */	frsp f29, f0
/* 8003F350  EC 3C F8 24 */	fdivs f1, f28, f31
/* 8003F354  48 32 CD A9 */	bl floor
/* 8003F358  FC 00 08 18 */	frsp f0, f1
/* 8003F35C  FC 00 00 1E */	fctiwz f0, f0
/* 8003F360  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8003F364  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003F368  28 1B 00 00 */	cmplwi r27, 0
/* 8003F36C  41 82 00 08 */	beq lbl_8003F374
/* 8003F370  98 1B 00 00 */	stb r0, 0(r27)
lbl_8003F374:
/* 8003F374  7C 00 07 74 */	extsb r0, r0
/* 8003F378  C8 22 84 30 */	lfd f1, lit_3957(r2)
/* 8003F37C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8003F380  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003F384  3C 00 43 30 */	lis r0, 0x4330
/* 8003F388  90 01 00 20 */	stw r0, 0x20(r1)
/* 8003F38C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8003F390  EC 00 08 28 */	fsubs f0, f0, f1
/* 8003F394  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8003F398  28 1C 00 00 */	cmplwi r28, 0
/* 8003F39C  41 82 00 08 */	beq lbl_8003F3A4
/* 8003F3A0  D0 3C 00 00 */	stfs f1, 0(r28)
lbl_8003F3A4:
/* 8003F3A4  28 1D 00 00 */	cmplwi r29, 0
/* 8003F3A8  41 82 00 0C */	beq lbl_8003F3B4
/* 8003F3AC  EC 01 F0 2A */	fadds f0, f1, f30
/* 8003F3B0  D0 1D 00 00 */	stfs f0, 0(r29)
lbl_8003F3B4:
/* 8003F3B4  28 1E 00 00 */	cmplwi r30, 0
/* 8003F3B8  41 82 00 10 */	beq lbl_8003F3C8
/* 8003F3BC  EC 01 F8 2A */	fadds f0, f1, f31
/* 8003F3C0  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8003F3C4  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_8003F3C8:
/* 8003F3C8  28 1F 00 00 */	cmplwi r31, 0
/* 8003F3CC  41 82 00 08 */	beq lbl_8003F3D4
/* 8003F3D0  D3 FF 00 00 */	stfs f31, 0(r31)
lbl_8003F3D4:
/* 8003F3D4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8003F3D8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8003F3DC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8003F3E0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8003F3E4  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8003F3E8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8003F3EC  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 8003F3F0  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 8003F3F4  39 61 00 40 */	addi r11, r1, 0x40
/* 8003F3F8  48 32 2E 25 */	bl _restgpr_26
/* 8003F3FC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8003F400  7C 08 03 A6 */	mtlr r0
/* 8003F404  38 21 00 80 */	addi r1, r1, 0x80
/* 8003F408  4E 80 00 20 */	blr 
