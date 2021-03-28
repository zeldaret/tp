lbl_802AABF4:
/* 802AABF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AABF8  7C 08 02 A6 */	mflr r0
/* 802AABFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AAC00  80 04 00 00 */	lwz r0, 0(r4)
/* 802AAC04  90 01 00 08 */	stw r0, 8(r1)
/* 802AAC08  38 81 00 08 */	addi r4, r1, 8
/* 802AAC0C  38 E0 00 00 */	li r7, 0
/* 802AAC10  C0 22 BE 58 */	lfs f1, lit_3597(r2)
/* 802AAC14  C0 42 BE 5C */	lfs f2, lit_3598(r2)
/* 802AAC18  FC 60 10 90 */	fmr f3, f2
/* 802AAC1C  C0 82 BE 60 */	lfs f4, lit_3599(r2)
/* 802AAC20  FC A0 20 90 */	fmr f5, f4
/* 802AAC24  39 00 00 00 */	li r8, 0
/* 802AAC28  48 00 00 15 */	bl func_802AAC3C
/* 802AAC2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AAC30  7C 08 03 A6 */	mtlr r0
/* 802AAC34  38 21 00 10 */	addi r1, r1, 0x10
/* 802AAC38  4E 80 00 20 */	blr 
