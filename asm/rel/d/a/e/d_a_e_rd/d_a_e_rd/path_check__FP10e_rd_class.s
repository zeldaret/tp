lbl_80506A60:
/* 80506A60  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80506A64  7C 08 02 A6 */	mflr r0
/* 80506A68  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80506A6C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80506A70  4B E5 B7 64 */	b _savegpr_27
/* 80506A74  7C 7E 1B 78 */	mr r30, r3
/* 80506A78  3C 60 80 52 */	lis r3, lit_4208@ha
/* 80506A7C  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 80506A80  38 61 00 20 */	addi r3, r1, 0x20
/* 80506A84  4B B7 11 E4 */	b __ct__11dBgS_LinChkFv
/* 80506A88  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80506A8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80506A90  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80506A94  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80506A98  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80506A9C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80506AA0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80506AA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80506AA8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80506AAC  80 7E 0A FC */	lwz r3, 0xafc(r30)
/* 80506AB0  83 83 00 08 */	lwz r28, 8(r3)
/* 80506AB4  3B 60 00 00 */	li r27, 0
/* 80506AB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80506ABC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80506AC0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80506AC4  48 00 00 80 */	b lbl_80506B44
lbl_80506AC8:
/* 80506AC8  2C 1B 00 FF */	cmpwi r27, 0xff
/* 80506ACC  40 80 00 70 */	bge lbl_80506B3C
/* 80506AD0  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80506AD4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80506AD8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80506ADC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80506AE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80506AE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80506AE8  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80506AEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80506AF0  38 61 00 20 */	addi r3, r1, 0x20
/* 80506AF4  38 81 00 14 */	addi r4, r1, 0x14
/* 80506AF8  38 A1 00 08 */	addi r5, r1, 8
/* 80506AFC  7F C6 F3 78 */	mr r6, r30
/* 80506B00  4B B7 12 64 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80506B04  7F A3 EB 78 */	mr r3, r29
/* 80506B08  38 81 00 20 */	addi r4, r1, 0x20
/* 80506B0C  4B B6 D8 A8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80506B10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80506B14  40 82 00 18 */	bne lbl_80506B2C
/* 80506B18  38 00 00 01 */	li r0, 1
/* 80506B1C  3C 60 80 52 */	lis r3, check_index@ha
/* 80506B20  38 63 92 34 */	addi r3, r3, check_index@l
/* 80506B24  7C 03 D9 AE */	stbx r0, r3, r27
/* 80506B28  48 00 00 14 */	b lbl_80506B3C
lbl_80506B2C:
/* 80506B2C  38 00 00 00 */	li r0, 0
/* 80506B30  3C 60 80 52 */	lis r3, check_index@ha
/* 80506B34  38 63 92 34 */	addi r3, r3, check_index@l
/* 80506B38  7C 03 D9 AE */	stbx r0, r3, r27
lbl_80506B3C:
/* 80506B3C  3B 7B 00 01 */	addi r27, r27, 1
/* 80506B40  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_80506B44:
/* 80506B44  80 7E 0A FC */	lwz r3, 0xafc(r30)
/* 80506B48  A0 03 00 00 */	lhz r0, 0(r3)
/* 80506B4C  7C 1B 00 00 */	cmpw r27, r0
/* 80506B50  41 80 FF 78 */	blt lbl_80506AC8
/* 80506B54  C0 DF 00 00 */	lfs f6, 0(r31)
/* 80506B58  38 A0 00 00 */	li r5, 0
/* 80506B5C  38 C0 00 00 */	li r6, 0
/* 80506B60  C0 1F 00 7C */	lfs f0, 0x7c(r31)
lbl_80506B64:
/* 80506B64  80 7E 0A FC */	lwz r3, 0xafc(r30)
/* 80506B68  80 83 00 08 */	lwz r4, 8(r3)
/* 80506B6C  38 E0 00 00 */	li r7, 0
/* 80506B70  A0 03 00 00 */	lhz r0, 0(r3)
/* 80506B74  7C 09 03 A6 */	mtctr r0
/* 80506B78  2C 00 00 00 */	cmpwi r0, 0
/* 80506B7C  40 81 00 8C */	ble lbl_80506C08
lbl_80506B80:
/* 80506B80  2C 07 00 FF */	cmpwi r7, 0xff
/* 80506B84  40 80 00 78 */	bge lbl_80506BFC
/* 80506B88  3C 60 80 52 */	lis r3, check_index@ha
/* 80506B8C  38 63 92 34 */	addi r3, r3, check_index@l
/* 80506B90  7C 03 38 AE */	lbzx r0, r3, r7
/* 80506B94  28 00 00 00 */	cmplwi r0, 0
/* 80506B98  41 82 00 64 */	beq lbl_80506BFC
/* 80506B9C  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 80506BA0  C0 24 00 04 */	lfs f1, 4(r4)
/* 80506BA4  EC 82 08 28 */	fsubs f4, f2, f1
/* 80506BA8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80506BAC  C0 24 00 08 */	lfs f1, 8(r4)
/* 80506BB0  EC A2 08 28 */	fsubs f5, f2, f1
/* 80506BB4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80506BB8  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80506BBC  EC 22 08 28 */	fsubs f1, f2, f1
/* 80506BC0  EC 61 00 72 */	fmuls f3, f1, f1
/* 80506BC4  EC 44 01 32 */	fmuls f2, f4, f4
/* 80506BC8  EC 25 01 72 */	fmuls f1, f5, f5
/* 80506BCC  EC 22 08 2A */	fadds f1, f2, f1
/* 80506BD0  EC 43 08 2A */	fadds f2, f3, f1
/* 80506BD4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80506BD8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80506BDC  40 81 00 0C */	ble lbl_80506BE8
/* 80506BE0  FC 20 10 34 */	frsqrte f1, f2
/* 80506BE4  EC 41 00 B2 */	fmuls f2, f1, f2
lbl_80506BE8:
/* 80506BE8  FC 02 30 40 */	fcmpo cr0, f2, f6
/* 80506BEC  40 80 00 10 */	bge lbl_80506BFC
/* 80506BF0  98 FE 0B 00 */	stb r7, 0xb00(r30)
/* 80506BF4  38 A0 00 01 */	li r5, 1
/* 80506BF8  48 00 00 10 */	b lbl_80506C08
lbl_80506BFC:
/* 80506BFC  38 E7 00 01 */	addi r7, r7, 1
/* 80506C00  38 84 00 10 */	addi r4, r4, 0x10
/* 80506C04  42 00 FF 7C */	bdnz lbl_80506B80
lbl_80506C08:
/* 80506C08  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80506C0C  40 82 00 14 */	bne lbl_80506C20
/* 80506C10  EC C6 00 2A */	fadds f6, f6, f0
/* 80506C14  38 C6 00 01 */	addi r6, r6, 1
/* 80506C18  2C 06 00 64 */	cmpwi r6, 0x64
/* 80506C1C  41 80 FF 48 */	blt lbl_80506B64
lbl_80506C20:
/* 80506C20  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80506C24  40 82 00 18 */	bne lbl_80506C3C
/* 80506C28  38 61 00 20 */	addi r3, r1, 0x20
/* 80506C2C  38 80 FF FF */	li r4, -1
/* 80506C30  4B B7 10 AC */	b __dt__11dBgS_LinChkFv
/* 80506C34  38 60 00 00 */	li r3, 0
/* 80506C38  48 00 00 3C */	b lbl_80506C74
lbl_80506C3C:
/* 80506C3C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80506C40  4B D6 0D 14 */	b cM_rndF__Ff
/* 80506C44  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80506C48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80506C4C  40 80 00 10 */	bge lbl_80506C5C
/* 80506C50  38 00 00 01 */	li r0, 1
/* 80506C54  98 1E 0B 01 */	stb r0, 0xb01(r30)
/* 80506C58  48 00 00 0C */	b lbl_80506C64
lbl_80506C5C:
/* 80506C5C  38 00 FF FF */	li r0, -1
/* 80506C60  98 1E 0B 01 */	stb r0, 0xb01(r30)
lbl_80506C64:
/* 80506C64  38 61 00 20 */	addi r3, r1, 0x20
/* 80506C68  38 80 FF FF */	li r4, -1
/* 80506C6C  4B B7 10 70 */	b __dt__11dBgS_LinChkFv
/* 80506C70  38 60 00 01 */	li r3, 1
lbl_80506C74:
/* 80506C74  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80506C78  4B E5 B5 A8 */	b _restgpr_27
/* 80506C7C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80506C80  7C 08 03 A6 */	mtlr r0
/* 80506C84  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80506C88  4E 80 00 20 */	blr 
