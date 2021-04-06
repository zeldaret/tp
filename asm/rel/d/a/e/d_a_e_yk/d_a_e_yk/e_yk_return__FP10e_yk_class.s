lbl_80805DE0:
/* 80805DE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80805DE4  7C 08 02 A6 */	mflr r0
/* 80805DE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80805DEC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80805DF0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80805DF4  7C 7F 1B 78 */	mr r31, r3
/* 80805DF8  3C 80 80 80 */	lis r4, lit_3941@ha /* 0x80807C9C@ha */
/* 80805DFC  3B C4 7C 9C */	addi r30, r4, lit_3941@l /* 0x80807C9C@l */
/* 80805E00  A8 03 06 70 */	lha r0, 0x670(r3)
/* 80805E04  2C 00 00 01 */	cmpwi r0, 1
/* 80805E08  41 82 00 38 */	beq lbl_80805E40
/* 80805E0C  40 80 00 34 */	bge lbl_80805E40
/* 80805E10  2C 00 00 00 */	cmpwi r0, 0
/* 80805E14  40 80 00 08 */	bge lbl_80805E1C
/* 80805E18  48 00 00 28 */	b lbl_80805E40
lbl_80805E1C:
/* 80805E1C  38 80 00 05 */	li r4, 5
/* 80805E20  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80805E24  38 A0 00 02 */	li r5, 2
/* 80805E28  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80805E2C  4B FF EB B9 */	bl anm_init__FP10e_yk_classifUcf
/* 80805E30  38 00 00 01 */	li r0, 1
/* 80805E34  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 80805E38  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80805E3C  D0 1F 06 8C */	stfs f0, 0x68c(r31)
lbl_80805E40:
/* 80805E40  3C 60 80 80 */	lis r3, l_HIO@ha /* 0x80807F08@ha */
/* 80805E44  38 63 7F 08 */	addi r3, r3, l_HIO@l /* 0x80807F08@l */
/* 80805E48  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80805E4C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80805E50  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80805E54  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80805E58  EC 60 00 72 */	fmuls f3, f0, f1
/* 80805E5C  4B A6 9B E1 */	bl cLib_addCalc2__FPffff
/* 80805E60  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80805E64  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 80805E68  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80805E6C  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 80805E70  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80805E74  D0 1F 06 7C */	stfs f0, 0x67c(r31)
/* 80805E78  7F E3 FB 78 */	mr r3, r31
/* 80805E7C  4B FF F3 55 */	bl fly_move__FP10e_yk_class
/* 80805E80  38 61 00 0C */	addi r3, r1, 0xc
/* 80805E84  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80805E88  38 BF 06 74 */	addi r5, r31, 0x674
/* 80805E8C  4B A6 0C A9 */	bl __mi__4cXyzCFRC3Vec
/* 80805E90  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80805E94  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80805E98  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80805E9C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80805EA0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80805EA4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80805EA8  38 61 00 18 */	addi r3, r1, 0x18
/* 80805EAC  4B B4 12 8D */	bl PSVECSquareMag
/* 80805EB0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80805EB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80805EB8  40 81 00 58 */	ble lbl_80805F10
/* 80805EBC  FC 00 08 34 */	frsqrte f0, f1
/* 80805EC0  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80805EC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80805EC8  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80805ECC  FC 00 00 32 */	fmul f0, f0, f0
/* 80805ED0  FC 01 00 32 */	fmul f0, f1, f0
/* 80805ED4  FC 03 00 28 */	fsub f0, f3, f0
/* 80805ED8  FC 02 00 32 */	fmul f0, f2, f0
/* 80805EDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80805EE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80805EE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80805EE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80805EEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80805EF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80805EF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80805EF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80805EFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80805F00  FC 02 00 32 */	fmul f0, f2, f0
/* 80805F04  FC 21 00 32 */	fmul f1, f1, f0
/* 80805F08  FC 20 08 18 */	frsp f1, f1
/* 80805F0C  48 00 00 88 */	b lbl_80805F94
lbl_80805F10:
/* 80805F10  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80805F14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80805F18  40 80 00 10 */	bge lbl_80805F28
/* 80805F1C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80805F20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80805F24  48 00 00 70 */	b lbl_80805F94
lbl_80805F28:
/* 80805F28  D0 21 00 08 */	stfs f1, 8(r1)
/* 80805F2C  80 81 00 08 */	lwz r4, 8(r1)
/* 80805F30  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80805F34  3C 00 7F 80 */	lis r0, 0x7f80
/* 80805F38  7C 03 00 00 */	cmpw r3, r0
/* 80805F3C  41 82 00 14 */	beq lbl_80805F50
/* 80805F40  40 80 00 40 */	bge lbl_80805F80
/* 80805F44  2C 03 00 00 */	cmpwi r3, 0
/* 80805F48  41 82 00 20 */	beq lbl_80805F68
/* 80805F4C  48 00 00 34 */	b lbl_80805F80
lbl_80805F50:
/* 80805F50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80805F54  41 82 00 0C */	beq lbl_80805F60
/* 80805F58  38 00 00 01 */	li r0, 1
/* 80805F5C  48 00 00 28 */	b lbl_80805F84
lbl_80805F60:
/* 80805F60  38 00 00 02 */	li r0, 2
/* 80805F64  48 00 00 20 */	b lbl_80805F84
lbl_80805F68:
/* 80805F68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80805F6C  41 82 00 0C */	beq lbl_80805F78
/* 80805F70  38 00 00 05 */	li r0, 5
/* 80805F74  48 00 00 10 */	b lbl_80805F84
lbl_80805F78:
/* 80805F78  38 00 00 03 */	li r0, 3
/* 80805F7C  48 00 00 08 */	b lbl_80805F84
lbl_80805F80:
/* 80805F80  38 00 00 04 */	li r0, 4
lbl_80805F84:
/* 80805F84  2C 00 00 01 */	cmpwi r0, 1
/* 80805F88  40 82 00 0C */	bne lbl_80805F94
/* 80805F8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80805F90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80805F94:
/* 80805F94  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80805F98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80805F9C  40 80 00 14 */	bge lbl_80805FB0
/* 80805FA0  38 00 00 00 */	li r0, 0
/* 80805FA4  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 80805FA8  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 80805FAC  48 00 00 2C */	b lbl_80805FD8
lbl_80805FB0:
/* 80805FB0  7F E3 FB 78 */	mr r3, r31
/* 80805FB4  C0 3F 06 88 */	lfs f1, 0x688(r31)
/* 80805FB8  38 80 00 01 */	li r4, 1
/* 80805FBC  4B FF EC CD */	bl pl_check__FP10e_yk_classfs
/* 80805FC0  2C 03 00 00 */	cmpwi r3, 0
/* 80805FC4  41 82 00 14 */	beq lbl_80805FD8
/* 80805FC8  38 00 00 01 */	li r0, 1
/* 80805FCC  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 80805FD0  38 00 00 00 */	li r0, 0
/* 80805FD4  B0 1F 06 70 */	sth r0, 0x670(r31)
lbl_80805FD8:
/* 80805FD8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80805FDC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80805FE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80805FE4  7C 08 03 A6 */	mtlr r0
/* 80805FE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80805FEC  4E 80 00 20 */	blr 
