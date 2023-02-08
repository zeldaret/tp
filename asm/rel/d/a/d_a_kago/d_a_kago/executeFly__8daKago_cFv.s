lbl_8084C2CC:
/* 8084C2CC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8084C2D0  7C 08 02 A6 */	mflr r0
/* 8084C2D4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8084C2D8  39 61 00 60 */	addi r11, r1, 0x60
/* 8084C2DC  4B B1 5F 01 */	bl _savegpr_29
/* 8084C2E0  7C 7D 1B 78 */	mr r29, r3
/* 8084C2E4  3C 80 80 85 */	lis r4, lit_3929@ha /* 0x80854B04@ha */
/* 8084C2E8  3B E4 4B 04 */	addi r31, r4, lit_3929@l /* 0x80854B04@l */
/* 8084C2EC  4B FF EC C5 */	bl startBalloonScore__8daKago_cFv
/* 8084C2F0  80 1D 07 44 */	lwz r0, 0x744(r29)
/* 8084C2F4  2C 00 00 03 */	cmpwi r0, 3
/* 8084C2F8  40 80 00 68 */	bge lbl_8084C360
/* 8084C2FC  80 1D 07 30 */	lwz r0, 0x730(r29)
/* 8084C300  2C 00 00 00 */	cmpwi r0, 0
/* 8084C304  40 82 00 1C */	bne lbl_8084C320
/* 8084C308  38 00 00 4B */	li r0, 0x4b
/* 8084C30C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084C310  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084C314  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 8084C318  38 00 00 00 */	li r0, 0
/* 8084C31C  98 03 5E 57 */	stb r0, 0x5e57(r3)
lbl_8084C320:
/* 8084C320  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 8084C324  28 00 00 01 */	cmplwi r0, 1
/* 8084C328  40 82 00 20 */	bne lbl_8084C348
/* 8084C32C  38 00 00 2A */	li r0, 0x2a
/* 8084C330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084C334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084C338  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 8084C33C  38 00 00 00 */	li r0, 0
/* 8084C340  98 03 5E 50 */	stb r0, 0x5e50(r3)
/* 8084C344  48 00 00 1C */	b lbl_8084C360
lbl_8084C348:
/* 8084C348  38 00 00 27 */	li r0, 0x27
/* 8084C34C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084C350  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084C354  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 8084C358  38 00 00 00 */	li r0, 0
/* 8084C35C  98 03 5E 50 */	stb r0, 0x5e50(r3)
lbl_8084C360:
/* 8084C360  88 1D 06 E6 */	lbz r0, 0x6e6(r29)
/* 8084C364  28 00 00 00 */	cmplwi r0, 0
/* 8084C368  41 82 00 0C */	beq lbl_8084C374
/* 8084C36C  7F A3 EB 78 */	mr r3, r29
/* 8084C370  48 00 71 9D */	bl setSibukiEffect__8daKago_cFv
lbl_8084C374:
/* 8084C374  7F A3 EB 78 */	mr r3, r29
/* 8084C378  4B FF ED 91 */	bl checkHeight__8daKago_cFv
/* 8084C37C  38 00 00 01 */	li r0, 1
/* 8084C380  98 1D 06 E1 */	stb r0, 0x6e1(r29)
/* 8084C384  80 1D 07 44 */	lwz r0, 0x744(r29)
/* 8084C388  2C 00 00 02 */	cmpwi r0, 2
/* 8084C38C  41 82 00 A8 */	beq lbl_8084C434
/* 8084C390  40 80 00 14 */	bge lbl_8084C3A4
/* 8084C394  2C 00 00 00 */	cmpwi r0, 0
/* 8084C398  41 82 00 18 */	beq lbl_8084C3B0
/* 8084C39C  40 80 00 78 */	bge lbl_8084C414
/* 8084C3A0  48 00 05 24 */	b lbl_8084C8C4
lbl_8084C3A4:
/* 8084C3A4  2C 00 00 05 */	cmpwi r0, 5
/* 8084C3A8  40 80 05 1C */	bge lbl_8084C8C4
/* 8084C3AC  48 00 03 40 */	b lbl_8084C6EC
lbl_8084C3B0:
/* 8084C3B0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8084C3B4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8084C3B8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8084C3BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8084C3C0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8084C3C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8084C3C8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8084C3CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8084C3D0  7F A3 EB 78 */	mr r3, r29
/* 8084C3D4  38 81 00 20 */	addi r4, r1, 0x20
/* 8084C3D8  38 A0 00 00 */	li r5, 0
/* 8084C3DC  4B FF D7 CD */	bl checkGroundHeight__8daKago_cF4cXyzPf
/* 8084C3E0  D0 3D 07 04 */	stfs f1, 0x704(r29)
/* 8084C3E4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8084C3E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8084C3EC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8084C3F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8084C3F4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8084C3F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8084C3FC  7F A3 EB 78 */	mr r3, r29
/* 8084C400  38 81 00 14 */	addi r4, r1, 0x14
/* 8084C404  4B FF DC 6D */	bl checkRoofHeight__8daKago_cF4cXyz
/* 8084C408  D0 3D 07 08 */	stfs f1, 0x708(r29)
/* 8084C40C  7F A3 EB 78 */	mr r3, r29
/* 8084C410  4B FF E7 7D */	bl setPlayerRideOn__8daKago_cFv
lbl_8084C414:
/* 8084C414  7F A3 EB 78 */	mr r3, r29
/* 8084C418  4B FF FD ED */	bl setFlyAnime__8daKago_cFv
/* 8084C41C  38 00 00 00 */	li r0, 0
/* 8084C420  B0 1D 07 12 */	sth r0, 0x712(r29)
/* 8084C424  B0 1D 07 10 */	sth r0, 0x710(r29)
/* 8084C428  38 00 00 02 */	li r0, 2
/* 8084C42C  90 1D 07 44 */	stw r0, 0x744(r29)
/* 8084C430  48 00 04 94 */	b lbl_8084C8C4
lbl_8084C434:
/* 8084C434  80 7D 07 68 */	lwz r3, 0x768(r29)
/* 8084C438  88 9D 07 70 */	lbz r4, 0x770(r29)
/* 8084C43C  7C 84 07 74 */	extsb r4, r4
/* 8084C440  4B 80 53 71 */	bl dPath_GetPnt__FPC5dPathi
/* 8084C444  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084C448  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8084C44C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084C450  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8084C454  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084C458  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8084C45C  80 7D 07 68 */	lwz r3, 0x768(r29)
/* 8084C460  88 1D 07 72 */	lbz r0, 0x772(r29)
/* 8084C464  7C 04 07 74 */	extsb r4, r0
/* 8084C468  88 1D 07 70 */	lbz r0, 0x770(r29)
/* 8084C46C  7C 00 07 74 */	extsb r0, r0
/* 8084C470  7C 84 00 50 */	subf r4, r4, r0
/* 8084C474  4B 80 53 3D */	bl dPath_GetPnt__FPC5dPathi
/* 8084C478  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084C47C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8084C480  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084C484  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8084C488  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084C48C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8084C490  38 61 00 38 */	addi r3, r1, 0x38
/* 8084C494  38 81 00 44 */	addi r4, r1, 0x44
/* 8084C498  4B A2 47 6D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8084C49C  7C 7E 1B 78 */	mr r30, r3
/* 8084C4A0  B3 DD 07 14 */	sth r30, 0x714(r29)
/* 8084C4A4  7F A3 EB 78 */	mr r3, r29
/* 8084C4A8  7F C4 F3 78 */	mr r4, r30
/* 8084C4AC  38 A0 00 00 */	li r5, 0
/* 8084C4B0  4B FF F4 BD */	bl flySpeedCalc__8daKago_cFsi
/* 8084C4B4  7F A3 EB 78 */	mr r3, r29
/* 8084C4B8  38 80 00 0B */	li r4, 0xb
/* 8084C4BC  4B FF D2 DD */	bl checkBck__8daKago_cFi
/* 8084C4C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084C4C4  41 82 00 40 */	beq lbl_8084C504
/* 8084C4C8  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 8084C4CC  38 80 00 01 */	li r4, 1
/* 8084C4D0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8084C4D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8084C4D8  40 82 00 18 */	bne lbl_8084C4F0
/* 8084C4DC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084C4E0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8084C4E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8084C4E8  41 82 00 08 */	beq lbl_8084C4F0
/* 8084C4EC  38 80 00 00 */	li r4, 0
lbl_8084C4F0:
/* 8084C4F0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8084C4F4  41 82 00 A8 */	beq lbl_8084C59C
/* 8084C4F8  7F A3 EB 78 */	mr r3, r29
/* 8084C4FC  4B FF FD 09 */	bl setFlyAnime__8daKago_cFv
/* 8084C500  48 00 00 9C */	b lbl_8084C59C
lbl_8084C504:
/* 8084C504  A8 7D 07 10 */	lha r3, 0x710(r29)
/* 8084C508  7C 60 07 35 */	extsh. r0, r3
/* 8084C50C  40 80 00 3C */	bge lbl_8084C548
/* 8084C510  7F A3 EB 78 */	mr r3, r29
/* 8084C514  38 80 00 0F */	li r4, 0xf
/* 8084C518  4B FF D2 81 */	bl checkBck__8daKago_cFi
/* 8084C51C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084C520  40 82 00 1C */	bne lbl_8084C53C
/* 8084C524  7F A3 EB 78 */	mr r3, r29
/* 8084C528  38 80 00 0F */	li r4, 0xf
/* 8084C52C  38 A0 00 02 */	li r5, 2
/* 8084C530  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8084C534  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084C538  4B FF D1 B9 */	bl setBck__8daKago_cFiUcff
lbl_8084C53C:
/* 8084C53C  38 00 00 0A */	li r0, 0xa
/* 8084C540  90 1D 07 28 */	stw r0, 0x728(r29)
/* 8084C544  48 00 00 58 */	b lbl_8084C59C
lbl_8084C548:
/* 8084C548  7C 60 07 35 */	extsh. r0, r3
/* 8084C54C  40 81 00 3C */	ble lbl_8084C588
/* 8084C550  7F A3 EB 78 */	mr r3, r29
/* 8084C554  38 80 00 0D */	li r4, 0xd
/* 8084C558  4B FF D2 41 */	bl checkBck__8daKago_cFi
/* 8084C55C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084C560  40 82 00 1C */	bne lbl_8084C57C
/* 8084C564  7F A3 EB 78 */	mr r3, r29
/* 8084C568  38 80 00 0D */	li r4, 0xd
/* 8084C56C  38 A0 00 02 */	li r5, 2
/* 8084C570  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8084C574  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084C578  4B FF D1 79 */	bl setBck__8daKago_cFiUcff
lbl_8084C57C:
/* 8084C57C  38 00 00 5A */	li r0, 0x5a
/* 8084C580  90 1D 07 28 */	stw r0, 0x728(r29)
/* 8084C584  48 00 00 18 */	b lbl_8084C59C
lbl_8084C588:
/* 8084C588  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 8084C58C  2C 00 00 00 */	cmpwi r0, 0
/* 8084C590  40 82 00 0C */	bne lbl_8084C59C
/* 8084C594  7F A3 EB 78 */	mr r3, r29
/* 8084C598  4B FF FC 6D */	bl setFlyAnime__8daKago_cFv
lbl_8084C59C:
/* 8084C59C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8084C5A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084C5A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8084C5A8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8084C5AC  7C 43 04 2E */	lfsx f2, r3, r0
/* 8084C5B0  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8084C5B4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8084C5B8  40 81 00 20 */	ble lbl_8084C5D8
/* 8084C5BC  3C 60 80 85 */	lis r3, l_HIO@ha /* 0x80854F78@ha */
/* 8084C5C0  38 63 4F 78 */	addi r3, r3, l_HIO@l /* 0x80854F78@l */
/* 8084C5C4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8084C5C8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8084C5CC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8084C5D0  EC 21 00 2A */	fadds f1, f1, f0
/* 8084C5D4  48 00 00 1C */	b lbl_8084C5F0
lbl_8084C5D8:
/* 8084C5D8  3C 60 80 85 */	lis r3, l_HIO@ha /* 0x80854F78@ha */
/* 8084C5DC  38 63 4F 78 */	addi r3, r3, l_HIO@l /* 0x80854F78@l */
/* 8084C5E0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8084C5E4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8084C5E8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8084C5EC  EC 21 00 2A */	fadds f1, f1, f0
lbl_8084C5F0:
/* 8084C5F0  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 8084C5F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8084C5F8  FC 00 02 10 */	fabs f0, f0
/* 8084C5FC  FC 40 00 18 */	frsp f2, f0
/* 8084C600  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8084C604  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8084C608  40 81 00 14 */	ble lbl_8084C61C
/* 8084C60C  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 8084C610  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 8084C614  4B A2 41 2D */	bl cLib_chaseF__FPfff
/* 8084C618  48 00 00 10 */	b lbl_8084C628
lbl_8084C61C:
/* 8084C61C  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 8084C620  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084C624  4B A2 41 1D */	bl cLib_chaseF__FPfff
lbl_8084C628:
/* 8084C628  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8084C62C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8084C630  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8084C634  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084C638  7C 64 02 14 */	add r3, r4, r0
/* 8084C63C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084C640  FC 00 02 10 */	fabs f0, f0
/* 8084C644  FC 20 00 18 */	frsp f1, f0
/* 8084C648  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 8084C64C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084C650  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8084C654  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8084C658  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084C65C  7C 24 04 2E */	lfsx f1, r4, r0
/* 8084C660  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 8084C664  FC 00 00 50 */	fneg f0, f0
/* 8084C668  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084C66C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8084C670  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8084C674  D0 01 00 08 */	stfs f0, 8(r1)
/* 8084C678  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8084C67C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8084C680  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8084C684  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8084C688  7F A3 EB 78 */	mr r3, r29
/* 8084C68C  38 81 00 08 */	addi r4, r1, 8
/* 8084C690  4B FF E9 F9 */	bl checkNextPath__8daKago_cF4cXyz
/* 8084C694  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8084C698  FC 20 08 18 */	frsp f1, f1
/* 8084C69C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8084C6A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084C6A4  40 80 02 20 */	bge lbl_8084C8C4
/* 8084C6A8  38 61 00 38 */	addi r3, r1, 0x38
/* 8084C6AC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8084C6B0  4B A2 45 55 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8084C6B4  7C 03 F0 50 */	subf r0, r3, r30
/* 8084C6B8  7C 03 07 34 */	extsh r3, r0
/* 8084C6BC  4B B1 8A 15 */	bl abs
/* 8084C6C0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8084C6C4  40 80 02 00 */	bge lbl_8084C8C4
/* 8084C6C8  88 7D 07 70 */	lbz r3, 0x770(r29)
/* 8084C6CC  88 1D 07 72 */	lbz r0, 0x772(r29)
/* 8084C6D0  7C 03 02 14 */	add r0, r3, r0
/* 8084C6D4  98 1D 07 70 */	stb r0, 0x770(r29)
/* 8084C6D8  7F A3 EB 78 */	mr r3, r29
/* 8084C6DC  4B FF F9 9D */	bl checkFlySceneChange__8daKago_cFv
/* 8084C6E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084C6E4  41 82 01 E0 */	beq lbl_8084C8C4
/* 8084C6E8  48 00 01 FC */	b lbl_8084C8E4
lbl_8084C6EC:
/* 8084C6EC  88 9D 07 70 */	lbz r4, 0x770(r29)
/* 8084C6F0  7C 84 07 74 */	extsb r4, r4
/* 8084C6F4  80 7D 07 68 */	lwz r3, 0x768(r29)
/* 8084C6F8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8084C6FC  7C 04 00 00 */	cmpw r4, r0
/* 8084C700  41 80 00 10 */	blt lbl_8084C710
/* 8084C704  AB DD 04 DE */	lha r30, 0x4de(r29)
/* 8084C708  38 80 00 00 */	li r4, 0
/* 8084C70C  48 00 00 78 */	b lbl_8084C784
lbl_8084C710:
/* 8084C710  4B 80 50 A1 */	bl dPath_GetPnt__FPC5dPathi
/* 8084C714  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084C718  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8084C71C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084C720  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8084C724  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084C728  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8084C72C  80 7D 07 68 */	lwz r3, 0x768(r29)
/* 8084C730  88 1D 07 72 */	lbz r0, 0x772(r29)
/* 8084C734  7C 04 07 74 */	extsb r4, r0
/* 8084C738  88 1D 07 70 */	lbz r0, 0x770(r29)
/* 8084C73C  7C 00 07 74 */	extsb r0, r0
/* 8084C740  7C 84 00 50 */	subf r4, r4, r0
/* 8084C744  4B 80 50 6D */	bl dPath_GetPnt__FPC5dPathi
/* 8084C748  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084C74C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8084C750  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084C754  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8084C758  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084C75C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8084C760  38 61 00 38 */	addi r3, r1, 0x38
/* 8084C764  38 81 00 44 */	addi r4, r1, 0x44
/* 8084C768  4B A2 44 9D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8084C76C  7C 7E 1B 78 */	mr r30, r3
/* 8084C770  38 61 00 38 */	addi r3, r1, 0x38
/* 8084C774  38 81 00 44 */	addi r4, r1, 0x44
/* 8084C778  4B A2 44 FD */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8084C77C  7C 03 00 D0 */	neg r0, r3
/* 8084C780  7C 04 07 34 */	extsh r4, r0
lbl_8084C784:
/* 8084C784  80 1D 07 44 */	lwz r0, 0x744(r29)
/* 8084C788  2C 00 00 03 */	cmpwi r0, 3
/* 8084C78C  40 82 00 30 */	bne lbl_8084C7BC
/* 8084C790  38 7D 06 DE */	addi r3, r29, 0x6de
/* 8084C794  38 80 00 00 */	li r4, 0
/* 8084C798  38 A0 00 04 */	li r5, 4
/* 8084C79C  4B A2 3E C1 */	bl cLib_chaseUC__FPUcUcUc
/* 8084C7A0  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8084C7A4  38 80 E0 00 */	li r4, -8192
/* 8084C7A8  38 A0 00 08 */	li r5, 8
/* 8084C7AC  38 C0 01 00 */	li r6, 0x100
/* 8084C7B0  38 E0 00 10 */	li r7, 0x10
/* 8084C7B4  4B A2 3D 8D */	bl cLib_addCalcAngleS__FPsssss
/* 8084C7B8  48 00 00 18 */	b lbl_8084C7D0
lbl_8084C7BC:
/* 8084C7BC  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8084C7C0  38 A0 00 08 */	li r5, 8
/* 8084C7C4  38 C0 01 00 */	li r6, 0x100
/* 8084C7C8  38 E0 00 10 */	li r7, 0x10
/* 8084C7CC  4B A2 3D 75 */	bl cLib_addCalcAngleS__FPsssss
lbl_8084C7D0:
/* 8084C7D0  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8084C7D4  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 8084C7D8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8084C7DC  7F C4 F3 78 */	mr r4, r30
/* 8084C7E0  38 A0 00 08 */	li r5, 8
/* 8084C7E4  38 C0 04 00 */	li r6, 0x400
/* 8084C7E8  38 E0 00 10 */	li r7, 0x10
/* 8084C7EC  4B A2 3D 55 */	bl cLib_addCalcAngleS__FPsssss
/* 8084C7F0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8084C7F4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8084C7F8  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8084C7FC  38 80 00 00 */	li r4, 0
/* 8084C800  38 A0 00 08 */	li r5, 8
/* 8084C804  38 C0 04 00 */	li r6, 0x400
/* 8084C808  38 E0 00 10 */	li r7, 0x10
/* 8084C80C  4B A2 3D 35 */	bl cLib_addCalcAngleS__FPsssss
/* 8084C810  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 8084C814  3C 60 80 85 */	lis r3, l_HIO@ha /* 0x80854F78@ha */
/* 8084C818  38 63 4F 78 */	addi r3, r3, l_HIO@l /* 0x80854F78@l */
/* 8084C81C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8084C820  EC 21 00 2A */	fadds f1, f1, f0
/* 8084C824  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 8084C828  EC 00 08 28 */	fsubs f0, f0, f1
/* 8084C82C  FC 00 02 10 */	fabs f0, f0
/* 8084C830  FC 40 00 18 */	frsp f2, f0
/* 8084C834  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8084C838  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8084C83C  40 81 00 14 */	ble lbl_8084C850
/* 8084C840  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 8084C844  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 8084C848  4B A2 3E F9 */	bl cLib_chaseF__FPfff
/* 8084C84C  48 00 00 10 */	b lbl_8084C85C
lbl_8084C850:
/* 8084C850  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 8084C854  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084C858  4B A2 3E E9 */	bl cLib_chaseF__FPfff
lbl_8084C85C:
/* 8084C85C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8084C860  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8084C864  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8084C868  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084C86C  7C 64 02 14 */	add r3, r4, r0
/* 8084C870  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084C874  FC 00 02 10 */	fabs f0, f0
/* 8084C878  FC 20 00 18 */	frsp f1, f0
/* 8084C87C  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 8084C880  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084C884  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8084C888  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8084C88C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084C890  7C 24 04 2E */	lfsx f1, r4, r0
/* 8084C894  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 8084C898  FC 00 00 50 */	fneg f0, f0
/* 8084C89C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084C8A0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8084C8A4  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 8084C8A8  2C 00 00 00 */	cmpwi r0, 0
/* 8084C8AC  40 82 00 38 */	bne lbl_8084C8E4
/* 8084C8B0  7F A3 EB 78 */	mr r3, r29
/* 8084C8B4  38 80 00 04 */	li r4, 4
/* 8084C8B8  38 A0 00 00 */	li r5, 0
/* 8084C8BC  4B FF E1 DD */	bl setActionMode__8daKago_cFii
/* 8084C8C0  48 00 00 24 */	b lbl_8084C8E4
lbl_8084C8C4:
/* 8084C8C4  7F A3 EB 78 */	mr r3, r29
/* 8084C8C8  38 80 00 01 */	li r4, 1
/* 8084C8CC  4B FF E9 15 */	bl checkWallHitFall__8daKago_cFi
/* 8084C8D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084C8D4  40 82 00 10 */	bne lbl_8084C8E4
/* 8084C8D8  7F A3 EB 78 */	mr r3, r29
/* 8084C8DC  4B FF EC 91 */	bl checkAttackStart__8daKago_cFv
/* 8084C8E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
lbl_8084C8E4:
/* 8084C8E4  39 61 00 60 */	addi r11, r1, 0x60
/* 8084C8E8  4B B1 59 41 */	bl _restgpr_29
/* 8084C8EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8084C8F0  7C 08 03 A6 */	mtlr r0
/* 8084C8F4  38 21 00 60 */	addi r1, r1, 0x60
/* 8084C8F8  4E 80 00 20 */	blr 
