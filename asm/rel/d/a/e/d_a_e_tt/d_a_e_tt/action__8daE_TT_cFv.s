lbl_807C0C28:
/* 807C0C28  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807C0C2C  7C 08 02 A6 */	mflr r0
/* 807C0C30  90 01 00 94 */	stw r0, 0x94(r1)
/* 807C0C34  39 61 00 90 */	addi r11, r1, 0x90
/* 807C0C38  4B BA 15 A5 */	bl _savegpr_29
/* 807C0C3C  7C 7E 1B 78 */	mr r30, r3
/* 807C0C40  3C 80 80 7C */	lis r4, lit_3908@ha /* 0x807C1FB8@ha */
/* 807C0C44  3B E4 1F B8 */	addi r31, r4, lit_3908@l /* 0x807C1FB8@l */
/* 807C0C48  4B FF D2 15 */	bl checkWaterSurface__8daE_TT_cFv
/* 807C0C4C  88 1E 06 F7 */	lbz r0, 0x6f7(r30)
/* 807C0C50  28 00 00 00 */	cmplwi r0, 0
/* 807C0C54  40 82 00 0C */	bne lbl_807C0C60
/* 807C0C58  7F C3 F3 78 */	mr r3, r30
/* 807C0C5C  4B FF D3 05 */	bl checkFootGround__8daE_TT_cFv
lbl_807C0C60:
/* 807C0C60  7F C3 F3 78 */	mr r3, r30
/* 807C0C64  4B FF CF ED */	bl damage_check__8daE_TT_cFv
/* 807C0C68  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 807C0C6C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C0C70  90 1E 09 50 */	stw r0, 0x950(r30)
/* 807C0C74  3B A0 00 00 */	li r29, 0
/* 807C0C78  80 1E 06 B8 */	lwz r0, 0x6b8(r30)
/* 807C0C7C  28 00 00 06 */	cmplwi r0, 6
/* 807C0C80  41 81 00 74 */	bgt lbl_807C0CF4
/* 807C0C84  3C 60 80 7C */	lis r3, lit_5482@ha /* 0x807C2290@ha */
/* 807C0C88  38 63 22 90 */	addi r3, r3, lit_5482@l /* 0x807C2290@l */
/* 807C0C8C  54 00 10 3A */	slwi r0, r0, 2
/* 807C0C90  7C 03 00 2E */	lwzx r0, r3, r0
/* 807C0C94  7C 09 03 A6 */	mtctr r0
/* 807C0C98  4E 80 04 20 */	bctr 
lbl_807C0C9C:
/* 807C0C9C  7F C3 F3 78 */	mr r3, r30
/* 807C0CA0  4B FF E0 D1 */	bl executeWait__8daE_TT_cFv
/* 807C0CA4  48 00 00 50 */	b lbl_807C0CF4
lbl_807C0CA8:
/* 807C0CA8  7F C3 F3 78 */	mr r3, r30
/* 807C0CAC  4B FF E6 AD */	bl executeChase__8daE_TT_cFv
/* 807C0CB0  3B A0 00 01 */	li r29, 1
/* 807C0CB4  48 00 00 40 */	b lbl_807C0CF4
lbl_807C0CB8:
/* 807C0CB8  7F C3 F3 78 */	mr r3, r30
/* 807C0CBC  4B FF EC 59 */	bl executeAttack__8daE_TT_cFv
/* 807C0CC0  3B A0 00 01 */	li r29, 1
/* 807C0CC4  48 00 00 30 */	b lbl_807C0CF4
lbl_807C0CC8:
/* 807C0CC8  7F C3 F3 78 */	mr r3, r30
/* 807C0CCC  4B FF F0 95 */	bl executeDamage__8daE_TT_cFv
/* 807C0CD0  48 00 00 24 */	b lbl_807C0CF4
lbl_807C0CD4:
/* 807C0CD4  7F C3 F3 78 */	mr r3, r30
/* 807C0CD8  4B FF F3 1D */	bl executeDeath__8daE_TT_cFv
/* 807C0CDC  48 00 00 18 */	b lbl_807C0CF4
lbl_807C0CE0:
/* 807C0CE0  7F C3 F3 78 */	mr r3, r30
/* 807C0CE4  4B FF F6 59 */	bl executeOutRange__8daE_TT_cFv
/* 807C0CE8  48 00 00 0C */	b lbl_807C0CF4
lbl_807C0CEC:
/* 807C0CEC  7F C3 F3 78 */	mr r3, r30
/* 807C0CF0  4B FF F8 41 */	bl executeFirstAttack__8daE_TT_cFv
lbl_807C0CF4:
/* 807C0CF4  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807C0CF8  30 1D FF FF */	addic r0, r29, -1
/* 807C0CFC  7C 00 E9 10 */	subfe r0, r0, r29
/* 807C0D00  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 807C0D04  4B B0 0E 79 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 807C0D08  80 1E 06 B8 */	lwz r0, 0x6b8(r30)
/* 807C0D0C  2C 00 00 04 */	cmpwi r0, 4
/* 807C0D10  41 82 00 74 */	beq lbl_807C0D84
/* 807C0D14  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 807C0D18  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 807C0D1C  40 82 00 68 */	bne lbl_807C0D84
/* 807C0D20  38 61 00 08 */	addi r3, r1, 8
/* 807C0D24  4B 8B 6F 45 */	bl __ct__11dBgS_LinChkFv
/* 807C0D28  38 61 00 08 */	addi r3, r1, 8
/* 807C0D2C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C0D30  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C0D34  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 807C0D38  38 84 00 D8 */	addi r4, r4, 0xd8
/* 807C0D3C  38 BE 05 50 */	addi r5, r30, 0x550
/* 807C0D40  7F C6 F3 78 */	mr r6, r30
/* 807C0D44  4B 8B 70 21 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807C0D48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C0D4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C0D50  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807C0D54  38 81 00 08 */	addi r4, r1, 8
/* 807C0D58  4B 8B 36 5D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807C0D5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C0D60  41 82 00 10 */	beq lbl_807C0D70
/* 807C0D64  38 00 00 00 */	li r0, 0
/* 807C0D68  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807C0D6C  48 00 00 0C */	b lbl_807C0D78
lbl_807C0D70:
/* 807C0D70  38 00 00 04 */	li r0, 4
/* 807C0D74  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_807C0D78:
/* 807C0D78  38 61 00 08 */	addi r3, r1, 8
/* 807C0D7C  38 80 FF FF */	li r4, -1
/* 807C0D80  4B 8B 6F 5D */	bl __dt__11dBgS_LinChkFv
lbl_807C0D84:
/* 807C0D84  38 7E 06 CC */	addi r3, r30, 0x6cc
/* 807C0D88  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807C0D8C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807C0D90  4B AA F9 B1 */	bl cLib_chaseF__FPfff
/* 807C0D94  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 807C0D98  C0 1E 06 CC */	lfs f0, 0x6cc(r30)
/* 807C0D9C  EC 01 00 2A */	fadds f0, f1, f0
/* 807C0DA0  D0 1E 06 D0 */	stfs f0, 0x6d0(r30)
/* 807C0DA4  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 807C0DA8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C0DAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C0DB0  40 81 00 0C */	ble lbl_807C0DBC
/* 807C0DB4  D0 1E 06 D0 */	stfs f0, 0x6d0(r30)
/* 807C0DB8  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
lbl_807C0DBC:
/* 807C0DBC  7F C3 F3 78 */	mr r3, r30
/* 807C0DC0  38 9E 09 14 */	addi r4, r30, 0x914
/* 807C0DC4  4B 85 99 09 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 807C0DC8  38 7E 07 3C */	addi r3, r30, 0x73c
/* 807C0DCC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C0DD0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C0DD4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807C0DD8  4B 8B 5C D5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807C0DDC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807C0DE0  7C 03 07 74 */	extsb r3, r0
/* 807C0DE4  4B 86 C2 89 */	bl dComIfGp_getReverb__Fi
/* 807C0DE8  7C 65 1B 78 */	mr r5, r3
/* 807C0DEC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807C0DF0  38 80 00 00 */	li r4, 0
/* 807C0DF4  4B 85 02 BD */	bl play__16mDoExt_McaMorfSOFUlSc
/* 807C0DF8  39 61 00 90 */	addi r11, r1, 0x90
/* 807C0DFC  4B BA 14 2D */	bl _restgpr_29
/* 807C0E00  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807C0E04  7C 08 03 A6 */	mtlr r0
/* 807C0E08  38 21 00 90 */	addi r1, r1, 0x90
/* 807C0E0C  4E 80 00 20 */	blr 
