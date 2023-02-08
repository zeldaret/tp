lbl_800A6DCC:
/* 800A6DCC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800A6DD0  7C 08 02 A6 */	mflr r0
/* 800A6DD4  90 01 00 64 */	stw r0, 0x64(r1)
/* 800A6DD8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800A6DDC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 800A6DE0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 800A6DE4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 800A6DE8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800A6DEC  7C 7F 1B 78 */	mr r31, r3
/* 800A6DF0  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 800A6DF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800A6DF8  41 82 02 34 */	beq lbl_800A702C
/* 800A6DFC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A6E00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800A6E04  41 82 02 28 */	beq lbl_800A702C
/* 800A6E08  C0 3F 35 CC */	lfs f1, 0x35cc(r31)
/* 800A6E0C  C0 1F 35 C4 */	lfs f0, 0x35c4(r31)
/* 800A6E10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800A6E14  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A6E18  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800A6E1C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800A6E20  38 61 00 0C */	addi r3, r1, 0xc
/* 800A6E24  48 2A 03 15 */	bl PSVECSquareMag
/* 800A6E28  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A6E2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A6E30  40 81 00 58 */	ble lbl_800A6E88
/* 800A6E34  FC 00 08 34 */	frsqrte f0, f1
/* 800A6E38  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A6E3C  FC 44 00 32 */	fmul f2, f4, f0
/* 800A6E40  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A6E44  FC 00 00 32 */	fmul f0, f0, f0
/* 800A6E48  FC 01 00 32 */	fmul f0, f1, f0
/* 800A6E4C  FC 03 00 28 */	fsub f0, f3, f0
/* 800A6E50  FC 02 00 32 */	fmul f0, f2, f0
/* 800A6E54  FC 44 00 32 */	fmul f2, f4, f0
/* 800A6E58  FC 00 00 32 */	fmul f0, f0, f0
/* 800A6E5C  FC 01 00 32 */	fmul f0, f1, f0
/* 800A6E60  FC 03 00 28 */	fsub f0, f3, f0
/* 800A6E64  FC 02 00 32 */	fmul f0, f2, f0
/* 800A6E68  FC 44 00 32 */	fmul f2, f4, f0
/* 800A6E6C  FC 00 00 32 */	fmul f0, f0, f0
/* 800A6E70  FC 01 00 32 */	fmul f0, f1, f0
/* 800A6E74  FC 03 00 28 */	fsub f0, f3, f0
/* 800A6E78  FC 02 00 32 */	fmul f0, f2, f0
/* 800A6E7C  FF C1 00 32 */	fmul f30, f1, f0
/* 800A6E80  FF C0 F0 18 */	frsp f30, f30
/* 800A6E84  48 00 00 90 */	b lbl_800A6F14
lbl_800A6E88:
/* 800A6E88  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A6E8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A6E90  40 80 00 10 */	bge lbl_800A6EA0
/* 800A6E94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A6E98  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800A6E9C  48 00 00 78 */	b lbl_800A6F14
lbl_800A6EA0:
/* 800A6EA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 800A6EA4  80 81 00 08 */	lwz r4, 8(r1)
/* 800A6EA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A6EAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A6EB0  7C 03 00 00 */	cmpw r3, r0
/* 800A6EB4  41 82 00 14 */	beq lbl_800A6EC8
/* 800A6EB8  40 80 00 40 */	bge lbl_800A6EF8
/* 800A6EBC  2C 03 00 00 */	cmpwi r3, 0
/* 800A6EC0  41 82 00 20 */	beq lbl_800A6EE0
/* 800A6EC4  48 00 00 34 */	b lbl_800A6EF8
lbl_800A6EC8:
/* 800A6EC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A6ECC  41 82 00 0C */	beq lbl_800A6ED8
/* 800A6ED0  38 00 00 01 */	li r0, 1
/* 800A6ED4  48 00 00 28 */	b lbl_800A6EFC
lbl_800A6ED8:
/* 800A6ED8  38 00 00 02 */	li r0, 2
/* 800A6EDC  48 00 00 20 */	b lbl_800A6EFC
lbl_800A6EE0:
/* 800A6EE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A6EE4  41 82 00 0C */	beq lbl_800A6EF0
/* 800A6EE8  38 00 00 05 */	li r0, 5
/* 800A6EEC  48 00 00 10 */	b lbl_800A6EFC
lbl_800A6EF0:
/* 800A6EF0  38 00 00 03 */	li r0, 3
/* 800A6EF4  48 00 00 08 */	b lbl_800A6EFC
lbl_800A6EF8:
/* 800A6EF8  38 00 00 04 */	li r0, 4
lbl_800A6EFC:
/* 800A6EFC  2C 00 00 01 */	cmpwi r0, 1
/* 800A6F00  40 82 00 10 */	bne lbl_800A6F10
/* 800A6F04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A6F08  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800A6F0C  48 00 00 08 */	b lbl_800A6F14
lbl_800A6F10:
/* 800A6F10  FF C0 08 90 */	fmr f30, f1
lbl_800A6F14:
/* 800A6F14  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800A6F18  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800A6F1C  40 81 01 10 */	ble lbl_800A702C
/* 800A6F20  C0 7F 37 A0 */	lfs f3, 0x37a0(r31)
/* 800A6F24  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 800A6F28  C0 1F 37 9C */	lfs f0, 0x379c(r31)
/* 800A6F2C  EC 41 00 2A */	fadds f2, f1, f0
/* 800A6F30  C0 1F 37 98 */	lfs f0, 0x3798(r31)
/* 800A6F34  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800A6F38  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 800A6F3C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 800A6F40  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800A6F44  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A6F48  EC 21 00 2A */	fadds f1, f1, f0
/* 800A6F4C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800A6F50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800A6F54  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800A6F58  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800A6F5C  C3 FF 18 E4 */	lfs f31, 0x18e4(r31)
/* 800A6F60  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A6F64  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A6F68  41 82 00 40 */	beq lbl_800A6FA8
/* 800A6F6C  38 7F 35 C4 */	addi r3, r31, 0x35c4
/* 800A6F70  48 1C 01 B9 */	bl atan2sX_Z__4cXyzCFv
/* 800A6F74  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800A6F78  7C 00 18 50 */	subf r0, r0, r3
/* 800A6F7C  C0 02 94 68 */	lfs f0, lit_14955(r2)
/* 800A6F80  EC 20 F8 28 */	fsubs f1, f0, f31
/* 800A6F84  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800A6F88  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800A6F8C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A6F90  7C 63 02 14 */	add r3, r3, r0
/* 800A6F94  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A6F98  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A6F9C  FC 00 02 10 */	fabs f0, f0
/* 800A6FA0  FC 00 00 18 */	frsp f0, f0
/* 800A6FA4  EF FF 00 2A */	fadds f31, f31, f0
lbl_800A6FA8:
/* 800A6FA8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A6FAC  EC 00 F0 24 */	fdivs f0, f0, f30
/* 800A6FB0  EF FF 00 32 */	fmuls f31, f31, f0
/* 800A6FB4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 800A6FB8  C0 1F 35 C4 */	lfs f0, 0x35c4(r31)
/* 800A6FBC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800A6FC0  EC 01 00 2A */	fadds f0, f1, f0
/* 800A6FC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800A6FC8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800A6FCC  C0 1F 35 CC */	lfs f0, 0x35cc(r31)
/* 800A6FD0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800A6FD4  EC 01 00 2A */	fadds f0, f1, f0
/* 800A6FD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800A6FDC  7F E3 FB 78 */	mr r3, r31
/* 800A6FE0  38 81 00 24 */	addi r4, r1, 0x24
/* 800A6FE4  38 A1 00 18 */	addi r5, r1, 0x18
/* 800A6FE8  4B FF B1 B1 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800A6FEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A6FF0  41 82 00 3C */	beq lbl_800A702C
/* 800A6FF4  38 7F 1B 5C */	addi r3, r31, 0x1b5c
/* 800A6FF8  4B FC ED 15 */	bl dBgS_CheckBWallPoly__FRC13cBgS_PolyInfo
/* 800A6FFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A7000  41 82 00 2C */	beq lbl_800A702C
/* 800A7004  C0 3F 1B 78 */	lfs f1, 0x1b78(r31)
/* 800A7008  C0 1F 35 C4 */	lfs f0, 0x35c4(r31)
/* 800A700C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800A7010  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A7014  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800A7018  C0 3F 1B 80 */	lfs f1, 0x1b80(r31)
/* 800A701C  C0 1F 35 CC */	lfs f0, 0x35cc(r31)
/* 800A7020  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800A7024  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A7028  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_800A702C:
/* 800A702C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 800A7030  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800A7034  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 800A7038  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 800A703C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800A7040  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800A7044  7C 08 03 A6 */	mtlr r0
/* 800A7048  38 21 00 60 */	addi r1, r1, 0x60
/* 800A704C  4E 80 00 20 */	blr 
