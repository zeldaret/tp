lbl_8067F81C:
/* 8067F81C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8067F820  7C 08 02 A6 */	mflr r0
/* 8067F824  90 01 00 24 */	stw r0, 0x24(r1)
/* 8067F828  39 61 00 20 */	addi r11, r1, 0x20
/* 8067F82C  4B CE 29 B1 */	bl _savegpr_29
/* 8067F830  7C 7F 1B 78 */	mr r31, r3
/* 8067F834  3C 80 80 68 */	lis r4, lit_3947@ha /* 0x806823BC@ha */
/* 8067F838  3B C4 23 BC */	addi r30, r4, lit_3947@l /* 0x806823BC@l */
/* 8067F83C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067F840  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067F844  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 8067F848  A8 03 06 74 */	lha r0, 0x674(r3)
/* 8067F84C  2C 00 00 01 */	cmpwi r0, 1
/* 8067F850  41 82 00 3C */	beq lbl_8067F88C
/* 8067F854  40 80 00 80 */	bge lbl_8067F8D4
/* 8067F858  2C 00 00 00 */	cmpwi r0, 0
/* 8067F85C  40 80 00 08 */	bge lbl_8067F864
/* 8067F860  48 00 00 74 */	b lbl_8067F8D4
lbl_8067F864:
/* 8067F864  38 80 00 06 */	li r4, 6
/* 8067F868  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8067F86C  38 A0 00 02 */	li r5, 2
/* 8067F870  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8067F874  4B FF F5 1D */	bl anm_init__FP10e_ba_classifUcf
/* 8067F878  38 00 00 01 */	li r0, 1
/* 8067F87C  B0 1F 06 74 */	sth r0, 0x674(r31)
/* 8067F880  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8067F884  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 8067F888  48 00 00 4C */	b lbl_8067F8D4
lbl_8067F88C:
/* 8067F88C  A8 1F 06 70 */	lha r0, 0x670(r31)
/* 8067F890  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8067F894  40 82 00 40 */	bne lbl_8067F8D4
/* 8067F898  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8067F89C  4B BE 80 B9 */	bl cM_rndF__Ff
/* 8067F8A0  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8067F8A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067F8A8  40 80 00 2C */	bge lbl_8067F8D4
/* 8067F8AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B3@ha */
/* 8067F8B0  38 03 00 B3 */	addi r0, r3, 0x00B3 /* 0x000700B3@l */
/* 8067F8B4  90 01 00 08 */	stw r0, 8(r1)
/* 8067F8B8  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 8067F8BC  38 81 00 08 */	addi r4, r1, 8
/* 8067F8C0  38 A0 FF FF */	li r5, -1
/* 8067F8C4  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 8067F8C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8067F8CC  7D 89 03 A6 */	mtctr r12
/* 8067F8D0  4E 80 04 21 */	bctrl 
lbl_8067F8D4:
/* 8067F8D4  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x80682648@ha */
/* 8067F8D8  38 63 26 48 */	addi r3, r3, l_HIO@l /* 0x80682648@l */
/* 8067F8DC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8067F8E0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8067F8E4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8067F8E8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8067F8EC  EC 60 00 72 */	fmuls f3, f0, f1
/* 8067F8F0  4B BF 01 4D */	bl cLib_addCalc2__FPffff
/* 8067F8F4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8067F8F8  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 8067F8FC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8067F900  D0 1F 06 7C */	stfs f0, 0x67c(r31)
/* 8067F904  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8067F908  D0 1F 06 80 */	stfs f0, 0x680(r31)
/* 8067F90C  7F E3 FB 78 */	mr r3, r31
/* 8067F910  4B FF FC 35 */	bl fly_move__FP10e_ba_class
/* 8067F914  7F E3 FB 78 */	mr r3, r31
/* 8067F918  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8067F91C  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 8067F920  EC 21 00 2A */	fadds f1, f1, f0
/* 8067F924  38 80 00 01 */	li r4, 1
/* 8067F928  4B FF F6 D1 */	bl pl_check__FP10e_ba_classfs
/* 8067F92C  2C 03 00 00 */	cmpwi r3, 0
/* 8067F930  40 82 00 68 */	bne lbl_8067F998
/* 8067F934  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8067F938  28 00 00 02 */	cmplwi r0, 2
/* 8067F93C  41 82 00 8C */	beq lbl_8067F9C8
/* 8067F940  7F E3 FB 78 */	mr r3, r31
/* 8067F944  4B FF F9 99 */	bl path_check__FP10e_ba_class
/* 8067F948  2C 03 00 00 */	cmpwi r3, 0
/* 8067F94C  40 82 00 38 */	bne lbl_8067F984
/* 8067F950  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8067F954  28 00 00 00 */	cmplwi r0, 0
/* 8067F958  40 82 00 18 */	bne lbl_8067F970
/* 8067F95C  38 00 00 04 */	li r0, 4
/* 8067F960  B0 1F 06 72 */	sth r0, 0x672(r31)
/* 8067F964  38 00 00 00 */	li r0, 0
/* 8067F968  B0 1F 06 74 */	sth r0, 0x674(r31)
/* 8067F96C  48 00 00 5C */	b lbl_8067F9C8
lbl_8067F970:
/* 8067F970  38 00 00 05 */	li r0, 5
/* 8067F974  B0 1F 06 72 */	sth r0, 0x672(r31)
/* 8067F978  38 00 00 00 */	li r0, 0
/* 8067F97C  B0 1F 06 74 */	sth r0, 0x674(r31)
/* 8067F980  48 00 00 48 */	b lbl_8067F9C8
lbl_8067F984:
/* 8067F984  38 00 00 06 */	li r0, 6
/* 8067F988  B0 1F 06 72 */	sth r0, 0x672(r31)
/* 8067F98C  38 00 00 00 */	li r0, 0
/* 8067F990  B0 1F 06 74 */	sth r0, 0x674(r31)
/* 8067F994  48 00 00 34 */	b lbl_8067F9C8
lbl_8067F998:
/* 8067F998  7F E3 FB 78 */	mr r3, r31
/* 8067F99C  3C 80 80 68 */	lis r4, l_HIO@ha /* 0x80682648@ha */
/* 8067F9A0  38 84 26 48 */	addi r4, r4, l_HIO@l /* 0x80682648@l */
/* 8067F9A4  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8067F9A8  38 80 00 01 */	li r4, 1
/* 8067F9AC  4B FF F6 4D */	bl pl_check__FP10e_ba_classfs
/* 8067F9B0  2C 03 00 00 */	cmpwi r3, 0
/* 8067F9B4  41 82 00 14 */	beq lbl_8067F9C8
/* 8067F9B8  38 00 00 02 */	li r0, 2
/* 8067F9BC  B0 1F 06 72 */	sth r0, 0x672(r31)
/* 8067F9C0  38 00 00 00 */	li r0, 0
/* 8067F9C4  B0 1F 06 74 */	sth r0, 0x674(r31)
lbl_8067F9C8:
/* 8067F9C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8067F9CC  4B CE 28 5D */	bl _restgpr_29
/* 8067F9D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067F9D4  7C 08 03 A6 */	mtlr r0
/* 8067F9D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8067F9DC  4E 80 00 20 */	blr 
