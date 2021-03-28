lbl_80A6A420:
/* 80A6A420  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A6A424  7C 08 02 A6 */	mflr r0
/* 80A6A428  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A6A42C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80A6A430  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80A6A434  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80A6A438  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80A6A43C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6A440  4B 8F 7D 98 */	b _savegpr_28
/* 80A6A444  7C 7F 1B 78 */	mr r31, r3
/* 80A6A448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6A44C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A6A450  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 80A6A454  3B BF 05 BC */	addi r29, r31, 0x5bc
/* 80A6A458  3B 80 00 00 */	li r28, 0
/* 80A6A45C  3C 60 80 A7 */	lis r3, lit_3862@ha
/* 80A6A460  C3 C3 A9 94 */	lfs f30, lit_3862@l(r3)
/* 80A6A464  3C 60 80 A7 */	lis r3, lit_4060@ha
/* 80A6A468  C3 E3 AA 00 */	lfs f31, lit_4060@l(r3)
/* 80A6A46C  48 00 00 70 */	b lbl_80A6A4DC
lbl_80A6A470:
/* 80A6A470  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80A6A474  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80A6A478  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A6A47C  D0 41 00 08 */	stfs f2, 8(r1)
/* 80A6A480  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80A6A484  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80A6A488  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A6A48C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A6A490  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A6A494  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A6A498  EC 21 00 2A */	fadds f1, f1, f0
/* 80A6A49C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80A6A4A0  40 81 00 0C */	ble lbl_80A6A4AC
/* 80A6A4A4  FC 00 08 34 */	frsqrte f0, f1
/* 80A6A4A8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A6A4AC:
/* 80A6A4AC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A6A4B0  40 80 00 1C */	bge lbl_80A6A4CC
/* 80A6A4B4  38 00 00 00 */	li r0, 0
/* 80A6A4B8  98 1D 00 17 */	stb r0, 0x17(r29)
/* 80A6A4BC  7F E3 FB 78 */	mr r3, r31
/* 80A6A4C0  7F A4 EB 78 */	mr r4, r29
/* 80A6A4C4  4B FF FC F5 */	bl action__FP10fopAc_ac_cP4lf_s
/* 80A6A4C8  48 00 00 0C */	b lbl_80A6A4D4
lbl_80A6A4CC:
/* 80A6A4CC  38 00 00 01 */	li r0, 1
/* 80A6A4D0  98 1D 00 17 */	stb r0, 0x17(r29)
lbl_80A6A4D4:
/* 80A6A4D4  3B 9C 00 01 */	addi r28, r28, 1
/* 80A6A4D8  3B BD 00 68 */	addi r29, r29, 0x68
lbl_80A6A4DC:
/* 80A6A4DC  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80A6A4E0  7C 1C 00 00 */	cmpw r28, r0
/* 80A6A4E4  41 80 FF 8C */	blt lbl_80A6A470
/* 80A6A4E8  38 60 00 01 */	li r3, 1
/* 80A6A4EC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80A6A4F0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80A6A4F4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80A6A4F8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80A6A4FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6A500  4B 8F 7D 24 */	b _restgpr_28
/* 80A6A504  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A6A508  7C 08 03 A6 */	mtlr r0
/* 80A6A50C  38 21 00 50 */	addi r1, r1, 0x50
/* 80A6A510  4E 80 00 20 */	blr 
