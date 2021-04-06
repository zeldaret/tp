lbl_80B788F8:
/* 80B788F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B788FC  7C 08 02 A6 */	mflr r0
/* 80B78900  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B78904  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B78908  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B7890C  7C 7E 1B 78 */	mr r30, r3
/* 80B78910  7C 85 23 78 */	mr r5, r4
/* 80B78914  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B78918  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B7891C  38 61 00 18 */	addi r3, r1, 0x18
/* 80B78920  38 9E 00 14 */	addi r4, r30, 0x14
/* 80B78924  4B 6E E2 11 */	bl __mi__4cXyzCFRC3Vec
/* 80B78928  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B7892C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B78930  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B78934  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B78938  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B7893C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B78940  38 61 00 0C */	addi r3, r1, 0xc
/* 80B78944  4B 7C E7 F5 */	bl PSVECSquareMag
/* 80B78948  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B7894C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B78950  40 81 00 58 */	ble lbl_80B789A8
/* 80B78954  FC 00 08 34 */	frsqrte f0, f1
/* 80B78958  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B7895C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78960  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B78964  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78968  FC 01 00 32 */	fmul f0, f1, f0
/* 80B7896C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78970  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78974  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78978  FC 00 00 32 */	fmul f0, f0, f0
/* 80B7897C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78980  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78984  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78988  FC 44 00 32 */	fmul f2, f4, f0
/* 80B7898C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78990  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78994  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78998  FC 02 00 32 */	fmul f0, f2, f0
/* 80B7899C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B789A0  FC 20 08 18 */	frsp f1, f1
/* 80B789A4  48 00 00 88 */	b lbl_80B78A2C
lbl_80B789A8:
/* 80B789A8  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B789AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B789B0  40 80 00 10 */	bge lbl_80B789C0
/* 80B789B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B789B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B789BC  48 00 00 70 */	b lbl_80B78A2C
lbl_80B789C0:
/* 80B789C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B789C4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B789C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B789CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B789D0  7C 03 00 00 */	cmpw r3, r0
/* 80B789D4  41 82 00 14 */	beq lbl_80B789E8
/* 80B789D8  40 80 00 40 */	bge lbl_80B78A18
/* 80B789DC  2C 03 00 00 */	cmpwi r3, 0
/* 80B789E0  41 82 00 20 */	beq lbl_80B78A00
/* 80B789E4  48 00 00 34 */	b lbl_80B78A18
lbl_80B789E8:
/* 80B789E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B789EC  41 82 00 0C */	beq lbl_80B789F8
/* 80B789F0  38 00 00 01 */	li r0, 1
/* 80B789F4  48 00 00 28 */	b lbl_80B78A1C
lbl_80B789F8:
/* 80B789F8  38 00 00 02 */	li r0, 2
/* 80B789FC  48 00 00 20 */	b lbl_80B78A1C
lbl_80B78A00:
/* 80B78A00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B78A04  41 82 00 0C */	beq lbl_80B78A10
/* 80B78A08  38 00 00 05 */	li r0, 5
/* 80B78A0C  48 00 00 10 */	b lbl_80B78A1C
lbl_80B78A10:
/* 80B78A10  38 00 00 03 */	li r0, 3
/* 80B78A14  48 00 00 08 */	b lbl_80B78A1C
lbl_80B78A18:
/* 80B78A18  38 00 00 04 */	li r0, 4
lbl_80B78A1C:
/* 80B78A1C  2C 00 00 01 */	cmpwi r0, 1
/* 80B78A20  40 82 00 0C */	bne lbl_80B78A2C
/* 80B78A24  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B78A28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B78A2C:
/* 80B78A2C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80B78A30  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80B78A34  EC 02 00 2A */	fadds f0, f2, f0
/* 80B78A38  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B78A3C  4C 40 13 82 */	cror 2, 0, 2
/* 80B78A40  7C 00 00 26 */	mfcr r0
/* 80B78A44  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 80B78A48  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B78A4C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B78A50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B78A54  7C 08 03 A6 */	mtlr r0
/* 80B78A58  38 21 00 30 */	addi r1, r1, 0x30
/* 80B78A5C  4E 80 00 20 */	blr 
