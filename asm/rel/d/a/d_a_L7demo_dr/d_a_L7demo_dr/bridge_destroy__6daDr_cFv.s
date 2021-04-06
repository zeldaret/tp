lbl_805A9A34:
/* 805A9A34  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805A9A38  7C 08 02 A6 */	mflr r0
/* 805A9A3C  90 01 00 84 */	stw r0, 0x84(r1)
/* 805A9A40  39 61 00 80 */	addi r11, r1, 0x80
/* 805A9A44  4B DB 87 99 */	bl _savegpr_29
/* 805A9A48  7C 7F 1B 78 */	mr r31, r3
/* 805A9A4C  3C 80 80 5B */	lis r4, lit_3864@ha /* 0x805AA454@ha */
/* 805A9A50  3B C4 A4 54 */	addi r30, r4, lit_3864@l /* 0x805AA454@l */
/* 805A9A54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A9A58  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A9A5C  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 805A9A60  7C 00 07 74 */	extsb r0, r0
/* 805A9A64  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805A9A68  7C 85 02 14 */	add r4, r5, r0
/* 805A9A6C  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 805A9A70  83 A5 5D AC */	lwz r29, 0x5dac(r5)
/* 805A9A74  80 03 06 54 */	lwz r0, 0x654(r3)
/* 805A9A78  2C 00 00 00 */	cmpwi r0, 0
/* 805A9A7C  40 82 00 B0 */	bne lbl_805A9B2C
/* 805A9A80  38 00 00 00 */	li r0, 0
/* 805A9A84  98 1F 06 58 */	stb r0, 0x658(r31)
/* 805A9A88  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805A9A8C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805A9A90  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805A9A94  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805A9A98  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805A9A9C  D0 3F 04 D8 */	stfs f1, 0x4d8(r31)
/* 805A9AA0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805A9AA4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805A9AA8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805A9AAC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805A9AB0  C0 7F 06 20 */	lfs f3, 0x620(r31)
/* 805A9AB4  C0 5F 06 1C */	lfs f2, 0x61c(r31)
/* 805A9AB8  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 805A9ABC  D0 1F 06 30 */	stfs f0, 0x630(r31)
/* 805A9AC0  D0 5F 06 34 */	stfs f2, 0x634(r31)
/* 805A9AC4  D0 7F 06 38 */	stfs f3, 0x638(r31)
/* 805A9AC8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 805A9ACC  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 805A9AD0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805A9AD4  D0 1F 06 28 */	stfs f0, 0x628(r31)
/* 805A9AD8  D0 3F 06 2C */	stfs f1, 0x62c(r31)
/* 805A9ADC  C0 1F 06 30 */	lfs f0, 0x630(r31)
/* 805A9AE0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805A9AE4  C0 1F 06 34 */	lfs f0, 0x634(r31)
/* 805A9AE8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805A9AEC  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 805A9AF0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805A9AF4  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 805A9AF8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805A9AFC  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 805A9B00  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805A9B04  C0 1F 06 2C */	lfs f0, 0x62c(r31)
/* 805A9B08  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805A9B0C  38 64 02 48 */	addi r3, r4, 0x248
/* 805A9B10  38 81 00 4C */	addi r4, r1, 0x4c
/* 805A9B14  38 A1 00 40 */	addi r5, r1, 0x40
/* 805A9B18  4B BD 6F 91 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805A9B1C  80 7F 06 54 */	lwz r3, 0x654(r31)
/* 805A9B20  38 03 00 01 */	addi r0, r3, 1
/* 805A9B24  90 1F 06 54 */	stw r0, 0x654(r31)
/* 805A9B28  48 00 01 D0 */	b lbl_805A9CF8
lbl_805A9B2C:
/* 805A9B2C  2C 00 FF FF */	cmpwi r0, -1
/* 805A9B30  41 82 01 C8 */	beq lbl_805A9CF8
/* 805A9B34  80 BF 05 70 */	lwz r5, 0x570(r31)
/* 805A9B38  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 805A9B3C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805A9B40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A9B44  40 80 00 78 */	bge lbl_805A9BBC
/* 805A9B48  C0 5F 06 20 */	lfs f2, 0x620(r31)
/* 805A9B4C  C0 3F 06 1C */	lfs f1, 0x61c(r31)
/* 805A9B50  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 805A9B54  D0 1F 06 30 */	stfs f0, 0x630(r31)
/* 805A9B58  D0 3F 06 34 */	stfs f1, 0x634(r31)
/* 805A9B5C  D0 5F 06 38 */	stfs f2, 0x638(r31)
/* 805A9B60  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 805A9B64  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 805A9B68  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805A9B6C  D0 1F 06 28 */	stfs f0, 0x628(r31)
/* 805A9B70  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805A9B74  D0 1F 06 2C */	stfs f0, 0x62c(r31)
/* 805A9B78  C0 1F 06 30 */	lfs f0, 0x630(r31)
/* 805A9B7C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805A9B80  C0 1F 06 34 */	lfs f0, 0x634(r31)
/* 805A9B84  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805A9B88  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 805A9B8C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805A9B90  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 805A9B94  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805A9B98  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 805A9B9C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805A9BA0  C0 1F 06 2C */	lfs f0, 0x62c(r31)
/* 805A9BA4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805A9BA8  38 64 02 48 */	addi r3, r4, 0x248
/* 805A9BAC  38 81 00 34 */	addi r4, r1, 0x34
/* 805A9BB0  38 A1 00 28 */	addi r5, r1, 0x28
/* 805A9BB4  4B BD 6E F5 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805A9BB8  48 00 01 40 */	b lbl_805A9CF8
lbl_805A9BBC:
/* 805A9BBC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805A9BC0  40 82 00 EC */	bne lbl_805A9CAC
/* 805A9BC4  38 00 00 B5 */	li r0, 0xb5
/* 805A9BC8  B0 01 00 08 */	sth r0, 8(r1)
/* 805A9BCC  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 805A9BD0  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 805A9BD4  38 81 00 08 */	addi r4, r1, 8
/* 805A9BD8  4B A6 FC 21 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805A9BDC  28 03 00 00 */	cmplwi r3, 0
/* 805A9BE0  41 82 00 0C */	beq lbl_805A9BEC
/* 805A9BE4  38 00 00 00 */	li r0, 0
/* 805A9BE8  98 03 0A 94 */	stb r0, 0xa94(r3)
lbl_805A9BEC:
/* 805A9BEC  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805A9BF0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805A9BF4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805A9BF8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805A9BFC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805A9C00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A9C04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A9C08  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805A9C0C  38 80 00 08 */	li r4, 8
/* 805A9C10  38 A0 00 1F */	li r5, 0x1f
/* 805A9C14  38 C1 00 1C */	addi r6, r1, 0x1c
/* 805A9C18  4B AC 5E F9 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805A9C1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070489@ha */
/* 805A9C20  38 03 04 89 */	addi r0, r3, 0x0489 /* 0x00070489@l */
/* 805A9C24  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A9C28  38 7F 05 74 */	addi r3, r31, 0x574
/* 805A9C2C  38 81 00 0C */	addi r4, r1, 0xc
/* 805A9C30  38 A0 00 00 */	li r5, 0
/* 805A9C34  38 C0 FF FF */	li r6, -1
/* 805A9C38  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 805A9C3C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805A9C40  7D 89 03 A6 */	mtctr r12
/* 805A9C44  4E 80 04 21 */	bctrl 
/* 805A9C48  38 00 00 3C */	li r0, 0x3c
/* 805A9C4C  98 1F 06 59 */	stb r0, 0x659(r31)
/* 805A9C50  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805A9C54  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805A9C58  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 805A9C5C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805A9C60  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805A9C64  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805A9C68  7F A3 EB 78 */	mr r3, r29
/* 805A9C6C  38 81 00 58 */	addi r4, r1, 0x58
/* 805A9C70  38 A0 C0 00 */	li r5, -16384
/* 805A9C74  38 C0 00 00 */	li r6, 0
/* 805A9C78  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805A9C7C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805A9C80  7D 89 03 A6 */	mtctr r12
/* 805A9C84  4E 80 04 21 */	bctrl 
/* 805A9C88  38 00 C0 00 */	li r0, -16384
/* 805A9C8C  B0 1D 06 06 */	sth r0, 0x606(r29)
/* 805A9C90  38 00 00 04 */	li r0, 4
/* 805A9C94  90 1D 06 14 */	stw r0, 0x614(r29)
/* 805A9C98  38 00 00 00 */	li r0, 0
/* 805A9C9C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 805A9CA0  90 1D 06 10 */	stw r0, 0x610(r29)
/* 805A9CA4  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 805A9CA8  48 00 00 50 */	b lbl_805A9CF8
lbl_805A9CAC:
/* 805A9CAC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 805A9CB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A9CB4  4C 41 13 82 */	cror 2, 1, 2
/* 805A9CB8  40 82 00 40 */	bne lbl_805A9CF8
/* 805A9CBC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 805A9CC0  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 805A9CC4  88 1F 06 59 */	lbz r0, 0x659(r31)
/* 805A9CC8  28 00 00 00 */	cmplwi r0, 0
/* 805A9CCC  40 82 00 2C */	bne lbl_805A9CF8
/* 805A9CD0  3C 80 80 5B */	lis r4, lit_4041@ha /* 0x805AA500@ha */
/* 805A9CD4  38 A4 A5 00 */	addi r5, r4, lit_4041@l /* 0x805AA500@l */
/* 805A9CD8  80 85 00 00 */	lwz r4, 0(r5)
/* 805A9CDC  80 05 00 04 */	lwz r0, 4(r5)
/* 805A9CE0  90 81 00 10 */	stw r4, 0x10(r1)
/* 805A9CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A9CE8  80 05 00 08 */	lwz r0, 8(r5)
/* 805A9CEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A9CF0  38 81 00 10 */	addi r4, r1, 0x10
/* 805A9CF4  4B FF F5 45 */	bl setAction__6daDr_cFM6daDr_cFPCvPv_v
lbl_805A9CF8:
/* 805A9CF8  39 61 00 80 */	addi r11, r1, 0x80
/* 805A9CFC  4B DB 85 2D */	bl _restgpr_29
/* 805A9D00  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805A9D04  7C 08 03 A6 */	mtlr r0
/* 805A9D08  38 21 00 80 */	addi r1, r1, 0x80
/* 805A9D0C  4E 80 00 20 */	blr 
