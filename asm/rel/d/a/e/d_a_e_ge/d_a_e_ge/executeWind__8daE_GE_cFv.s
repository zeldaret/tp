lbl_806CB6FC:
/* 806CB6FC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806CB700  7C 08 02 A6 */	mflr r0
/* 806CB704  90 01 00 54 */	stw r0, 0x54(r1)
/* 806CB708  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 806CB70C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 806CB710  7C 7E 1B 78 */	mr r30, r3
/* 806CB714  3C 60 80 6D */	lis r3, lit_3904@ha
/* 806CB718  3B E3 D0 00 */	addi r31, r3, lit_3904@l
/* 806CB71C  4B A9 41 B4 */	b getThrowBoomerangActor__9daPy_py_cFv
/* 806CB720  28 03 00 00 */	cmplwi r3, 0
/* 806CB724  40 82 00 38 */	bne lbl_806CB75C
/* 806CB728  80 1E 0B 78 */	lwz r0, 0xb78(r30)
/* 806CB72C  2C 00 00 02 */	cmpwi r0, 2
/* 806CB730  41 82 00 2C */	beq lbl_806CB75C
/* 806CB734  38 00 00 02 */	li r0, 2
/* 806CB738  90 1E 0B 78 */	stw r0, 0xb78(r30)
/* 806CB73C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806CB740  4B B9 C2 4C */	b cM_rndFX__Ff
/* 806CB744  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 806CB748  EC 00 08 2A */	fadds f0, f0, f1
/* 806CB74C  FC 00 00 1E */	fctiwz f0, f0
/* 806CB750  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806CB754  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806CB758  B0 1E 0B 8E */	sth r0, 0xb8e(r30)
lbl_806CB75C:
/* 806CB75C  80 1E 0B 78 */	lwz r0, 0xb78(r30)
/* 806CB760  2C 00 00 01 */	cmpwi r0, 1
/* 806CB764  41 82 01 B0 */	beq lbl_806CB914
/* 806CB768  40 80 00 10 */	bge lbl_806CB778
/* 806CB76C  2C 00 00 00 */	cmpwi r0, 0
/* 806CB770  40 80 00 14 */	bge lbl_806CB784
/* 806CB774  48 00 03 2C */	b lbl_806CBAA0
lbl_806CB778:
/* 806CB778  2C 00 00 03 */	cmpwi r0, 3
/* 806CB77C  40 80 03 24 */	bge lbl_806CBAA0
/* 806CB780  48 00 02 B0 */	b lbl_806CBA30
lbl_806CB784:
/* 806CB784  38 00 00 00 */	li r0, 0
/* 806CB788  98 1E 0B 9E */	stb r0, 0xb9e(r30)
/* 806CB78C  4B A9 41 44 */	b getThrowBoomerangActor__9daPy_py_cFv
/* 806CB790  C0 43 04 D0 */	lfs f2, 0x4d0(r3)
/* 806CB794  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 806CB798  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806CB79C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806CB7A0  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 806CB7A4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 806CB7A8  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 806CB7AC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806CB7B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806CB7B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CB7B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806CB7BC  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 806CB7C0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 806CB7C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806CB7C8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806CB7CC  38 61 00 10 */	addi r3, r1, 0x10
/* 806CB7D0  38 81 00 1C */	addi r4, r1, 0x1c
/* 806CB7D4  4B C7 BB C8 */	b PSVECSquareDistance
/* 806CB7D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CB7DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB7E0  40 81 00 58 */	ble lbl_806CB838
/* 806CB7E4  FC 00 08 34 */	frsqrte f0, f1
/* 806CB7E8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806CB7EC  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB7F0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806CB7F4  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB7F8  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB7FC  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB800  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB804  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB808  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB80C  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB810  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB814  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB818  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB81C  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB820  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB824  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB828  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB82C  FC 21 00 32 */	fmul f1, f1, f0
/* 806CB830  FC 20 08 18 */	frsp f1, f1
/* 806CB834  48 00 00 88 */	b lbl_806CB8BC
lbl_806CB838:
/* 806CB838  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806CB83C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB840  40 80 00 10 */	bge lbl_806CB850
/* 806CB844  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806CB848  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806CB84C  48 00 00 70 */	b lbl_806CB8BC
lbl_806CB850:
/* 806CB850  D0 21 00 08 */	stfs f1, 8(r1)
/* 806CB854  80 81 00 08 */	lwz r4, 8(r1)
/* 806CB858  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806CB85C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806CB860  7C 03 00 00 */	cmpw r3, r0
/* 806CB864  41 82 00 14 */	beq lbl_806CB878
/* 806CB868  40 80 00 40 */	bge lbl_806CB8A8
/* 806CB86C  2C 03 00 00 */	cmpwi r3, 0
/* 806CB870  41 82 00 20 */	beq lbl_806CB890
/* 806CB874  48 00 00 34 */	b lbl_806CB8A8
lbl_806CB878:
/* 806CB878  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CB87C  41 82 00 0C */	beq lbl_806CB888
/* 806CB880  38 00 00 01 */	li r0, 1
/* 806CB884  48 00 00 28 */	b lbl_806CB8AC
lbl_806CB888:
/* 806CB888  38 00 00 02 */	li r0, 2
/* 806CB88C  48 00 00 20 */	b lbl_806CB8AC
lbl_806CB890:
/* 806CB890  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CB894  41 82 00 0C */	beq lbl_806CB8A0
/* 806CB898  38 00 00 05 */	li r0, 5
/* 806CB89C  48 00 00 10 */	b lbl_806CB8AC
lbl_806CB8A0:
/* 806CB8A0  38 00 00 03 */	li r0, 3
/* 806CB8A4  48 00 00 08 */	b lbl_806CB8AC
lbl_806CB8A8:
/* 806CB8A8  38 00 00 04 */	li r0, 4
lbl_806CB8AC:
/* 806CB8AC  2C 00 00 01 */	cmpwi r0, 1
/* 806CB8B0  40 82 00 0C */	bne lbl_806CB8BC
/* 806CB8B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806CB8B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806CB8BC:
/* 806CB8BC  D0 3E 0B 58 */	stfs f1, 0xb58(r30)
/* 806CB8C0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806CB8C4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806CB8C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 806CB8CC  D0 1E 0B 5C */	stfs f0, 0xb5c(r30)
/* 806CB8D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CB8D4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806CB8D8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806CB8DC  38 00 00 01 */	li r0, 1
/* 806CB8E0  90 1E 0B 78 */	stw r0, 0xb78(r30)
/* 806CB8E4  7F C3 F3 78 */	mr r3, r30
/* 806CB8E8  38 80 00 09 */	li r4, 9
/* 806CB8EC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806CB8F0  38 A0 00 02 */	li r5, 2
/* 806CB8F4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CB8F8  4B FF C1 C1 */	bl bckSet__8daE_GE_cFifUcf
/* 806CB8FC  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806CB900  4B B9 C0 8C */	b cM_rndFX__Ff
/* 806CB904  D0 3E 0B 64 */	stfs f1, 0xb64(r30)
/* 806CB908  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806CB90C  4B B9 C0 80 */	b cM_rndFX__Ff
/* 806CB910  D0 3E 0B 60 */	stfs f1, 0xb60(r30)
lbl_806CB914:
/* 806CB914  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CB918  38 63 00 0C */	addi r3, r3, 0xc
/* 806CB91C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CB920  4B C5 CB 0C */	b checkPass__12J3DFrameCtrlFf
/* 806CB924  2C 03 00 00 */	cmpwi r3, 0
/* 806CB928  41 82 00 2C */	beq lbl_806CB954
/* 806CB92C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007046C@ha */
/* 806CB930  38 03 04 6C */	addi r0, r3, 0x046C /* 0x0007046C@l */
/* 806CB934  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CB938  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806CB93C  38 81 00 0C */	addi r4, r1, 0xc
/* 806CB940  38 A0 FF FF */	li r5, -1
/* 806CB944  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 806CB948  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806CB94C  7D 89 03 A6 */	mtctr r12
/* 806CB950  4E 80 04 21 */	bctrl 
lbl_806CB954:
/* 806CB954  4B A9 3F 7C */	b getThrowBoomerangActor__9daPy_py_cFv
/* 806CB958  C0 43 04 D0 */	lfs f2, 0x4d0(r3)
/* 806CB95C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 806CB960  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806CB964  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806CB968  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 806CB96C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806CB970  A8 7E 0B 8C */	lha r3, 0xb8c(r30)
/* 806CB974  38 03 08 00 */	addi r0, r3, 0x800
/* 806CB978  B0 1E 0B 8C */	sth r0, 0xb8c(r30)
/* 806CB97C  A8 1E 0B 8C */	lha r0, 0xb8c(r30)
/* 806CB980  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806CB984  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806CB988  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806CB98C  7C 63 04 2E */	lfsx f3, r3, r0
/* 806CB990  C0 1E 0B 58 */	lfs f0, 0xb58(r30)
/* 806CB994  EC 00 00 F2 */	fmuls f0, f0, f3
/* 806CB998  EC 02 00 2A */	fadds f0, f2, f0
/* 806CB99C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 806CB9A0  A8 1E 0B 8C */	lha r0, 0xb8c(r30)
/* 806CB9A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806CB9A8  7C 63 02 14 */	add r3, r3, r0
/* 806CB9AC  C0 43 00 04 */	lfs f2, 4(r3)
/* 806CB9B0  C0 1E 0B 58 */	lfs f0, 0xb58(r30)
/* 806CB9B4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806CB9B8  EC 01 00 2A */	fadds f0, f1, f0
/* 806CB9BC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 806CB9C0  38 7E 0B 58 */	addi r3, r30, 0xb58
/* 806CB9C4  C0 3E 0B 60 */	lfs f1, 0xb60(r30)
/* 806CB9C8  C0 5F 00 F8 */	lfs f2, 0xf8(r31)
/* 806CB9CC  4B BA 4D 74 */	b cLib_chaseF__FPfff
/* 806CB9D0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 806CB9D4  C0 1E 0B 5C */	lfs f0, 0xb5c(r30)
/* 806CB9D8  EC 01 00 2A */	fadds f0, f1, f0
/* 806CB9DC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806CB9E0  C0 3E 0B 5C */	lfs f1, 0xb5c(r30)
/* 806CB9E4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806CB9E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB9EC  40 80 00 18 */	bge lbl_806CBA04
/* 806CB9F0  38 7E 0B 5C */	addi r3, r30, 0xb5c
/* 806CB9F4  C0 3E 0B 64 */	lfs f1, 0xb64(r30)
/* 806CB9F8  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806CB9FC  4B BA 4D 44 */	b cLib_chaseF__FPfff
/* 806CBA00  48 00 00 14 */	b lbl_806CBA14
lbl_806CBA04:
/* 806CBA04  38 7E 0B 5C */	addi r3, r30, 0xb5c
/* 806CBA08  C0 3E 0B 64 */	lfs f1, 0xb64(r30)
/* 806CBA0C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806CBA10  4B BA 4D 30 */	b cLib_chaseF__FPfff
lbl_806CBA14:
/* 806CBA14  38 00 30 00 */	li r0, 0x3000
/* 806CBA18  B0 1E 0B 8A */	sth r0, 0xb8a(r30)
/* 806CBA1C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806CBA20  A8 1E 0B 8A */	lha r0, 0xb8a(r30)
/* 806CBA24  7C 03 02 14 */	add r0, r3, r0
/* 806CBA28  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806CBA2C  48 00 00 74 */	b lbl_806CBAA0
lbl_806CBA30:
/* 806CBA30  38 7E 0B 8A */	addi r3, r30, 0xb8a
/* 806CBA34  38 80 00 00 */	li r4, 0
/* 806CBA38  38 A0 00 04 */	li r5, 4
/* 806CBA3C  38 C0 01 80 */	li r6, 0x180
/* 806CBA40  4B BA 4B C8 */	b cLib_addCalcAngleS2__FPssss
/* 806CBA44  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806CBA48  A8 1E 0B 8A */	lha r0, 0xb8a(r30)
/* 806CBA4C  7C 03 02 14 */	add r0, r3, r0
/* 806CBA50  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806CBA54  A8 1E 0B 8E */	lha r0, 0xb8e(r30)
/* 806CBA58  2C 00 00 00 */	cmpwi r0, 0
/* 806CBA5C  40 82 00 44 */	bne lbl_806CBAA0
/* 806CBA60  88 1E 0B 9A */	lbz r0, 0xb9a(r30)
/* 806CBA64  2C 00 00 00 */	cmpwi r0, 0
/* 806CBA68  41 82 00 1C */	beq lbl_806CBA84
/* 806CBA6C  7F C3 F3 78 */	mr r3, r30
/* 806CBA70  38 80 00 01 */	li r4, 1
/* 806CBA74  4B FF C6 85 */	bl setActionMode__8daE_GE_cFi
/* 806CBA78  38 00 00 0A */	li r0, 0xa
/* 806CBA7C  90 1E 0B 78 */	stw r0, 0xb78(r30)
/* 806CBA80  48 00 00 20 */	b lbl_806CBAA0
lbl_806CBA84:
/* 806CBA84  38 00 00 5A */	li r0, 0x5a
/* 806CBA88  90 1E 0B 80 */	stw r0, 0xb80(r30)
/* 806CBA8C  7F C3 F3 78 */	mr r3, r30
/* 806CBA90  38 80 00 03 */	li r4, 3
/* 806CBA94  4B FF C6 65 */	bl setActionMode__8daE_GE_cFi
/* 806CBA98  38 00 00 0A */	li r0, 0xa
/* 806CBA9C  90 1E 0B 78 */	stw r0, 0xb78(r30)
lbl_806CBAA0:
/* 806CBAA0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 806CBAA4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 806CBAA8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806CBAAC  7C 08 03 A6 */	mtlr r0
/* 806CBAB0  38 21 00 50 */	addi r1, r1, 0x50
/* 806CBAB4  4E 80 00 20 */	blr 
