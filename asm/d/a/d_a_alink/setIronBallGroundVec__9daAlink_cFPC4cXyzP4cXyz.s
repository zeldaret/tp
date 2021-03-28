lbl_80112C84:
/* 80112C84  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80112C88  7C 08 02 A6 */	mflr r0
/* 80112C8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80112C90  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80112C94  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80112C98  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80112C9C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80112CA0  7C 9E 23 78 */	mr r30, r4
/* 80112CA4  7C BF 2B 78 */	mr r31, r5
/* 80112CA8  C0 44 00 08 */	lfs f2, 8(r4)
/* 80112CAC  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 80112CB0  C0 04 00 04 */	lfs f0, 4(r4)
/* 80112CB4  EC 21 00 2A */	fadds f1, f1, f0
/* 80112CB8  C0 04 00 00 */	lfs f0, 0(r4)
/* 80112CBC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80112CC0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80112CC4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80112CC8  38 61 00 24 */	addi r3, r1, 0x24
/* 80112CCC  4B F0 AF F1 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80112CD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80112CD4  41 82 01 84 */	beq lbl_80112E58
/* 80112CD8  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 80112CDC  C0 0D 87 50 */	lfs f0, mGroundY__11fopAcM_gc_c(r13)
/* 80112CE0  EC 21 00 2A */	fadds f1, f1, f0
/* 80112CE4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80112CE8  EF E1 00 28 */	fsubs f31, f1, f0
/* 80112CEC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80112CF0  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80112CF4  40 81 01 64 */	ble lbl_80112E58
/* 80112CF8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80112CFC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80112D00  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80112D04  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80112D08  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80112D0C  38 61 00 0C */	addi r3, r1, 0xc
/* 80112D10  48 23 44 29 */	bl PSVECSquareMag
/* 80112D14  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80112D18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80112D1C  40 81 00 58 */	ble lbl_80112D74
/* 80112D20  FC 00 08 34 */	frsqrte f0, f1
/* 80112D24  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80112D28  FC 44 00 32 */	fmul f2, f4, f0
/* 80112D2C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80112D30  FC 00 00 32 */	fmul f0, f0, f0
/* 80112D34  FC 01 00 32 */	fmul f0, f1, f0
/* 80112D38  FC 03 00 28 */	fsub f0, f3, f0
/* 80112D3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80112D40  FC 44 00 32 */	fmul f2, f4, f0
/* 80112D44  FC 00 00 32 */	fmul f0, f0, f0
/* 80112D48  FC 01 00 32 */	fmul f0, f1, f0
/* 80112D4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80112D50  FC 02 00 32 */	fmul f0, f2, f0
/* 80112D54  FC 44 00 32 */	fmul f2, f4, f0
/* 80112D58  FC 00 00 32 */	fmul f0, f0, f0
/* 80112D5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80112D60  FC 03 00 28 */	fsub f0, f3, f0
/* 80112D64  FC 02 00 32 */	fmul f0, f2, f0
/* 80112D68  FC 21 00 32 */	fmul f1, f1, f0
/* 80112D6C  FC 20 08 18 */	frsp f1, f1
/* 80112D70  48 00 00 88 */	b lbl_80112DF8
lbl_80112D74:
/* 80112D74  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80112D78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80112D7C  40 80 00 10 */	bge lbl_80112D8C
/* 80112D80  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80112D84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80112D88  48 00 00 70 */	b lbl_80112DF8
lbl_80112D8C:
/* 80112D8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80112D90  80 81 00 08 */	lwz r4, 8(r1)
/* 80112D94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80112D98  3C 00 7F 80 */	lis r0, 0x7f80
/* 80112D9C  7C 03 00 00 */	cmpw r3, r0
/* 80112DA0  41 82 00 14 */	beq lbl_80112DB4
/* 80112DA4  40 80 00 40 */	bge lbl_80112DE4
/* 80112DA8  2C 03 00 00 */	cmpwi r3, 0
/* 80112DAC  41 82 00 20 */	beq lbl_80112DCC
/* 80112DB0  48 00 00 34 */	b lbl_80112DE4
lbl_80112DB4:
/* 80112DB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80112DB8  41 82 00 0C */	beq lbl_80112DC4
/* 80112DBC  38 00 00 01 */	li r0, 1
/* 80112DC0  48 00 00 28 */	b lbl_80112DE8
lbl_80112DC4:
/* 80112DC4  38 00 00 02 */	li r0, 2
/* 80112DC8  48 00 00 20 */	b lbl_80112DE8
lbl_80112DCC:
/* 80112DCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80112DD0  41 82 00 0C */	beq lbl_80112DDC
/* 80112DD4  38 00 00 05 */	li r0, 5
/* 80112DD8  48 00 00 10 */	b lbl_80112DE8
lbl_80112DDC:
/* 80112DDC  38 00 00 03 */	li r0, 3
/* 80112DE0  48 00 00 08 */	b lbl_80112DE8
lbl_80112DE4:
/* 80112DE4  38 00 00 04 */	li r0, 4
lbl_80112DE8:
/* 80112DE8  2C 00 00 01 */	cmpwi r0, 1
/* 80112DEC  40 82 00 0C */	bne lbl_80112DF8
/* 80112DF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80112DF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80112DF8:
/* 80112DF8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80112DFC  EC 00 F8 2A */	fadds f0, f0, f31
/* 80112E00  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80112E04  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 80112E08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80112E0C  40 80 00 14 */	bge lbl_80112E20
/* 80112E10  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80112E14  EC 00 F8 2A */	fadds f0, f0, f31
/* 80112E18  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80112E1C  48 00 00 28 */	b lbl_80112E44
lbl_80112E20:
/* 80112E20  EC 5F 08 24 */	fdivs f2, f31, f1
/* 80112E24  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80112E28  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80112E2C  EC 01 00 2A */	fadds f0, f1, f0
/* 80112E30  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80112E34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80112E38  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80112E3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80112E40  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80112E44:
/* 80112E44  38 61 00 18 */	addi r3, r1, 0x18
/* 80112E48  7F E4 FB 78 */	mr r4, r31
/* 80112E4C  48 15 40 FD */	bl normalizeZP__4cXyzFv
/* 80112E50  38 60 00 01 */	li r3, 1
/* 80112E54  48 00 00 08 */	b lbl_80112E5C
lbl_80112E58:
/* 80112E58  38 60 00 00 */	li r3, 0
lbl_80112E5C:
/* 80112E5C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80112E60  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80112E64  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80112E68  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80112E6C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80112E70  7C 08 03 A6 */	mtlr r0
/* 80112E74  38 21 00 50 */	addi r1, r1, 0x50
/* 80112E78  4E 80 00 20 */	blr 
