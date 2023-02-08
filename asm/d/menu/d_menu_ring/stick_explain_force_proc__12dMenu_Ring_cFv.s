lbl_801EDA0C:
/* 801EDA0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801EDA10  7C 08 02 A6 */	mflr r0
/* 801EDA14  90 01 00 34 */	stw r0, 0x34(r1)
/* 801EDA18  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801EDA1C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801EDA20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801EDA24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801EDA28  7C 7E 1B 78 */	mr r30, r3
/* 801EDA2C  80 63 03 70 */	lwz r3, 0x370(r3)
/* 801EDA30  4B FE DA 41 */	bl move__19dMenu_ItemExplain_cFv
/* 801EDA34  80 7E 03 70 */	lwz r3, 0x370(r30)
/* 801EDA38  88 03 00 E3 */	lbz r0, 0xe3(r3)
/* 801EDA3C  28 00 00 01 */	cmplwi r0, 1
/* 801EDA40  40 82 00 14 */	bne lbl_801EDA54
/* 801EDA44  7F C3 F3 78 */	mr r3, r30
/* 801EDA48  88 9E 06 B3 */	lbz r4, 0x6b3(r30)
/* 801EDA4C  48 00 0B F9 */	bl setCombineBomb__12dMenu_Ring_cFi
/* 801EDA50  48 00 00 60 */	b lbl_801EDAB0
lbl_801EDA54:
/* 801EDA54  28 00 00 02 */	cmplwi r0, 2
/* 801EDA58  40 82 00 58 */	bne lbl_801EDAB0
/* 801EDA5C  7F C3 F3 78 */	mr r3, r30
/* 801EDA60  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EDA64  7C 9E 02 14 */	add r4, r30, r0
/* 801EDA68  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EDA6C  48 00 06 F1 */	bl getItemMaxNum__12dMenu_Ring_cFUc
/* 801EDA70  7C 7F 1B 78 */	mr r31, r3
/* 801EDA74  7F C3 F3 78 */	mr r3, r30
/* 801EDA78  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EDA7C  7C 9E 02 14 */	add r4, r30, r0
/* 801EDA80  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EDA84  48 00 05 D5 */	bl getItemNum__12dMenu_Ring_cFUc
/* 801EDA88  7C 65 1B 78 */	mr r5, r3
/* 801EDA8C  80 7E 03 70 */	lwz r3, 0x370(r30)
/* 801EDA90  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EDA94  7C 9E 02 14 */	add r4, r30, r0
/* 801EDA98  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EDA9C  7F E6 FB 78 */	mr r6, r31
/* 801EDAA0  38 E0 00 01 */	li r7, 1
/* 801EDAA4  4B FE E8 9D */	bl openExplain__19dMenu_ItemExplain_cFUcUcUcb
/* 801EDAA8  38 00 00 00 */	li r0, 0
/* 801EDAAC  98 1E 06 B0 */	stb r0, 0x6b0(r30)
lbl_801EDAB0:
/* 801EDAB0  80 7E 03 70 */	lwz r3, 0x370(r30)
/* 801EDAB4  4B FE EC F9 */	bl getAlphaRatio__19dMenu_ItemExplain_cFv
/* 801EDAB8  FF E0 08 90 */	fmr f31, f1
/* 801EDABC  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 801EDAC0  48 06 7D 11 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801EDAC4  80 7E 01 B8 */	lwz r3, 0x1b8(r30)
/* 801EDAC8  C0 22 AA 10 */	lfs f1, lit_5683(r2)
/* 801EDACC  C0 02 A9 9C */	lfs f0, lit_4305(r2)
/* 801EDAD0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801EDAD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801EDAD8  FC 00 00 1E */	fctiwz f0, f0
/* 801EDADC  D8 01 00 08 */	stfd f0, 8(r1)
/* 801EDAE0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801EDAE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EDAE8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801EDAEC  7D 89 03 A6 */	mtctr r12
/* 801EDAF0  4E 80 04 21 */	bctrl 
/* 801EDAF4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801EDAF8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801EDAFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801EDB00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801EDB04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801EDB08  7C 08 03 A6 */	mtlr r0
/* 801EDB0C  38 21 00 30 */	addi r1, r1, 0x30
/* 801EDB10  4E 80 00 20 */	blr 
