lbl_80808B3C:
/* 80808B3C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80808B40  7C 08 02 A6 */	mflr r0
/* 80808B44  90 01 00 54 */	stw r0, 0x54(r1)
/* 80808B48  39 61 00 50 */	addi r11, r1, 0x50
/* 80808B4C  4B B5 96 84 */	b _savegpr_26
/* 80808B50  7C 7B 1B 78 */	mr r27, r3
/* 80808B54  3C 60 80 81 */	lis r3, lit_3925@ha
/* 80808B58  3B A3 59 94 */	addi r29, r3, lit_3925@l
/* 80808B5C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80808B60  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80808B64  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80808B68  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80808B6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80808B70  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80808B74  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80808B78  38 00 00 FF */	li r0, 0xff
/* 80808B7C  90 01 00 08 */	stw r0, 8(r1)
/* 80808B80  38 80 00 00 */	li r4, 0
/* 80808B84  90 81 00 0C */	stw r4, 0xc(r1)
/* 80808B88  38 00 FF FF */	li r0, -1
/* 80808B8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80808B90  90 81 00 14 */	stw r4, 0x14(r1)
/* 80808B94  90 81 00 18 */	stw r4, 0x18(r1)
/* 80808B98  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80808B9C  80 9B 0A E8 */	lwz r4, 0xae8(r27)
/* 80808BA0  38 A0 00 00 */	li r5, 0
/* 80808BA4  38 C0 03 AD */	li r6, 0x3ad
/* 80808BA8  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 80808BAC  39 00 00 00 */	li r8, 0
/* 80808BB0  39 20 00 00 */	li r9, 0
/* 80808BB4  39 41 00 24 */	addi r10, r1, 0x24
/* 80808BB8  4B 84 49 14 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80808BBC  90 7B 0A E8 */	stw r3, 0xae8(r27)
/* 80808BC0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80808BC4  38 00 00 FF */	li r0, 0xff
/* 80808BC8  90 01 00 08 */	stw r0, 8(r1)
/* 80808BCC  38 80 00 00 */	li r4, 0
/* 80808BD0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80808BD4  38 00 FF FF */	li r0, -1
/* 80808BD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80808BDC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80808BE0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80808BE4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80808BE8  80 9B 0A EC */	lwz r4, 0xaec(r27)
/* 80808BEC  38 A0 00 00 */	li r5, 0
/* 80808BF0  38 C0 03 AF */	li r6, 0x3af
/* 80808BF4  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 80808BF8  39 00 00 00 */	li r8, 0
/* 80808BFC  39 20 00 00 */	li r9, 0
/* 80808C00  39 41 00 24 */	addi r10, r1, 0x24
/* 80808C04  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80808C08  4B 84 48 C4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80808C0C  90 7B 0A EC */	stw r3, 0xaec(r27)
/* 80808C10  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80808C14  38 00 00 FF */	li r0, 0xff
/* 80808C18  90 01 00 08 */	stw r0, 8(r1)
/* 80808C1C  38 80 00 00 */	li r4, 0
/* 80808C20  90 81 00 0C */	stw r4, 0xc(r1)
/* 80808C24  38 00 FF FF */	li r0, -1
/* 80808C28  90 01 00 10 */	stw r0, 0x10(r1)
/* 80808C2C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80808C30  90 81 00 18 */	stw r4, 0x18(r1)
/* 80808C34  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80808C38  80 9B 0A F0 */	lwz r4, 0xaf0(r27)
/* 80808C3C  38 A0 00 00 */	li r5, 0
/* 80808C40  38 C0 03 AE */	li r6, 0x3ae
/* 80808C44  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 80808C48  39 00 00 00 */	li r8, 0
/* 80808C4C  39 20 00 00 */	li r9, 0
/* 80808C50  39 41 00 24 */	addi r10, r1, 0x24
/* 80808C54  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80808C58  4B 84 48 74 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80808C5C  90 7B 0A F0 */	stw r3, 0xaf0(r27)
/* 80808C60  80 1B 06 D0 */	lwz r0, 0x6d0(r27)
/* 80808C64  28 00 00 00 */	cmplwi r0, 0
/* 80808C68  41 82 01 B4 */	beq lbl_80808E1C
/* 80808C6C  38 C0 00 2C */	li r6, 0x2c
/* 80808C70  38 60 02 10 */	li r3, 0x210
/* 80808C74  38 00 00 2D */	li r0, 0x2d
/* 80808C78  7C 09 03 A6 */	mtctr r0
lbl_80808C7C:
/* 80808C7C  80 9B 06 D0 */	lwz r4, 0x6d0(r27)
/* 80808C80  7C A4 1A 14 */	add r5, r4, r3
/* 80808C84  38 06 00 01 */	addi r0, r6, 1
/* 80808C88  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80808C8C  7C 84 02 14 */	add r4, r4, r0
/* 80808C90  C0 05 00 00 */	lfs f0, 0(r5)
/* 80808C94  D0 04 00 00 */	stfs f0, 0(r4)
/* 80808C98  C0 05 00 04 */	lfs f0, 4(r5)
/* 80808C9C  D0 04 00 04 */	stfs f0, 4(r4)
/* 80808CA0  C0 05 00 08 */	lfs f0, 8(r5)
/* 80808CA4  D0 04 00 08 */	stfs f0, 8(r4)
/* 80808CA8  38 C6 FF FF */	addi r6, r6, -1
/* 80808CAC  38 63 FF F4 */	addi r3, r3, -12
/* 80808CB0  42 00 FF CC */	bdnz lbl_80808C7C
/* 80808CB4  80 7B 06 D0 */	lwz r3, 0x6d0(r27)
/* 80808CB8  C0 1B 04 F8 */	lfs f0, 0x4f8(r27)
/* 80808CBC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80808CC0  C0 1B 04 FC */	lfs f0, 0x4fc(r27)
/* 80808CC4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80808CC8  C0 1B 05 00 */	lfs f0, 0x500(r27)
/* 80808CCC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80808CD0  3B 80 00 00 */	li r28, 0
/* 80808CD4  3B 40 00 00 */	li r26, 0
lbl_80808CD8:
/* 80808CD8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80808CDC  38 63 02 10 */	addi r3, r3, 0x210
/* 80808CE0  38 1A 0A E8 */	addi r0, r26, 0xae8
/* 80808CE4  7C 9B 00 2E */	lwzx r4, r27, r0
/* 80808CE8  4B 84 2C 30 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80808CEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80808CF0  41 82 01 1C */	beq lbl_80808E0C
/* 80808CF4  38 7B 04 F8 */	addi r3, r27, 0x4f8
/* 80808CF8  4B B3 E4 40 */	b PSVECSquareMag
/* 80808CFC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80808D00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80808D04  40 81 00 58 */	ble lbl_80808D5C
/* 80808D08  FC 00 08 34 */	frsqrte f0, f1
/* 80808D0C  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 80808D10  FC 44 00 32 */	fmul f2, f4, f0
/* 80808D14  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 80808D18  FC 00 00 32 */	fmul f0, f0, f0
/* 80808D1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80808D20  FC 03 00 28 */	fsub f0, f3, f0
/* 80808D24  FC 02 00 32 */	fmul f0, f2, f0
/* 80808D28  FC 44 00 32 */	fmul f2, f4, f0
/* 80808D2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80808D30  FC 01 00 32 */	fmul f0, f1, f0
/* 80808D34  FC 03 00 28 */	fsub f0, f3, f0
/* 80808D38  FC 02 00 32 */	fmul f0, f2, f0
/* 80808D3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80808D40  FC 00 00 32 */	fmul f0, f0, f0
/* 80808D44  FC 01 00 32 */	fmul f0, f1, f0
/* 80808D48  FC 03 00 28 */	fsub f0, f3, f0
/* 80808D4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80808D50  FC 21 00 32 */	fmul f1, f1, f0
/* 80808D54  FC 20 08 18 */	frsp f1, f1
/* 80808D58  48 00 00 88 */	b lbl_80808DE0
lbl_80808D5C:
/* 80808D5C  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 80808D60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80808D64  40 80 00 10 */	bge lbl_80808D74
/* 80808D68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80808D6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80808D70  48 00 00 70 */	b lbl_80808DE0
lbl_80808D74:
/* 80808D74  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80808D78  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80808D7C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80808D80  3C 00 7F 80 */	lis r0, 0x7f80
/* 80808D84  7C 03 00 00 */	cmpw r3, r0
/* 80808D88  41 82 00 14 */	beq lbl_80808D9C
/* 80808D8C  40 80 00 40 */	bge lbl_80808DCC
/* 80808D90  2C 03 00 00 */	cmpwi r3, 0
/* 80808D94  41 82 00 20 */	beq lbl_80808DB4
/* 80808D98  48 00 00 34 */	b lbl_80808DCC
lbl_80808D9C:
/* 80808D9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80808DA0  41 82 00 0C */	beq lbl_80808DAC
/* 80808DA4  38 00 00 01 */	li r0, 1
/* 80808DA8  48 00 00 28 */	b lbl_80808DD0
lbl_80808DAC:
/* 80808DAC  38 00 00 02 */	li r0, 2
/* 80808DB0  48 00 00 20 */	b lbl_80808DD0
lbl_80808DB4:
/* 80808DB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80808DB8  41 82 00 0C */	beq lbl_80808DC4
/* 80808DBC  38 00 00 05 */	li r0, 5
/* 80808DC0  48 00 00 10 */	b lbl_80808DD0
lbl_80808DC4:
/* 80808DC4  38 00 00 03 */	li r0, 3
/* 80808DC8  48 00 00 08 */	b lbl_80808DD0
lbl_80808DCC:
/* 80808DCC  38 00 00 04 */	li r0, 4
lbl_80808DD0:
/* 80808DD0  2C 00 00 01 */	cmpwi r0, 1
/* 80808DD4  40 82 00 0C */	bne lbl_80808DE0
/* 80808DD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80808DDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80808DE0:
/* 80808DE0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80808DE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80808DE8  40 81 00 1C */	ble lbl_80808E04
/* 80808DEC  3C 60 80 45 */	lis r3, JPTracePCB4@ha
/* 80808DF0  38 03 0C A4 */	addi r0, r3, JPTracePCB4@l
/* 80808DF4  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 80808DF8  80 1B 06 D0 */	lwz r0, 0x6d0(r27)
/* 80808DFC  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 80808E00  48 00 00 0C */	b lbl_80808E0C
lbl_80808E04:
/* 80808E04  38 00 00 00 */	li r0, 0
/* 80808E08  90 1F 00 F0 */	stw r0, 0xf0(r31)
lbl_80808E0C:
/* 80808E0C  3B 9C 00 01 */	addi r28, r28, 1
/* 80808E10  2C 1C 00 03 */	cmpwi r28, 3
/* 80808E14  3B 5A 00 04 */	addi r26, r26, 4
/* 80808E18  41 80 FE C0 */	blt lbl_80808CD8
lbl_80808E1C:
/* 80808E1C  39 61 00 50 */	addi r11, r1, 0x50
/* 80808E20  4B B5 93 FC */	b _restgpr_26
/* 80808E24  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80808E28  7C 08 03 A6 */	mtlr r0
/* 80808E2C  38 21 00 50 */	addi r1, r1, 0x50
/* 80808E30  4E 80 00 20 */	blr 
