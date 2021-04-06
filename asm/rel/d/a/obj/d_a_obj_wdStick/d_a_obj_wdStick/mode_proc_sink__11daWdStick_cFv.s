lbl_80D33D8C:
/* 80D33D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D33D90  7C 08 02 A6 */	mflr r0
/* 80D33D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D33D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D33D9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D33DA0  7C 7E 1B 78 */	mr r30, r3
/* 80D33DA4  3C 60 80 D3 */	lis r3, mCcDObjInfo__11daWdStick_c@ha /* 0x80D34138@ha */
/* 80D33DA8  3B E3 41 38 */	addi r31, r3, mCcDObjInfo__11daWdStick_c@l /* 0x80D34138@l */
/* 80D33DAC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80D33DB0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D33DB4  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80D33DB8  C0 7F 00 AC */	lfs f3, 0xac(r31)
/* 80D33DBC  C0 9F 00 CC */	lfs f4, 0xcc(r31)
/* 80D33DC0  4B 53 BB BD */	bl cLib_addCalc__FPfffff
/* 80D33DC4  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80D33DC8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80D33DCC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D33DD0  40 80 00 08 */	bge lbl_80D33DD8
/* 80D33DD4  48 00 00 18 */	b lbl_80D33DEC
lbl_80D33DD8:
/* 80D33DD8  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80D33DDC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D33DE0  40 81 00 08 */	ble lbl_80D33DE8
/* 80D33DE4  48 00 00 08 */	b lbl_80D33DEC
lbl_80D33DE8:
/* 80D33DE8  FC 20 00 90 */	fmr f1, f0
lbl_80D33DEC:
/* 80D33DEC  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 80D33DF0  80 1E 05 CC */	lwz r0, 0x5cc(r30)
/* 80D33DF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80D33DF8  41 82 00 14 */	beq lbl_80D33E0C
/* 80D33DFC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80D33E00  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80D33E04  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D33E08  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80D33E0C:
/* 80D33E0C  7F C3 F3 78 */	mr r3, r30
/* 80D33E10  4B FF FF 35 */	bl chkWaterLineIn__11daWdStick_cFv
/* 80D33E14  2C 03 00 00 */	cmpwi r3, 0
/* 80D33E18  41 82 00 10 */	beq lbl_80D33E28
/* 80D33E1C  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80D33E20  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80D33E24  48 00 00 0C */	b lbl_80D33E30
lbl_80D33E28:
/* 80D33E28  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80D33E2C  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80D33E30:
/* 80D33E30  7F C3 F3 78 */	mr r3, r30
/* 80D33E34  38 9E 07 B8 */	addi r4, r30, 0x7b8
/* 80D33E38  4B 2E 68 95 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80D33E3C  C0 5E 07 6C */	lfs f2, 0x76c(r30)
/* 80D33E40  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D33E44  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80D33E48  EC 00 10 2A */	fadds f0, f0, f2
/* 80D33E4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D33E50  40 80 00 30 */	bge lbl_80D33E80
/* 80D33E54  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80D33E58  60 00 00 10 */	ori r0, r0, 0x10
/* 80D33E5C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80D33E60  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80D33E64  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D33E68  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80D33E6C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D33E70  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80D33E74  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80D33E78  7F C3 F3 78 */	mr r3, r30
/* 80D33E7C  4B FF F6 91 */	bl mode_init_wait__11daWdStick_cFv
lbl_80D33E80:
/* 80D33E80  80 1E 05 CC */	lwz r0, 0x5cc(r30)
/* 80D33E84  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80D33E88  41 82 00 10 */	beq lbl_80D33E98
/* 80D33E8C  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80D33E90  60 00 00 10 */	ori r0, r0, 0x10
/* 80D33E94  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80D33E98:
/* 80D33E98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D33E9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D33EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D33EA4  7C 08 03 A6 */	mtlr r0
/* 80D33EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D33EAC  4E 80 00 20 */	blr 
