lbl_80133D6C:
/* 80133D6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80133D70  7C 08 02 A6 */	mflr r0
/* 80133D74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80133D78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80133D7C  7C 7F 1B 78 */	mr r31, r3
/* 80133D80  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 80133D84  28 00 01 18 */	cmplwi r0, 0x118
/* 80133D88  40 82 00 38 */	bne lbl_80133DC0
/* 80133D8C  A8 9F 30 08 */	lha r4, 0x3008(r31)
/* 80133D90  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlPoint_c0@ha
/* 80133D94  38 63 F7 DC */	addi r3, r3, m__21daAlinkHIO_wlPoint_c0@l
/* 80133D98  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 80133D9C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80133DA0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80133DA4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80133DA8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80133DAC  FC 00 00 1E */	fctiwz f0, f0
/* 80133DB0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80133DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80133DB8  7C 64 02 14 */	add r3, r4, r0
/* 80133DBC  48 00 01 10 */	b lbl_80133ECC
lbl_80133DC0:
/* 80133DC0  48 00 01 31 */	bl checkMidnaLockJumpPoint__9daAlink_cCFv
/* 80133DC4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80133DC8  48 21 35 D5 */	bl PSVECSquareDistance
/* 80133DCC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80133DD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80133DD4  40 81 00 58 */	ble lbl_80133E2C
/* 80133DD8  FC 00 08 34 */	frsqrte f0, f1
/* 80133DDC  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80133DE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80133DE4  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80133DE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80133DEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80133DF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80133DF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80133DF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80133DFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80133E00  FC 01 00 32 */	fmul f0, f1, f0
/* 80133E04  FC 03 00 28 */	fsub f0, f3, f0
/* 80133E08  FC 02 00 32 */	fmul f0, f2, f0
/* 80133E0C  FC 44 00 32 */	fmul f2, f4, f0
/* 80133E10  FC 00 00 32 */	fmul f0, f0, f0
/* 80133E14  FC 01 00 32 */	fmul f0, f1, f0
/* 80133E18  FC 03 00 28 */	fsub f0, f3, f0
/* 80133E1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80133E20  FC 21 00 32 */	fmul f1, f1, f0
/* 80133E24  FC 20 08 18 */	frsp f1, f1
/* 80133E28  48 00 00 88 */	b lbl_80133EB0
lbl_80133E2C:
/* 80133E2C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80133E30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80133E34  40 80 00 10 */	bge lbl_80133E44
/* 80133E38  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80133E3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80133E40  48 00 00 70 */	b lbl_80133EB0
lbl_80133E44:
/* 80133E44  D0 21 00 08 */	stfs f1, 8(r1)
/* 80133E48  80 81 00 08 */	lwz r4, 8(r1)
/* 80133E4C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80133E50  3C 00 7F 80 */	lis r0, 0x7f80
/* 80133E54  7C 03 00 00 */	cmpw r3, r0
/* 80133E58  41 82 00 14 */	beq lbl_80133E6C
/* 80133E5C  40 80 00 40 */	bge lbl_80133E9C
/* 80133E60  2C 03 00 00 */	cmpwi r3, 0
/* 80133E64  41 82 00 20 */	beq lbl_80133E84
/* 80133E68  48 00 00 34 */	b lbl_80133E9C
lbl_80133E6C:
/* 80133E6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80133E70  41 82 00 0C */	beq lbl_80133E7C
/* 80133E74  38 00 00 01 */	li r0, 1
/* 80133E78  48 00 00 28 */	b lbl_80133EA0
lbl_80133E7C:
/* 80133E7C  38 00 00 02 */	li r0, 2
/* 80133E80  48 00 00 20 */	b lbl_80133EA0
lbl_80133E84:
/* 80133E84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80133E88  41 82 00 0C */	beq lbl_80133E94
/* 80133E8C  38 00 00 05 */	li r0, 5
/* 80133E90  48 00 00 10 */	b lbl_80133EA0
lbl_80133E94:
/* 80133E94  38 00 00 03 */	li r0, 3
/* 80133E98  48 00 00 08 */	b lbl_80133EA0
lbl_80133E9C:
/* 80133E9C  38 00 00 04 */	li r0, 4
lbl_80133EA0:
/* 80133EA0  2C 00 00 01 */	cmpwi r0, 1
/* 80133EA4  40 82 00 0C */	bne lbl_80133EB0
/* 80133EA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80133EAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80133EB0:
/* 80133EB0  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlPoint_c0@ha
/* 80133EB4  38 63 F7 DC */	addi r3, r3, m__21daAlinkHIO_wlPoint_c0@l
/* 80133EB8  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 80133EBC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80133EC0  FC 00 00 1E */	fctiwz f0, f0
/* 80133EC4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80133EC8  80 61 00 14 */	lwz r3, 0x14(r1)
lbl_80133ECC:
/* 80133ECC  38 63 FF FE */	addi r3, r3, -2
/* 80133ED0  2C 03 00 01 */	cmpwi r3, 1
/* 80133ED4  40 80 00 08 */	bge lbl_80133EDC
/* 80133ED8  38 60 00 01 */	li r3, 1
lbl_80133EDC:
/* 80133EDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80133EE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80133EE4  7C 08 03 A6 */	mtlr r0
/* 80133EE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80133EEC  4E 80 00 20 */	blr 
