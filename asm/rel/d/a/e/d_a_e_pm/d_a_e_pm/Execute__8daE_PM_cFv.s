lbl_80748B18:
/* 80748B18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80748B1C  7C 08 02 A6 */	mflr r0
/* 80748B20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80748B24  39 61 00 30 */	addi r11, r1, 0x30
/* 80748B28  4B C1 96 B4 */	b _savegpr_29
/* 80748B2C  7C 7E 1B 78 */	mr r30, r3
/* 80748B30  3C 60 80 75 */	lis r3, lit_1109@ha
/* 80748B34  3B A3 C3 48 */	addi r29, r3, lit_1109@l
/* 80748B38  3C 60 80 75 */	lis r3, lit_3910@ha
/* 80748B3C  3B E3 BF 3C */	addi r31, r3, lit_3910@l
/* 80748B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80748B44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80748B48  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80748B4C  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80748B50  90 9D 00 9C */	stw r4, 0x9c(r29)
/* 80748B54  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80748B58  4B B2 80 AC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80748B5C  B0 7D 00 A0 */	sth r3, 0xa0(r29)
/* 80748B60  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80748B64  80 9D 00 9C */	lwz r4, 0x9c(r29)
/* 80748B68  4B BF E8 34 */	b PSVECSquareDistance
/* 80748B6C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80748B70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80748B74  40 81 00 58 */	ble lbl_80748BCC
/* 80748B78  FC 00 08 34 */	frsqrte f0, f1
/* 80748B7C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80748B80  FC 44 00 32 */	fmul f2, f4, f0
/* 80748B84  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80748B88  FC 00 00 32 */	fmul f0, f0, f0
/* 80748B8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80748B90  FC 03 00 28 */	fsub f0, f3, f0
/* 80748B94  FC 02 00 32 */	fmul f0, f2, f0
/* 80748B98  FC 44 00 32 */	fmul f2, f4, f0
/* 80748B9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80748BA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80748BA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80748BA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80748BAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80748BB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80748BB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80748BB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80748BBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80748BC0  FC 21 00 32 */	fmul f1, f1, f0
/* 80748BC4  FC 20 08 18 */	frsp f1, f1
/* 80748BC8  48 00 00 88 */	b lbl_80748C50
lbl_80748BCC:
/* 80748BCC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80748BD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80748BD4  40 80 00 10 */	bge lbl_80748BE4
/* 80748BD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80748BDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80748BE0  48 00 00 70 */	b lbl_80748C50
lbl_80748BE4:
/* 80748BE4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80748BE8  80 81 00 08 */	lwz r4, 8(r1)
/* 80748BEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80748BF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80748BF4  7C 03 00 00 */	cmpw r3, r0
/* 80748BF8  41 82 00 14 */	beq lbl_80748C0C
/* 80748BFC  40 80 00 40 */	bge lbl_80748C3C
/* 80748C00  2C 03 00 00 */	cmpwi r3, 0
/* 80748C04  41 82 00 20 */	beq lbl_80748C24
/* 80748C08  48 00 00 34 */	b lbl_80748C3C
lbl_80748C0C:
/* 80748C0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80748C10  41 82 00 0C */	beq lbl_80748C1C
/* 80748C14  38 00 00 01 */	li r0, 1
/* 80748C18  48 00 00 28 */	b lbl_80748C40
lbl_80748C1C:
/* 80748C1C  38 00 00 02 */	li r0, 2
/* 80748C20  48 00 00 20 */	b lbl_80748C40
lbl_80748C24:
/* 80748C24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80748C28  41 82 00 0C */	beq lbl_80748C34
/* 80748C2C  38 00 00 05 */	li r0, 5
/* 80748C30  48 00 00 10 */	b lbl_80748C40
lbl_80748C34:
/* 80748C34  38 00 00 03 */	li r0, 3
/* 80748C38  48 00 00 08 */	b lbl_80748C40
lbl_80748C3C:
/* 80748C3C  38 00 00 04 */	li r0, 4
lbl_80748C40:
/* 80748C40  2C 00 00 01 */	cmpwi r0, 1
/* 80748C44  40 82 00 0C */	bne lbl_80748C50
/* 80748C48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80748C4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80748C50:
/* 80748C50  D0 3D 00 98 */	stfs f1, 0x98(r29)
/* 80748C54  38 60 00 00 */	li r3, 0
/* 80748C58  7C 64 1B 78 */	mr r4, r3
/* 80748C5C  38 00 00 04 */	li r0, 4
/* 80748C60  7C 09 03 A6 */	mtctr r0
lbl_80748C64:
/* 80748C64  38 C3 06 20 */	addi r6, r3, 0x620
/* 80748C68  7C BE 32 AE */	lhax r5, r30, r6
/* 80748C6C  38 05 FF FF */	addi r0, r5, -1
/* 80748C70  7C 1E 33 2E */	sthx r0, r30, r6
/* 80748C74  7C 1E 32 AE */	lhax r0, r30, r6
/* 80748C78  2C 00 00 00 */	cmpwi r0, 0
/* 80748C7C  40 80 00 08 */	bge lbl_80748C84
/* 80748C80  7C 9E 33 2E */	sthx r4, r30, r6
lbl_80748C84:
/* 80748C84  38 63 00 02 */	addi r3, r3, 2
/* 80748C88  42 00 FF DC */	bdnz lbl_80748C64
/* 80748C8C  7F C3 F3 78 */	mr r3, r30
/* 80748C90  4B FF 9B 81 */	bl Yazirushi__8daE_PM_cFv
/* 80748C94  88 1E 06 1A */	lbz r0, 0x61a(r30)
/* 80748C98  28 00 00 04 */	cmplwi r0, 4
/* 80748C9C  40 82 00 10 */	bne lbl_80748CAC
/* 80748CA0  7F C3 F3 78 */	mr r3, r30
/* 80748CA4  4B FF FC C1 */	bl BossAction__8daE_PM_cFv
/* 80748CA8  48 00 00 20 */	b lbl_80748CC8
lbl_80748CAC:
/* 80748CAC  28 00 00 00 */	cmplwi r0, 0
/* 80748CB0  40 82 00 10 */	bne lbl_80748CC0
/* 80748CB4  7F C3 F3 78 */	mr r3, r30
/* 80748CB8  4B FF BA D9 */	bl AppearAction__8daE_PM_cFv
/* 80748CBC  48 00 00 0C */	b lbl_80748CC8
lbl_80748CC0:
/* 80748CC0  7F C3 F3 78 */	mr r3, r30
/* 80748CC4  4B FF D0 F9 */	bl Action__8daE_PM_cFv
lbl_80748CC8:
/* 80748CC8  7F C3 F3 78 */	mr r3, r30
/* 80748CCC  48 00 12 05 */	bl LampAction__8daE_PM_cFv
/* 80748CD0  C0 1F 01 E4 */	lfs f0, 0x1e4(r31)
/* 80748CD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80748CD8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80748CDC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80748CE0  7F C3 F3 78 */	mr r3, r30
/* 80748CE4  38 9E 07 20 */	addi r4, r30, 0x720
/* 80748CE8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80748CEC  38 C1 00 0C */	addi r6, r1, 0xc
/* 80748CF0  48 00 2E 25 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80748CF4  7F C3 F3 78 */	mr r3, r30
/* 80748CF8  48 00 19 4D */	bl EyeMove__8daE_PM_cFv
/* 80748CFC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80748D00  7C 03 07 74 */	extsb r3, r0
/* 80748D04  4B 8E 43 68 */	b dComIfGp_getReverb__Fi
/* 80748D08  7C 65 1B 78 */	mr r5, r3
/* 80748D0C  80 7E 07 04 */	lwz r3, 0x704(r30)
/* 80748D10  38 80 00 00 */	li r4, 0
/* 80748D14  4B 8C 83 9C */	b play__16mDoExt_McaMorfSOFUlSc
/* 80748D18  7F C3 F3 78 */	mr r3, r30
/* 80748D1C  4B FF 97 A5 */	bl setCcCylinder__8daE_PM_cFv
/* 80748D20  7F C3 F3 78 */	mr r3, r30
/* 80748D24  38 9E 09 DC */	addi r4, r30, 0x9dc
/* 80748D28  4B 8D 19 A4 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80748D2C  38 7E 08 04 */	addi r3, r30, 0x804
/* 80748D30  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80748D34  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80748D38  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80748D3C  4B 92 DD 70 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80748D40  7F C3 F3 78 */	mr r3, r30
/* 80748D44  48 00 1D E5 */	bl setBaseMtx__8daE_PM_cFv
/* 80748D48  7F C3 F3 78 */	mr r3, r30
/* 80748D4C  48 00 1E 5D */	bl setGakkiBaseMtx__8daE_PM_cFv
/* 80748D50  7F C3 F3 78 */	mr r3, r30
/* 80748D54  48 00 1E BD */	bl setLampBaseMtx__8daE_PM_cFv
/* 80748D58  38 60 00 01 */	li r3, 1
/* 80748D5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80748D60  4B C1 94 C8 */	b _restgpr_29
/* 80748D64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80748D68  7C 08 03 A6 */	mtlr r0
/* 80748D6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80748D70  4E 80 00 20 */	blr 
