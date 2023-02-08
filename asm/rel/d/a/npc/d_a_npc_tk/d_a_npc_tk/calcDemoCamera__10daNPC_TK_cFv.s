lbl_80B0A614:
/* 80B0A614  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80B0A618  7C 08 02 A6 */	mflr r0
/* 80B0A61C  90 01 01 54 */	stw r0, 0x154(r1)
/* 80B0A620  39 61 01 50 */	addi r11, r1, 0x150
/* 80B0A624  4B 85 7B B9 */	bl _savegpr_29
/* 80B0A628  7C 7D 1B 78 */	mr r29, r3
/* 80B0A62C  3C 60 80 B1 */	lis r3, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B0A630  3B E3 C1 C4 */	addi r31, r3, lit_3999@l /* 0x80B0C1C4@l */
/* 80B0A634  4B 67 70 0D */	bl dCam_getBody__Fv
/* 80B0A638  7C 7E 1B 78 */	mr r30, r3
/* 80B0A63C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80B0A640  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 80B0A644  D0 61 00 D8 */	stfs f3, 0xd8(r1)
/* 80B0A648  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 80B0A64C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0A650  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0A654  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 80B0A658  C0 05 04 D0 */	lfs f0, 0x4d0(r5)
/* 80B0A65C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B0A660  C0 45 04 D4 */	lfs f2, 0x4d4(r5)
/* 80B0A664  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 80B0A668  C0 05 04 D8 */	lfs f0, 0x4d8(r5)
/* 80B0A66C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80B0A670  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80B0A674  EC 02 08 2A */	fadds f0, f2, f1
/* 80B0A678  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80B0A67C  A8 1D 07 10 */	lha r0, 0x710(r29)
/* 80B0A680  2C 00 00 03 */	cmpwi r0, 3
/* 80B0A684  41 82 07 80 */	beq lbl_80B0AE04
/* 80B0A688  40 80 00 14 */	bge lbl_80B0A69C
/* 80B0A68C  2C 00 00 01 */	cmpwi r0, 1
/* 80B0A690  41 82 00 1C */	beq lbl_80B0A6AC
/* 80B0A694  40 80 00 74 */	bge lbl_80B0A708
/* 80B0A698  48 00 09 54 */	b lbl_80B0AFEC
lbl_80B0A69C:
/* 80B0A69C  2C 00 00 05 */	cmpwi r0, 5
/* 80B0A6A0  41 82 08 E4 */	beq lbl_80B0AF84
/* 80B0A6A4  40 80 09 48 */	bge lbl_80B0AFEC
/* 80B0A6A8  48 00 08 58 */	b lbl_80B0AF00
lbl_80B0A6AC:
/* 80B0A6AC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80B0A6B0  7F C4 F3 78 */	mr r4, r30
/* 80B0A6B4  4B 67 77 E5 */	bl Center__9dCamera_cFv
/* 80B0A6B8  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80B0A6BC  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 80B0A6C0  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80B0A6C4  D0 1D 07 00 */	stfs f0, 0x700(r29)
/* 80B0A6C8  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80B0A6CC  D0 1D 07 04 */	stfs f0, 0x704(r29)
/* 80B0A6D0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80B0A6D4  7F C4 F3 78 */	mr r4, r30
/* 80B0A6D8  4B 67 77 8D */	bl Eye__9dCamera_cFv
/* 80B0A6DC  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80B0A6E0  D0 1D 06 F0 */	stfs f0, 0x6f0(r29)
/* 80B0A6E4  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80B0A6E8  D0 1D 06 F4 */	stfs f0, 0x6f4(r29)
/* 80B0A6EC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80B0A6F0  D0 1D 06 F8 */	stfs f0, 0x6f8(r29)
/* 80B0A6F4  38 00 00 02 */	li r0, 2
/* 80B0A6F8  B0 1D 07 10 */	sth r0, 0x710(r29)
/* 80B0A6FC  38 00 00 00 */	li r0, 0
/* 80B0A700  98 1D 07 18 */	stb r0, 0x718(r29)
/* 80B0A704  48 00 08 E8 */	b lbl_80B0AFEC
lbl_80B0A708:
/* 80B0A708  80 9D 06 EC */	lwz r4, 0x6ec(r29)
/* 80B0A70C  28 04 00 00 */	cmplwi r4, 0
/* 80B0A710  41 82 00 10 */	beq lbl_80B0A720
/* 80B0A714  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 80B0A718  2C 00 00 00 */	cmpwi r0, 0
/* 80B0A71C  40 82 00 10 */	bne lbl_80B0A72C
lbl_80B0A720:
/* 80B0A720  38 00 00 05 */	li r0, 5
/* 80B0A724  B0 1D 07 10 */	sth r0, 0x710(r29)
/* 80B0A728  48 00 08 C4 */	b lbl_80B0AFEC
lbl_80B0A72C:
/* 80B0A72C  7C 04 E8 40 */	cmplw r4, r29
/* 80B0A730  40 82 06 2C */	bne lbl_80B0AD5C
/* 80B0A734  38 61 00 98 */	addi r3, r1, 0x98
/* 80B0A738  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B0A73C  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 80B0A740  4B 75 C3 A5 */	bl __pl__4cXyzCFRC3Vec
/* 80B0A744  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B0A748  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80B0A74C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80B0A750  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B0A754  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80B0A758  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B0A75C  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0A760  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80B0A764  4B 83 CC 39 */	bl PSVECSquareDistance
/* 80B0A768  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0A76C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0A770  40 81 00 58 */	ble lbl_80B0A7C8
/* 80B0A774  FC 00 08 34 */	frsqrte f0, f1
/* 80B0A778  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B0A77C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0A780  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B0A784  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0A788  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0A78C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0A790  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0A794  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0A798  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0A79C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0A7A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0A7A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0A7A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0A7AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0A7B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0A7B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0A7B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0A7BC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B0A7C0  FC 20 08 18 */	frsp f1, f1
/* 80B0A7C4  48 00 00 88 */	b lbl_80B0A84C
lbl_80B0A7C8:
/* 80B0A7C8  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B0A7CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0A7D0  40 80 00 10 */	bge lbl_80B0A7E0
/* 80B0A7D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0A7D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B0A7DC  48 00 00 70 */	b lbl_80B0A84C
lbl_80B0A7E0:
/* 80B0A7E0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B0A7E4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B0A7E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B0A7EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B0A7F0  7C 03 00 00 */	cmpw r3, r0
/* 80B0A7F4  41 82 00 14 */	beq lbl_80B0A808
/* 80B0A7F8  40 80 00 40 */	bge lbl_80B0A838
/* 80B0A7FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B0A800  41 82 00 20 */	beq lbl_80B0A820
/* 80B0A804  48 00 00 34 */	b lbl_80B0A838
lbl_80B0A808:
/* 80B0A808  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0A80C  41 82 00 0C */	beq lbl_80B0A818
/* 80B0A810  38 00 00 01 */	li r0, 1
/* 80B0A814  48 00 00 28 */	b lbl_80B0A83C
lbl_80B0A818:
/* 80B0A818  38 00 00 02 */	li r0, 2
/* 80B0A81C  48 00 00 20 */	b lbl_80B0A83C
lbl_80B0A820:
/* 80B0A820  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0A824  41 82 00 0C */	beq lbl_80B0A830
/* 80B0A828  38 00 00 05 */	li r0, 5
/* 80B0A82C  48 00 00 10 */	b lbl_80B0A83C
lbl_80B0A830:
/* 80B0A830  38 00 00 03 */	li r0, 3
/* 80B0A834  48 00 00 08 */	b lbl_80B0A83C
lbl_80B0A838:
/* 80B0A838  38 00 00 04 */	li r0, 4
lbl_80B0A83C:
/* 80B0A83C  2C 00 00 01 */	cmpwi r0, 1
/* 80B0A840  40 82 00 0C */	bne lbl_80B0A84C
/* 80B0A844  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0A848  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B0A84C:
/* 80B0A84C  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 80B0A850  2C 00 00 03 */	cmpwi r0, 3
/* 80B0A854  40 82 00 DC */	bne lbl_80B0A930
/* 80B0A858  80 1D 06 94 */	lwz r0, 0x694(r29)
/* 80B0A85C  2C 00 00 01 */	cmpwi r0, 1
/* 80B0A860  40 82 00 54 */	bne lbl_80B0A8B4
/* 80B0A864  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80B0A868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0A86C  4C 41 13 82 */	cror 2, 1, 2
/* 80B0A870  40 82 00 20 */	bne lbl_80B0A890
/* 80B0A874  38 7D 07 14 */	addi r3, r29, 0x714
/* 80B0A878  3C 80 80 B1 */	lis r4, l_HIO@ha /* 0x80B0C60C@ha */
/* 80B0A87C  38 84 C6 0C */	addi r4, r4, l_HIO@l /* 0x80B0C60C@l */
/* 80B0A880  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80B0A884  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80B0A888  4B 76 5E B9 */	bl cLib_chaseF__FPfff
/* 80B0A88C  48 00 00 14 */	b lbl_80B0A8A0
lbl_80B0A890:
/* 80B0A890  38 7D 07 14 */	addi r3, r29, 0x714
/* 80B0A894  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B0A898  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80B0A89C  4B 76 5E A5 */	bl cLib_chaseF__FPfff
lbl_80B0A8A0:
/* 80B0A8A0  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0A8A4  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80B0A8A8  C0 3D 07 14 */	lfs f1, 0x714(r29)
/* 80B0A8AC  4B 76 5F 01 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B0A8B0  48 00 04 54 */	b lbl_80B0AD04
lbl_80B0A8B4:
/* 80B0A8B4  2C 00 00 02 */	cmpwi r0, 2
/* 80B0A8B8  40 82 04 4C */	bne lbl_80B0AD04
/* 80B0A8BC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80B0A8C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0A8C4  4C 41 13 82 */	cror 2, 1, 2
/* 80B0A8C8  40 82 00 20 */	bne lbl_80B0A8E8
/* 80B0A8CC  38 7D 07 14 */	addi r3, r29, 0x714
/* 80B0A8D0  3C 80 80 B1 */	lis r4, l_HIO@ha /* 0x80B0C60C@ha */
/* 80B0A8D4  38 84 C6 0C */	addi r4, r4, l_HIO@l /* 0x80B0C60C@l */
/* 80B0A8D8  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80B0A8DC  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80B0A8E0  4B 76 5E 61 */	bl cLib_chaseF__FPfff
/* 80B0A8E4  48 00 00 38 */	b lbl_80B0A91C
lbl_80B0A8E8:
/* 80B0A8E8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80B0A8EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0A8F0  40 80 00 24 */	bge lbl_80B0A914
/* 80B0A8F4  38 7D 07 14 */	addi r3, r29, 0x714
/* 80B0A8F8  3C 80 80 B1 */	lis r4, l_HIO@ha /* 0x80B0C60C@ha */
/* 80B0A8FC  38 84 C6 0C */	addi r4, r4, l_HIO@l /* 0x80B0C60C@l */
/* 80B0A900  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 80B0A904  FC 20 00 50 */	fneg f1, f0
/* 80B0A908  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80B0A90C  4B 76 5E 35 */	bl cLib_chaseF__FPfff
/* 80B0A910  48 00 00 0C */	b lbl_80B0A91C
lbl_80B0A914:
/* 80B0A914  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0A918  D0 1D 07 14 */	stfs f0, 0x714(r29)
lbl_80B0A91C:
/* 80B0A91C  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0A920  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80B0A924  C0 3D 07 14 */	lfs f1, 0x714(r29)
/* 80B0A928  4B 76 5E 85 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B0A92C  48 00 03 D8 */	b lbl_80B0AD04
lbl_80B0A930:
/* 80B0A930  2C 00 00 04 */	cmpwi r0, 4
/* 80B0A934  40 82 00 34 */	bne lbl_80B0A968
/* 80B0A938  38 7D 07 14 */	addi r3, r29, 0x714
/* 80B0A93C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B0A940  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80B0A944  4B 76 5D FD */	bl cLib_chaseF__FPfff
/* 80B0A948  C0 3D 07 14 */	lfs f1, 0x714(r29)
/* 80B0A94C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0A950  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B0A954  41 82 03 B0 */	beq lbl_80B0AD04
/* 80B0A958  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0A95C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80B0A960  4B 76 5E 4D */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B0A964  48 00 03 A0 */	b lbl_80B0AD04
lbl_80B0A968:
/* 80B0A968  2C 00 00 05 */	cmpwi r0, 5
/* 80B0A96C  40 82 03 90 */	bne lbl_80B0ACFC
/* 80B0A970  80 1D 06 94 */	lwz r0, 0x694(r29)
/* 80B0A974  2C 00 00 01 */	cmpwi r0, 1
/* 80B0A978  41 81 00 28 */	bgt lbl_80B0A9A0
/* 80B0A97C  38 7D 07 14 */	addi r3, r29, 0x714
/* 80B0A980  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80B0A984  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80B0A988  4B 76 5D B9 */	bl cLib_chaseF__FPfff
/* 80B0A98C  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0A990  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80B0A994  C0 3D 07 14 */	lfs f1, 0x714(r29)
/* 80B0A998  4B 76 5E 15 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B0A99C  48 00 03 68 */	b lbl_80B0AD04
lbl_80B0A9A0:
/* 80B0A9A0  2C 00 00 02 */	cmpwi r0, 2
/* 80B0A9A4  40 82 00 58 */	bne lbl_80B0A9FC
/* 80B0A9A8  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 80B0A9AC  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80B0A9B0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B0A9B4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0A9B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0A9BC  40 80 00 08 */	bge lbl_80B0A9C4
/* 80B0A9C0  FC 20 00 90 */	fmr f1, f0
lbl_80B0A9C4:
/* 80B0A9C4  38 7D 07 14 */	addi r3, r29, 0x714
/* 80B0A9C8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B0A9CC  4B 76 5D 75 */	bl cLib_chaseF__FPfff
/* 80B0A9D0  C0 5D 06 50 */	lfs f2, 0x650(r29)
/* 80B0A9D4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B0A9D8  C0 1D 06 48 */	lfs f0, 0x648(r29)
/* 80B0A9DC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80B0A9E0  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 80B0A9E4  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 80B0A9E8  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0A9EC  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80B0A9F0  C0 3D 07 14 */	lfs f1, 0x714(r29)
/* 80B0A9F4  4B 76 5D B9 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B0A9F8  48 00 03 0C */	b lbl_80B0AD04
lbl_80B0A9FC:
/* 80B0A9FC  2C 00 00 03 */	cmpwi r0, 3
/* 80B0AA00  40 82 00 48 */	bne lbl_80B0AA48
/* 80B0AA04  38 7D 07 14 */	addi r3, r29, 0x714
/* 80B0AA08  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B0AA0C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B0AA10  4B 76 5D 31 */	bl cLib_chaseF__FPfff
/* 80B0AA14  C0 5D 06 50 */	lfs f2, 0x650(r29)
/* 80B0AA18  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B0AA1C  C0 1D 06 48 */	lfs f0, 0x648(r29)
/* 80B0AA20  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80B0AA24  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 80B0AA28  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 80B0AA2C  38 00 00 00 */	li r0, 0
/* 80B0AA30  98 1D 07 18 */	stb r0, 0x718(r29)
/* 80B0AA34  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0AA38  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80B0AA3C  C0 3D 07 14 */	lfs f1, 0x714(r29)
/* 80B0AA40  4B 76 5D 6D */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B0AA44  48 00 02 C0 */	b lbl_80B0AD04
lbl_80B0AA48:
/* 80B0AA48  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B0AA4C  41 80 02 B8 */	blt lbl_80B0AD04
/* 80B0AA50  88 1D 07 18 */	lbz r0, 0x718(r29)
/* 80B0AA54  28 00 00 00 */	cmplwi r0, 0
/* 80B0AA58  40 82 01 44 */	bne lbl_80B0AB9C
/* 80B0AA5C  38 7D 07 14 */	addi r3, r29, 0x714
/* 80B0AA60  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B0AA64  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B0AA68  4B 76 5C D9 */	bl cLib_chaseF__FPfff
/* 80B0AA6C  C0 5D 06 F8 */	lfs f2, 0x6f8(r29)
/* 80B0AA70  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B0AA74  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 80B0AA78  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80B0AA7C  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 80B0AA80  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 80B0AA84  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0AA88  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B0AA8C  4B 83 C9 11 */	bl PSVECSquareDistance
/* 80B0AA90  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0AA94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0AA98  40 81 00 58 */	ble lbl_80B0AAF0
/* 80B0AA9C  FC 00 08 34 */	frsqrte f0, f1
/* 80B0AAA0  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B0AAA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0AAA8  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B0AAAC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0AAB0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0AAB4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0AAB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0AABC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0AAC0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0AAC4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0AAC8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0AACC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0AAD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0AAD4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0AAD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0AADC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0AAE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0AAE4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B0AAE8  FC 20 08 18 */	frsp f1, f1
/* 80B0AAEC  48 00 00 88 */	b lbl_80B0AB74
lbl_80B0AAF0:
/* 80B0AAF0  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B0AAF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0AAF8  40 80 00 10 */	bge lbl_80B0AB08
/* 80B0AAFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0AB00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B0AB04  48 00 00 70 */	b lbl_80B0AB74
lbl_80B0AB08:
/* 80B0AB08  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B0AB0C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B0AB10  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B0AB14  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B0AB18  7C 03 00 00 */	cmpw r3, r0
/* 80B0AB1C  41 82 00 14 */	beq lbl_80B0AB30
/* 80B0AB20  40 80 00 40 */	bge lbl_80B0AB60
/* 80B0AB24  2C 03 00 00 */	cmpwi r3, 0
/* 80B0AB28  41 82 00 20 */	beq lbl_80B0AB48
/* 80B0AB2C  48 00 00 34 */	b lbl_80B0AB60
lbl_80B0AB30:
/* 80B0AB30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0AB34  41 82 00 0C */	beq lbl_80B0AB40
/* 80B0AB38  38 00 00 01 */	li r0, 1
/* 80B0AB3C  48 00 00 28 */	b lbl_80B0AB64
lbl_80B0AB40:
/* 80B0AB40  38 00 00 02 */	li r0, 2
/* 80B0AB44  48 00 00 20 */	b lbl_80B0AB64
lbl_80B0AB48:
/* 80B0AB48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0AB4C  41 82 00 0C */	beq lbl_80B0AB58
/* 80B0AB50  38 00 00 05 */	li r0, 5
/* 80B0AB54  48 00 00 10 */	b lbl_80B0AB64
lbl_80B0AB58:
/* 80B0AB58  38 00 00 03 */	li r0, 3
/* 80B0AB5C  48 00 00 08 */	b lbl_80B0AB64
lbl_80B0AB60:
/* 80B0AB60  38 00 00 04 */	li r0, 4
lbl_80B0AB64:
/* 80B0AB64  2C 00 00 01 */	cmpwi r0, 1
/* 80B0AB68  40 82 00 0C */	bne lbl_80B0AB74
/* 80B0AB6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0AB70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B0AB74:
/* 80B0AB74  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80B0AB78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0AB7C  40 81 00 0C */	ble lbl_80B0AB88
/* 80B0AB80  38 00 00 01 */	li r0, 1
/* 80B0AB84  98 1D 07 18 */	stb r0, 0x718(r29)
lbl_80B0AB88:
/* 80B0AB88  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0AB8C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80B0AB90  C0 3D 07 14 */	lfs f1, 0x714(r29)
/* 80B0AB94  4B 76 5C 19 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B0AB98  48 00 01 6C */	b lbl_80B0AD04
lbl_80B0AB9C:
/* 80B0AB9C  38 7D 07 14 */	addi r3, r29, 0x714
/* 80B0ABA0  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 80B0ABA4  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80B0ABA8  4B 76 5B 99 */	bl cLib_chaseF__FPfff
/* 80B0ABAC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0ABB0  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B0ABB4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80B0ABB8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B0ABBC  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 80B0ABC0  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80B0ABC4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80B0ABC8  80 9D 06 EC */	lwz r4, 0x6ec(r29)
/* 80B0ABCC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B0ABD0  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80B0ABD4  38 C1 00 D4 */	addi r6, r1, 0xd4
/* 80B0ABD8  4B 76 61 E9 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B0ABDC  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0ABE0  38 81 00 BC */	addi r4, r1, 0xbc
/* 80B0ABE4  4B 83 C7 B9 */	bl PSVECSquareDistance
/* 80B0ABE8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0ABEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0ABF0  40 81 00 58 */	ble lbl_80B0AC48
/* 80B0ABF4  FC 00 08 34 */	frsqrte f0, f1
/* 80B0ABF8  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B0ABFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0AC00  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B0AC04  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0AC08  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0AC0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0AC10  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0AC14  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0AC18  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0AC1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0AC20  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0AC24  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0AC28  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0AC2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0AC30  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0AC34  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0AC38  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0AC3C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B0AC40  FC 20 08 18 */	frsp f1, f1
/* 80B0AC44  48 00 00 88 */	b lbl_80B0ACCC
lbl_80B0AC48:
/* 80B0AC48  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B0AC4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0AC50  40 80 00 10 */	bge lbl_80B0AC60
/* 80B0AC54  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0AC58  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B0AC5C  48 00 00 70 */	b lbl_80B0ACCC
lbl_80B0AC60:
/* 80B0AC60  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B0AC64  80 81 00 08 */	lwz r4, 8(r1)
/* 80B0AC68  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B0AC6C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B0AC70  7C 03 00 00 */	cmpw r3, r0
/* 80B0AC74  41 82 00 14 */	beq lbl_80B0AC88
/* 80B0AC78  40 80 00 40 */	bge lbl_80B0ACB8
/* 80B0AC7C  2C 03 00 00 */	cmpwi r3, 0
/* 80B0AC80  41 82 00 20 */	beq lbl_80B0ACA0
/* 80B0AC84  48 00 00 34 */	b lbl_80B0ACB8
lbl_80B0AC88:
/* 80B0AC88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0AC8C  41 82 00 0C */	beq lbl_80B0AC98
/* 80B0AC90  38 00 00 01 */	li r0, 1
/* 80B0AC94  48 00 00 28 */	b lbl_80B0ACBC
lbl_80B0AC98:
/* 80B0AC98  38 00 00 02 */	li r0, 2
/* 80B0AC9C  48 00 00 20 */	b lbl_80B0ACBC
lbl_80B0ACA0:
/* 80B0ACA0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0ACA4  41 82 00 0C */	beq lbl_80B0ACB0
/* 80B0ACA8  38 00 00 05 */	li r0, 5
/* 80B0ACAC  48 00 00 10 */	b lbl_80B0ACBC
lbl_80B0ACB0:
/* 80B0ACB0  38 00 00 03 */	li r0, 3
/* 80B0ACB4  48 00 00 08 */	b lbl_80B0ACBC
lbl_80B0ACB8:
/* 80B0ACB8  38 00 00 04 */	li r0, 4
lbl_80B0ACBC:
/* 80B0ACBC  2C 00 00 01 */	cmpwi r0, 1
/* 80B0ACC0  40 82 00 0C */	bne lbl_80B0ACCC
/* 80B0ACC4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0ACC8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B0ACCC:
/* 80B0ACCC  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80B0ACD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0ACD4  40 80 00 10 */	bge lbl_80B0ACE4
/* 80B0ACD8  38 00 00 03 */	li r0, 3
/* 80B0ACDC  B0 1D 07 10 */	sth r0, 0x710(r29)
/* 80B0ACE0  48 00 03 0C */	b lbl_80B0AFEC
lbl_80B0ACE4:
/* 80B0ACE4  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0ACE8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80B0ACEC  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 80B0ACF0  C0 5D 07 14 */	lfs f2, 0x714(r29)
/* 80B0ACF4  4B 76 54 85 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80B0ACF8  48 00 00 0C */	b lbl_80B0AD04
lbl_80B0ACFC:
/* 80B0ACFC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0AD00  D0 1D 07 14 */	stfs f0, 0x714(r29)
lbl_80B0AD04:
/* 80B0AD04  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80B0AD08  4B 56 C8 75 */	bl __ct__11dBgS_GndChkFv
/* 80B0AD0C  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80B0AD10  38 9D 06 F0 */	addi r4, r29, 0x6f0
/* 80B0AD14  4B 75 D0 15 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80B0AD18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0AD1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0AD20  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B0AD24  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80B0AD28  4B 56 97 79 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80B0AD2C  C0 5D 06 F4 */	lfs f2, 0x6f4(r29)
/* 80B0AD30  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B0AD34  EC 20 08 2A */	fadds f1, f0, f1
/* 80B0AD38  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80B0AD3C  40 80 00 10 */	bge lbl_80B0AD4C
/* 80B0AD40  38 7D 06 F4 */	addi r3, r29, 0x6f4
/* 80B0AD44  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80B0AD48  4B 76 59 F9 */	bl cLib_chaseF__FPfff
lbl_80B0AD4C:
/* 80B0AD4C  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80B0AD50  38 80 FF FF */	li r4, -1
/* 80B0AD54  4B 56 C8 9D */	bl __dt__11dBgS_GndChkFv
/* 80B0AD58  48 00 00 28 */	b lbl_80B0AD80
lbl_80B0AD5C:
/* 80B0AD5C  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 80B0AD60  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B0AD64  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B0AD68  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 80B0AD6C  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0AD70  38 9D 06 04 */	addi r4, r29, 0x604
/* 80B0AD74  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 80B0AD78  38 C1 00 D4 */	addi r6, r1, 0xd4
/* 80B0AD7C  4B 76 60 45 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_80B0AD80:
/* 80B0AD80  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B0AD84  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80B0AD88  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 80B0AD8C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B0AD90  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 80B0AD94  38 61 00 8C */	addi r3, r1, 0x8c
/* 80B0AD98  80 9D 06 EC */	lwz r4, 0x6ec(r29)
/* 80B0AD9C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B0ADA0  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 80B0ADA4  4B 75 BD 41 */	bl __pl__4cXyzCFRC3Vec
/* 80B0ADA8  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 80B0ADAC  38 81 00 8C */	addi r4, r1, 0x8c
/* 80B0ADB0  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 80B0ADB4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80B0ADB8  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80B0ADBC  4B 76 4C FD */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B0ADC0  C0 1D 06 FC */	lfs f0, 0x6fc(r29)
/* 80B0ADC4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B0ADC8  C0 1D 07 00 */	lfs f0, 0x700(r29)
/* 80B0ADCC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B0ADD0  C0 1D 07 04 */	lfs f0, 0x704(r29)
/* 80B0ADD4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B0ADD8  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 80B0ADDC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B0ADE0  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 80B0ADE4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B0ADE8  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80B0ADEC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B0ADF0  7F C3 F3 78 */	mr r3, r30
/* 80B0ADF4  38 81 00 80 */	addi r4, r1, 0x80
/* 80B0ADF8  38 A1 00 74 */	addi r5, r1, 0x74
/* 80B0ADFC  4B 67 5C AD */	bl Set__9dCamera_cF4cXyz4cXyz
/* 80B0AE00  48 00 01 EC */	b lbl_80B0AFEC
lbl_80B0AE04:
/* 80B0AE04  80 9D 06 EC */	lwz r4, 0x6ec(r29)
/* 80B0AE08  28 04 00 00 */	cmplwi r4, 0
/* 80B0AE0C  41 82 00 10 */	beq lbl_80B0AE1C
/* 80B0AE10  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 80B0AE14  2C 00 00 00 */	cmpwi r0, 0
/* 80B0AE18  40 82 00 10 */	bne lbl_80B0AE28
lbl_80B0AE1C:
/* 80B0AE1C  38 00 00 05 */	li r0, 5
/* 80B0AE20  B0 1D 07 10 */	sth r0, 0x710(r29)
/* 80B0AE24  48 00 01 C8 */	b lbl_80B0AFEC
lbl_80B0AE28:
/* 80B0AE28  7C 04 E8 40 */	cmplw r4, r29
/* 80B0AE2C  40 82 00 50 */	bne lbl_80B0AE7C
/* 80B0AE30  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 80B0AE34  38 61 00 68 */	addi r3, r1, 0x68
/* 80B0AE38  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B0AE3C  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 80B0AE40  4B 75 BC A5 */	bl __pl__4cXyzCFRC3Vec
/* 80B0AE44  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B0AE48  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80B0AE4C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B0AE50  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B0AE54  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B0AE58  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B0AE5C  38 7D 07 14 */	addi r3, r29, 0x714
/* 80B0AE60  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B0AE64  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80B0AE68  4B 76 58 D9 */	bl cLib_chaseF__FPfff
/* 80B0AE6C  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 80B0AE70  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80B0AE74  C0 3D 07 14 */	lfs f1, 0x714(r29)
/* 80B0AE78  4B 76 59 35 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
lbl_80B0AE7C:
/* 80B0AE7C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B0AE80  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80B0AE84  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 80B0AE88  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B0AE8C  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 80B0AE90  38 61 00 5C */	addi r3, r1, 0x5c
/* 80B0AE94  80 9D 06 EC */	lwz r4, 0x6ec(r29)
/* 80B0AE98  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B0AE9C  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 80B0AEA0  4B 75 BC 45 */	bl __pl__4cXyzCFRC3Vec
/* 80B0AEA4  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 80B0AEA8  38 81 00 5C */	addi r4, r1, 0x5c
/* 80B0AEAC  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 80B0AEB0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80B0AEB4  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80B0AEB8  4B 76 4C 01 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B0AEBC  C0 1D 06 FC */	lfs f0, 0x6fc(r29)
/* 80B0AEC0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B0AEC4  C0 1D 07 00 */	lfs f0, 0x700(r29)
/* 80B0AEC8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B0AECC  C0 1D 07 04 */	lfs f0, 0x704(r29)
/* 80B0AED0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B0AED4  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 80B0AED8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B0AEDC  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 80B0AEE0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B0AEE4  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80B0AEE8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B0AEEC  7F C3 F3 78 */	mr r3, r30
/* 80B0AEF0  38 81 00 50 */	addi r4, r1, 0x50
/* 80B0AEF4  38 A1 00 44 */	addi r5, r1, 0x44
/* 80B0AEF8  4B 67 5B B1 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 80B0AEFC  48 00 00 F0 */	b lbl_80B0AFEC
lbl_80B0AF00:
/* 80B0AF00  38 7D 07 08 */	addi r3, r29, 0x708
/* 80B0AF04  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80B0AF08  C0 5F 01 64 */	lfs f2, 0x164(r31)
/* 80B0AF0C  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 80B0AF10  4B 76 4B 2D */	bl cLib_addCalc2__FPffff
/* 80B0AF14  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 80B0AF18  38 9D 06 F0 */	addi r4, r29, 0x6f0
/* 80B0AF1C  C0 3D 07 14 */	lfs f1, 0x714(r29)
/* 80B0AF20  4B 76 58 8D */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B0AF24  C0 1D 06 FC */	lfs f0, 0x6fc(r29)
/* 80B0AF28  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B0AF2C  C0 1D 07 00 */	lfs f0, 0x700(r29)
/* 80B0AF30  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B0AF34  C0 1D 07 04 */	lfs f0, 0x704(r29)
/* 80B0AF38  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B0AF3C  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 80B0AF40  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B0AF44  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 80B0AF48  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B0AF4C  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80B0AF50  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B0AF54  7F C3 F3 78 */	mr r3, r30
/* 80B0AF58  38 81 00 38 */	addi r4, r1, 0x38
/* 80B0AF5C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80B0AF60  C0 3D 07 08 */	lfs f1, 0x708(r29)
/* 80B0AF64  38 C0 00 00 */	li r6, 0
/* 80B0AF68  4B 67 5B 79 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80B0AF6C  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 80B0AF70  2C 00 00 00 */	cmpwi r0, 0
/* 80B0AF74  40 82 00 78 */	bne lbl_80B0AFEC
/* 80B0AF78  38 00 00 05 */	li r0, 5
/* 80B0AF7C  B0 1D 07 10 */	sth r0, 0x710(r29)
/* 80B0AF80  48 00 00 6C */	b lbl_80B0AFEC
lbl_80B0AF84:
/* 80B0AF84  C0 1D 06 FC */	lfs f0, 0x6fc(r29)
/* 80B0AF88  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B0AF8C  C0 1D 07 00 */	lfs f0, 0x700(r29)
/* 80B0AF90  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B0AF94  C0 1D 07 04 */	lfs f0, 0x704(r29)
/* 80B0AF98  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B0AF9C  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 80B0AFA0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B0AFA4  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 80B0AFA8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B0AFAC  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80B0AFB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B0AFB4  38 81 00 20 */	addi r4, r1, 0x20
/* 80B0AFB8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80B0AFBC  4B 67 5C 5D */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 80B0AFC0  7F C3 F3 78 */	mr r3, r30
/* 80B0AFC4  4B 65 64 E9 */	bl Start__9dCamera_cFv
/* 80B0AFC8  7F C3 F3 78 */	mr r3, r30
/* 80B0AFCC  38 80 00 00 */	li r4, 0
/* 80B0AFD0  4B 65 80 3D */	bl SetTrimSize__9dCamera_cFl
/* 80B0AFD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0AFD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0AFDC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B0AFE0  4B 53 74 89 */	bl reset__14dEvt_control_cFv
/* 80B0AFE4  38 00 00 00 */	li r0, 0
/* 80B0AFE8  B0 1D 07 10 */	sth r0, 0x710(r29)
lbl_80B0AFEC:
/* 80B0AFEC  39 61 01 50 */	addi r11, r1, 0x150
/* 80B0AFF0  4B 85 72 39 */	bl _restgpr_29
/* 80B0AFF4  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80B0AFF8  7C 08 03 A6 */	mtlr r0
/* 80B0AFFC  38 21 01 50 */	addi r1, r1, 0x150
/* 80B0B000  4E 80 00 20 */	blr 
