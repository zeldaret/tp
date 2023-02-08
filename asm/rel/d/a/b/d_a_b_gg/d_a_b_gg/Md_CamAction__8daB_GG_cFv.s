lbl_805E18E8:
/* 805E18E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E18EC  7C 08 02 A6 */	mflr r0
/* 805E18F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E18F4  39 61 00 40 */	addi r11, r1, 0x40
/* 805E18F8  4B D8 08 E5 */	bl _savegpr_29
/* 805E18FC  7C 7D 1B 78 */	mr r29, r3
/* 805E1900  3C 80 80 5F */	lis r4, lit_3911@ha /* 0x805ED060@ha */
/* 805E1904  3B E4 D0 60 */	addi r31, r4, lit_3911@l /* 0x805ED060@l */
/* 805E1908  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E190C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E1910  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 805E1914  88 03 05 CB */	lbz r0, 0x5cb(r3)
/* 805E1918  2C 00 00 01 */	cmpwi r0, 1
/* 805E191C  41 82 01 D4 */	beq lbl_805E1AF0
/* 805E1920  40 80 02 F0 */	bge lbl_805E1C10
/* 805E1924  2C 00 00 00 */	cmpwi r0, 0
/* 805E1928  40 80 00 08 */	bge lbl_805E1930
/* 805E192C  48 00 02 E4 */	b lbl_805E1C10
lbl_805E1930:
/* 805E1930  4B FF E3 29 */	bl CameraSet__8daB_GG_cFv
/* 805E1934  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E1938  41 82 02 D8 */	beq lbl_805E1C10
/* 805E193C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070504@ha */
/* 805E1940  38 03 05 04 */	addi r0, r3, 0x0504 /* 0x00070504@l */
/* 805E1944  90 01 00 08 */	stw r0, 8(r1)
/* 805E1948  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805E194C  38 81 00 08 */	addi r4, r1, 8
/* 805E1950  38 A0 FF FF */	li r5, -1
/* 805E1954  81 9D 0E 4C */	lwz r12, 0xe4c(r29)
/* 805E1958  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805E195C  7D 89 03 A6 */	mtctr r12
/* 805E1960  4E 80 04 21 */	bctrl 
/* 805E1964  38 00 00 00 */	li r0, 0
/* 805E1968  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 805E196C  C0 3F 02 28 */	lfs f1, 0x228(r31)
/* 805E1970  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805E1974  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E1978  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E197C  C0 1F 02 2C */	lfs f0, 0x22c(r31)
/* 805E1980  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E1984  D0 3D 04 D0 */	stfs f1, 0x4d0(r29)
/* 805E1988  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805E198C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805E1990  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805E1994  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 805E1998  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805E199C  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 805E19A0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E19A4  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 805E19A8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805E19AC  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 805E19B0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805E19B4  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 805E19B8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 805E19BC  3C 80 80 5F */	lis r4, in_pos@ha /* 0x805ED7BC@ha */
/* 805E19C0  38 04 D7 BC */	addi r0, r4, in_pos@l /* 0x805ED7BC@l */
/* 805E19C4  7C 80 2A 14 */	add r4, r0, r5
/* 805E19C8  4B C8 F2 3D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E19CC  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 805E19D0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805E19D4  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805E19D8  C0 7D 04 D0 */	lfs f3, 0x4d0(r29)
/* 805E19DC  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 805E19E0  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 805E19E4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 805E19E8  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 805E19EC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805E19F0  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 805E19F4  EC 02 00 2A */	fadds f0, f2, f0
/* 805E19F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E19FC  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 805E1A00  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805E1A04  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805E1A08  7F A3 EB 78 */	mr r3, r29
/* 805E1A0C  38 81 00 0C */	addi r4, r1, 0xc
/* 805E1A10  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 805E1A14  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805E1A18  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805E1A1C  4B FF E3 E1 */	bl SetStopCam__8daB_GG_cF4cXyzffs
/* 805E1A20  88 7D 05 CB */	lbz r3, 0x5cb(r29)
/* 805E1A24  38 03 00 01 */	addi r0, r3, 1
/* 805E1A28  98 1D 05 CB */	stb r0, 0x5cb(r29)
/* 805E1A2C  C0 3D 0F C8 */	lfs f1, 0xfc8(r29)
/* 805E1A30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E1A34  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E1A38  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805E1A3C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805E1A40  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E1A44  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E1A48  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 805E1A4C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E1A50  38 7D 06 00 */	addi r3, r29, 0x600
/* 805E1A54  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805E1A58  4B C8 F1 AD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E1A5C  7C 65 1B 78 */	mr r5, r3
/* 805E1A60  38 61 00 18 */	addi r3, r1, 0x18
/* 805E1A64  38 9D 06 00 */	addi r4, r29, 0x600
/* 805E1A68  38 C1 00 24 */	addi r6, r1, 0x24
/* 805E1A6C  4B C8 F3 55 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E1A70  7F C3 F3 78 */	mr r3, r30
/* 805E1A74  38 81 00 18 */	addi r4, r1, 0x18
/* 805E1A78  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805E1A7C  38 C0 00 00 */	li r6, 0
/* 805E1A80  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 805E1A84  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805E1A88  7D 89 03 A6 */	mtctr r12
/* 805E1A8C  4E 80 04 21 */	bctrl 
/* 805E1A90  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805E1A94  B0 1D 06 58 */	sth r0, 0x658(r29)
/* 805E1A98  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 805E1A9C  D0 1D 06 48 */	stfs f0, 0x648(r29)
/* 805E1AA0  88 1D 05 CE */	lbz r0, 0x5ce(r29)
/* 805E1AA4  28 00 00 FF */	cmplwi r0, 0xff
/* 805E1AA8  41 82 00 3C */	beq lbl_805E1AE4
/* 805E1AAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E1AB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E1AB4  38 80 00 8E */	li r4, 0x8e
/* 805E1AB8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805E1ABC  7C 05 07 74 */	extsb r5, r0
/* 805E1AC0  4B A5 38 A1 */	bl isSwitch__10dSv_info_cCFii
/* 805E1AC4  2C 03 00 00 */	cmpwi r3, 0
/* 805E1AC8  41 82 00 1C */	beq lbl_805E1AE4
/* 805E1ACC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E1AD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E1AD4  38 80 00 8E */	li r4, 0x8e
/* 805E1AD8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805E1ADC  7C 05 07 74 */	extsb r5, r0
/* 805E1AE0  4B A5 37 21 */	bl onSwitch__10dSv_info_cFii
lbl_805E1AE4:
/* 805E1AE4  38 00 00 00 */	li r0, 0
/* 805E1AE8  98 1D 05 B0 */	stb r0, 0x5b0(r29)
/* 805E1AEC  48 00 01 24 */	b lbl_805E1C10
lbl_805E1AF0:
/* 805E1AF0  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 805E1AF4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E1AF8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805E1AFC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 805E1B00  C0 1F 02 2C */	lfs f0, 0x22c(r31)
/* 805E1B04  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805E1B08  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 805E1B0C  EC 02 08 2A */	fadds f0, f2, f1
/* 805E1B10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E1B14  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805E1B18  D0 1D 06 0C */	stfs f0, 0x60c(r29)
/* 805E1B1C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E1B20  D0 1D 06 10 */	stfs f0, 0x610(r29)
/* 805E1B24  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805E1B28  D0 1D 06 14 */	stfs f0, 0x614(r29)
/* 805E1B2C  C0 1D 06 10 */	lfs f0, 0x610(r29)
/* 805E1B30  EC 00 08 2A */	fadds f0, f0, f1
/* 805E1B34  D0 1D 06 10 */	stfs f0, 0x610(r29)
/* 805E1B38  A8 7D 06 58 */	lha r3, 0x658(r29)
/* 805E1B3C  38 03 00 50 */	addi r0, r3, 0x50
/* 805E1B40  B0 1D 06 58 */	sth r0, 0x658(r29)
/* 805E1B44  C0 3D 06 48 */	lfs f1, 0x648(r29)
/* 805E1B48  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805E1B4C  EC 01 00 2A */	fadds f0, f1, f0
/* 805E1B50  D0 1D 06 48 */	stfs f0, 0x648(r29)
/* 805E1B54  C0 1D 06 48 */	lfs f0, 0x648(r29)
/* 805E1B58  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805E1B5C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 805E1B60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E1B64  38 7D 06 18 */	addi r3, r29, 0x618
/* 805E1B68  38 81 00 18 */	addi r4, r1, 0x18
/* 805E1B6C  A8 BD 06 58 */	lha r5, 0x658(r29)
/* 805E1B70  38 C1 00 24 */	addi r6, r1, 0x24
/* 805E1B74  4B C8 F2 4D */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E1B78  7F A3 EB 78 */	mr r3, r29
/* 805E1B7C  C0 3F 02 30 */	lfs f1, 0x230(r31)
/* 805E1B80  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 805E1B84  4B FF E5 51 */	bl SetMoveCam1__8daB_GG_cFff
/* 805E1B88  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805E1B8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E1B90  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E1B94  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E1B98  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805E1B9C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805E1BA0  3C 60 80 5F */	lis r3, data_805ED72C@ha /* 0x805ED72C@ha */
/* 805E1BA4  38 63 D7 2C */	addi r3, r3, data_805ED72C@l /* 0x805ED72C@l */
/* 805E1BA8  80 63 00 00 */	lwz r3, 0(r3)
/* 805E1BAC  C0 23 00 04 */	lfs f1, 4(r3)
/* 805E1BB0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E1BB4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E1BB8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805E1BBC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805E1BC0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E1BC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E1BC8  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 805E1BCC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E1BD0  38 7D 06 00 */	addi r3, r29, 0x600
/* 805E1BD4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805E1BD8  4B C8 F0 2D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E1BDC  7C 65 1B 78 */	mr r5, r3
/* 805E1BE0  38 61 00 18 */	addi r3, r1, 0x18
/* 805E1BE4  38 9D 06 00 */	addi r4, r29, 0x600
/* 805E1BE8  38 C1 00 24 */	addi r6, r1, 0x24
/* 805E1BEC  4B C8 F1 D5 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E1BF0  7F C3 F3 78 */	mr r3, r30
/* 805E1BF4  38 81 00 18 */	addi r4, r1, 0x18
/* 805E1BF8  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805E1BFC  38 C0 00 00 */	li r6, 0
/* 805E1C00  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 805E1C04  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805E1C08  7D 89 03 A6 */	mtctr r12
/* 805E1C0C  4E 80 04 21 */	bctrl 
lbl_805E1C10:
/* 805E1C10  39 61 00 40 */	addi r11, r1, 0x40
/* 805E1C14  4B D8 06 15 */	bl _restgpr_29
/* 805E1C18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E1C1C  7C 08 03 A6 */	mtlr r0
/* 805E1C20  38 21 00 40 */	addi r1, r1, 0x40
/* 805E1C24  4E 80 00 20 */	blr 
