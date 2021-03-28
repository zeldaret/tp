lbl_8078F728:
/* 8078F728  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8078F72C  7C 08 02 A6 */	mflr r0
/* 8078F730  90 01 00 34 */	stw r0, 0x34(r1)
/* 8078F734  39 61 00 30 */	addi r11, r1, 0x30
/* 8078F738  4B BD 2A A4 */	b _savegpr_29
/* 8078F73C  7C 7D 1B 78 */	mr r29, r3
/* 8078F740  3C 80 80 79 */	lis r4, lit_3902@ha
/* 8078F744  3B E4 1D 70 */	addi r31, r4, lit_3902@l
/* 8078F748  3B C0 00 00 */	li r30, 0
/* 8078F74C  38 80 00 01 */	li r4, 1
/* 8078F750  98 83 06 AA */	stb r4, 0x6aa(r3)
/* 8078F754  A8 03 06 8C */	lha r0, 0x68c(r3)
/* 8078F758  B0 03 06 88 */	sth r0, 0x688(r3)
/* 8078F75C  A8 03 06 78 */	lha r0, 0x678(r3)
/* 8078F760  2C 00 00 02 */	cmpwi r0, 2
/* 8078F764  41 82 01 40 */	beq lbl_8078F8A4
/* 8078F768  40 80 00 14 */	bge lbl_8078F77C
/* 8078F76C  2C 00 00 00 */	cmpwi r0, 0
/* 8078F770  41 82 00 1C */	beq lbl_8078F78C
/* 8078F774  40 80 00 58 */	bge lbl_8078F7CC
/* 8078F778  48 00 02 58 */	b lbl_8078F9D0
lbl_8078F77C:
/* 8078F77C  2C 00 00 04 */	cmpwi r0, 4
/* 8078F780  41 82 02 00 */	beq lbl_8078F980
/* 8078F784  40 80 02 4C */	bge lbl_8078F9D0
/* 8078F788  48 00 01 AC */	b lbl_8078F934
lbl_8078F78C:
/* 8078F78C  38 80 00 0F */	li r4, 0xf
/* 8078F790  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8078F794  38 A0 00 02 */	li r5, 2
/* 8078F798  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078F79C  4B FF EC 19 */	bl anm_init__FP10e_sh_classifUcf
/* 8078F7A0  A8 7D 06 78 */	lha r3, 0x678(r29)
/* 8078F7A4  38 03 00 01 */	addi r0, r3, 1
/* 8078F7A8  B0 1D 06 78 */	sth r0, 0x678(r29)
/* 8078F7AC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8078F7B0  4B AD 81 A4 */	b cM_rndF__Ff
/* 8078F7B4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8078F7B8  EC 00 08 2A */	fadds f0, f0, f1
/* 8078F7BC  FC 00 00 1E */	fctiwz f0, f0
/* 8078F7C0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8078F7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078F7C8  B0 1D 06 98 */	sth r0, 0x698(r29)
lbl_8078F7CC:
/* 8078F7CC  3B C0 04 00 */	li r30, 0x400
/* 8078F7D0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8078F7D4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078F7D8  FC 40 08 90 */	fmr f2, f1
/* 8078F7DC  4B AE 02 A4 */	b cLib_addCalc0__FPfff
/* 8078F7E0  A8 7D 06 88 */	lha r3, 0x688(r29)
/* 8078F7E4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8078F7E8  7C 03 00 50 */	subf r0, r3, r0
/* 8078F7EC  7C 00 07 34 */	extsh r0, r0
/* 8078F7F0  2C 00 08 00 */	cmpwi r0, 0x800
/* 8078F7F4  40 80 00 3C */	bge lbl_8078F830
/* 8078F7F8  2C 00 F8 00 */	cmpwi r0, -2048
/* 8078F7FC  40 81 00 34 */	ble lbl_8078F830
/* 8078F800  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 8078F804  2C 00 00 00 */	cmpwi r0, 0
/* 8078F808  40 82 00 28 */	bne lbl_8078F830
/* 8078F80C  7F A3 EB 78 */	mr r3, r29
/* 8078F810  38 80 00 05 */	li r4, 5
/* 8078F814  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8078F818  38 A0 00 00 */	li r5, 0
/* 8078F81C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078F820  4B FF EB 95 */	bl anm_init__FP10e_sh_classifUcf
/* 8078F824  A8 7D 06 78 */	lha r3, 0x678(r29)
/* 8078F828  38 03 00 01 */	addi r0, r3, 1
/* 8078F82C  B0 1D 06 78 */	sth r0, 0x678(r29)
lbl_8078F830:
/* 8078F830  A8 1D 06 74 */	lha r0, 0x674(r29)
/* 8078F834  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8078F838  40 82 00 40 */	bne lbl_8078F878
/* 8078F83C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078F840  4B AD 81 14 */	b cM_rndF__Ff
/* 8078F844  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8078F848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078F84C  40 80 00 2C */	bge lbl_8078F878
/* 8078F850  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007009F@ha */
/* 8078F854  38 03 00 9F */	addi r0, r3, 0x009F /* 0x0007009F@l */
/* 8078F858  90 01 00 0C */	stw r0, 0xc(r1)
/* 8078F85C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8078F860  38 81 00 0C */	addi r4, r1, 0xc
/* 8078F864  38 A0 FF FF */	li r5, -1
/* 8078F868  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8078F86C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8078F870  7D 89 03 A6 */	mtctr r12
/* 8078F874  4E 80 04 21 */	bctrl 
lbl_8078F878:
/* 8078F878  88 1D 0C EA */	lbz r0, 0xcea(r29)
/* 8078F87C  7C 00 07 75 */	extsb. r0, r0
/* 8078F880  40 82 01 50 */	bne lbl_8078F9D0
/* 8078F884  A8 1D 06 74 */	lha r0, 0x674(r29)
/* 8078F888  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8078F88C  40 82 01 44 */	bne lbl_8078F9D0
/* 8078F890  38 00 00 02 */	li r0, 2
/* 8078F894  B0 1D 06 76 */	sth r0, 0x676(r29)
/* 8078F898  38 00 00 00 */	li r0, 0
/* 8078F89C  B0 1D 06 78 */	sth r0, 0x678(r29)
/* 8078F8A0  48 00 01 30 */	b lbl_8078F9D0
lbl_8078F8A4:
/* 8078F8A4  3B C0 02 00 */	li r30, 0x200
/* 8078F8A8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8078F8AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8078F8B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8078F8B4  40 82 00 18 */	bne lbl_8078F8CC
/* 8078F8B8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8078F8BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8078F8C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8078F8C4  41 82 00 08 */	beq lbl_8078F8CC
/* 8078F8C8  38 80 00 00 */	li r4, 0
lbl_8078F8CC:
/* 8078F8CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8078F8D0  41 82 01 00 */	beq lbl_8078F9D0
/* 8078F8D4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8078F8D8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8078F8DC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8078F8E0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8078F8E4  7F A3 EB 78 */	mr r3, r29
/* 8078F8E8  38 80 00 06 */	li r4, 6
/* 8078F8EC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8078F8F0  38 A0 00 02 */	li r5, 2
/* 8078F8F4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078F8F8  4B FF EA BD */	bl anm_init__FP10e_sh_classifUcf
/* 8078F8FC  A8 7D 06 78 */	lha r3, 0x678(r29)
/* 8078F900  38 03 00 01 */	addi r0, r3, 1
/* 8078F904  B0 1D 06 78 */	sth r0, 0x678(r29)
/* 8078F908  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A0@ha */
/* 8078F90C  38 03 00 A0 */	addi r0, r3, 0x00A0 /* 0x000700A0@l */
/* 8078F910  90 01 00 08 */	stw r0, 8(r1)
/* 8078F914  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8078F918  38 81 00 08 */	addi r4, r1, 8
/* 8078F91C  38 A0 FF FF */	li r5, -1
/* 8078F920  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8078F924  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8078F928  7D 89 03 A6 */	mtctr r12
/* 8078F92C  4E 80 04 21 */	bctrl 
/* 8078F930  48 00 00 A0 */	b lbl_8078F9D0
lbl_8078F934:
/* 8078F934  98 9D 0C E8 */	stb r4, 0xce8(r29)
/* 8078F938  80 1D 0B E8 */	lwz r0, 0xbe8(r29)
/* 8078F93C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8078F940  41 82 00 0C */	beq lbl_8078F94C
/* 8078F944  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8078F948  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_8078F94C:
/* 8078F94C  80 1D 07 34 */	lwz r0, 0x734(r29)
/* 8078F950  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8078F954  41 82 00 7C */	beq lbl_8078F9D0
/* 8078F958  7F A3 EB 78 */	mr r3, r29
/* 8078F95C  38 80 00 07 */	li r4, 7
/* 8078F960  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8078F964  38 A0 00 00 */	li r5, 0
/* 8078F968  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078F96C  4B FF EA 49 */	bl anm_init__FP10e_sh_classifUcf
/* 8078F970  A8 7D 06 78 */	lha r3, 0x678(r29)
/* 8078F974  38 03 00 01 */	addi r0, r3, 1
/* 8078F978  B0 1D 06 78 */	sth r0, 0x678(r29)
/* 8078F97C  48 00 00 54 */	b lbl_8078F9D0
lbl_8078F980:
/* 8078F980  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8078F984  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8078F988  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8078F98C  4B AE 00 F4 */	b cLib_addCalc0__FPfff
/* 8078F990  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8078F994  38 80 00 01 */	li r4, 1
/* 8078F998  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8078F99C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8078F9A0  40 82 00 18 */	bne lbl_8078F9B8
/* 8078F9A4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8078F9A8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8078F9AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8078F9B0  41 82 00 08 */	beq lbl_8078F9B8
/* 8078F9B4  38 80 00 00 */	li r4, 0
lbl_8078F9B8:
/* 8078F9B8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8078F9BC  41 82 00 14 */	beq lbl_8078F9D0
/* 8078F9C0  38 00 00 02 */	li r0, 2
/* 8078F9C4  B0 1D 06 76 */	sth r0, 0x676(r29)
/* 8078F9C8  38 00 00 00 */	li r0, 0
/* 8078F9CC  B0 1D 06 78 */	sth r0, 0x678(r29)
lbl_8078F9D0:
/* 8078F9D0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8078F9D4  A8 9D 06 88 */	lha r4, 0x688(r29)
/* 8078F9D8  38 A0 00 08 */	li r5, 8
/* 8078F9DC  7F C6 F3 78 */	mr r6, r30
/* 8078F9E0  4B AE 0C 28 */	b cLib_addCalcAngleS2__FPssss
/* 8078F9E4  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8078F9E8  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8078F9EC  38 A0 00 04 */	li r5, 4
/* 8078F9F0  38 C0 20 00 */	li r6, 0x2000
/* 8078F9F4  4B AE 0C 14 */	b cLib_addCalcAngleS2__FPssss
/* 8078F9F8  C0 3D 06 90 */	lfs f1, 0x690(r29)
/* 8078F9FC  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078FA00  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 8078FA04  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8078FA08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078FA0C  40 81 00 14 */	ble lbl_8078FA20
/* 8078FA10  38 00 00 02 */	li r0, 2
/* 8078FA14  B0 1D 06 76 */	sth r0, 0x676(r29)
/* 8078FA18  38 00 00 00 */	li r0, 0
/* 8078FA1C  B0 1D 06 78 */	sth r0, 0x678(r29)
lbl_8078FA20:
/* 8078FA20  39 61 00 30 */	addi r11, r1, 0x30
/* 8078FA24  4B BD 28 04 */	b _restgpr_29
/* 8078FA28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8078FA2C  7C 08 03 A6 */	mtlr r0
/* 8078FA30  38 21 00 30 */	addi r1, r1, 0x30
/* 8078FA34  4E 80 00 20 */	blr 
