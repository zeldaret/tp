lbl_806A8938:
/* 806A8938  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806A893C  7C 08 02 A6 */	mflr r0
/* 806A8940  90 01 00 54 */	stw r0, 0x54(r1)
/* 806A8944  39 61 00 50 */	addi r11, r1, 0x50
/* 806A8948  4B CB 98 95 */	bl _savegpr_29
/* 806A894C  7C 7E 1B 78 */	mr r30, r3
/* 806A8950  3C 80 80 6B */	lis r4, lit_3916@ha /* 0x806A9F30@ha */
/* 806A8954  3B E4 9F 30 */	addi r31, r4, lit_3916@l /* 0x806A9F30@l */
/* 806A8958  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A895C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A8960  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 806A8964  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 806A8968  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806A896C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806A8970  EC 21 00 28 */	fsubs f1, f1, f0
/* 806A8974  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806A8978  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806A897C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 806A8980  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 806A8984  88 03 05 AE */	lbz r0, 0x5ae(r3)
/* 806A8988  2C 00 00 02 */	cmpwi r0, 2
/* 806A898C  41 82 01 78 */	beq lbl_806A8B04
/* 806A8990  40 80 00 14 */	bge lbl_806A89A4
/* 806A8994  2C 00 00 00 */	cmpwi r0, 0
/* 806A8998  41 82 00 18 */	beq lbl_806A89B0
/* 806A899C  40 80 00 D4 */	bge lbl_806A8A70
/* 806A89A0  48 00 02 A8 */	b lbl_806A8C48
lbl_806A89A4:
/* 806A89A4  2C 00 00 04 */	cmpwi r0, 4
/* 806A89A8  40 80 02 A0 */	bge lbl_806A8C48
/* 806A89AC  48 00 02 98 */	b lbl_806A8C44
lbl_806A89B0:
/* 806A89B0  38 00 00 64 */	li r0, 0x64
/* 806A89B4  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 806A89B8  7F A3 EB 78 */	mr r3, r29
/* 806A89BC  38 81 00 34 */	addi r4, r1, 0x34
/* 806A89C0  38 A0 00 00 */	li r5, 0
/* 806A89C4  38 C0 00 00 */	li r6, 0
/* 806A89C8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806A89CC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806A89D0  7D 89 03 A6 */	mtctr r12
/* 806A89D4  4E 80 04 21 */	bctrl 
/* 806A89D8  7F C3 F3 78 */	mr r3, r30
/* 806A89DC  4B FF F1 65 */	bl DemoStart__8daE_DF_cFv
/* 806A89E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A89E4  41 82 02 64 */	beq lbl_806A8C48
/* 806A89E8  7F C3 F3 78 */	mr r3, r30
/* 806A89EC  38 80 00 07 */	li r4, 7
/* 806A89F0  38 A0 00 00 */	li r5, 0
/* 806A89F4  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806A89F8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A89FC  4B FF EE D9 */	bl SetAnm__8daE_DF_cFiiff
/* 806A8A00  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007019E@ha */
/* 806A8A04  38 03 01 9E */	addi r0, r3, 0x019E /* 0x0007019E@l */
/* 806A8A08  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A8A0C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 806A8A10  38 81 00 24 */	addi r4, r1, 0x24
/* 806A8A14  38 A0 00 00 */	li r5, 0
/* 806A8A18  38 C0 FF FF */	li r6, -1
/* 806A8A1C  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 806A8A20  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A8A24  7D 89 03 A6 */	mtctr r12
/* 806A8A28  4E 80 04 21 */	bctrl 
/* 806A8A2C  88 7E 05 AE */	lbz r3, 0x5ae(r30)
/* 806A8A30  38 03 00 01 */	addi r0, r3, 1
/* 806A8A34  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 806A8A38  7F C3 F3 78 */	mr r3, r30
/* 806A8A3C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806A8A40  4B FF EF 41 */	bl CameraSet__8daE_DF_cFf
/* 806A8A44  38 00 00 03 */	li r0, 3
/* 806A8A48  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 806A8A4C  38 60 00 00 */	li r3, 0
/* 806A8A50  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 806A8A54  38 00 00 04 */	li r0, 4
/* 806A8A58  90 1D 06 14 */	stw r0, 0x614(r29)
/* 806A8A5C  38 00 00 07 */	li r0, 7
/* 806A8A60  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 806A8A64  90 7D 06 10 */	stw r3, 0x610(r29)
/* 806A8A68  B0 7D 06 0A */	sth r3, 0x60a(r29)
/* 806A8A6C  48 00 01 DC */	b lbl_806A8C48
lbl_806A8A70:
/* 806A8A70  7F A3 EB 78 */	mr r3, r29
/* 806A8A74  38 81 00 34 */	addi r4, r1, 0x34
/* 806A8A78  38 A0 00 00 */	li r5, 0
/* 806A8A7C  38 C0 00 00 */	li r6, 0
/* 806A8A80  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806A8A84  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806A8A88  7D 89 03 A6 */	mtctr r12
/* 806A8A8C  4E 80 04 21 */	bctrl 
/* 806A8A90  38 00 00 04 */	li r0, 4
/* 806A8A94  90 1D 06 14 */	stw r0, 0x614(r29)
/* 806A8A98  38 00 00 07 */	li r0, 7
/* 806A8A9C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 806A8AA0  38 60 00 00 */	li r3, 0
/* 806A8AA4  90 7D 06 10 */	stw r3, 0x610(r29)
/* 806A8AA8  B0 7D 06 0A */	sth r3, 0x60a(r29)
/* 806A8AAC  80 9E 05 C8 */	lwz r4, 0x5c8(r30)
/* 806A8AB0  38 A0 00 01 */	li r5, 1
/* 806A8AB4  88 04 00 11 */	lbz r0, 0x11(r4)
/* 806A8AB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A8ABC  40 82 00 18 */	bne lbl_806A8AD4
/* 806A8AC0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A8AC4  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806A8AC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A8ACC  41 82 00 08 */	beq lbl_806A8AD4
/* 806A8AD0  7C 65 1B 78 */	mr r5, r3
lbl_806A8AD4:
/* 806A8AD4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 806A8AD8  41 82 01 70 */	beq lbl_806A8C48
/* 806A8ADC  88 7E 05 AE */	lbz r3, 0x5ae(r30)
/* 806A8AE0  38 03 00 01 */	addi r0, r3, 1
/* 806A8AE4  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 806A8AE8  7F C3 F3 78 */	mr r3, r30
/* 806A8AEC  38 80 00 08 */	li r4, 8
/* 806A8AF0  38 A0 00 02 */	li r5, 2
/* 806A8AF4  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806A8AF8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A8AFC  4B FF ED D9 */	bl SetAnm__8daE_DF_cFiiff
/* 806A8B00  48 00 01 48 */	b lbl_806A8C48
lbl_806A8B04:
/* 806A8B04  48 00 01 7D */	bl Mogu_Mogu__8daE_DF_cFv
/* 806A8B08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A8B0C  41 82 00 EC */	beq lbl_806A8BF8
/* 806A8B10  88 7E 05 AE */	lbz r3, 0x5ae(r30)
/* 806A8B14  38 03 00 01 */	addi r0, r3, 1
/* 806A8B18  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 806A8B1C  7F C3 F3 78 */	mr r3, r30
/* 806A8B20  38 80 00 09 */	li r4, 9
/* 806A8B24  38 A0 00 00 */	li r5, 0
/* 806A8B28  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806A8B2C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A8B30  4B FF ED A5 */	bl SetAnm__8daE_DF_cFiiff
/* 806A8B34  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701A0@ha */
/* 806A8B38  38 03 01 A0 */	addi r0, r3, 0x01A0 /* 0x000701A0@l */
/* 806A8B3C  90 01 00 20 */	stw r0, 0x20(r1)
/* 806A8B40  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 806A8B44  38 81 00 20 */	addi r4, r1, 0x20
/* 806A8B48  38 A0 00 00 */	li r5, 0
/* 806A8B4C  38 C0 FF FF */	li r6, -1
/* 806A8B50  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 806A8B54  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A8B58  7D 89 03 A6 */	mtctr r12
/* 806A8B5C  4E 80 04 21 */	bctrl 
/* 806A8B60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A8B64  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A8B68  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806A8B6C  38 80 00 00 */	li r4, 0
/* 806A8B70  90 81 00 08 */	stw r4, 8(r1)
/* 806A8B74  38 00 FF FF */	li r0, -1
/* 806A8B78  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A8B7C  90 81 00 10 */	stw r4, 0x10(r1)
/* 806A8B80  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A8B84  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A8B88  38 80 00 00 */	li r4, 0
/* 806A8B8C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000083BD@ha */
/* 806A8B90  38 A5 83 BD */	addi r5, r5, 0x83BD /* 0x000083BD@l */
/* 806A8B94  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806A8B98  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A8B9C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806A8BA0  39 20 00 00 */	li r9, 0
/* 806A8BA4  39 40 00 FF */	li r10, 0xff
/* 806A8BA8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A8BAC  4B 9A 3E E5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A8BB0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806A8BB4  38 80 00 00 */	li r4, 0
/* 806A8BB8  90 81 00 08 */	stw r4, 8(r1)
/* 806A8BBC  38 00 FF FF */	li r0, -1
/* 806A8BC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A8BC4  90 81 00 10 */	stw r4, 0x10(r1)
/* 806A8BC8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A8BCC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A8BD0  38 80 00 00 */	li r4, 0
/* 806A8BD4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000083BE@ha */
/* 806A8BD8  38 A5 83 BE */	addi r5, r5, 0x83BE /* 0x000083BE@l */
/* 806A8BDC  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806A8BE0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A8BE4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806A8BE8  39 20 00 00 */	li r9, 0
/* 806A8BEC  39 40 00 FF */	li r10, 0xff
/* 806A8BF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A8BF4  4B 9A 3E 9D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_806A8BF8:
/* 806A8BF8  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 806A8BFC  38 63 00 0C */	addi r3, r3, 0xc
/* 806A8C00  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 806A8C04  4B C7 F8 29 */	bl checkPass__12J3DFrameCtrlFf
/* 806A8C08  2C 03 00 00 */	cmpwi r3, 0
/* 806A8C0C  41 82 00 3C */	beq lbl_806A8C48
/* 806A8C10  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A8C14  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806A8C18  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806A8C1C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806A8C20  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806A8C24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A8C28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A8C2C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806A8C30  38 80 00 02 */	li r4, 2
/* 806A8C34  38 A0 00 1F */	li r5, 0x1f
/* 806A8C38  38 C1 00 28 */	addi r6, r1, 0x28
/* 806A8C3C  4B 9C 6D E9 */	bl StartShock__12dVibration_cFii4cXyz
/* 806A8C40  48 00 00 08 */	b lbl_806A8C48
lbl_806A8C44:
/* 806A8C44  4B FF FB 4D */	bl Spid_Out__8daE_DF_cFv
lbl_806A8C48:
/* 806A8C48  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 806A8C4C  38 80 00 00 */	li r4, 0
/* 806A8C50  38 A0 01 00 */	li r5, 0x100
/* 806A8C54  4B BC 7F 3D */	bl cLib_chaseAngleS__FPsss
/* 806A8C58  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 806A8C5C  38 80 00 00 */	li r4, 0
/* 806A8C60  38 A0 01 00 */	li r5, 0x100
/* 806A8C64  4B BC 7F 2D */	bl cLib_chaseAngleS__FPsss
/* 806A8C68  39 61 00 50 */	addi r11, r1, 0x50
/* 806A8C6C  4B CB 95 BD */	bl _restgpr_29
/* 806A8C70  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806A8C74  7C 08 03 A6 */	mtlr r0
/* 806A8C78  38 21 00 50 */	addi r1, r1, 0x50
/* 806A8C7C  4E 80 00 20 */	blr 
