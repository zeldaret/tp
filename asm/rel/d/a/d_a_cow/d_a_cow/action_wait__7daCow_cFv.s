lbl_80659ADC:
/* 80659ADC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80659AE0  7C 08 02 A6 */	mflr r0
/* 80659AE4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80659AE8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80659AEC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80659AF0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80659AF4  4B D0 86 E5 */	bl _savegpr_28
/* 80659AF8  7C 7D 1B 78 */	mr r29, r3
/* 80659AFC  3C 60 80 66 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80662F58@ha */
/* 80659B00  3B C3 2F 58 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80662F58@l */
/* 80659B04  3C 60 80 66 */	lis r3, lit_3987@ha /* 0x80662DB0@ha */
/* 80659B08  3B E3 2D B0 */	addi r31, r3, lit_3987@l /* 0x80662DB0@l */
/* 80659B0C  4B C0 DD 61 */	bl cM_rnd__Fv
/* 80659B10  FF E0 08 90 */	fmr f31, f1
/* 80659B14  A0 1D 0C 5C */	lhz r0, 0xc5c(r29)
/* 80659B18  2C 00 00 02 */	cmpwi r0, 2
/* 80659B1C  41 82 01 50 */	beq lbl_80659C6C
/* 80659B20  40 80 00 14 */	bge lbl_80659B34
/* 80659B24  2C 00 00 00 */	cmpwi r0, 0
/* 80659B28  41 82 00 18 */	beq lbl_80659B40
/* 80659B2C  40 80 00 F0 */	bge lbl_80659C1C
/* 80659B30  48 00 05 98 */	b lbl_8065A0C8
lbl_80659B34:
/* 80659B34  2C 00 00 04 */	cmpwi r0, 4
/* 80659B38  40 80 05 90 */	bge lbl_8065A0C8
/* 80659B3C  48 00 05 78 */	b lbl_8065A0B4
lbl_80659B40:
/* 80659B40  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80659B44  4B C0 DE 11 */	bl cM_rndF__Ff
/* 80659B48  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80659B4C  EC 00 08 2A */	fadds f0, f0, f1
/* 80659B50  FC 00 00 1E */	fctiwz f0, f0
/* 80659B54  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80659B58  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80659B5C  90 1D 0C 58 */	stw r0, 0xc58(r29)
/* 80659B60  38 00 00 01 */	li r0, 1
/* 80659B64  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
/* 80659B68  38 00 00 00 */	li r0, 0
/* 80659B6C  90 1D 0C 90 */	stw r0, 0xc90(r29)
/* 80659B70  88 1D 0C AA */	lbz r0, 0xcaa(r29)
/* 80659B74  28 00 00 00 */	cmplwi r0, 0
/* 80659B78  40 82 00 28 */	bne lbl_80659BA0
/* 80659B7C  7F A3 EB 78 */	mr r3, r29
/* 80659B80  38 80 00 1A */	li r4, 0x1a
/* 80659B84  38 A0 00 02 */	li r5, 2
/* 80659B88  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80659B8C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80659B90  4B FF EB A1 */	bl setBck__7daCow_cFiUcff
/* 80659B94  38 00 00 02 */	li r0, 2
/* 80659B98  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
/* 80659B9C  48 00 05 2C */	b lbl_8065A0C8
lbl_80659BA0:
/* 80659BA0  7F A3 EB 78 */	mr r3, r29
/* 80659BA4  38 80 00 06 */	li r4, 6
/* 80659BA8  38 A0 00 00 */	li r5, 0
/* 80659BAC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80659BB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80659BB4  4B FF EB 7D */	bl setBck__7daCow_cFiUcff
/* 80659BB8  80 9D 05 74 */	lwz r4, 0x574(r29)
/* 80659BBC  A8 04 00 14 */	lha r0, 0x14(r4)
/* 80659BC0  C8 3F 00 48 */	lfd f1, 0x48(r31)
/* 80659BC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80659BC8  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80659BCC  3C 60 43 30 */	lis r3, 0x4330
/* 80659BD0  90 61 00 78 */	stw r3, 0x78(r1)
/* 80659BD4  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80659BD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80659BDC  FC 00 00 1E */	fctiwz f0, f0
/* 80659BE0  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80659BE4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80659BE8  7C 00 07 34 */	extsh r0, r0
/* 80659BEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80659BF0  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80659BF4  90 61 00 88 */	stw r3, 0x88(r1)
/* 80659BF8  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80659BFC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80659C00  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80659C04  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80659C08  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80659C0C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80659C10  38 00 00 01 */	li r0, 1
/* 80659C14  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
/* 80659C18  48 00 04 B0 */	b lbl_8065A0C8
lbl_80659C1C:
/* 80659C1C  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80659C20  38 80 00 01 */	li r4, 1
/* 80659C24  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80659C28  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80659C2C  40 82 00 18 */	bne lbl_80659C44
/* 80659C30  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80659C34  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80659C38  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80659C3C  41 82 00 08 */	beq lbl_80659C44
/* 80659C40  38 80 00 00 */	li r4, 0
lbl_80659C44:
/* 80659C44  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80659C48  41 82 00 24 */	beq lbl_80659C6C
/* 80659C4C  7F A3 EB 78 */	mr r3, r29
/* 80659C50  38 80 00 1A */	li r4, 0x1a
/* 80659C54  38 A0 00 02 */	li r5, 2
/* 80659C58  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80659C5C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80659C60  4B FF EA D1 */	bl setBck__7daCow_cFiUcff
/* 80659C64  38 00 00 02 */	li r0, 2
/* 80659C68  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
lbl_80659C6C:
/* 80659C6C  3B 80 00 00 */	li r28, 0
/* 80659C70  80 1D 0C 88 */	lwz r0, 0xc88(r29)
/* 80659C74  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80659C78  40 81 00 40 */	ble lbl_80659CB8
/* 80659C7C  7F A3 EB 78 */	mr r3, r29
/* 80659C80  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80659C84  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80659C88  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80659C8C  4B 9C 0A 85 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80659C90  A8 1D 0C 34 */	lha r0, 0xc34(r29)
/* 80659C94  7C 03 00 50 */	subf r0, r3, r0
/* 80659C98  7C 1C 07 34 */	extsh r28, r0
/* 80659C9C  2C 1C 28 00 */	cmpwi r28, 0x2800
/* 80659CA0  40 81 00 08 */	ble lbl_80659CA8
/* 80659CA4  3B 80 28 00 */	li r28, 0x2800
lbl_80659CA8:
/* 80659CA8  7F 80 07 34 */	extsh r0, r28
/* 80659CAC  2C 00 D8 00 */	cmpwi r0, -10240
/* 80659CB0  40 80 00 08 */	bge lbl_80659CB8
/* 80659CB4  3B 80 D8 00 */	li r28, -10240
lbl_80659CB8:
/* 80659CB8  38 7D 0C 40 */	addi r3, r29, 0xc40
/* 80659CBC  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80659CC0  7F 80 07 34 */	extsh r0, r28
/* 80659CC4  C8 3F 00 48 */	lfd f1, 0x48(r31)
/* 80659CC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80659CCC  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80659CD0  3C 00 43 30 */	lis r0, 0x4330
/* 80659CD4  90 01 00 88 */	stw r0, 0x88(r1)
/* 80659CD8  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80659CDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80659CE0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80659CE4  FC 00 00 1E */	fctiwz f0, f0
/* 80659CE8  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80659CEC  80 81 00 84 */	lwz r4, 0x84(r1)
/* 80659CF0  38 A0 00 10 */	li r5, 0x10
/* 80659CF4  38 C0 01 00 */	li r6, 0x100
/* 80659CF8  4B C1 69 11 */	bl cLib_addCalcAngleS2__FPssss
/* 80659CFC  38 7D 0C 3A */	addi r3, r29, 0xc3a
/* 80659D00  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80659D04  7F 80 07 34 */	extsh r0, r28
/* 80659D08  C8 3F 00 48 */	lfd f1, 0x48(r31)
/* 80659D0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80659D10  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80659D14  3C 00 43 30 */	lis r0, 0x4330
/* 80659D18  90 01 00 78 */	stw r0, 0x78(r1)
/* 80659D1C  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80659D20  EC 00 08 28 */	fsubs f0, f0, f1
/* 80659D24  EC 02 00 32 */	fmuls f0, f2, f0
/* 80659D28  FC 00 00 1E */	fctiwz f0, f0
/* 80659D2C  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 80659D30  80 81 00 94 */	lwz r4, 0x94(r1)
/* 80659D34  38 A0 00 10 */	li r5, 0x10
/* 80659D38  38 C0 01 00 */	li r6, 0x100
/* 80659D3C  4B C1 68 CD */	bl cLib_addCalcAngleS2__FPssss
/* 80659D40  88 1D 0C A5 */	lbz r0, 0xca5(r29)
/* 80659D44  28 00 00 00 */	cmplwi r0, 0
/* 80659D48  40 82 01 44 */	bne lbl_80659E8C
/* 80659D4C  7F A3 EB 78 */	mr r3, r29
/* 80659D50  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 80659D54  38 84 80 00 */	addi r4, r4, 0x8000 /* 0x00008000@l */
/* 80659D58  48 00 1D DD */	bl checkCowInOwn__7daCow_cFi
/* 80659D5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659D60  40 82 03 68 */	bne lbl_8065A0C8
/* 80659D64  88 1D 0C A8 */	lbz r0, 0xca8(r29)
/* 80659D68  28 00 00 00 */	cmplwi r0, 0
/* 80659D6C  41 82 00 48 */	beq lbl_80659DB4
/* 80659D70  38 00 00 00 */	li r0, 0
/* 80659D74  90 1D 0C 88 */	stw r0, 0xc88(r29)
/* 80659D78  7F A3 EB 78 */	mr r3, r29
/* 80659D7C  4B FF EE FD */	bl checkNadeNadeFinish__7daCow_cFv
/* 80659D80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659D84  41 82 03 44 */	beq lbl_8065A0C8
/* 80659D88  80 7E 01 60 */	lwz r3, 0x160(r30)
/* 80659D8C  80 1E 01 64 */	lwz r0, 0x164(r30)
/* 80659D90  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80659D94  90 01 00 70 */	stw r0, 0x70(r1)
/* 80659D98  80 1E 01 68 */	lwz r0, 0x168(r30)
/* 80659D9C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80659DA0  7F A3 EB 78 */	mr r3, r29
/* 80659DA4  38 81 00 6C */	addi r4, r1, 0x6c
/* 80659DA8  38 A0 00 00 */	li r5, 0
/* 80659DAC  4B FF F3 69 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80659DB0  48 00 03 18 */	b lbl_8065A0C8
lbl_80659DB4:
/* 80659DB4  7F A3 EB 78 */	mr r3, r29
/* 80659DB8  48 00 0F 75 */	bl checkPlayerWait__7daCow_cFv
/* 80659DBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659DC0  41 82 00 50 */	beq lbl_80659E10
/* 80659DC4  7F A3 EB 78 */	mr r3, r29
/* 80659DC8  48 00 0F E9 */	bl checkPlayerSurprise__7daCow_cFv
/* 80659DCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659DD0  40 82 00 14 */	bne lbl_80659DE4
/* 80659DD4  7F A3 EB 78 */	mr r3, r29
/* 80659DD8  48 00 10 B1 */	bl checkPlayerPos__7daCow_cFv
/* 80659DDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659DE0  41 82 00 30 */	beq lbl_80659E10
lbl_80659DE4:
/* 80659DE4  80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 80659DE8  80 1E 01 70 */	lwz r0, 0x170(r30)
/* 80659DEC  90 61 00 60 */	stw r3, 0x60(r1)
/* 80659DF0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80659DF4  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 80659DF8  90 01 00 68 */	stw r0, 0x68(r1)
/* 80659DFC  7F A3 EB 78 */	mr r3, r29
/* 80659E00  38 81 00 60 */	addi r4, r1, 0x60
/* 80659E04  38 A0 00 00 */	li r5, 0
/* 80659E08  4B FF F3 0D */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80659E0C  48 00 02 BC */	b lbl_8065A0C8
lbl_80659E10:
/* 80659E10  7F A3 EB 78 */	mr r3, r29
/* 80659E14  48 00 69 A5 */	bl checkWolfBusters__7daCow_cFv
/* 80659E18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659E1C  40 82 02 AC */	bne lbl_8065A0C8
/* 80659E20  7F A3 EB 78 */	mr r3, r29
/* 80659E24  4B FF ED F5 */	bl setActetcStatus__7daCow_cFv
/* 80659E28  7F A3 EB 78 */	mr r3, r29
/* 80659E2C  4B FF EE 79 */	bl checkNadeNade__7daCow_cFv
/* 80659E30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659E34  40 82 02 94 */	bne lbl_8065A0C8
/* 80659E38  7F A3 EB 78 */	mr r3, r29
/* 80659E3C  4B FF EC D5 */	bl setCarryStatus__7daCow_cFv
/* 80659E40  7F A3 EB 78 */	mr r3, r29
/* 80659E44  4B FF EF 75 */	bl checkThrow__7daCow_cFv
/* 80659E48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659E4C  40 82 02 7C */	bne lbl_8065A0C8
/* 80659E50  7F A3 EB 78 */	mr r3, r29
/* 80659E54  4B FF FB 6D */	bl checkNearCowRun__7daCow_cFv
/* 80659E58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659E5C  41 82 00 30 */	beq lbl_80659E8C
/* 80659E60  80 7E 01 78 */	lwz r3, 0x178(r30)
/* 80659E64  80 1E 01 7C */	lwz r0, 0x17c(r30)
/* 80659E68  90 61 00 54 */	stw r3, 0x54(r1)
/* 80659E6C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80659E70  80 1E 01 80 */	lwz r0, 0x180(r30)
/* 80659E74  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80659E78  7F A3 EB 78 */	mr r3, r29
/* 80659E7C  38 81 00 54 */	addi r4, r1, 0x54
/* 80659E80  38 A0 00 00 */	li r5, 0
/* 80659E84  4B FF F2 91 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80659E88  48 00 02 40 */	b lbl_8065A0C8
lbl_80659E8C:
/* 80659E8C  38 7D 0C 58 */	addi r3, r29, 0xc58
/* 80659E90  48 00 8E 21 */	bl func_80662CB0
/* 80659E94  2C 03 00 00 */	cmpwi r3, 0
/* 80659E98  40 82 02 30 */	bne lbl_8065A0C8
/* 80659E9C  80 1D 0C 88 */	lwz r0, 0xc88(r29)
/* 80659EA0  2C 00 00 00 */	cmpwi r0, 0
/* 80659EA4  40 82 02 24 */	bne lbl_8065A0C8
/* 80659EA8  7F A3 EB 78 */	mr r3, r29
/* 80659EAC  48 00 0E 1D */	bl checkNearWolf__7daCow_cFv
/* 80659EB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659EB4  41 82 00 30 */	beq lbl_80659EE4
/* 80659EB8  80 7E 01 84 */	lwz r3, 0x184(r30)
/* 80659EBC  80 1E 01 88 */	lwz r0, 0x188(r30)
/* 80659EC0  90 61 00 48 */	stw r3, 0x48(r1)
/* 80659EC4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80659EC8  80 1E 01 8C */	lwz r0, 0x18c(r30)
/* 80659ECC  90 01 00 50 */	stw r0, 0x50(r1)
/* 80659ED0  7F A3 EB 78 */	mr r3, r29
/* 80659ED4  38 81 00 48 */	addi r4, r1, 0x48
/* 80659ED8  38 A0 00 00 */	li r5, 0
/* 80659EDC  4B FF F2 39 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80659EE0  48 00 01 E8 */	b lbl_8065A0C8
lbl_80659EE4:
/* 80659EE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80659EE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80659EEC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80659EF0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80659EF4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80659EF8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80659EFC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80659F00  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80659F04  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80659F08  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80659F0C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80659F10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80659F14  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80659F18  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80659F1C  38 61 00 0C */	addi r3, r1, 0xc
/* 80659F20  38 81 00 18 */	addi r4, r1, 0x18
/* 80659F24  4B CE D4 79 */	bl PSVECSquareDistance
/* 80659F28  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80659F2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80659F30  40 81 00 58 */	ble lbl_80659F88
/* 80659F34  FC 00 08 34 */	frsqrte f0, f1
/* 80659F38  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80659F3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80659F40  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80659F44  FC 00 00 32 */	fmul f0, f0, f0
/* 80659F48  FC 01 00 32 */	fmul f0, f1, f0
/* 80659F4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80659F50  FC 02 00 32 */	fmul f0, f2, f0
/* 80659F54  FC 44 00 32 */	fmul f2, f4, f0
/* 80659F58  FC 00 00 32 */	fmul f0, f0, f0
/* 80659F5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80659F60  FC 03 00 28 */	fsub f0, f3, f0
/* 80659F64  FC 02 00 32 */	fmul f0, f2, f0
/* 80659F68  FC 44 00 32 */	fmul f2, f4, f0
/* 80659F6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80659F70  FC 01 00 32 */	fmul f0, f1, f0
/* 80659F74  FC 03 00 28 */	fsub f0, f3, f0
/* 80659F78  FC 02 00 32 */	fmul f0, f2, f0
/* 80659F7C  FC 21 00 32 */	fmul f1, f1, f0
/* 80659F80  FC 20 08 18 */	frsp f1, f1
/* 80659F84  48 00 00 88 */	b lbl_8065A00C
lbl_80659F88:
/* 80659F88  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80659F8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80659F90  40 80 00 10 */	bge lbl_80659FA0
/* 80659F94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80659F98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80659F9C  48 00 00 70 */	b lbl_8065A00C
lbl_80659FA0:
/* 80659FA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80659FA4  80 81 00 08 */	lwz r4, 8(r1)
/* 80659FA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80659FAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80659FB0  7C 03 00 00 */	cmpw r3, r0
/* 80659FB4  41 82 00 14 */	beq lbl_80659FC8
/* 80659FB8  40 80 00 40 */	bge lbl_80659FF8
/* 80659FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80659FC0  41 82 00 20 */	beq lbl_80659FE0
/* 80659FC4  48 00 00 34 */	b lbl_80659FF8
lbl_80659FC8:
/* 80659FC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80659FCC  41 82 00 0C */	beq lbl_80659FD8
/* 80659FD0  38 00 00 01 */	li r0, 1
/* 80659FD4  48 00 00 28 */	b lbl_80659FFC
lbl_80659FD8:
/* 80659FD8  38 00 00 02 */	li r0, 2
/* 80659FDC  48 00 00 20 */	b lbl_80659FFC
lbl_80659FE0:
/* 80659FE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80659FE4  41 82 00 0C */	beq lbl_80659FF0
/* 80659FE8  38 00 00 05 */	li r0, 5
/* 80659FEC  48 00 00 10 */	b lbl_80659FFC
lbl_80659FF0:
/* 80659FF0  38 00 00 03 */	li r0, 3
/* 80659FF4  48 00 00 08 */	b lbl_80659FFC
lbl_80659FF8:
/* 80659FF8  38 00 00 04 */	li r0, 4
lbl_80659FFC:
/* 80659FFC  2C 00 00 01 */	cmpwi r0, 1
/* 8065A000  40 82 00 0C */	bne lbl_8065A00C
/* 8065A004  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065A008  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065A00C:
/* 8065A00C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8065A010  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065A014  40 81 00 3C */	ble lbl_8065A050
/* 8065A018  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8065A01C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065A020  40 80 00 30 */	bge lbl_8065A050
/* 8065A024  80 7E 01 90 */	lwz r3, 0x190(r30)
/* 8065A028  80 1E 01 94 */	lwz r0, 0x194(r30)
/* 8065A02C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8065A030  90 01 00 40 */	stw r0, 0x40(r1)
/* 8065A034  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 8065A038  90 01 00 44 */	stw r0, 0x44(r1)
/* 8065A03C  7F A3 EB 78 */	mr r3, r29
/* 8065A040  38 81 00 3C */	addi r4, r1, 0x3c
/* 8065A044  38 A0 00 00 */	li r5, 0
/* 8065A048  4B FF F0 CD */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A04C  48 00 00 7C */	b lbl_8065A0C8
lbl_8065A050:
/* 8065A050  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8065A054  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065A058  40 80 00 30 */	bge lbl_8065A088
/* 8065A05C  80 7E 01 9C */	lwz r3, 0x19c(r30)
/* 8065A060  80 1E 01 A0 */	lwz r0, 0x1a0(r30)
/* 8065A064  90 61 00 30 */	stw r3, 0x30(r1)
/* 8065A068  90 01 00 34 */	stw r0, 0x34(r1)
/* 8065A06C  80 1E 01 A4 */	lwz r0, 0x1a4(r30)
/* 8065A070  90 01 00 38 */	stw r0, 0x38(r1)
/* 8065A074  7F A3 EB 78 */	mr r3, r29
/* 8065A078  38 81 00 30 */	addi r4, r1, 0x30
/* 8065A07C  38 A0 00 01 */	li r5, 1
/* 8065A080  4B FF F0 95 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A084  48 00 00 44 */	b lbl_8065A0C8
lbl_8065A088:
/* 8065A088  80 7E 01 A8 */	lwz r3, 0x1a8(r30)
/* 8065A08C  80 1E 01 AC */	lwz r0, 0x1ac(r30)
/* 8065A090  90 61 00 24 */	stw r3, 0x24(r1)
/* 8065A094  90 01 00 28 */	stw r0, 0x28(r1)
/* 8065A098  80 1E 01 B0 */	lwz r0, 0x1b0(r30)
/* 8065A09C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8065A0A0  7F A3 EB 78 */	mr r3, r29
/* 8065A0A4  38 81 00 24 */	addi r4, r1, 0x24
/* 8065A0A8  38 A0 00 01 */	li r5, 1
/* 8065A0AC  4B FF F0 69 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A0B0  48 00 00 18 */	b lbl_8065A0C8
lbl_8065A0B4:
/* 8065A0B4  38 00 00 00 */	li r0, 0
/* 8065A0B8  B0 1D 0C 3A */	sth r0, 0xc3a(r29)
/* 8065A0BC  B0 1D 0C 40 */	sth r0, 0xc40(r29)
/* 8065A0C0  90 1D 0C 88 */	stw r0, 0xc88(r29)
/* 8065A0C4  98 1D 0C A8 */	stb r0, 0xca8(r29)
lbl_8065A0C8:
/* 8065A0C8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8065A0CC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8065A0D0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8065A0D4  4B D0 81 51 */	bl _restgpr_28
/* 8065A0D8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8065A0DC  7C 08 03 A6 */	mtlr r0
/* 8065A0E0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8065A0E4  4E 80 00 20 */	blr 
