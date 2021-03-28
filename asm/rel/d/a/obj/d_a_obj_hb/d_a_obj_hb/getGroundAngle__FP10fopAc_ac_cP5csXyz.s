lbl_80C19BEC:
/* 80C19BEC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C19BF0  7C 08 02 A6 */	mflr r0
/* 80C19BF4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C19BF8  39 61 00 90 */	addi r11, r1, 0x90
/* 80C19BFC  4B 74 85 D4 */	b _savegpr_26
/* 80C19C00  7C 7E 1B 78 */	mr r30, r3
/* 80C19C04  7C 9A 23 78 */	mr r26, r4
/* 80C19C08  3C 60 80 C2 */	lis r3, lit_3665@ha
/* 80C19C0C  3B E3 B6 00 */	addi r31, r3, lit_3665@l
/* 80C19C10  38 61 00 20 */	addi r3, r1, 0x20
/* 80C19C14  4B 45 D9 68 */	b __ct__11dBgS_GndChkFv
/* 80C19C18  3B A0 00 01 */	li r29, 1
/* 80C19C1C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C19C20  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C19C24  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C19C28  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C19C2C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C19C30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C19C34  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C19C38  EC 01 00 2A */	fadds f0, f1, f0
/* 80C19C3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C19C40  38 61 00 20 */	addi r3, r1, 0x20
/* 80C19C44  38 81 00 08 */	addi r4, r1, 8
/* 80C19C48  4B 64 E0 E0 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80C19C4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C19C50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C19C54  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80C19C58  7F C3 F3 78 */	mr r3, r30
/* 80C19C5C  38 81 00 20 */	addi r4, r1, 0x20
/* 80C19C60  4B 45 A8 40 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80C19C64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C19C68  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C19C6C  FC 20 08 18 */	frsp f1, f1
/* 80C19C70  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C19C74  41 82 00 F8 */	beq lbl_80C19D6C
/* 80C19C78  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C19C7C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C19C80  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C19C84  EC 00 08 2A */	fadds f0, f0, f1
/* 80C19C88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C19C8C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C19C90  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C19C94  EC 01 00 2A */	fadds f0, f1, f0
/* 80C19C98  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C19C9C  38 61 00 20 */	addi r3, r1, 0x20
/* 80C19CA0  38 81 00 14 */	addi r4, r1, 0x14
/* 80C19CA4  4B 64 E0 68 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80C19CA8  7F C3 F3 78 */	mr r3, r30
/* 80C19CAC  38 81 00 20 */	addi r4, r1, 0x20
/* 80C19CB0  4B 45 A7 F0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80C19CB4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C19CB8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C19CBC  FC 20 08 18 */	frsp f1, f1
/* 80C19CC0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C19CC4  41 82 00 28 */	beq lbl_80C19CEC
/* 80C19CC8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C19CCC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C19CD0  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80C19CD4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C19CD8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C19CDC  4B 64 D9 98 */	b cM_atan2s__Fff
/* 80C19CE0  7C 03 00 D0 */	neg r0, r3
/* 80C19CE4  7C 1C 07 34 */	extsh r28, r0
/* 80C19CE8  48 00 00 08 */	b lbl_80C19CF0
lbl_80C19CEC:
/* 80C19CEC  3B A0 00 00 */	li r29, 0
lbl_80C19CF0:
/* 80C19CF0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C19CF4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C19CF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C19CFC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C19D00  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C19D04  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C19D08  EC 01 00 2A */	fadds f0, f1, f0
/* 80C19D0C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C19D10  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C19D14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C19D18  38 61 00 20 */	addi r3, r1, 0x20
/* 80C19D1C  38 81 00 14 */	addi r4, r1, 0x14
/* 80C19D20  4B 64 DF EC */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80C19D24  7F C3 F3 78 */	mr r3, r30
/* 80C19D28  38 81 00 20 */	addi r4, r1, 0x20
/* 80C19D2C  4B 45 A7 74 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80C19D30  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C19D34  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C19D38  FC 20 08 18 */	frsp f1, f1
/* 80C19D3C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C19D40  41 82 00 24 */	beq lbl_80C19D64
/* 80C19D44  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C19D48  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C19D4C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80C19D50  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C19D54  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C19D58  4B 64 D9 1C */	b cM_atan2s__Fff
/* 80C19D5C  7C 7B 07 34 */	extsh r27, r3
/* 80C19D60  48 00 00 10 */	b lbl_80C19D70
lbl_80C19D64:
/* 80C19D64  3B A0 00 00 */	li r29, 0
/* 80C19D68  48 00 00 08 */	b lbl_80C19D70
lbl_80C19D6C:
/* 80C19D6C  3B A0 00 00 */	li r29, 0
lbl_80C19D70:
/* 80C19D70  2C 1D 00 00 */	cmpwi r29, 0
/* 80C19D74  41 82 00 0C */	beq lbl_80C19D80
/* 80C19D78  B3 9A 00 00 */	sth r28, 0(r26)
/* 80C19D7C  B3 7A 00 04 */	sth r27, 4(r26)
lbl_80C19D80:
/* 80C19D80  38 61 00 20 */	addi r3, r1, 0x20
/* 80C19D84  38 80 FF FF */	li r4, -1
/* 80C19D88  4B 45 D8 68 */	b __dt__11dBgS_GndChkFv
/* 80C19D8C  7F A3 EB 78 */	mr r3, r29
/* 80C19D90  39 61 00 90 */	addi r11, r1, 0x90
/* 80C19D94  4B 74 84 88 */	b _restgpr_26
/* 80C19D98  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C19D9C  7C 08 03 A6 */	mtlr r0
/* 80C19DA0  38 21 00 90 */	addi r1, r1, 0x90
/* 80C19DA4  4E 80 00 20 */	blr 
