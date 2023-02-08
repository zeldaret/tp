lbl_806F28C8:
/* 806F28C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F28CC  7C 08 02 A6 */	mflr r0
/* 806F28D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F28D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F28D8  93 C1 00 08 */	stw r30, 8(r1)
/* 806F28DC  7C 7F 1B 78 */	mr r31, r3
/* 806F28E0  3C 80 80 6F */	lis r4, lit_3767@ha /* 0x806F5514@ha */
/* 806F28E4  3B C4 55 14 */	addi r30, r4, lit_3767@l /* 0x806F5514@l */
/* 806F28E8  38 00 00 05 */	li r0, 5
/* 806F28EC  B0 03 06 B4 */	sth r0, 0x6b4(r3)
/* 806F28F0  A8 03 06 98 */	lha r0, 0x698(r3)
/* 806F28F4  28 00 00 0B */	cmplwi r0, 0xb
/* 806F28F8  41 81 01 2C */	bgt lbl_806F2A24
/* 806F28FC  3C 80 80 6F */	lis r4, lit_4500@ha /* 0x806F5684@ha */
/* 806F2900  38 84 56 84 */	addi r4, r4, lit_4500@l /* 0x806F5684@l */
/* 806F2904  54 00 10 3A */	slwi r0, r0, 2
/* 806F2908  7C 04 00 2E */	lwzx r0, r4, r0
/* 806F290C  7C 09 03 A6 */	mtctr r0
/* 806F2910  4E 80 04 20 */	bctr 
lbl_806F2914:
/* 806F2914  38 80 00 10 */	li r4, 0x10
/* 806F2918  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 806F291C  38 A0 00 00 */	li r5, 0
/* 806F2920  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806F2924  4B FF E4 4D */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F2928  38 00 00 01 */	li r0, 1
/* 806F292C  B0 1F 06 98 */	sth r0, 0x698(r31)
lbl_806F2930:
/* 806F2930  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F2934  38 80 00 01 */	li r4, 1
/* 806F2938  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F293C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F2940  40 82 00 18 */	bne lbl_806F2958
/* 806F2944  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806F2948  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F294C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F2950  41 82 00 08 */	beq lbl_806F2958
/* 806F2954  38 80 00 00 */	li r4, 0
lbl_806F2958:
/* 806F2958  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F295C  41 82 00 C8 */	beq lbl_806F2A24
/* 806F2960  7F E3 FB 78 */	mr r3, r31
/* 806F2964  38 80 00 11 */	li r4, 0x11
/* 806F2968  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806F296C  38 A0 00 02 */	li r5, 2
/* 806F2970  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806F2974  4B FF E3 FD */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F2978  38 00 00 3C */	li r0, 0x3c
/* 806F297C  B0 1F 06 AC */	sth r0, 0x6ac(r31)
/* 806F2980  38 00 00 02 */	li r0, 2
/* 806F2984  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 806F2988  48 00 00 9C */	b lbl_806F2A24
lbl_806F298C:
/* 806F298C  A8 1F 06 AC */	lha r0, 0x6ac(r31)
/* 806F2990  2C 00 00 00 */	cmpwi r0, 0
/* 806F2994  40 82 00 90 */	bne lbl_806F2A24
/* 806F2998  38 80 00 12 */	li r4, 0x12
/* 806F299C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 806F29A0  38 A0 00 00 */	li r5, 0
/* 806F29A4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806F29A8  4B FF E3 C9 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F29AC  38 00 00 03 */	li r0, 3
/* 806F29B0  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 806F29B4  48 00 00 70 */	b lbl_806F2A24
lbl_806F29B8:
/* 806F29B8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F29BC  38 80 00 01 */	li r4, 1
/* 806F29C0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F29C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F29C8  40 82 00 18 */	bne lbl_806F29E0
/* 806F29CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806F29D0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F29D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F29D8  41 82 00 08 */	beq lbl_806F29E0
/* 806F29DC  38 80 00 00 */	li r4, 0
lbl_806F29E0:
/* 806F29E0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F29E4  41 82 00 40 */	beq lbl_806F2A24
/* 806F29E8  38 00 00 00 */	li r0, 0
/* 806F29EC  B0 1F 06 96 */	sth r0, 0x696(r31)
/* 806F29F0  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 806F29F4  48 00 00 30 */	b lbl_806F2A24
lbl_806F29F8:
/* 806F29F8  38 80 00 16 */	li r4, 0x16
/* 806F29FC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806F2A00  38 A0 00 02 */	li r5, 2
/* 806F2A04  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806F2A08  4B FF E3 69 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F2A0C  38 00 00 0B */	li r0, 0xb
/* 806F2A10  B0 1F 06 98 */	sth r0, 0x698(r31)
lbl_806F2A14:
/* 806F2A14  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806F2A18  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806F2A1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806F2A20  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_806F2A24:
/* 806F2A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F2A28  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F2A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F2A30  7C 08 03 A6 */	mtlr r0
/* 806F2A34  38 21 00 10 */	addi r1, r1, 0x10
/* 806F2A38  4E 80 00 20 */	blr 
