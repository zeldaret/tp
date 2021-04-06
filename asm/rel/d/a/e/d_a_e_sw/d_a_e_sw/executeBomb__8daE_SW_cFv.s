lbl_807A9580:
/* 807A9580  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807A9584  7C 08 02 A6 */	mflr r0
/* 807A9588  90 01 00 34 */	stw r0, 0x34(r1)
/* 807A958C  39 61 00 30 */	addi r11, r1, 0x30
/* 807A9590  4B BB 8C 4D */	bl _savegpr_29
/* 807A9594  7C 7E 1B 78 */	mr r30, r3
/* 807A9598  3C 80 80 7B */	lis r4, lit_3909@ha /* 0x807AFD2C@ha */
/* 807A959C  3B E4 FD 2C */	addi r31, r4, lit_3909@l /* 0x807AFD2C@l */
/* 807A95A0  4B FF E3 15 */	bl setSmokeEffect__8daE_SW_cFv
/* 807A95A4  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 807A95A8  2C 00 00 00 */	cmpwi r0, 0
/* 807A95AC  41 82 00 0C */	beq lbl_807A95B8
/* 807A95B0  7F C3 F3 78 */	mr r3, r30
/* 807A95B4  4B FF E1 31 */	bl setBeforeJumpEffect__8daE_SW_cFv
lbl_807A95B8:
/* 807A95B8  38 00 00 00 */	li r0, 0
/* 807A95BC  90 01 00 08 */	stw r0, 8(r1)
/* 807A95C0  80 7E 06 88 */	lwz r3, 0x688(r30)
/* 807A95C4  38 81 00 08 */	addi r4, r1, 8
/* 807A95C8  4B 87 03 F5 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 807A95CC  80 81 00 08 */	lwz r4, 8(r1)
/* 807A95D0  28 04 00 00 */	cmplwi r4, 0
/* 807A95D4  41 82 00 10 */	beq lbl_807A95E4
/* 807A95D8  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 807A95DC  28 00 00 00 */	cmplwi r0, 0
/* 807A95E0  40 82 00 18 */	bne lbl_807A95F8
lbl_807A95E4:
/* 807A95E4  7F C3 F3 78 */	mr r3, r30
/* 807A95E8  38 80 00 00 */	li r4, 0
/* 807A95EC  38 A0 00 00 */	li r5, 0
/* 807A95F0  4B FF E5 75 */	bl setActionMode__8daE_SW_cFss
/* 807A95F4  48 00 01 5C */	b lbl_807A9750
lbl_807A95F8:
/* 807A95F8  7F C3 F3 78 */	mr r3, r30
/* 807A95FC  4B 87 11 15 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A9600  7C 7D 1B 78 */	mr r29, r3
/* 807A9604  7F C3 F3 78 */	mr r3, r30
/* 807A9608  4B FF E7 41 */	bl setModeBack__8daE_SW_cFv
/* 807A960C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A9610  40 82 01 40 */	bne lbl_807A9750
/* 807A9614  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807A9618  2C 00 00 02 */	cmpwi r0, 2
/* 807A961C  41 82 00 98 */	beq lbl_807A96B4
/* 807A9620  40 80 00 14 */	bge lbl_807A9634
/* 807A9624  2C 00 00 00 */	cmpwi r0, 0
/* 807A9628  41 82 00 18 */	beq lbl_807A9640
/* 807A962C  40 80 00 34 */	bge lbl_807A9660
/* 807A9630  48 00 00 F0 */	b lbl_807A9720
lbl_807A9634:
/* 807A9634  2C 00 00 04 */	cmpwi r0, 4
/* 807A9638  40 80 00 E8 */	bge lbl_807A9720
/* 807A963C  48 00 00 98 */	b lbl_807A96D4
lbl_807A9640:
/* 807A9640  7F C3 F3 78 */	mr r3, r30
/* 807A9644  38 80 00 0C */	li r4, 0xc
/* 807A9648  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807A964C  38 A0 00 02 */	li r5, 2
/* 807A9650  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A9654  4B FF DE 0D */	bl bckSet__8daE_SW_cFifUcf
/* 807A9658  38 00 00 01 */	li r0, 1
/* 807A965C  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807A9660:
/* 807A9660  80 81 00 08 */	lwz r4, 8(r1)
/* 807A9664  C0 24 05 2C */	lfs f1, 0x52c(r4)
/* 807A9668  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807A966C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A9670  40 80 00 B0 */	bge lbl_807A9720
/* 807A9674  7F C3 F3 78 */	mr r3, r30
/* 807A9678  4B 87 11 69 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A967C  3C 60 80 7B */	lis r3, l_HIO@ha /* 0x807B0210@ha */
/* 807A9680  38 63 02 10 */	addi r3, r3, l_HIO@l /* 0x807B0210@l */
/* 807A9684  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 807A9688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A968C  40 80 00 94 */	bge lbl_807A9720
/* 807A9690  38 00 00 02 */	li r0, 2
/* 807A9694  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A9698  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807A969C  4B AB E2 B9 */	bl cM_rndF__Ff
/* 807A96A0  FC 00 08 1E */	fctiwz f0, f1
/* 807A96A4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807A96A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A96AC  B0 1E 06 EA */	sth r0, 0x6ea(r30)
/* 807A96B0  48 00 00 70 */	b lbl_807A9720
lbl_807A96B4:
/* 807A96B4  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 807A96B8  2C 00 00 00 */	cmpwi r0, 0
/* 807A96BC  40 82 00 64 */	bne lbl_807A9720
/* 807A96C0  38 00 00 03 */	li r0, 3
/* 807A96C4  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A96C8  38 00 00 0A */	li r0, 0xa
/* 807A96CC  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 807A96D0  48 00 00 50 */	b lbl_807A9720
lbl_807A96D4:
/* 807A96D4  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 807A96D8  2C 00 00 00 */	cmpwi r0, 0
/* 807A96DC  40 82 00 44 */	bne lbl_807A9720
/* 807A96E0  80 61 00 08 */	lwz r3, 8(r1)
/* 807A96E4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807A96E8  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 807A96EC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807A96F0  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 807A96F4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807A96F8  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 807A96FC  B3 BE 04 E6 */	sth r29, 0x4e6(r30)
/* 807A9700  B3 BE 04 DE */	sth r29, 0x4de(r30)
/* 807A9704  7F C3 F3 78 */	mr r3, r30
/* 807A9708  38 80 00 03 */	li r4, 3
/* 807A970C  38 A0 00 00 */	li r5, 0
/* 807A9710  4B FF E4 55 */	bl setActionMode__8daE_SW_cFss
/* 807A9714  38 00 00 01 */	li r0, 1
/* 807A9718  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 807A971C  48 00 00 34 */	b lbl_807A9750
lbl_807A9720:
/* 807A9720  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807A9724  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807A9728  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A972C  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 807A9730  4B AC 63 0D */	bl cLib_addCalc2__FPffff
/* 807A9734  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807A9738  7F A4 EB 78 */	mr r4, r29
/* 807A973C  38 A0 00 08 */	li r5, 8
/* 807A9740  38 C0 04 00 */	li r6, 0x400
/* 807A9744  4B AC 6E C5 */	bl cLib_addCalcAngleS2__FPssss
/* 807A9748  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807A974C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_807A9750:
/* 807A9750  39 61 00 30 */	addi r11, r1, 0x30
/* 807A9754  4B BB 8A D5 */	bl _restgpr_29
/* 807A9758  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807A975C  7C 08 03 A6 */	mtlr r0
/* 807A9760  38 21 00 30 */	addi r1, r1, 0x30
/* 807A9764  4E 80 00 20 */	blr 
