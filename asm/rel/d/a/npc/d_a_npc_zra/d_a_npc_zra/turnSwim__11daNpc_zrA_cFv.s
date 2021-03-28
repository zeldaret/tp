lbl_80B81A18:
/* 80B81A18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B81A1C  7C 08 02 A6 */	mflr r0
/* 80B81A20  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B81A24  39 61 00 60 */	addi r11, r1, 0x60
/* 80B81A28  4B 7E 07 B0 */	b _savegpr_28
/* 80B81A2C  7C 7E 1B 78 */	mr r30, r3
/* 80B81A30  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B81A34  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l
/* 80B81A38  38 7F 00 00 */	addi r3, r31, 0
/* 80B81A3C  AB 83 00 74 */	lha r28, 0x74(r3)
/* 80B81A40  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B81A44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B81A48  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B81A4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B81A50  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B81A54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B81A58  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 80B81A5C  38 81 00 10 */	addi r4, r1, 0x10
/* 80B81A60  38 A1 00 40 */	addi r5, r1, 0x40
/* 80B81A64  4B FF 6A A9 */	bl getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz
/* 80B81A68  38 61 00 40 */	addi r3, r1, 0x40
/* 80B81A6C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B81A70  4B 6E F2 04 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B81A74  B0 61 00 08 */	sth r3, 8(r1)
/* 80B81A78  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B81A7C  38 81 00 40 */	addi r4, r1, 0x40
/* 80B81A80  4B 6E F1 84 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B81A84  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80B81A88  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80B81A8C  3B A1 00 0C */	addi r29, r1, 0xc
/* 80B81A90  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B81A94  7F C3 F3 78 */	mr r3, r30
/* 80B81A98  38 81 00 08 */	addi r4, r1, 8
/* 80B81A9C  38 BE 15 36 */	addi r5, r30, 0x1536
/* 80B81AA0  38 C0 00 08 */	li r6, 8
/* 80B81AA4  7F 87 E3 78 */	mr r7, r28
/* 80B81AA8  48 00 0A 4D */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B81AAC  7F C3 F3 78 */	mr r3, r30
/* 80B81AB0  7F 84 E3 78 */	mr r4, r28
/* 80B81AB4  38 A0 00 08 */	li r5, 8
/* 80B81AB8  38 DE 04 DE */	addi r6, r30, 0x4de
/* 80B81ABC  7F A7 EB 78 */	mr r7, r29
/* 80B81AC0  48 00 04 F9 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B81AC4  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80B81AC8  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80B81ACC  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80B81AD0  B0 1E 08 F0 */	sth r0, 0x8f0(r30)
/* 80B81AD4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B81AD8  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80B81ADC  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80B81AE0  B0 1E 08 F4 */	sth r0, 0x8f4(r30)
/* 80B81AE4  A8 1E 08 F0 */	lha r0, 0x8f0(r30)
/* 80B81AE8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80B81AEC  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80B81AF0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B81AF4  A8 1E 08 F4 */	lha r0, 0x8f4(r30)
/* 80B81AF8  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80B81AFC  80 1E 14 EC */	lwz r0, 0x14ec(r30)
/* 80B81B00  2C 00 00 15 */	cmpwi r0, 0x15
/* 80B81B04  40 82 00 9C */	bne lbl_80B81BA0
/* 80B81B08  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B81B0C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B81B10  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80B81B14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81B18  40 80 00 44 */	bge lbl_80B81B5C
/* 80B81B1C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B81B20  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B81B24  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B81B28  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B81B2C  38 7E 15 44 */	addi r3, r30, 0x1544
/* 80B81B30  38 81 00 34 */	addi r4, r1, 0x34
/* 80B81B34  C0 3F 07 80 */	lfs f1, 0x780(r31)
/* 80B81B38  4B 6E EC 74 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B81B3C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B81B40  38 9E 15 44 */	addi r4, r30, 0x1544
/* 80B81B44  7C 65 1B 78 */	mr r5, r3
/* 80B81B48  4B 7C 55 48 */	b PSVECAdd
/* 80B81B4C  C0 1F 07 A8 */	lfs f0, 0x7a8(r31)
/* 80B81B50  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B81B54  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B81B58  48 00 01 28 */	b lbl_80B81C80
lbl_80B81B5C:
/* 80B81B5C  C0 3F 07 64 */	lfs f1, 0x764(r31)
/* 80B81B60  38 7F 00 00 */	addi r3, r31, 0
/* 80B81B64  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B81B68  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B81B6C  D0 1E 15 24 */	stfs f0, 0x1524(r30)
/* 80B81B70  C0 3E 15 24 */	lfs f1, 0x1524(r30)
/* 80B81B74  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B81B78  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B81B7C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B81B80  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80B81B84  7F C3 F3 78 */	mr r3, r30
/* 80B81B88  38 81 00 28 */	addi r4, r1, 0x28
/* 80B81B8C  48 00 09 F9 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B81B90  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B81B94  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B81B98  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B81B9C  48 00 00 E4 */	b lbl_80B81C80
lbl_80B81BA0:
/* 80B81BA0  2C 00 00 16 */	cmpwi r0, 0x16
/* 80B81BA4  40 82 00 DC */	bne lbl_80B81C80
/* 80B81BA8  C0 3F 07 64 */	lfs f1, 0x764(r31)
/* 80B81BAC  38 7F 00 00 */	addi r3, r31, 0
/* 80B81BB0  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B81BB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B81BB8  D0 1E 15 24 */	stfs f0, 0x1524(r30)
/* 80B81BBC  C0 3E 15 24 */	lfs f1, 0x1524(r30)
/* 80B81BC0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B81BC4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B81BC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B81BCC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B81BD0  7F C3 F3 78 */	mr r3, r30
/* 80B81BD4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B81BD8  48 00 09 AD */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B81BDC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B81BE0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B81BE4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B81BE8  88 1E 15 91 */	lbz r0, 0x1591(r30)
/* 80B81BEC  28 00 00 00 */	cmplwi r0, 0
/* 80B81BF0  41 82 00 18 */	beq lbl_80B81C08
/* 80B81BF4  38 00 00 0A */	li r0, 0xa
/* 80B81BF8  90 1E 14 D8 */	stw r0, 0x14d8(r30)
/* 80B81BFC  38 00 00 00 */	li r0, 0
/* 80B81C00  98 1E 15 91 */	stb r0, 0x1591(r30)
/* 80B81C04  48 00 00 7C */	b lbl_80B81C80
lbl_80B81C08:
/* 80B81C08  38 7E 14 D8 */	addi r3, r30, 0x14d8
/* 80B81C0C  4B FF DA A1 */	bl func_80B7F6AC
/* 80B81C10  2C 03 00 00 */	cmpwi r3, 0
/* 80B81C14  40 82 00 6C */	bne lbl_80B81C80
/* 80B81C18  38 00 00 01 */	li r0, 1
/* 80B81C1C  98 1E 15 20 */	stb r0, 0x1520(r30)
/* 80B81C20  88 1E 15 76 */	lbz r0, 0x1576(r30)
/* 80B81C24  28 00 00 00 */	cmplwi r0, 0
/* 80B81C28  40 82 00 28 */	bne lbl_80B81C50
/* 80B81C2C  7F C3 F3 78 */	mr r3, r30
/* 80B81C30  38 80 00 17 */	li r4, 0x17
/* 80B81C34  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B81C38  38 A0 00 00 */	li r5, 0
/* 80B81C3C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B81C40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B81C44  7D 89 03 A6 */	mtctr r12
/* 80B81C48  4E 80 04 21 */	bctrl 
/* 80B81C4C  48 00 00 24 */	b lbl_80B81C70
lbl_80B81C50:
/* 80B81C50  7F C3 F3 78 */	mr r3, r30
/* 80B81C54  38 80 00 16 */	li r4, 0x16
/* 80B81C58  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B81C5C  38 A0 00 00 */	li r5, 0
/* 80B81C60  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B81C64  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B81C68  7D 89 03 A6 */	mtctr r12
/* 80B81C6C  4E 80 04 21 */	bctrl 
lbl_80B81C70:
/* 80B81C70  38 00 00 5A */	li r0, 0x5a
/* 80B81C74  90 1E 15 1C */	stw r0, 0x151c(r30)
/* 80B81C78  38 00 00 00 */	li r0, 0
/* 80B81C7C  98 1E 15 93 */	stb r0, 0x1593(r30)
lbl_80B81C80:
/* 80B81C80  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 80B81C84  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B81C88  41 82 00 24 */	beq lbl_80B81CAC
/* 80B81C8C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80B81C90  C0 3E 07 9C */	lfs f1, 0x79c(r30)
/* 80B81C94  38 7F 00 00 */	addi r3, r31, 0
/* 80B81C98  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B81C9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B81CA0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B81CA4  40 81 00 08 */	ble lbl_80B81CAC
/* 80B81CA8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80B81CAC:
/* 80B81CAC  38 60 00 01 */	li r3, 1
/* 80B81CB0  39 61 00 60 */	addi r11, r1, 0x60
/* 80B81CB4  4B 7E 05 70 */	b _restgpr_28
/* 80B81CB8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B81CBC  7C 08 03 A6 */	mtlr r0
/* 80B81CC0  38 21 00 60 */	addi r1, r1, 0x60
/* 80B81CC4  4E 80 00 20 */	blr 
