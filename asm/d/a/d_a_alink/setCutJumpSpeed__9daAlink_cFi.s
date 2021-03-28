lbl_800D2C78:
/* 800D2C78  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800D2C7C  7C 08 02 A6 */	mflr r0
/* 800D2C80  90 01 00 54 */	stw r0, 0x54(r1)
/* 800D2C84  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800D2C88  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800D2C8C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800D2C90  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800D2C94  7C 7F 1B 78 */	mr r31, r3
/* 800D2C98  7C 9E 23 78 */	mr r30, r4
/* 800D2C9C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800D2CA0  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800D2CA4  41 82 00 30 */	beq lbl_800D2CD4
/* 800D2CA8  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800D2CAC  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha
/* 800D2CB0  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l
/* 800D2CB4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800D2CB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2CBC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D2CC0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800D2CC4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800D2CC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2CCC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800D2CD0  48 00 00 28 */	b lbl_800D2CF8
lbl_800D2CD4:
/* 800D2CD4  38 80 00 01 */	li r4, 1
/* 800D2CD8  38 A0 00 01 */	li r5, 1
/* 800D2CDC  4B FE 87 DD */	bl checkHeavyStateOn__9daAlink_cFii
/* 800D2CE0  2C 03 00 00 */	cmpwi r3, 0
/* 800D2CE4  41 82 00 14 */	beq lbl_800D2CF8
/* 800D2CE8  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800D2CEC  C0 02 93 0C */	lfs f0, lit_7305(r2)
/* 800D2CF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2CF4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_800D2CF8:
/* 800D2CF8  80 9F 27 EC */	lwz r4, 0x27ec(r31)
/* 800D2CFC  28 04 00 00 */	cmplwi r4, 0
/* 800D2D00  41 82 02 38 */	beq lbl_800D2F38
/* 800D2D04  2C 1E 00 00 */	cmpwi r30, 0
/* 800D2D08  40 82 02 30 */	bne lbl_800D2F38
/* 800D2D0C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800D2D10  38 84 05 38 */	addi r4, r4, 0x538
/* 800D2D14  48 19 DE F1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800D2D18  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 800D2D1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800D2D20  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800D2D24  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D2D28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D2D2C  7C 64 02 14 */	add r3, r4, r0
/* 800D2D30  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D2D34  80 7F 27 EC */	lwz r3, 0x27ec(r31)
/* 800D2D38  C0 23 05 40 */	lfs f1, 0x540(r3)
/* 800D2D3C  C0 42 93 10 */	lfs f2, lit_7306(r2)
/* 800D2D40  EC 02 00 32 */	fmuls f0, f2, f0
/* 800D2D44  EC 81 00 28 */	fsubs f4, f1, f0
/* 800D2D48  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 800D2D4C  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 800D2D50  EC 61 00 2A */	fadds f3, f1, f0
/* 800D2D54  7C 04 04 2E */	lfsx f0, r4, r0
/* 800D2D58  C0 23 05 38 */	lfs f1, 0x538(r3)
/* 800D2D5C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800D2D60  EC 01 00 28 */	fsubs f0, f1, f0
/* 800D2D64  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800D2D68  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 800D2D6C  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 800D2D70  38 61 00 24 */	addi r3, r1, 0x24
/* 800D2D74  4B F4 AF 49 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 800D2D78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D2D7C  41 82 00 10 */	beq lbl_800D2D8C
/* 800D2D80  C0 0D 87 50 */	lfs f0, mGroundY__11fopAcM_gc_c(r13)
/* 800D2D84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800D2D88  48 00 00 10 */	b lbl_800D2D98
lbl_800D2D8C:
/* 800D2D8C  80 7F 27 EC */	lwz r3, 0x27ec(r31)
/* 800D2D90  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 800D2D94  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_800D2D98:
/* 800D2D98  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 800D2D9C  C0 3F 05 30 */	lfs f1, 0x530(r31)
/* 800D2DA0  EC 80 08 2A */	fadds f4, f0, f1
/* 800D2DA4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D2DA8  EC A0 08 24 */	fdivs f5, f0, f1
/* 800D2DAC  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 800D2DB0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800D2DB4  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800D2DB8  EC 04 01 32 */	fmuls f0, f4, f4
/* 800D2DBC  EC 05 00 32 */	fmuls f0, f5, f0
/* 800D2DC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2DC4  EC 02 00 28 */	fsubs f0, f2, f0
/* 800D2DC8  EC 23 00 28 */	fsubs f1, f3, f0
/* 800D2DCC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D2DD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D2DD4  40 81 00 08 */	ble lbl_800D2DDC
/* 800D2DD8  FC 20 00 90 */	fmr f1, f0
lbl_800D2DDC:
/* 800D2DDC  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 800D2DE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 800D2DE4  EC 20 01 72 */	fmuls f1, f0, f5
/* 800D2DE8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D2DEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D2DF0  40 81 00 0C */	ble lbl_800D2DFC
/* 800D2DF4  FC 00 08 34 */	frsqrte f0, f1
/* 800D2DF8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_800D2DFC:
/* 800D2DFC  EC 04 01 72 */	fmuls f0, f4, f5
/* 800D2E00  EF E1 00 28 */	fsubs f31, f1, f0
/* 800D2E04  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800D2E08  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800D2E0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800D2E10  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D2E14  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800D2E18  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800D2E1C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800D2E20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800D2E24  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800D2E28  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800D2E2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800D2E30  38 61 00 0C */	addi r3, r1, 0xc
/* 800D2E34  38 81 00 18 */	addi r4, r1, 0x18
/* 800D2E38  48 27 45 65 */	bl PSVECSquareDistance
/* 800D2E3C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D2E40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D2E44  40 81 00 58 */	ble lbl_800D2E9C
/* 800D2E48  FC 00 08 34 */	frsqrte f0, f1
/* 800D2E4C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800D2E50  FC 44 00 32 */	fmul f2, f4, f0
/* 800D2E54  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800D2E58  FC 00 00 32 */	fmul f0, f0, f0
/* 800D2E5C  FC 01 00 32 */	fmul f0, f1, f0
/* 800D2E60  FC 03 00 28 */	fsub f0, f3, f0
/* 800D2E64  FC 02 00 32 */	fmul f0, f2, f0
/* 800D2E68  FC 44 00 32 */	fmul f2, f4, f0
/* 800D2E6C  FC 00 00 32 */	fmul f0, f0, f0
/* 800D2E70  FC 01 00 32 */	fmul f0, f1, f0
/* 800D2E74  FC 03 00 28 */	fsub f0, f3, f0
/* 800D2E78  FC 02 00 32 */	fmul f0, f2, f0
/* 800D2E7C  FC 44 00 32 */	fmul f2, f4, f0
/* 800D2E80  FC 00 00 32 */	fmul f0, f0, f0
/* 800D2E84  FC 01 00 32 */	fmul f0, f1, f0
/* 800D2E88  FC 03 00 28 */	fsub f0, f3, f0
/* 800D2E8C  FC 02 00 32 */	fmul f0, f2, f0
/* 800D2E90  FC 21 00 32 */	fmul f1, f1, f0
/* 800D2E94  FC 20 08 18 */	frsp f1, f1
/* 800D2E98  48 00 00 88 */	b lbl_800D2F20
lbl_800D2E9C:
/* 800D2E9C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800D2EA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D2EA4  40 80 00 10 */	bge lbl_800D2EB4
/* 800D2EA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800D2EAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800D2EB0  48 00 00 70 */	b lbl_800D2F20
lbl_800D2EB4:
/* 800D2EB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 800D2EB8  80 81 00 08 */	lwz r4, 8(r1)
/* 800D2EBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800D2EC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 800D2EC4  7C 03 00 00 */	cmpw r3, r0
/* 800D2EC8  41 82 00 14 */	beq lbl_800D2EDC
/* 800D2ECC  40 80 00 40 */	bge lbl_800D2F0C
/* 800D2ED0  2C 03 00 00 */	cmpwi r3, 0
/* 800D2ED4  41 82 00 20 */	beq lbl_800D2EF4
/* 800D2ED8  48 00 00 34 */	b lbl_800D2F0C
lbl_800D2EDC:
/* 800D2EDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800D2EE0  41 82 00 0C */	beq lbl_800D2EEC
/* 800D2EE4  38 00 00 01 */	li r0, 1
/* 800D2EE8  48 00 00 28 */	b lbl_800D2F10
lbl_800D2EEC:
/* 800D2EEC  38 00 00 02 */	li r0, 2
/* 800D2EF0  48 00 00 20 */	b lbl_800D2F10
lbl_800D2EF4:
/* 800D2EF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800D2EF8  41 82 00 0C */	beq lbl_800D2F04
/* 800D2EFC  38 00 00 05 */	li r0, 5
/* 800D2F00  48 00 00 10 */	b lbl_800D2F10
lbl_800D2F04:
/* 800D2F04  38 00 00 03 */	li r0, 3
/* 800D2F08  48 00 00 08 */	b lbl_800D2F10
lbl_800D2F0C:
/* 800D2F0C  38 00 00 04 */	li r0, 4
lbl_800D2F10:
/* 800D2F10  2C 00 00 01 */	cmpwi r0, 1
/* 800D2F14  40 82 00 0C */	bne lbl_800D2F20
/* 800D2F18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800D2F1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800D2F20:
/* 800D2F20  C0 02 93 18 */	lfs f0, lit_7308(r2)
/* 800D2F24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D2F28  40 81 00 08 */	ble lbl_800D2F30
/* 800D2F2C  FC 20 00 90 */	fmr f1, f0
lbl_800D2F30:
/* 800D2F30  EC 01 F8 24 */	fdivs f0, f1, f31
/* 800D2F34  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_800D2F38:
/* 800D2F38  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800D2F3C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800D2F40  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800D2F44  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800D2F48  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800D2F4C  7C 08 03 A6 */	mtlr r0
/* 800D2F50  38 21 00 50 */	addi r1, r1, 0x50
/* 800D2F54  4E 80 00 20 */	blr 
