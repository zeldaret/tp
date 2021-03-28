lbl_80583A2C:
/* 80583A2C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80583A30  7C 08 02 A6 */	mflr r0
/* 80583A34  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80583A38  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80583A3C  4B DD E7 A0 */	b _savegpr_29
/* 80583A40  7C 7D 1B 78 */	mr r29, r3
/* 80583A44  3C 60 80 58 */	lis r3, lit_3970@ha
/* 80583A48  3B E3 56 20 */	addi r31, r3, lit_3970@l
/* 80583A4C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80583A50  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80583A54  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80583A58  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80583A5C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80583A60  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80583A64  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80583A68  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80583A6C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80583A70  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80583A74  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80583A78  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80583A7C  38 00 00 00 */	li r0, 0
/* 80583A80  98 1D 05 67 */	stb r0, 0x567(r29)
/* 80583A84  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583A88  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80583A8C  40 82 00 0C */	bne lbl_80583A98
/* 80583A90  38 00 00 01 */	li r0, 1
/* 80583A94  98 1D 05 67 */	stb r0, 0x567(r29)
lbl_80583A98:
/* 80583A98  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 80583A9C  28 00 00 0E */	cmplwi r0, 0xe
/* 80583AA0  41 81 08 98 */	bgt lbl_80584338
/* 80583AA4  3C 60 80 58 */	lis r3, lit_5150@ha
/* 80583AA8  38 63 5B 84 */	addi r3, r3, lit_5150@l
/* 80583AAC  54 00 10 3A */	slwi r0, r0, 2
/* 80583AB0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80583AB4  7C 09 03 A6 */	mtctr r0
/* 80583AB8  4E 80 04 20 */	bctr 
lbl_80583ABC:
/* 80583ABC  7F A3 EB 78 */	mr r3, r29
/* 80583AC0  4B FF FA D9 */	bl initPart__15daObj_Kanban2_cFv
/* 80583AC4  48 00 08 74 */	b lbl_80584338
lbl_80583AC8:
/* 80583AC8  80 1D 06 20 */	lwz r0, 0x620(r29)
/* 80583ACC  28 00 00 01 */	cmplwi r0, 1
/* 80583AD0  41 81 00 10 */	bgt lbl_80583AE0
/* 80583AD4  A8 7D 04 E8 */	lha r3, 0x4e8(r29)
/* 80583AD8  38 03 10 00 */	addi r0, r3, 0x1000
/* 80583ADC  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
lbl_80583AE0:
/* 80583AE0  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583AE4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80583AE8  41 82 00 70 */	beq lbl_80583B58
/* 80583AEC  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80583AF0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80583AF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80583AF8  4C 41 13 82 */	cror 2, 1, 2
/* 80583AFC  40 82 00 5C */	bne lbl_80583B58
/* 80583B00  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha
/* 80583B04  38 03 5C 58 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80583B08  90 01 00 78 */	stw r0, 0x78(r1)
/* 80583B0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80583B10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80583B14  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80583B18  38 9D 07 60 */	addi r4, r29, 0x760
/* 80583B1C  38 A1 00 68 */	addi r5, r1, 0x68
/* 80583B20  4B AF 0C 24 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80583B24  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80583B28  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80583B2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80583B30  40 80 00 1C */	bge lbl_80583B4C
/* 80583B34  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583B38  60 00 00 10 */	ori r0, r0, 0x10
/* 80583B3C  90 1D 06 9C */	stw r0, 0x69c(r29)
/* 80583B40  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583B44  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80583B48  90 1D 06 9C */	stw r0, 0x69c(r29)
lbl_80583B4C:
/* 80583B4C  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha
/* 80583B50  38 03 5C 58 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80583B54  90 01 00 78 */	stw r0, 0x78(r1)
lbl_80583B58:
/* 80583B58  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583B5C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80583B60  41 82 00 90 */	beq lbl_80583BF0
/* 80583B64  38 00 00 00 */	li r0, 0
/* 80583B68  98 1D 06 2B */	stb r0, 0x62b(r29)
/* 80583B6C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80583B70  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80583B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80583B78  4C 41 13 82 */	cror 2, 1, 2
/* 80583B7C  40 82 00 0C */	bne lbl_80583B88
/* 80583B80  7F A3 EB 78 */	mr r3, r29
/* 80583B84  4B FF DE 79 */	bl createWallHitBreak__15daObj_Kanban2_cFv
lbl_80583B88:
/* 80583B88  7F A3 EB 78 */	mr r3, r29
/* 80583B8C  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800E5@ha */
/* 80583B90  38 84 00 E5 */	addi r4, r4, 0x00E5 /* 0x000800E5@l */
/* 80583B94  4B FF DD A5 */	bl setKanbanSE__15daObj_Kanban2_cFi
/* 80583B98  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80583B9C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80583BA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80583BA4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80583BA8  7F A3 EB 78 */	mr r3, r29
/* 80583BAC  4B FF E9 F9 */	bl getWallAngle__15daObj_Kanban2_cFv
/* 80583BB0  7C 7E 1B 78 */	mr r30, r3
/* 80583BB4  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80583BB8  4B CE 3D D4 */	b cM_rndFX__Ff
/* 80583BBC  7F C0 07 34 */	extsh r0, r30
/* 80583BC0  C8 5F 00 78 */	lfd f2, 0x78(r31)
/* 80583BC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80583BC8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80583BCC  3C 00 43 30 */	lis r0, 0x4330
/* 80583BD0  90 01 00 80 */	stw r0, 0x80(r1)
/* 80583BD4  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80583BD8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80583BDC  EC 00 08 2A */	fadds f0, f0, f1
/* 80583BE0  FC 00 00 1E */	fctiwz f0, f0
/* 80583BE4  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80583BE8  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80583BEC  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_80583BF0:
/* 80583BF0  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583BF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80583BF8  41 82 07 40 */	beq lbl_80584338
/* 80583BFC  7F A3 EB 78 */	mr r3, r29
/* 80583C00  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800E5@ha */
/* 80583C04  38 84 00 E5 */	addi r4, r4, 0x00E5 /* 0x000800E5@l */
/* 80583C08  4B FF DD 31 */	bl setKanbanSE__15daObj_Kanban2_cFi
/* 80583C0C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80583C10  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80583C14  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80583C18  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80583C1C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80583C20  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80583C24  7F A3 EB 78 */	mr r3, r29
/* 80583C28  38 81 00 3C */	addi r4, r1, 0x3c
/* 80583C2C  4B FF EE 81 */	bl setSmokeEffect__15daObj_Kanban2_cF4cXyz
/* 80583C30  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80583C34  4B CE 3D 20 */	b cM_rndF__Ff
/* 80583C38  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80583C3C  EC 00 08 2A */	fadds f0, f0, f1
/* 80583C40  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80583C44  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80583C48  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80583C4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80583C50  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80583C54  38 00 00 0B */	li r0, 0xb
/* 80583C58  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80583C5C  38 00 00 00 */	li r0, 0
/* 80583C60  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80583C64  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80583C68  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 80583C6C  48 00 06 CC */	b lbl_80584338
lbl_80583C70:
/* 80583C70  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80583C74  A8 9D 06 08 */	lha r4, 0x608(r29)
/* 80583C78  38 A0 07 00 */	li r5, 0x700
/* 80583C7C  4B CE CF 14 */	b cLib_chaseAngleS__FPsss
/* 80583C80  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583C84  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80583C88  41 82 00 70 */	beq lbl_80583CF8
/* 80583C8C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80583C90  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80583C94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80583C98  4C 41 13 82 */	cror 2, 1, 2
/* 80583C9C  40 82 00 5C */	bne lbl_80583CF8
/* 80583CA0  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha
/* 80583CA4  38 03 5C 58 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80583CA8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80583CAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80583CB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80583CB4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80583CB8  38 9D 07 60 */	addi r4, r29, 0x760
/* 80583CBC  38 A1 00 54 */	addi r5, r1, 0x54
/* 80583CC0  4B AF 0A 84 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80583CC4  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80583CC8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80583CCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80583CD0  40 80 00 1C */	bge lbl_80583CEC
/* 80583CD4  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583CD8  60 00 00 10 */	ori r0, r0, 0x10
/* 80583CDC  90 1D 06 9C */	stw r0, 0x69c(r29)
/* 80583CE0  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583CE4  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80583CE8  90 1D 06 9C */	stw r0, 0x69c(r29)
lbl_80583CEC:
/* 80583CEC  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha
/* 80583CF0  38 03 5C 58 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80583CF4  90 01 00 64 */	stw r0, 0x64(r1)
lbl_80583CF8:
/* 80583CF8  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583CFC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80583D00  41 82 00 3C */	beq lbl_80583D3C
/* 80583D04  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80583D08  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80583D0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80583D10  4C 41 13 82 */	cror 2, 1, 2
/* 80583D14  40 82 00 0C */	bne lbl_80583D20
/* 80583D18  7F A3 EB 78 */	mr r3, r29
/* 80583D1C  4B FF DC E1 */	bl createWallHitBreak__15daObj_Kanban2_cFv
lbl_80583D20:
/* 80583D20  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80583D24  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80583D28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80583D2C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80583D30  7F A3 EB 78 */	mr r3, r29
/* 80583D34  4B FF E8 71 */	bl getWallAngle__15daObj_Kanban2_cFv
/* 80583D38  B0 7D 04 DE */	sth r3, 0x4de(r29)
lbl_80583D3C:
/* 80583D3C  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583D40  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80583D44  41 82 05 F4 */	beq lbl_80584338
/* 80583D48  A8 1D 06 08 */	lha r0, 0x608(r29)
/* 80583D4C  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80583D50  7F A3 EB 78 */	mr r3, r29
/* 80583D54  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800E5@ha */
/* 80583D58  38 84 00 E5 */	addi r4, r4, 0x00E5 /* 0x000800E5@l */
/* 80583D5C  4B FF DB DD */	bl setKanbanSE__15daObj_Kanban2_cFi
/* 80583D60  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80583D64  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80583D68  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80583D6C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80583D70  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80583D74  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80583D78  7F A3 EB 78 */	mr r3, r29
/* 80583D7C  38 81 00 30 */	addi r4, r1, 0x30
/* 80583D80  4B FF ED 2D */	bl setSmokeEffect__15daObj_Kanban2_cF4cXyz
/* 80583D84  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80583D88  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80583D8C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80583D90  38 00 00 0B */	li r0, 0xb
/* 80583D94  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80583D98  38 00 00 00 */	li r0, 0
/* 80583D9C  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80583DA0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80583DA4  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 80583DA8  48 00 05 90 */	b lbl_80584338
lbl_80583DAC:
/* 80583DAC  80 1D 08 9C */	lwz r0, 0x89c(r29)
/* 80583DB0  60 00 00 01 */	ori r0, r0, 1
/* 80583DB4  90 1D 08 9C */	stw r0, 0x89c(r29)
/* 80583DB8  38 00 00 00 */	li r0, 0
/* 80583DBC  B0 1D 05 F8 */	sth r0, 0x5f8(r29)
/* 80583DC0  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583DC4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80583DC8  41 82 01 08 */	beq lbl_80583ED0
/* 80583DCC  7F A3 EB 78 */	mr r3, r29
/* 80583DD0  4B FF E9 4D */	bl setGroundAngle__15daObj_Kanban2_cFv
/* 80583DD4  88 1D 06 2D */	lbz r0, 0x62d(r29)
/* 80583DD8  28 00 00 00 */	cmplwi r0, 0
/* 80583DDC  41 82 00 80 */	beq lbl_80583E5C
/* 80583DE0  88 1D 06 2C */	lbz r0, 0x62c(r29)
/* 80583DE4  28 00 00 00 */	cmplwi r0, 0
/* 80583DE8  40 82 00 18 */	bne lbl_80583E00
/* 80583DEC  7F A3 EB 78 */	mr r3, r29
/* 80583DF0  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800E5@ha */
/* 80583DF4  38 84 00 E5 */	addi r4, r4, 0x00E5 /* 0x000800E5@l */
/* 80583DF8  4B FF DB 41 */	bl setKanbanSE__15daObj_Kanban2_cFi
/* 80583DFC  48 00 00 14 */	b lbl_80583E10
lbl_80583E00:
/* 80583E00  7F A3 EB 78 */	mr r3, r29
/* 80583E04  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800E6@ha */
/* 80583E08  38 84 00 E6 */	addi r4, r4, 0x00E6 /* 0x000800E6@l */
/* 80583E0C  4B FF DB 2D */	bl setKanbanSE__15daObj_Kanban2_cFi
lbl_80583E10:
/* 80583E10  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80583E14  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80583E18  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80583E1C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80583E20  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80583E24  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80583E28  7F A3 EB 78 */	mr r3, r29
/* 80583E2C  38 81 00 24 */	addi r4, r1, 0x24
/* 80583E30  4B FF EC 7D */	bl setSmokeEffect__15daObj_Kanban2_cF4cXyz
/* 80583E34  38 00 00 00 */	li r0, 0
/* 80583E38  98 1D 06 2C */	stb r0, 0x62c(r29)
/* 80583E3C  98 1D 06 2D */	stb r0, 0x62d(r29)
/* 80583E40  98 1D 06 2B */	stb r0, 0x62b(r29)
/* 80583E44  80 1D 08 84 */	lwz r0, 0x884(r29)
/* 80583E48  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80583E4C  90 1D 08 84 */	stw r0, 0x884(r29)
/* 80583E50  80 1D 08 9C */	lwz r0, 0x89c(r29)
/* 80583E54  60 00 00 01 */	ori r0, r0, 1
/* 80583E58  90 1D 08 9C */	stw r0, 0x89c(r29)
lbl_80583E5C:
/* 80583E5C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80583E60  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 80583E64  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
/* 80583E68  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80583E6C  2C 00 00 00 */	cmpwi r0, 0
/* 80583E70  40 81 00 1C */	ble lbl_80583E8C
/* 80583E74  38 00 40 00 */	li r0, 0x4000
/* 80583E78  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80583E7C  38 7D 06 70 */	addi r3, r29, 0x670
/* 80583E80  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80583E84  4B AF 32 90 */	b SetGroundUpY__9dBgS_AcchFf
/* 80583E88  48 00 00 34 */	b lbl_80583EBC
lbl_80583E8C:
/* 80583E8C  38 00 C0 00 */	li r0, -16384
/* 80583E90  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80583E94  A8 7D 06 0A */	lha r3, 0x60a(r29)
/* 80583E98  7C 60 07 35 */	extsh. r0, r3
/* 80583E9C  41 82 00 18 */	beq lbl_80583EB4
/* 80583EA0  B0 7D 05 F6 */	sth r3, 0x5f6(r29)
/* 80583EA4  38 7D 06 70 */	addi r3, r29, 0x670
/* 80583EA8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80583EAC  4B AF 32 68 */	b SetGroundUpY__9dBgS_AcchFf
/* 80583EB0  48 00 00 0C */	b lbl_80583EBC
lbl_80583EB4:
/* 80583EB4  38 7D 06 70 */	addi r3, r29, 0x670
/* 80583EB8  4B AF 32 5C */	b SetGroundUpY__9dBgS_AcchFf
lbl_80583EBC:
/* 80583EBC  7F A3 EB 78 */	mr r3, r29
/* 80583EC0  4B FF E4 31 */	bl deletePart__15daObj_Kanban2_cFv
/* 80583EC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80583EC8  41 82 04 70 */	beq lbl_80584338
/* 80583ECC  48 00 04 98 */	b lbl_80584364
lbl_80583ED0:
/* 80583ED0  A8 7D 04 E4 */	lha r3, 0x4e4(r29)
/* 80583ED4  4B DE 11 FC */	b abs
/* 80583ED8  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80583EDC  40 80 00 18 */	bge lbl_80583EF4
/* 80583EE0  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80583EE4  38 80 40 00 */	li r4, 0x4000
/* 80583EE8  38 A0 02 00 */	li r5, 0x200
/* 80583EEC  4B CE CC A4 */	b cLib_chaseAngleS__FPsss
/* 80583EF0  48 00 00 14 */	b lbl_80583F04
lbl_80583EF4:
/* 80583EF4  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80583EF8  38 80 C0 00 */	li r4, -16384
/* 80583EFC  38 A0 02 00 */	li r5, 0x200
/* 80583F00  4B CE CC 90 */	b cLib_chaseAngleS__FPsss
lbl_80583F04:
/* 80583F04  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 80583F08  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80583F0C  41 82 04 2C */	beq lbl_80584338
/* 80583F10  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80583F14  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80583F18  EC 01 00 32 */	fmuls f0, f1, f0
/* 80583F1C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80583F20  7F A3 EB 78 */	mr r3, r29
/* 80583F24  4B FF E6 81 */	bl getWallAngle__15daObj_Kanban2_cFv
/* 80583F28  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80583F2C  48 00 04 0C */	b lbl_80584338
lbl_80583F30:
/* 80583F30  80 1D 08 84 */	lwz r0, 0x884(r29)
/* 80583F34  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80583F38  90 1D 08 84 */	stw r0, 0x884(r29)
/* 80583F3C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80583F40  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80583F44  38 00 00 3C */	li r0, 0x3c
/* 80583F48  98 1D 06 29 */	stb r0, 0x629(r29)
/* 80583F4C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80583F50  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80583F54  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80583F58  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80583F5C  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80583F60  38 03 40 00 */	addi r0, r3, 0x4000
/* 80583F64  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80583F68  38 00 00 0C */	li r0, 0xc
/* 80583F6C  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80583F70  48 00 03 C8 */	b lbl_80584338
lbl_80583F74:
/* 80583F74  88 1D 06 29 */	lbz r0, 0x629(r29)
/* 80583F78  28 00 00 00 */	cmplwi r0, 0
/* 80583F7C  41 82 00 14 */	beq lbl_80583F90
/* 80583F80  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80583F84  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80583F88  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80583F8C  48 00 03 AC */	b lbl_80584338
lbl_80583F90:
/* 80583F90  38 00 00 0D */	li r0, 0xd
/* 80583F94  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80583F98  38 00 00 0A */	li r0, 0xa
/* 80583F9C  98 1D 06 29 */	stb r0, 0x629(r29)
/* 80583FA0  48 00 03 98 */	b lbl_80584338
lbl_80583FA4:
/* 80583FA4  88 1D 06 29 */	lbz r0, 0x629(r29)
/* 80583FA8  28 00 00 00 */	cmplwi r0, 0
/* 80583FAC  41 82 00 28 */	beq lbl_80583FD4
/* 80583FB0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80583FB4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80583FB8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80583FBC  4B CE C7 84 */	b cLib_chaseF__FPfff
/* 80583FC0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80583FC4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80583FC8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80583FCC  4B CE C7 74 */	b cLib_chaseF__FPfff
/* 80583FD0  48 00 03 68 */	b lbl_80584338
lbl_80583FD4:
/* 80583FD4  38 00 00 09 */	li r0, 9
/* 80583FD8  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80583FDC  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80583FE0  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80583FE4  48 00 03 54 */	b lbl_80584338
lbl_80583FE8:
/* 80583FE8  80 1D 08 84 */	lwz r0, 0x884(r29)
/* 80583FEC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80583FF0  90 1D 08 84 */	stw r0, 0x884(r29)
/* 80583FF4  80 1D 08 B0 */	lwz r0, 0x8b0(r29)
/* 80583FF8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80583FFC  90 1D 08 B0 */	stw r0, 0x8b0(r29)
/* 80584000  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80584004  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80584008  38 00 00 00 */	li r0, 0
/* 8058400C  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 80584010  38 00 00 0E */	li r0, 0xe
/* 80584014  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80584018  38 00 00 0A */	li r0, 0xa
/* 8058401C  98 1D 06 29 */	stb r0, 0x629(r29)
/* 80584020  48 00 03 18 */	b lbl_80584338
lbl_80584024:
/* 80584024  88 1D 06 29 */	lbz r0, 0x629(r29)
/* 80584028  28 00 00 00 */	cmplwi r0, 0
/* 8058402C  40 82 03 38 */	bne lbl_80584364
/* 80584030  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 80584034  38 80 10 00 */	li r4, 0x1000
/* 80584038  38 A0 00 80 */	li r5, 0x80
/* 8058403C  4B CE CB 54 */	b cLib_chaseAngleS__FPsss
/* 80584040  3B C0 00 00 */	li r30, 0
/* 80584044  80 9D 06 1C */	lwz r4, 0x61c(r29)
/* 80584048  3C 60 00 01 */	lis r3, 0x0001 /* 0x000155C3@ha */
/* 8058404C  38 03 55 C3 */	addi r0, r3, 0x55C3 /* 0x000155C3@l */
/* 80584050  7C 80 00 39 */	and. r0, r4, r0
/* 80584054  40 82 00 F8 */	bne lbl_8058414C
/* 80584058  38 7D 05 F6 */	addi r3, r29, 0x5f6
/* 8058405C  38 80 40 00 */	li r4, 0x4000
/* 80584060  38 A0 04 00 */	li r5, 0x400
/* 80584064  4B CE CB 2C */	b cLib_chaseAngleS__FPsss
/* 80584068  A8 7D 05 EC */	lha r3, 0x5ec(r29)
/* 8058406C  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 80584070  7C 03 00 50 */	subf r0, r3, r0
/* 80584074  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80584078  7F A3 EB 78 */	mr r3, r29
/* 8058407C  A8 9D 04 E8 */	lha r4, 0x4e8(r29)
/* 80584080  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80584084  38 05 C0 00 */	addi r0, r5, -16384
/* 80584088  7C 05 07 34 */	extsh r5, r0
/* 8058408C  4B FF E8 B9 */	bl checkPataGround__15daObj_Kanban2_cFss
/* 80584090  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80584094  41 82 01 E0 */	beq lbl_80584274
/* 80584098  A8 1D 05 EC */	lha r0, 0x5ec(r29)
/* 8058409C  7C 60 00 D0 */	neg r3, r0
/* 805840A0  38 00 00 03 */	li r0, 3
/* 805840A4  7C 03 03 D6 */	divw r0, r3, r0
/* 805840A8  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 805840AC  7F A3 EB 78 */	mr r3, r29
/* 805840B0  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800E6@ha */
/* 805840B4  38 84 00 E6 */	addi r4, r4, 0x00E6 /* 0x000800E6@l */
/* 805840B8  4B FF D8 81 */	bl setKanbanSE__15daObj_Kanban2_cFi
/* 805840BC  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 805840C0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805840C4  41 82 00 70 */	beq lbl_80584134
/* 805840C8  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 805840CC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805840D0  C0 9D 04 D4 */	lfs f4, 0x4d4(r29)
/* 805840D4  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 805840D8  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 805840DC  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 805840E0  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 805840E4  38 03 C0 00 */	addi r0, r3, -16384
/* 805840E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805840EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805840F0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805840F4  7C 03 04 2E */	lfsx f0, r3, r0
/* 805840F8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805840FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80584100  EC 21 00 28 */	fsubs f1, f1, f0
/* 80584104  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80584108  7C 63 02 14 */	add r3, r3, r0
/* 8058410C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80584110  EC 02 00 32 */	fmuls f0, f2, f0
/* 80584114  EC 03 00 28 */	fsubs f0, f3, f0
/* 80584118  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8058411C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80584120  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80584124  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80584128  7F A3 EB 78 */	mr r3, r29
/* 8058412C  38 81 00 18 */	addi r4, r1, 0x18
/* 80584130  4B FF E9 7D */	bl setSmokeEffect__15daObj_Kanban2_cF4cXyz
lbl_80584134:
/* 80584134  A8 7D 05 EC */	lha r3, 0x5ec(r29)
/* 80584138  4B DE 0F 98 */	b abs
/* 8058413C  2C 03 01 00 */	cmpwi r3, 0x100
/* 80584140  40 80 01 34 */	bge lbl_80584274
/* 80584144  3B C0 00 01 */	li r30, 1
/* 80584148  48 00 01 2C */	b lbl_80584274
lbl_8058414C:
/* 8058414C  A8 7D 04 E8 */	lha r3, 0x4e8(r29)
/* 80584150  A8 1D 05 EC */	lha r0, 0x5ec(r29)
/* 80584154  7C 03 02 14 */	add r0, r3, r0
/* 80584158  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 8058415C  38 7D 05 F6 */	addi r3, r29, 0x5f6
/* 80584160  38 80 C0 00 */	li r4, -16384
/* 80584164  38 A0 04 00 */	li r5, 0x400
/* 80584168  4B CE CA 28 */	b cLib_chaseAngleS__FPsss
/* 8058416C  7F A3 EB 78 */	mr r3, r29
/* 80584170  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 80584174  7C 00 00 D0 */	neg r0, r0
/* 80584178  7C 04 07 34 */	extsh r4, r0
/* 8058417C  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80584180  38 05 40 00 */	addi r0, r5, 0x4000
/* 80584184  7C 05 07 34 */	extsh r5, r0
/* 80584188  4B FF E7 BD */	bl checkPataGround__15daObj_Kanban2_cFss
/* 8058418C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80584190  41 82 00 E4 */	beq lbl_80584274
/* 80584194  A8 1D 05 EC */	lha r0, 0x5ec(r29)
/* 80584198  7C 60 00 D0 */	neg r3, r0
/* 8058419C  38 00 00 03 */	li r0, 3
/* 805841A0  7C 03 03 D6 */	divw r0, r3, r0
/* 805841A4  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 805841A8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800E6@ha */
/* 805841AC  38 03 00 E6 */	addi r0, r3, 0x00E6 /* 0x000800E6@l */
/* 805841B0  90 01 00 08 */	stw r0, 8(r1)
/* 805841B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805841B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805841BC  80 63 00 00 */	lwz r3, 0(r3)
/* 805841C0  38 81 00 08 */	addi r4, r1, 8
/* 805841C4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805841C8  38 C0 00 00 */	li r6, 0
/* 805841CC  38 E0 00 00 */	li r7, 0
/* 805841D0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805841D4  FC 40 08 90 */	fmr f2, f1
/* 805841D8  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 805841DC  FC 80 18 90 */	fmr f4, f3
/* 805841E0  39 00 00 00 */	li r8, 0
/* 805841E4  4B D2 77 A0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805841E8  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 805841EC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805841F0  41 82 00 70 */	beq lbl_80584260
/* 805841F4  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 805841F8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805841FC  C0 9D 04 D4 */	lfs f4, 0x4d4(r29)
/* 80584200  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 80584204  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80584208  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 8058420C  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80584210  38 03 40 00 */	addi r0, r3, 0x4000
/* 80584214  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80584218  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8058421C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80584220  7C 03 04 2E */	lfsx f0, r3, r0
/* 80584224  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80584228  EC 02 00 32 */	fmuls f0, f2, f0
/* 8058422C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80584230  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80584234  7C 63 02 14 */	add r3, r3, r0
/* 80584238  C0 03 00 04 */	lfs f0, 4(r3)
/* 8058423C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80584240  EC 03 00 28 */	fsubs f0, f3, f0
/* 80584244  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80584248  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8058424C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80584250  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80584254  7F A3 EB 78 */	mr r3, r29
/* 80584258  38 81 00 0C */	addi r4, r1, 0xc
/* 8058425C  4B FF E8 51 */	bl setSmokeEffect__15daObj_Kanban2_cF4cXyz
lbl_80584260:
/* 80584260  A8 7D 05 EC */	lha r3, 0x5ec(r29)
/* 80584264  4B DE 0E 6C */	b abs
/* 80584268  2C 03 01 00 */	cmpwi r3, 0x100
/* 8058426C  40 80 00 08 */	bge lbl_80584274
/* 80584270  3B C0 00 01 */	li r30, 1
lbl_80584274:
/* 80584274  2C 1E 00 00 */	cmpwi r30, 0
/* 80584278  41 82 00 C0 */	beq lbl_80584338
/* 8058427C  38 00 00 00 */	li r0, 0
/* 80584280  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 80584284  A8 7D 04 E8 */	lha r3, 0x4e8(r29)
/* 80584288  4B DE 0E 48 */	b abs
/* 8058428C  B0 7D 04 E4 */	sth r3, 0x4e4(r29)
/* 80584290  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80584294  A8 1D 05 F6 */	lha r0, 0x5f6(r29)
/* 80584298  7C 03 02 14 */	add r0, r3, r0
/* 8058429C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 805842A0  38 00 00 00 */	li r0, 0
/* 805842A4  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 805842A8  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 805842AC  7F A3 EB 78 */	mr r3, r29
/* 805842B0  4B FF E9 91 */	bl setCenterPos__15daObj_Kanban2_cFv
/* 805842B4  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 805842B8  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805842BC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805842C0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805842C4  38 83 00 04 */	addi r4, r3, 4
/* 805842C8  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 805842CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805842D0  7C 04 04 2E */	lfsx f0, r4, r0
/* 805842D4  C0 3D 05 E0 */	lfs f1, 0x5e0(r29)
/* 805842D8  EC 61 00 32 */	fmuls f3, f1, f0
/* 805842DC  7C 03 04 2E */	lfsx f0, r3, r0
/* 805842E0  EC 41 00 32 */	fmuls f2, f1, f0
/* 805842E4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805842E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805842EC  7C 03 04 2E */	lfsx f0, r3, r0
/* 805842F0  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 805842F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805842F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805842FC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80584300  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80584304  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80584308  EC 03 00 28 */	fsubs f0, f3, f0
/* 8058430C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80584310  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80584314  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80584318  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8058431C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80584320  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80584324  EC 02 00 32 */	fmuls f0, f2, f0
/* 80584328  EC 01 00 28 */	fsubs f0, f1, f0
/* 8058432C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80584330  38 00 00 0B */	li r0, 0xb
/* 80584334  90 1D 06 14 */	stw r0, 0x614(r29)
lbl_80584338:
/* 80584338  7F A3 EB 78 */	mr r3, r29
/* 8058433C  4B FF E5 59 */	bl checkWaterSurface__15daObj_Kanban2_cFv
/* 80584340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80584344  41 82 00 18 */	beq lbl_8058435C
/* 80584348  7F A3 EB 78 */	mr r3, r29
/* 8058434C  38 80 00 02 */	li r4, 2
/* 80584350  38 A0 00 00 */	li r5, 0
/* 80584354  4B FF EB 9D */	bl setActionMode__15daObj_Kanban2_cFii
/* 80584358  48 00 00 0C */	b lbl_80584364
lbl_8058435C:
/* 8058435C  7F A3 EB 78 */	mr r3, r29
/* 80584360  4B FF EB 09 */	bl checkCarryOn__15daObj_Kanban2_cFv
lbl_80584364:
/* 80584364  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80584368  4B DD DE C0 */	b _restgpr_29
/* 8058436C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80584370  7C 08 03 A6 */	mtlr r0
/* 80584374  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80584378  4E 80 00 20 */	blr 
