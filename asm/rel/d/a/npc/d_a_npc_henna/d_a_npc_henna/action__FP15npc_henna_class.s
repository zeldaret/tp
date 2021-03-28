lbl_80544A4C:
/* 80544A4C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80544A50  7C 08 02 A6 */	mflr r0
/* 80544A54  90 01 00 74 */	stw r0, 0x74(r1)
/* 80544A58  39 61 00 70 */	addi r11, r1, 0x70
/* 80544A5C  4B E1 D7 74 */	b _savegpr_26
/* 80544A60  7C 7E 1B 78 */	mr r30, r3
/* 80544A64  3C 80 80 55 */	lis r4, lit_3905@ha
/* 80544A68  3B E4 A9 64 */	addi r31, r4, lit_3905@l
/* 80544A6C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80544A70  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l
/* 80544A74  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80544A78  7C 9D 23 78 */	mr r29, r4
/* 80544A7C  4B AD 5D 64 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80544A80  D0 3E 06 1C */	stfs f1, 0x61c(r30)
/* 80544A84  7F C3 F3 78 */	mr r3, r30
/* 80544A88  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80544A8C  4B AD 5C 84 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80544A90  B0 7E 06 20 */	sth r3, 0x620(r30)
/* 80544A94  88 7E 07 B8 */	lbz r3, 0x7b8(r30)
/* 80544A98  28 03 00 00 */	cmplwi r3, 0
/* 80544A9C  41 82 00 0C */	beq lbl_80544AA8
/* 80544AA0  38 03 FF FF */	addi r0, r3, -1
/* 80544AA4  98 1E 07 B8 */	stb r0, 0x7b8(r30)
lbl_80544AA8:
/* 80544AA8  88 7E 07 D5 */	lbz r3, 0x7d5(r30)
/* 80544AAC  28 03 00 00 */	cmplwi r3, 0
/* 80544AB0  41 82 00 0C */	beq lbl_80544ABC
/* 80544AB4  38 03 FF FF */	addi r0, r3, -1
/* 80544AB8  98 1E 07 D5 */	stb r0, 0x7d5(r30)
lbl_80544ABC:
/* 80544ABC  88 7E 07 B5 */	lbz r3, 0x7b5(r30)
/* 80544AC0  28 03 00 00 */	cmplwi r3, 0
/* 80544AC4  41 82 00 0C */	beq lbl_80544AD0
/* 80544AC8  38 03 FF FF */	addi r0, r3, -1
/* 80544ACC  98 1E 07 B5 */	stb r0, 0x7b5(r30)
lbl_80544AD0:
/* 80544AD0  A8 7E 07 50 */	lha r3, 0x750(r30)
/* 80544AD4  2C 03 00 00 */	cmpwi r3, 0
/* 80544AD8  41 82 00 0C */	beq lbl_80544AE4
/* 80544ADC  38 03 FF FF */	addi r0, r3, -1
/* 80544AE0  B0 1E 07 50 */	sth r0, 0x750(r30)
lbl_80544AE4:
/* 80544AE4  88 7E 07 09 */	lbz r3, 0x709(r30)
/* 80544AE8  28 03 00 00 */	cmplwi r3, 0
/* 80544AEC  41 82 00 0C */	beq lbl_80544AF8
/* 80544AF0  38 03 FF FF */	addi r0, r3, -1
/* 80544AF4  98 1E 07 09 */	stb r0, 0x709(r30)
lbl_80544AF8:
/* 80544AF8  3C 60 80 54 */	lis r3, s_du_sub__FPvPv@ha
/* 80544AFC  38 63 37 18 */	addi r3, r3, s_du_sub__FPvPv@l
/* 80544B00  7F C4 F3 78 */	mr r4, r30
/* 80544B04  4B AD C8 34 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80544B08  A8 1E 07 52 */	lha r0, 0x752(r30)
/* 80544B0C  2C 00 00 50 */	cmpwi r0, 0x50
/* 80544B10  41 80 00 28 */	blt lbl_80544B38
/* 80544B14  A8 1E 07 54 */	lha r0, 0x754(r30)
/* 80544B18  2C 00 00 05 */	cmpwi r0, 5
/* 80544B1C  40 81 00 1C */	ble lbl_80544B38
/* 80544B20  3C 60 80 54 */	lis r3, s_piro_sub__FPvPv@ha
/* 80544B24  38 63 36 CC */	addi r3, r3, s_piro_sub__FPvPv@l
/* 80544B28  7F C4 F3 78 */	mr r4, r30
/* 80544B2C  4B AD C8 0C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80544B30  7C 7C 1B 78 */	mr r28, r3
/* 80544B34  48 00 00 20 */	b lbl_80544B54
lbl_80544B38:
/* 80544B38  3C 60 80 54 */	lis r3, s_npc_sub__FPvPv@ha
/* 80544B3C  38 63 35 44 */	addi r3, r3, s_npc_sub__FPvPv@l
/* 80544B40  7F C4 F3 78 */	mr r4, r30
/* 80544B44  4B AD C7 F4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80544B48  7C 7C 1B 79 */	or. r28, r3, r3
/* 80544B4C  40 82 00 08 */	bne lbl_80544B54
/* 80544B50  7F BC EB 78 */	mr r28, r29
lbl_80544B54:
/* 80544B54  38 00 00 01 */	li r0, 1
/* 80544B58  98 1E 07 0D */	stb r0, 0x70d(r30)
/* 80544B5C  4B CF 36 40 */	b getActor__12dMsgObject_cFv
/* 80544B60  28 03 00 00 */	cmplwi r3, 0
/* 80544B64  41 82 00 44 */	beq lbl_80544BA8
/* 80544B68  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80544B6C  28 00 00 06 */	cmplwi r0, 6
/* 80544B70  40 82 00 38 */	bne lbl_80544BA8
/* 80544B74  4B CF 38 30 */	b isMouthCheck__12dMsgObject_cFv
/* 80544B78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80544B7C  41 82 00 2C */	beq lbl_80544BA8
/* 80544B80  3C 60 80 55 */	lis r3, lrl@ha
/* 80544B84  38 63 B0 04 */	addi r3, r3, lrl@l
/* 80544B88  80 63 00 00 */	lwz r3, 0(r3)
/* 80544B8C  28 03 00 00 */	cmplwi r3, 0
/* 80544B90  41 82 00 10 */	beq lbl_80544BA0
/* 80544B94  A8 03 13 B4 */	lha r0, 0x13b4(r3)
/* 80544B98  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80544B9C  41 82 00 0C */	beq lbl_80544BA8
lbl_80544BA0:
/* 80544BA0  38 00 00 0F */	li r0, 0xf
/* 80544BA4  B0 1E 06 A6 */	sth r0, 0x6a6(r30)
lbl_80544BA8:
/* 80544BA8  38 00 00 00 */	li r0, 0
/* 80544BAC  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 80544BB0  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 80544BB4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80544BB8  41 82 00 38 */	beq lbl_80544BF0
/* 80544BBC  40 80 00 1C */	bge lbl_80544BD8
/* 80544BC0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80544BC4  41 82 00 48 */	beq lbl_80544C0C
/* 80544BC8  40 80 00 44 */	bge lbl_80544C0C
/* 80544BCC  2C 00 00 00 */	cmpwi r0, 0
/* 80544BD0  41 82 00 3C */	beq lbl_80544C0C
/* 80544BD4  48 00 00 38 */	b lbl_80544C0C
lbl_80544BD8:
/* 80544BD8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80544BDC  41 82 00 30 */	beq lbl_80544C0C
/* 80544BE0  40 80 00 2C */	bge lbl_80544C0C
/* 80544BE4  2C 00 00 32 */	cmpwi r0, 0x32
/* 80544BE8  41 82 00 14 */	beq lbl_80544BFC
/* 80544BEC  48 00 00 20 */	b lbl_80544C0C
lbl_80544BF0:
/* 80544BF0  7F C3 F3 78 */	mr r3, r30
/* 80544BF4  4B FF F4 49 */	bl henna_ride__FP15npc_henna_class
/* 80544BF8  48 00 00 14 */	b lbl_80544C0C
lbl_80544BFC:
/* 80544BFC  7F C3 F3 78 */	mr r3, r30
/* 80544C00  4B FF ED 5D */	bl henna_shop__FP15npc_henna_class
/* 80544C04  38 00 00 02 */	li r0, 2
/* 80544C08  98 1E 05 B5 */	stb r0, 0x5b5(r30)
lbl_80544C0C:
/* 80544C0C  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 80544C10  2C 00 00 01 */	cmpwi r0, 1
/* 80544C14  40 82 00 24 */	bne lbl_80544C38
/* 80544C18  C0 3E 06 1C */	lfs f1, 0x61c(r30)
/* 80544C1C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80544C20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80544C24  40 80 00 14 */	bge lbl_80544C38
/* 80544C28  38 00 00 0A */	li r0, 0xa
/* 80544C2C  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80544C30  38 00 00 00 */	li r0, 0
/* 80544C34  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
lbl_80544C38:
/* 80544C38  88 1E 07 E1 */	lbz r0, 0x7e1(r30)
/* 80544C3C  7C 00 07 75 */	extsb. r0, r0
/* 80544C40  40 82 00 10 */	bne lbl_80544C50
/* 80544C44  38 00 00 00 */	li r0, 0
/* 80544C48  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 80544C4C  48 00 00 68 */	b lbl_80544CB4
lbl_80544C50:
/* 80544C50  80 1E 07 E4 */	lwz r0, 0x7e4(r30)
/* 80544C54  90 01 00 08 */	stw r0, 8(r1)
/* 80544C58  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80544C5C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80544C60  38 81 00 08 */	addi r4, r1, 8
/* 80544C64  4B AD 4B 94 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80544C68  7C 64 1B 79 */	or. r4, r3, r3
/* 80544C6C  41 82 00 48 */	beq lbl_80544CB4
/* 80544C70  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 80544C74  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80544C78  A8 04 04 E8 */	lha r0, 0x4e8(r4)
/* 80544C7C  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80544C80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80544C84  90 01 00 44 */	stw r0, 0x44(r1)
/* 80544C88  3C 00 43 30 */	lis r0, 0x4330
/* 80544C8C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80544C90  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80544C94  EC 00 08 28 */	fsubs f0, f0, f1
/* 80544C98  EC 02 00 32 */	fmuls f0, f2, f0
/* 80544C9C  FC 00 00 1E */	fctiwz f0, f0
/* 80544CA0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80544CA4  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 80544CA8  38 A0 00 04 */	li r5, 4
/* 80544CAC  38 C0 01 F4 */	li r6, 0x1f4
/* 80544CB0  4B D2 B9 58 */	b cLib_addCalcAngleS2__FPssss
lbl_80544CB4:
/* 80544CB4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80544CB8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80544CBC  38 A0 00 02 */	li r5, 2
/* 80544CC0  38 C0 40 00 */	li r6, 0x4000
/* 80544CC4  4B D2 B9 44 */	b cLib_addCalcAngleS2__FPssss
/* 80544CC8  80 1E 06 58 */	lwz r0, 0x658(r30)
/* 80544CCC  2C 00 00 00 */	cmpwi r0, 0
/* 80544CD0  40 82 00 94 */	bne lbl_80544D64
/* 80544CD4  A8 1E 06 F2 */	lha r0, 0x6f2(r30)
/* 80544CD8  2C 00 00 00 */	cmpwi r0, 0
/* 80544CDC  40 82 00 2C */	bne lbl_80544D08
/* 80544CE0  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80544CE4  4B D2 2C 70 */	b cM_rndF__Ff
/* 80544CE8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80544CEC  EC 00 08 2A */	fadds f0, f0, f1
/* 80544CF0  FC 00 00 1E */	fctiwz f0, f0
/* 80544CF4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80544CF8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80544CFC  B0 1E 06 F2 */	sth r0, 0x6f2(r30)
/* 80544D00  38 00 00 08 */	li r0, 8
/* 80544D04  B0 1E 06 62 */	sth r0, 0x662(r30)
lbl_80544D08:
/* 80544D08  A8 7E 06 62 */	lha r3, 0x662(r30)
/* 80544D0C  2C 03 00 00 */	cmpwi r3, 0
/* 80544D10  41 82 00 4C */	beq lbl_80544D5C
/* 80544D14  38 03 FF FF */	addi r0, r3, -1
/* 80544D18  B0 1E 06 62 */	sth r0, 0x662(r30)
/* 80544D1C  A8 1E 06 62 */	lha r0, 0x662(r30)
/* 80544D20  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80544D24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80544D28  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80544D2C  3C 00 43 30 */	lis r0, 0x4330
/* 80544D30  90 01 00 48 */	stw r0, 0x48(r1)
/* 80544D34  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80544D38  EC 00 08 28 */	fsubs f0, f0, f1
/* 80544D3C  D0 1E 06 9C */	stfs f0, 0x69c(r30)
/* 80544D40  C0 3E 06 9C */	lfs f1, 0x69c(r30)
/* 80544D44  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80544D48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80544D4C  40 81 00 18 */	ble lbl_80544D64
/* 80544D50  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80544D54  D0 1E 06 9C */	stfs f0, 0x69c(r30)
/* 80544D58  48 00 00 0C */	b lbl_80544D64
lbl_80544D5C:
/* 80544D5C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80544D60  D0 1E 06 9C */	stfs f0, 0x69c(r30)
lbl_80544D64:
/* 80544D64  3B A0 00 00 */	li r29, 0
/* 80544D68  3B 60 00 00 */	li r27, 0
/* 80544D6C  3B 40 27 10 */	li r26, 0x2710
/* 80544D70  88 7E 07 0D */	lbz r3, 0x70d(r30)
/* 80544D74  7C 60 07 74 */	extsb r0, r3
/* 80544D78  2C 00 00 0A */	cmpwi r0, 0xa
/* 80544D7C  41 82 00 1C */	beq lbl_80544D98
/* 80544D80  2C 00 00 01 */	cmpwi r0, 1
/* 80544D84  40 82 01 20 */	bne lbl_80544EA4
/* 80544D88  C0 3E 06 1C */	lfs f1, 0x61c(r30)
/* 80544D8C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80544D90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80544D94  40 80 01 10 */	bge lbl_80544EA4
lbl_80544D98:
/* 80544D98  88 1E 07 0C */	lbz r0, 0x70c(r30)
/* 80544D9C  7C 00 07 75 */	extsb. r0, r0
/* 80544DA0  41 82 00 44 */	beq lbl_80544DE4
/* 80544DA4  38 61 00 24 */	addi r3, r1, 0x24
/* 80544DA8  38 9C 05 38 */	addi r4, r28, 0x538
/* 80544DAC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80544DB0  4B D2 1D 84 */	b __mi__4cXyzCFRC3Vec
/* 80544DB4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80544DB8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80544DBC  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80544DC0  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80544DC4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80544DC8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80544DCC  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80544DD0  C0 1E 07 2C */	lfs f0, 0x72c(r30)
/* 80544DD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80544DD8  EC 02 00 2A */	fadds f0, f2, f0
/* 80544DDC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80544DE0  48 00 00 44 */	b lbl_80544E24
lbl_80544DE4:
/* 80544DE4  38 61 00 18 */	addi r3, r1, 0x18
/* 80544DE8  38 9C 05 38 */	addi r4, r28, 0x538
/* 80544DEC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80544DF0  4B D2 1D 44 */	b __mi__4cXyzCFRC3Vec
/* 80544DF4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80544DF8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80544DFC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80544E00  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80544E04  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80544E08  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80544E0C  88 1E 07 E1 */	lbz r0, 0x7e1(r30)
/* 80544E10  7C 00 07 75 */	extsb. r0, r0
/* 80544E14  40 82 00 10 */	bne lbl_80544E24
/* 80544E18  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80544E1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80544E20  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_80544E24:
/* 80544E24  A8 7E 06 20 */	lha r3, 0x620(r30)
/* 80544E28  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80544E2C  7C 03 00 50 */	subf r0, r3, r0
/* 80544E30  7C 03 07 34 */	extsh r3, r0
/* 80544E34  88 1E 07 E1 */	lbz r0, 0x7e1(r30)
/* 80544E38  7C 00 07 75 */	extsb. r0, r0
/* 80544E3C  40 82 00 14 */	bne lbl_80544E50
/* 80544E40  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80544E44  40 80 00 FC */	bge lbl_80544F40
/* 80544E48  2C 03 C0 00 */	cmpwi r3, -16384
/* 80544E4C  40 81 00 F4 */	ble lbl_80544F40
lbl_80544E50:
/* 80544E50  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80544E54  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80544E58  4B D2 28 1C */	b cM_atan2s__Fff
/* 80544E5C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80544E60  7C 00 18 50 */	subf r0, r0, r3
/* 80544E64  7C 1D 07 34 */	extsh r29, r0
/* 80544E68  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80544E6C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80544E70  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80544E74  EC 00 00 32 */	fmuls f0, f0, f0
/* 80544E78  EC 41 00 2A */	fadds f2, f1, f0
/* 80544E7C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80544E80  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80544E84  40 81 00 0C */	ble lbl_80544E90
/* 80544E88  FC 00 10 34 */	frsqrte f0, f2
/* 80544E8C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80544E90:
/* 80544E90  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80544E94  4B D2 27 E0 */	b cM_atan2s__Fff
/* 80544E98  7C 03 00 D0 */	neg r0, r3
/* 80544E9C  7C 1B 07 34 */	extsh r27, r0
/* 80544EA0  48 00 00 A0 */	b lbl_80544F40
lbl_80544EA4:
/* 80544EA4  7C 60 07 74 */	extsb r0, r3
/* 80544EA8  2C 00 00 02 */	cmpwi r0, 2
/* 80544EAC  41 82 00 0C */	beq lbl_80544EB8
/* 80544EB0  2C 00 00 03 */	cmpwi r0, 3
/* 80544EB4  40 82 00 8C */	bne lbl_80544F40
lbl_80544EB8:
/* 80544EB8  38 61 00 0C */	addi r3, r1, 0xc
/* 80544EBC  38 9E 07 20 */	addi r4, r30, 0x720
/* 80544EC0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80544EC4  4B D2 1C 70 */	b __mi__4cXyzCFRC3Vec
/* 80544EC8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80544ECC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80544ED0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80544ED4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80544ED8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80544EDC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80544EE0  4B D2 27 94 */	b cM_atan2s__Fff
/* 80544EE4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80544EE8  7C 00 18 50 */	subf r0, r0, r3
/* 80544EEC  7C 1D 07 34 */	extsh r29, r0
/* 80544EF0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80544EF4  EC 20 00 32 */	fmuls f1, f0, f0
/* 80544EF8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80544EFC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80544F00  EC 41 00 2A */	fadds f2, f1, f0
/* 80544F04  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80544F08  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80544F0C  40 81 00 0C */	ble lbl_80544F18
/* 80544F10  FC 00 10 34 */	frsqrte f0, f2
/* 80544F14  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80544F18:
/* 80544F18  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80544F1C  4B D2 27 58 */	b cM_atan2s__Fff
/* 80544F20  7C 03 00 D0 */	neg r0, r3
/* 80544F24  7C 1B 07 34 */	extsh r27, r0
/* 80544F28  88 1E 07 0D */	lbz r0, 0x70d(r30)
/* 80544F2C  2C 00 00 02 */	cmpwi r0, 2
/* 80544F30  40 82 00 0C */	bne lbl_80544F3C
/* 80544F34  3B 40 3A 98 */	li r26, 0x3a98
/* 80544F38  48 00 00 08 */	b lbl_80544F40
lbl_80544F3C:
/* 80544F3C  3B 40 60 00 */	li r26, 0x6000
lbl_80544F40:
/* 80544F40  7F A3 07 34 */	extsh r3, r29
/* 80544F44  7F 40 07 34 */	extsh r0, r26
/* 80544F48  7C 03 00 00 */	cmpw r3, r0
/* 80544F4C  40 81 00 0C */	ble lbl_80544F58
/* 80544F50  7F 5D D3 78 */	mr r29, r26
/* 80544F54  48 00 00 18 */	b lbl_80544F6C
lbl_80544F58:
/* 80544F58  7C 00 00 D0 */	neg r0, r0
/* 80544F5C  7C 00 07 34 */	extsh r0, r0
/* 80544F60  7C 03 00 00 */	cmpw r3, r0
/* 80544F64  40 80 00 08 */	bge lbl_80544F6C
/* 80544F68  7C 1D 03 78 */	mr r29, r0
lbl_80544F6C:
/* 80544F6C  7F 60 07 34 */	extsh r0, r27
/* 80544F70  2C 00 23 28 */	cmpwi r0, 0x2328
/* 80544F74  40 81 00 0C */	ble lbl_80544F80
/* 80544F78  3B 60 23 28 */	li r27, 0x2328
/* 80544F7C  48 00 00 10 */	b lbl_80544F8C
lbl_80544F80:
/* 80544F80  2C 00 DC D8 */	cmpwi r0, -9000
/* 80544F84  40 80 00 08 */	bge lbl_80544F8C
/* 80544F88  3B 60 DC D8 */	li r27, -9000
lbl_80544F8C:
/* 80544F8C  38 7E 06 AC */	addi r3, r30, 0x6ac
/* 80544F90  7F A0 07 34 */	extsh r0, r29
/* 80544F94  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80544F98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80544F9C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80544FA0  3C 80 43 30 */	lis r4, 0x4330
/* 80544FA4  90 81 00 48 */	stw r4, 0x48(r1)
/* 80544FA8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80544FAC  EC 20 18 28 */	fsubs f1, f0, f3
/* 80544FB0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80544FB4  A8 1E 07 0E */	lha r0, 0x70e(r30)
/* 80544FB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80544FBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80544FC0  90 81 00 40 */	stw r4, 0x40(r1)
/* 80544FC4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80544FC8  EC 60 18 28 */	fsubs f3, f0, f3
/* 80544FCC  4B D2 AA 70 */	b cLib_addCalc2__FPffff
/* 80544FD0  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 80544FD4  7F 64 DB 78 */	mr r4, r27
/* 80544FD8  38 A0 00 02 */	li r5, 2
/* 80544FDC  A8 DE 07 0E */	lha r6, 0x70e(r30)
/* 80544FE0  4B D2 B6 28 */	b cLib_addCalcAngleS2__FPssss
/* 80544FE4  38 00 06 00 */	li r0, 0x600
/* 80544FE8  B0 1E 07 0E */	sth r0, 0x70e(r30)
/* 80544FEC  A8 7E 06 B0 */	lha r3, 0x6b0(r30)
/* 80544FF0  7C 60 07 35 */	extsh. r0, r3
/* 80544FF4  40 81 00 3C */	ble lbl_80545030
/* 80544FF8  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 80544FFC  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80545000  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80545004  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80545008  3C 00 43 30 */	lis r0, 0x4330
/* 8054500C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80545010  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80545014  EC 00 08 28 */	fsubs f0, f0, f1
/* 80545018  EC 02 00 32 */	fmuls f0, f2, f0
/* 8054501C  FC 00 00 1E */	fctiwz f0, f0
/* 80545020  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80545024  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80545028  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 8054502C  48 00 00 38 */	b lbl_80545064
lbl_80545030:
/* 80545030  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 80545034  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80545038  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8054503C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80545040  3C 00 43 30 */	lis r0, 0x4330
/* 80545044  90 01 00 48 */	stw r0, 0x48(r1)
/* 80545048  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8054504C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80545050  EC 02 00 32 */	fmuls f0, f2, f0
/* 80545054  FC 00 00 1E */	fctiwz f0, f0
/* 80545058  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8054505C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80545060  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
lbl_80545064:
/* 80545064  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 80545068  FC 00 02 10 */	fabs f0, f0
/* 8054506C  FC 20 00 18 */	frsp f1, f0
/* 80545070  A8 7E 06 B6 */	lha r3, 0x6b6(r30)
/* 80545074  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80545078  EC 00 00 72 */	fmuls f0, f0, f1
/* 8054507C  FC 00 00 1E */	fctiwz f0, f0
/* 80545080  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80545084  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80545088  7C 03 02 14 */	add r0, r3, r0
/* 8054508C  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 80545090  39 61 00 70 */	addi r11, r1, 0x70
/* 80545094  4B E1 D1 88 */	b _restgpr_26
/* 80545098  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8054509C  7C 08 03 A6 */	mtlr r0
/* 805450A0  38 21 00 70 */	addi r1, r1, 0x70
/* 805450A4  4E 80 00 20 */	blr 
