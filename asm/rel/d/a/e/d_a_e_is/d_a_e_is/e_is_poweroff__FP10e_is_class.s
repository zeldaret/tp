lbl_806F67B0:
/* 806F67B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F67B4  7C 08 02 A6 */	mflr r0
/* 806F67B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F67BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F67C0  93 C1 00 08 */	stw r30, 8(r1)
/* 806F67C4  7C 7E 1B 78 */	mr r30, r3
/* 806F67C8  3C 60 80 6F */	lis r3, lit_3648@ha
/* 806F67CC  3B E3 7B 6C */	addi r31, r3, lit_3648@l
/* 806F67D0  38 00 00 05 */	li r0, 5
/* 806F67D4  B0 1E 06 BA */	sth r0, 0x6ba(r30)
/* 806F67D8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806F67DC  54 00 00 3E */	slwi r0, r0, 0
/* 806F67E0  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806F67E4  38 00 00 00 */	li r0, 0
/* 806F67E8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806F67EC  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 806F67F0  2C 00 00 01 */	cmpwi r0, 1
/* 806F67F4  41 82 00 48 */	beq lbl_806F683C
/* 806F67F8  40 80 00 10 */	bge lbl_806F6808
/* 806F67FC  2C 00 00 00 */	cmpwi r0, 0
/* 806F6800  40 80 00 14 */	bge lbl_806F6814
/* 806F6804  48 00 00 D4 */	b lbl_806F68D8
lbl_806F6808:
/* 806F6808  2C 00 00 0A */	cmpwi r0, 0xa
/* 806F680C  41 82 00 CC */	beq lbl_806F68D8
/* 806F6810  48 00 00 C8 */	b lbl_806F68D8
lbl_806F6814:
/* 806F6814  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806F6818  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 806F681C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 806F6820  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 806F6824  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 806F6828  38 00 00 41 */	li r0, 0x41
/* 806F682C  B0 1E 06 B0 */	sth r0, 0x6b0(r30)
/* 806F6830  38 00 00 01 */	li r0, 1
/* 806F6834  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F6838  48 00 00 A0 */	b lbl_806F68D8
lbl_806F683C:
/* 806F683C  A8 1E 06 B0 */	lha r0, 0x6b0(r30)
/* 806F6840  2C 00 00 00 */	cmpwi r0, 0
/* 806F6844  40 82 00 94 */	bne lbl_806F68D8
/* 806F6848  38 00 00 0A */	li r0, 0xa
/* 806F684C  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F6850  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 806F6854  28 00 00 00 */	cmplwi r0, 0
/* 806F6858  40 82 00 30 */	bne lbl_806F6888
/* 806F685C  3C 60 80 6F */	lis r3, s_stop_sub__FPvPv@ha
/* 806F6860  38 63 5E B4 */	addi r3, r3, s_stop_sub__FPvPv@l
/* 806F6864  7F C4 F3 78 */	mr r4, r30
/* 806F6868  4B 92 AA D0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 806F686C  28 03 00 00 */	cmplwi r3, 0
/* 806F6870  41 82 00 68 */	beq lbl_806F68D8
/* 806F6874  38 00 00 0B */	li r0, 0xb
/* 806F6878  B0 1E 06 92 */	sth r0, 0x692(r30)
/* 806F687C  38 00 00 00 */	li r0, 0
/* 806F6880  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F6884  48 00 00 54 */	b lbl_806F68D8
lbl_806F6888:
/* 806F6888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F688C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F6890  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 806F6894  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806F6898  7C 05 07 74 */	extsb r5, r0
/* 806F689C  4B 93 E9 64 */	b onSwitch__10dSv_info_cFii
/* 806F68A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F68A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F68A8  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 806F68AC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806F68B0  7C 05 07 74 */	extsb r5, r0
/* 806F68B4  4B 93 E9 4C */	b onSwitch__10dSv_info_cFii
/* 806F68B8  80 9E 06 C0 */	lwz r4, 0x6c0(r30)
/* 806F68BC  2C 04 00 FF */	cmpwi r4, 0xff
/* 806F68C0  41 82 00 18 */	beq lbl_806F68D8
/* 806F68C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F68C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F68CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806F68D0  7C 05 07 74 */	extsb r5, r0
/* 806F68D4  4B 93 E9 2C */	b onSwitch__10dSv_info_cFii
lbl_806F68D8:
/* 806F68D8  38 7E 06 74 */	addi r3, r30, 0x674
/* 806F68DC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806F68E0  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806F68E4  4B B7 91 9C */	b cLib_addCalc0__FPfff
/* 806F68E8  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 806F68EC  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 806F68F0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806F68F4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806F68F8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806F68FC  FC 40 08 90 */	fmr f2, f1
/* 806F6900  4B B7 91 80 */	b cLib_addCalc0__FPfff
/* 806F6904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F6908  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F690C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F6910  7C 08 03 A6 */	mtlr r0
/* 806F6914  38 21 00 10 */	addi r1, r1, 0x10
/* 806F6918  4E 80 00 20 */	blr 
