lbl_806F691C:
/* 806F691C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F6920  7C 08 02 A6 */	mflr r0
/* 806F6924  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F6928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F692C  93 C1 00 08 */	stw r30, 8(r1)
/* 806F6930  7C 7E 1B 78 */	mr r30, r3
/* 806F6934  3C 80 80 6F */	lis r4, lit_3648@ha
/* 806F6938  3B E4 7B 6C */	addi r31, r4, lit_3648@l
/* 806F693C  A8 03 06 94 */	lha r0, 0x694(r3)
/* 806F6940  2C 00 00 01 */	cmpwi r0, 1
/* 806F6944  41 82 00 54 */	beq lbl_806F6998
/* 806F6948  40 80 00 C8 */	bge lbl_806F6A10
/* 806F694C  2C 00 00 00 */	cmpwi r0, 0
/* 806F6950  40 80 00 08 */	bge lbl_806F6958
/* 806F6954  48 00 00 BC */	b lbl_806F6A10
lbl_806F6958:
/* 806F6958  88 1E 06 BC */	lbz r0, 0x6bc(r30)
/* 806F695C  7C 00 07 75 */	extsb. r0, r0
/* 806F6960  41 82 00 1C */	beq lbl_806F697C
/* 806F6964  38 80 00 06 */	li r4, 6
/* 806F6968  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806F696C  38 A0 00 00 */	li r5, 0
/* 806F6970  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F6974  4B FF F1 21 */	bl anm_init__FP10e_is_classifUcf
/* 806F6978  48 00 00 18 */	b lbl_806F6990
lbl_806F697C:
/* 806F697C  38 80 00 05 */	li r4, 5
/* 806F6980  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806F6984  38 A0 00 00 */	li r5, 0
/* 806F6988  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F698C  4B FF F1 09 */	bl anm_init__FP10e_is_classifUcf
lbl_806F6990:
/* 806F6990  38 00 00 01 */	li r0, 1
/* 806F6994  B0 1E 06 94 */	sth r0, 0x694(r30)
lbl_806F6998:
/* 806F6998  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 806F699C  38 80 00 01 */	li r4, 1
/* 806F69A0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F69A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F69A8  40 82 00 18 */	bne lbl_806F69C0
/* 806F69AC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806F69B0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F69B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F69B8  41 82 00 08 */	beq lbl_806F69C0
/* 806F69BC  38 80 00 00 */	li r4, 0
lbl_806F69C0:
/* 806F69C0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F69C4  41 82 00 4C */	beq lbl_806F6A10
/* 806F69C8  88 1E 06 BC */	lbz r0, 0x6bc(r30)
/* 806F69CC  7C 00 07 75 */	extsb. r0, r0
/* 806F69D0  41 82 00 30 */	beq lbl_806F6A00
/* 806F69D4  38 00 00 04 */	li r0, 4
/* 806F69D8  B0 1E 06 92 */	sth r0, 0x692(r30)
/* 806F69DC  7F C3 F3 78 */	mr r3, r30
/* 806F69E0  38 80 00 0D */	li r4, 0xd
/* 806F69E4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 806F69E8  38 A0 00 02 */	li r5, 2
/* 806F69EC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F69F0  4B FF F0 A5 */	bl anm_init__FP10e_is_classifUcf
/* 806F69F4  38 00 00 02 */	li r0, 2
/* 806F69F8  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F69FC  48 00 00 14 */	b lbl_806F6A10
lbl_806F6A00:
/* 806F6A00  38 00 00 01 */	li r0, 1
/* 806F6A04  B0 1E 06 92 */	sth r0, 0x692(r30)
/* 806F6A08  38 00 00 00 */	li r0, 0
/* 806F6A0C  B0 1E 06 94 */	sth r0, 0x694(r30)
lbl_806F6A10:
/* 806F6A10  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806F6A14  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806F6A18  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 806F6A1C  4B B7 90 64 */	b cLib_addCalc0__FPfff
/* 806F6A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F6A24  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F6A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F6A2C  7C 08 03 A6 */	mtlr r0
/* 806F6A30  38 21 00 10 */	addi r1, r1, 0x10
/* 806F6A34  4E 80 00 20 */	blr 
