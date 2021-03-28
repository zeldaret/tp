lbl_8070E760:
/* 8070E760  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8070E764  7C 08 02 A6 */	mflr r0
/* 8070E768  90 01 00 54 */	stw r0, 0x54(r1)
/* 8070E76C  39 61 00 50 */	addi r11, r1, 0x50
/* 8070E770  4B C5 3A 6C */	b _savegpr_29
/* 8070E774  7C 7E 1B 78 */	mr r30, r3
/* 8070E778  3C 80 80 71 */	lis r4, lit_3828@ha
/* 8070E77C  3B E4 39 74 */	addi r31, r4, lit_3828@l
/* 8070E780  80 83 05 DC */	lwz r4, 0x5dc(r3)
/* 8070E784  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8070E788  FC 00 00 1E */	fctiwz f0, f0
/* 8070E78C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8070E790  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8070E794  38 00 00 01 */	li r0, 1
/* 8070E798  98 03 06 D4 */	stb r0, 0x6d4(r3)
/* 8070E79C  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8070E7A0  2C 00 00 01 */	cmpwi r0, 1
/* 8070E7A4  41 82 00 48 */	beq lbl_8070E7EC
/* 8070E7A8  40 80 02 0C */	bge lbl_8070E9B4
/* 8070E7AC  2C 00 00 00 */	cmpwi r0, 0
/* 8070E7B0  40 80 00 08 */	bge lbl_8070E7B8
/* 8070E7B4  48 00 02 00 */	b lbl_8070E9B4
lbl_8070E7B8:
/* 8070E7B8  38 80 00 08 */	li r4, 8
/* 8070E7BC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070E7C0  38 A0 00 00 */	li r5, 0
/* 8070E7C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070E7C8  4B FF C0 65 */	bl anm_init__FP10e_mf_classifUcf
/* 8070E7CC  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8070E7D0  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070E7D4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8070E7D8  38 00 00 01 */	li r0, 1
/* 8070E7DC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070E7E0  38 00 00 00 */	li r0, 0
/* 8070E7E4  B0 1E 06 C2 */	sth r0, 0x6c2(r30)
/* 8070E7E8  48 00 01 CC */	b lbl_8070E9B4
lbl_8070E7EC:
/* 8070E7EC  4B FF FD F5 */	bl tail_eff_set__FP10e_mf_class
/* 8070E7F0  2C 1D 00 21 */	cmpwi r29, 0x21
/* 8070E7F4  41 80 00 78 */	blt lbl_8070E86C
/* 8070E7F8  2C 1D 00 29 */	cmpwi r29, 0x29
/* 8070E7FC  41 81 00 70 */	bgt lbl_8070E86C
/* 8070E800  38 00 00 01 */	li r0, 1
/* 8070E804  98 1E 06 CF */	stb r0, 0x6cf(r30)
/* 8070E808  38 00 00 02 */	li r0, 2
/* 8070E80C  98 1E 06 CE */	stb r0, 0x6ce(r30)
/* 8070E810  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8070E814  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8070E818  80 63 00 00 */	lwz r3, 0(r3)
/* 8070E81C  A8 9E 06 B4 */	lha r4, 0x6b4(r30)
/* 8070E820  4B 8F DB BC */	b mDoMtx_YrotS__FPA4_fs
/* 8070E824  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070E828  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8070E82C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8070E830  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8070E834  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8070E838  38 61 00 20 */	addi r3, r1, 0x20
/* 8070E83C  38 81 00 14 */	addi r4, r1, 0x14
/* 8070E840  4B B6 26 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 8070E844  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8070E848  38 81 00 14 */	addi r4, r1, 0x14
/* 8070E84C  7C 65 1B 78 */	mr r5, r3
/* 8070E850  4B C3 88 40 */	b PSVECAdd
/* 8070E854  7F C3 F3 78 */	mr r3, r30
/* 8070E858  4B FF FA B5 */	bl at_hit_check__FP10e_mf_class
/* 8070E85C  28 03 00 00 */	cmplwi r3, 0
/* 8070E860  41 82 00 0C */	beq lbl_8070E86C
/* 8070E864  38 00 00 50 */	li r0, 0x50
/* 8070E868  B0 1E 06 C2 */	sth r0, 0x6c2(r30)
lbl_8070E86C:
/* 8070E86C  A8 1E 06 C2 */	lha r0, 0x6c2(r30)
/* 8070E870  2C 00 00 00 */	cmpwi r0, 0
/* 8070E874  41 82 00 7C */	beq lbl_8070E8F0
/* 8070E878  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070E87C  38 63 00 0C */	addi r3, r3, 0xc
/* 8070E880  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 8070E884  4B C1 9B A8 */	b checkPass__12J3DFrameCtrlFf
/* 8070E888  2C 03 00 00 */	cmpwi r3, 0
/* 8070E88C  41 82 00 64 */	beq lbl_8070E8F0
/* 8070E890  38 00 00 05 */	li r0, 5
/* 8070E894  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070E898  38 00 00 01 */	li r0, 1
/* 8070E89C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070E8A0  7F C3 F3 78 */	mr r3, r30
/* 8070E8A4  38 80 00 05 */	li r4, 5
/* 8070E8A8  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8070E8AC  38 A0 00 00 */	li r5, 0
/* 8070E8B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070E8B4  4B FF BF 79 */	bl anm_init__FP10e_mf_classifUcf
/* 8070E8B8  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8070E8BC  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070E8C0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8070E8C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703DB@ha */
/* 8070E8C8  38 03 03 DB */	addi r0, r3, 0x03DB /* 0x000703DB@l */
/* 8070E8CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8070E8D0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070E8D4  38 81 00 10 */	addi r4, r1, 0x10
/* 8070E8D8  38 A0 FF FF */	li r5, -1
/* 8070E8DC  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070E8E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070E8E4  7D 89 03 A6 */	mtctr r12
/* 8070E8E8  4E 80 04 21 */	bctrl 
/* 8070E8EC  48 00 01 0C */	b lbl_8070E9F8
lbl_8070E8F0:
/* 8070E8F0  2C 1D 00 28 */	cmpwi r29, 0x28
/* 8070E8F4  40 82 00 34 */	bne lbl_8070E928
/* 8070E8F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D7@ha */
/* 8070E8FC  38 03 03 D7 */	addi r0, r3, 0x03D7 /* 0x000703D7@l */
/* 8070E900  90 01 00 0C */	stw r0, 0xc(r1)
/* 8070E904  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070E908  38 81 00 0C */	addi r4, r1, 0xc
/* 8070E90C  38 A0 00 00 */	li r5, 0
/* 8070E910  38 C0 FF FF */	li r6, -1
/* 8070E914  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070E918  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8070E91C  7D 89 03 A6 */	mtctr r12
/* 8070E920  4E 80 04 21 */	bctrl 
/* 8070E924  48 00 00 38 */	b lbl_8070E95C
lbl_8070E928:
/* 8070E928  2C 1D 00 2B */	cmpwi r29, 0x2b
/* 8070E92C  40 82 00 30 */	bne lbl_8070E95C
/* 8070E930  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D6@ha */
/* 8070E934  38 03 03 D6 */	addi r0, r3, 0x03D6 /* 0x000703D6@l */
/* 8070E938  90 01 00 08 */	stw r0, 8(r1)
/* 8070E93C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070E940  38 81 00 08 */	addi r4, r1, 8
/* 8070E944  38 A0 00 00 */	li r5, 0
/* 8070E948  38 C0 FF FF */	li r6, -1
/* 8070E94C  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070E950  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8070E954  7D 89 03 A6 */	mtctr r12
/* 8070E958  4E 80 04 21 */	bctrl 
lbl_8070E95C:
/* 8070E95C  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070E960  38 80 00 01 */	li r4, 1
/* 8070E964  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070E968  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070E96C  40 82 00 18 */	bne lbl_8070E984
/* 8070E970  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070E974  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070E978  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070E97C  41 82 00 08 */	beq lbl_8070E984
/* 8070E980  38 80 00 00 */	li r4, 0
lbl_8070E984:
/* 8070E984  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070E988  41 82 00 2C */	beq lbl_8070E9B4
/* 8070E98C  A8 1E 06 C2 */	lha r0, 0x6c2(r30)
/* 8070E990  2C 00 00 00 */	cmpwi r0, 0
/* 8070E994  41 82 00 10 */	beq lbl_8070E9A4
/* 8070E998  38 00 00 00 */	li r0, 0
/* 8070E99C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070E9A0  48 00 00 14 */	b lbl_8070E9B4
lbl_8070E9A4:
/* 8070E9A4  38 00 00 03 */	li r0, 3
/* 8070E9A8  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070E9AC  38 00 00 00 */	li r0, 0
/* 8070E9B0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070E9B4:
/* 8070E9B4  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8070E9B8  A8 1E 08 0A */	lha r0, 0x80a(r30)
/* 8070E9BC  7C 03 02 14 */	add r0, r3, r0
/* 8070E9C0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8070E9C4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8070E9C8  A8 1E 08 0A */	lha r0, 0x80a(r30)
/* 8070E9CC  7C 03 02 14 */	add r0, r3, r0
/* 8070E9D0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8070E9D4  38 7E 08 0A */	addi r3, r30, 0x80a
/* 8070E9D8  38 80 00 00 */	li r4, 0
/* 8070E9DC  38 A0 00 01 */	li r5, 1
/* 8070E9E0  38 C0 01 2C */	li r6, 0x12c
/* 8070E9E4  4B B6 1C 24 */	b cLib_addCalcAngleS2__FPssss
/* 8070E9E8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8070E9EC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070E9F0  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 8070E9F4  4B B6 10 8C */	b cLib_addCalc0__FPfff
lbl_8070E9F8:
/* 8070E9F8  39 61 00 50 */	addi r11, r1, 0x50
/* 8070E9FC  4B C5 38 2C */	b _restgpr_29
/* 8070EA00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8070EA04  7C 08 03 A6 */	mtlr r0
/* 8070EA08  38 21 00 50 */	addi r1, r1, 0x50
/* 8070EA0C  4E 80 00 20 */	blr 
