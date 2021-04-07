lbl_80C019B8:
/* 80C019B8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C019BC  7C 08 02 A6 */	mflr r0
/* 80C019C0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C019C4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80C019C8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80C019CC  7C 7F 1B 78 */	mr r31, r3
/* 80C019D0  3C 80 80 C1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C0FE68@ha */
/* 80C019D4  3B C4 FE 68 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80C0FE68@l */
/* 80C019D8  88 03 0A 7E */	lbz r0, 0xa7e(r3)
/* 80C019DC  28 00 00 00 */	cmplwi r0, 0
/* 80C019E0  40 82 00 EC */	bne lbl_80C01ACC
/* 80C019E4  80 9E 02 8C */	lwz r4, 0x28c(r30)
/* 80C019E8  80 1E 02 90 */	lwz r0, 0x290(r30)
/* 80C019EC  90 81 00 38 */	stw r4, 0x38(r1)
/* 80C019F0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C019F4  80 1E 02 94 */	lwz r0, 0x294(r30)
/* 80C019F8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C019FC  38 81 00 38 */	addi r4, r1, 0x38
/* 80C01A00  4B FF FE C1 */	bl checkProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C01A04  2C 03 00 00 */	cmpwi r3, 0
/* 80C01A08  40 82 00 30 */	bne lbl_80C01A38
/* 80C01A0C  80 7E 02 98 */	lwz r3, 0x298(r30)
/* 80C01A10  80 1E 02 9C */	lwz r0, 0x29c(r30)
/* 80C01A14  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80C01A18  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C01A1C  80 1E 02 A0 */	lwz r0, 0x2a0(r30)
/* 80C01A20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C01A24  7F E3 FB 78 */	mr r3, r31
/* 80C01A28  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C01A2C  4B FF FE 95 */	bl checkProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C01A30  2C 03 00 00 */	cmpwi r3, 0
/* 80C01A34  41 82 00 10 */	beq lbl_80C01A44
lbl_80C01A38:
/* 80C01A38  80 1F 15 0C */	lwz r0, 0x150c(r31)
/* 80C01A3C  2C 00 00 00 */	cmpwi r0, 0
/* 80C01A40  41 82 00 5C */	beq lbl_80C01A9C
lbl_80C01A44:
/* 80C01A44  80 7E 02 A4 */	lwz r3, 0x2a4(r30)
/* 80C01A48  80 1E 02 A8 */	lwz r0, 0x2a8(r30)
/* 80C01A4C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80C01A50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C01A54  80 1E 02 AC */	lwz r0, 0x2ac(r30)
/* 80C01A58  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C01A5C  7F E3 FB 78 */	mr r3, r31
/* 80C01A60  38 81 00 20 */	addi r4, r1, 0x20
/* 80C01A64  4B FF FE 5D */	bl checkProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C01A68  2C 03 00 00 */	cmpwi r3, 0
/* 80C01A6C  40 82 00 30 */	bne lbl_80C01A9C
/* 80C01A70  80 7E 02 B0 */	lwz r3, 0x2b0(r30)
/* 80C01A74  80 1E 02 B4 */	lwz r0, 0x2b4(r30)
/* 80C01A78  90 61 00 14 */	stw r3, 0x14(r1)
/* 80C01A7C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C01A80  80 1E 02 B8 */	lwz r0, 0x2b8(r30)
/* 80C01A84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C01A88  7F E3 FB 78 */	mr r3, r31
/* 80C01A8C  38 81 00 14 */	addi r4, r1, 0x14
/* 80C01A90  4B FF FE 31 */	bl checkProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C01A94  2C 03 00 00 */	cmpwi r3, 0
/* 80C01A98  41 82 00 24 */	beq lbl_80C01ABC
lbl_80C01A9C:
/* 80C01A9C  7F E3 FB 78 */	mr r3, r31
/* 80C01AA0  38 80 00 00 */	li r4, 0
/* 80C01AA4  38 A0 00 00 */	li r5, 0
/* 80C01AA8  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80C01AAC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C01AB0  7D 89 03 A6 */	mtctr r12
/* 80C01AB4  4E 80 04 21 */	bctrl 
/* 80C01AB8  48 00 01 14 */	b lbl_80C01BCC
lbl_80C01ABC:
/* 80C01ABC  3C 60 00 20 */	lis r3, 0x0020 /* 0x00200004@ha */
/* 80C01AC0  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00200004@l */
/* 80C01AC4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80C01AC8  48 00 01 04 */	b lbl_80C01BCC
lbl_80C01ACC:
/* 80C01ACC  28 00 00 01 */	cmplwi r0, 1
/* 80C01AD0  40 82 00 AC */	bne lbl_80C01B7C
/* 80C01AD4  80 9E 02 BC */	lwz r4, 0x2bc(r30)
/* 80C01AD8  80 1E 02 C0 */	lwz r0, 0x2c0(r30)
/* 80C01ADC  90 81 00 08 */	stw r4, 8(r1)
/* 80C01AE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C01AE4  80 1E 02 C4 */	lwz r0, 0x2c4(r30)
/* 80C01AE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C01AEC  38 81 00 08 */	addi r4, r1, 8
/* 80C01AF0  4B FF FD D1 */	bl checkProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C01AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80C01AF8  41 82 00 4C */	beq lbl_80C01B44
/* 80C01AFC  7F E3 FB 78 */	mr r3, r31
/* 80C01B00  38 80 00 01 */	li r4, 1
/* 80C01B04  38 A0 00 01 */	li r5, 1
/* 80C01B08  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80C01B0C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C01B10  7D 89 03 A6 */	mtctr r12
/* 80C01B14  4E 80 04 21 */	bctrl 
/* 80C01B18  38 60 00 06 */	li r3, 6
/* 80C01B1C  38 80 00 06 */	li r4, 6
/* 80C01B20  4B FF FE 85 */	bl getDistTableIdx__Fii
/* 80C01B24  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80C01B28  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80C01B2C  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80C01B30  38 60 00 04 */	li r3, 4
/* 80C01B34  38 80 00 06 */	li r4, 6
/* 80C01B38  4B FF FE 6D */	bl getDistTableIdx__Fii
/* 80C01B3C  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80C01B40  48 00 00 0C */	b lbl_80C01B4C
lbl_80C01B44:
/* 80C01B44  38 00 00 00 */	li r0, 0
/* 80C01B48  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80C01B4C:
/* 80C01B4C  88 1F 08 44 */	lbz r0, 0x844(r31)
/* 80C01B50  28 00 00 00 */	cmplwi r0, 0
/* 80C01B54  40 82 00 78 */	bne lbl_80C01BCC
/* 80C01B58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C01B5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C01B60  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80C01B64  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80C01B68  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C01B6C  41 82 00 60 */	beq lbl_80C01BCC
/* 80C01B70  38 00 00 00 */	li r0, 0
/* 80C01B74  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80C01B78  48 00 00 54 */	b lbl_80C01BCC
lbl_80C01B7C:
/* 80C01B7C  28 00 00 02 */	cmplwi r0, 2
/* 80C01B80  40 82 00 1C */	bne lbl_80C01B9C
/* 80C01B84  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80C01B88  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80C01B8C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80C01B90  3C 00 00 20 */	lis r0, 0x20
/* 80C01B94  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80C01B98  48 00 00 34 */	b lbl_80C01BCC
lbl_80C01B9C:
/* 80C01B9C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80C01BA0  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80C01BA4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80C01BA8  80 1F 15 08 */	lwz r0, 0x1508(r31)
/* 80C01BAC  2C 00 00 00 */	cmpwi r0, 0
/* 80C01BB0  40 82 00 1C */	bne lbl_80C01BCC
/* 80C01BB4  38 80 00 00 */	li r4, 0
/* 80C01BB8  38 A0 00 00 */	li r5, 0
/* 80C01BBC  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80C01BC0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C01BC4  7D 89 03 A6 */	mtctr r12
/* 80C01BC8  4E 80 04 21 */	bctrl 
lbl_80C01BCC:
/* 80C01BCC  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C01BD0  38 63 FA 7C */	addi r3, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C01BD4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C01BD8  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80C01BDC  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80C01BE0  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80C01BE4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80C01BE8  FC 00 00 1E */	fctiwz f0, f0
/* 80C01BEC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C01BF0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80C01BF4  98 1F 08 B0 */	stb r0, 0x8b0(r31)
/* 80C01BF8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C01BFC  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C01C00  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80C01C04  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80C01C08  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C01C0C  7C 08 03 A6 */	mtlr r0
/* 80C01C10  38 21 00 60 */	addi r1, r1, 0x60
/* 80C01C14  4E 80 00 20 */	blr 
