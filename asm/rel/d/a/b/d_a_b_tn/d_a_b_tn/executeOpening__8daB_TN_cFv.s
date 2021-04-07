lbl_80623920:
/* 80623920  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80623924  7C 08 02 A6 */	mflr r0
/* 80623928  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8062392C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80623930  4B D3 E8 A9 */	bl _savegpr_28
/* 80623934  7C 7F 1B 78 */	mr r31, r3
/* 80623938  3C 80 80 63 */	lis r4, lit_3920@ha /* 0x8062E634@ha */
/* 8062393C  3B C4 E6 34 */	addi r30, r4, lit_3920@l /* 0x8062E634@l */
/* 80623940  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80623944  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80623948  83 84 5D AC */	lwz r28, 0x5dac(r4)
/* 8062394C  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 80623950  7C 00 07 74 */	extsb r0, r0
/* 80623954  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80623958  7C 84 02 14 */	add r4, r4, r0
/* 8062395C  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 80623960  7F 84 E3 78 */	mr r4, r28
/* 80623964  4B 9F 6E 7D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80623968  80 1F 06 F4 */	lwz r0, 0x6f4(r31)
/* 8062396C  28 00 00 14 */	cmplwi r0, 0x14
/* 80623970  41 81 0C EC */	bgt lbl_8062465C
/* 80623974  3C 60 80 63 */	lis r3, lit_6815@ha /* 0x8062EDE0@ha */
/* 80623978  38 63 ED E0 */	addi r3, r3, lit_6815@l /* 0x8062EDE0@l */
/* 8062397C  54 00 10 3A */	slwi r0, r0, 2
/* 80623980  7C 03 00 2E */	lwzx r0, r3, r0
/* 80623984  7C 09 03 A6 */	mtctr r0
/* 80623988  4E 80 04 20 */	bctr 
lbl_8062398C:
/* 8062398C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80623990  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80623994  7F E3 FB 78 */	mr r3, r31
/* 80623998  38 80 00 12 */	li r4, 0x12
/* 8062399C  38 A0 00 02 */	li r5, 2
/* 806239A0  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 806239A4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806239A8  4B FF CF 21 */	bl setBck__8daB_TN_cFiUcff
/* 806239AC  38 00 00 01 */	li r0, 1
/* 806239B0  90 1F 06 F4 */	stw r0, 0x6f4(r31)
lbl_806239B4:
/* 806239B4  C0 5C 04 D0 */	lfs f2, 0x4d0(r28)
/* 806239B8  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 806239BC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806239C0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 806239C4  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 806239C8  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 806239CC  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 806239D0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806239D4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806239D8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 806239DC  38 61 00 44 */	addi r3, r1, 0x44
/* 806239E0  4B D2 37 59 */	bl PSVECSquareMag
/* 806239E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806239E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806239EC  40 81 00 58 */	ble lbl_80623A44
/* 806239F0  FC 00 08 34 */	frsqrte f0, f1
/* 806239F4  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806239F8  FC 44 00 32 */	fmul f2, f4, f0
/* 806239FC  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80623A00  FC 00 00 32 */	fmul f0, f0, f0
/* 80623A04  FC 01 00 32 */	fmul f0, f1, f0
/* 80623A08  FC 03 00 28 */	fsub f0, f3, f0
/* 80623A0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80623A10  FC 44 00 32 */	fmul f2, f4, f0
/* 80623A14  FC 00 00 32 */	fmul f0, f0, f0
/* 80623A18  FC 01 00 32 */	fmul f0, f1, f0
/* 80623A1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80623A20  FC 02 00 32 */	fmul f0, f2, f0
/* 80623A24  FC 44 00 32 */	fmul f2, f4, f0
/* 80623A28  FC 00 00 32 */	fmul f0, f0, f0
/* 80623A2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80623A30  FC 03 00 28 */	fsub f0, f3, f0
/* 80623A34  FC 02 00 32 */	fmul f0, f2, f0
/* 80623A38  FC 21 00 32 */	fmul f1, f1, f0
/* 80623A3C  FC 20 08 18 */	frsp f1, f1
/* 80623A40  48 00 00 88 */	b lbl_80623AC8
lbl_80623A44:
/* 80623A44  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80623A48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80623A4C  40 80 00 10 */	bge lbl_80623A5C
/* 80623A50  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80623A54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80623A58  48 00 00 70 */	b lbl_80623AC8
lbl_80623A5C:
/* 80623A5C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80623A60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80623A64  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80623A68  3C 00 7F 80 */	lis r0, 0x7f80
/* 80623A6C  7C 03 00 00 */	cmpw r3, r0
/* 80623A70  41 82 00 14 */	beq lbl_80623A84
/* 80623A74  40 80 00 40 */	bge lbl_80623AB4
/* 80623A78  2C 03 00 00 */	cmpwi r3, 0
/* 80623A7C  41 82 00 20 */	beq lbl_80623A9C
/* 80623A80  48 00 00 34 */	b lbl_80623AB4
lbl_80623A84:
/* 80623A84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80623A88  41 82 00 0C */	beq lbl_80623A94
/* 80623A8C  38 00 00 01 */	li r0, 1
/* 80623A90  48 00 00 28 */	b lbl_80623AB8
lbl_80623A94:
/* 80623A94  38 00 00 02 */	li r0, 2
/* 80623A98  48 00 00 20 */	b lbl_80623AB8
lbl_80623A9C:
/* 80623A9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80623AA0  41 82 00 0C */	beq lbl_80623AAC
/* 80623AA4  38 00 00 05 */	li r0, 5
/* 80623AA8  48 00 00 10 */	b lbl_80623AB8
lbl_80623AAC:
/* 80623AAC  38 00 00 03 */	li r0, 3
/* 80623AB0  48 00 00 08 */	b lbl_80623AB8
lbl_80623AB4:
/* 80623AB4  38 00 00 04 */	li r0, 4
lbl_80623AB8:
/* 80623AB8  2C 00 00 01 */	cmpwi r0, 1
/* 80623ABC  40 82 00 0C */	bne lbl_80623AC8
/* 80623AC0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80623AC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80623AC8:
/* 80623AC8  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80623ACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80623AD0  40 80 0C 00 */	bge lbl_806246D0
/* 80623AD4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80623AD8  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 80623ADC  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80623AE0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80623AE4  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 80623AE8  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 80623AEC  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80623AF0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80623AF4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80623AF8  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80623AFC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80623B00  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80623B04  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80623B08  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80623B0C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80623B10  38 81 00 38 */	addi r4, r1, 0x38
/* 80623B14  4B D2 38 89 */	bl PSVECSquareDistance
/* 80623B18  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80623B1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80623B20  40 81 00 58 */	ble lbl_80623B78
/* 80623B24  FC 00 08 34 */	frsqrte f0, f1
/* 80623B28  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80623B2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80623B30  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80623B34  FC 00 00 32 */	fmul f0, f0, f0
/* 80623B38  FC 01 00 32 */	fmul f0, f1, f0
/* 80623B3C  FC 03 00 28 */	fsub f0, f3, f0
/* 80623B40  FC 02 00 32 */	fmul f0, f2, f0
/* 80623B44  FC 44 00 32 */	fmul f2, f4, f0
/* 80623B48  FC 00 00 32 */	fmul f0, f0, f0
/* 80623B4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80623B50  FC 03 00 28 */	fsub f0, f3, f0
/* 80623B54  FC 02 00 32 */	fmul f0, f2, f0
/* 80623B58  FC 44 00 32 */	fmul f2, f4, f0
/* 80623B5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80623B60  FC 01 00 32 */	fmul f0, f1, f0
/* 80623B64  FC 03 00 28 */	fsub f0, f3, f0
/* 80623B68  FC 02 00 32 */	fmul f0, f2, f0
/* 80623B6C  FC 21 00 32 */	fmul f1, f1, f0
/* 80623B70  FC 20 08 18 */	frsp f1, f1
/* 80623B74  48 00 00 88 */	b lbl_80623BFC
lbl_80623B78:
/* 80623B78  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80623B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80623B80  40 80 00 10 */	bge lbl_80623B90
/* 80623B84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80623B88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80623B8C  48 00 00 70 */	b lbl_80623BFC
lbl_80623B90:
/* 80623B90  D0 21 00 08 */	stfs f1, 8(r1)
/* 80623B94  80 81 00 08 */	lwz r4, 8(r1)
/* 80623B98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80623B9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80623BA0  7C 03 00 00 */	cmpw r3, r0
/* 80623BA4  41 82 00 14 */	beq lbl_80623BB8
/* 80623BA8  40 80 00 40 */	bge lbl_80623BE8
/* 80623BAC  2C 03 00 00 */	cmpwi r3, 0
/* 80623BB0  41 82 00 20 */	beq lbl_80623BD0
/* 80623BB4  48 00 00 34 */	b lbl_80623BE8
lbl_80623BB8:
/* 80623BB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80623BBC  41 82 00 0C */	beq lbl_80623BC8
/* 80623BC0  38 00 00 01 */	li r0, 1
/* 80623BC4  48 00 00 28 */	b lbl_80623BEC
lbl_80623BC8:
/* 80623BC8  38 00 00 02 */	li r0, 2
/* 80623BCC  48 00 00 20 */	b lbl_80623BEC
lbl_80623BD0:
/* 80623BD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80623BD4  41 82 00 0C */	beq lbl_80623BE0
/* 80623BD8  38 00 00 05 */	li r0, 5
/* 80623BDC  48 00 00 10 */	b lbl_80623BEC
lbl_80623BE0:
/* 80623BE0  38 00 00 03 */	li r0, 3
/* 80623BE4  48 00 00 08 */	b lbl_80623BEC
lbl_80623BE8:
/* 80623BE8  38 00 00 04 */	li r0, 4
lbl_80623BEC:
/* 80623BEC  2C 00 00 01 */	cmpwi r0, 1
/* 80623BF0  40 82 00 0C */	bne lbl_80623BFC
/* 80623BF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80623BF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80623BFC:
/* 80623BFC  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 80623C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80623C04  40 81 0A CC */	ble lbl_806246D0
/* 80623C08  38 00 00 02 */	li r0, 2
/* 80623C0C  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 80623C10  48 00 0A C0 */	b lbl_806246D0
lbl_80623C14:
/* 80623C14  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80623C18  28 00 00 02 */	cmplwi r0, 2
/* 80623C1C  41 82 00 2C */	beq lbl_80623C48
/* 80623C20  7F E3 FB 78 */	mr r3, r31
/* 80623C24  38 80 00 02 */	li r4, 2
/* 80623C28  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80623C2C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80623C30  38 C0 00 00 */	li r6, 0
/* 80623C34  4B 9F 7C D5 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80623C38  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80623C3C  60 00 00 02 */	ori r0, r0, 2
/* 80623C40  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80623C44  48 00 0A 8C */	b lbl_806246D0
lbl_80623C48:
/* 80623C48  38 60 00 0E */	li r3, 0xe
/* 80623C4C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80623C50  7C 04 07 74 */	extsb r4, r0
/* 80623C54  4B A0 9E 49 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 80623C58  38 7D 02 48 */	addi r3, r29, 0x248
/* 80623C5C  4B B3 D8 75 */	bl Stop__9dCamera_cFv
/* 80623C60  38 7D 02 48 */	addi r3, r29, 0x248
/* 80623C64  38 80 00 03 */	li r4, 3
/* 80623C68  4B B3 F3 A5 */	bl SetTrimSize__9dCamera_cFl
/* 80623C6C  38 00 00 1E */	li r0, 0x1e
/* 80623C70  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 80623C74  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80623C78  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80623C7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80623C80  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80623C84  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000037@ha */
/* 80623C88  38 84 00 37 */	addi r4, r4, 0x0037 /* 0x02000037@l */
/* 80623C8C  4B C8 BF 09 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 80623C90  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80623C94  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80623C98  80 63 00 00 */	lwz r3, 0(r3)
/* 80623C9C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80623CA0  4B C8 C1 79 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80623CA4  38 A0 00 03 */	li r5, 3
/* 80623CA8  90 BF 06 F4 */	stw r5, 0x6f4(r31)
/* 80623CAC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80623CB0  D0 1F 07 1C */	stfs f0, 0x71c(r31)
/* 80623CB4  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 80623CB8  D0 1F 07 24 */	stfs f0, 0x724(r31)
/* 80623CBC  38 00 10 00 */	li r0, 0x1000
/* 80623CC0  B0 1F 07 20 */	sth r0, 0x720(r31)
/* 80623CC4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80623CC8  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80623CCC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80623CD0  EC 21 00 2A */	fadds f1, f1, f0
/* 80623CD4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80623CD8  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 80623CDC  D0 3F 07 14 */	stfs f1, 0x714(r31)
/* 80623CE0  D0 5F 07 18 */	stfs f2, 0x718(r31)
/* 80623CE4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80623CE8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80623CEC  A8 1F 07 20 */	lha r0, 0x720(r31)
/* 80623CF0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80623CF4  7C 64 02 14 */	add r3, r4, r0
/* 80623CF8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80623CFC  C0 3F 07 18 */	lfs f1, 0x718(r31)
/* 80623D00  C0 7F 07 24 */	lfs f3, 0x724(r31)
/* 80623D04  EC 03 00 32 */	fmuls f0, f3, f0
/* 80623D08  EC 41 00 2A */	fadds f2, f1, f0
/* 80623D0C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80623D10  C0 3F 07 10 */	lfs f1, 0x710(r31)
/* 80623D14  EC 03 00 32 */	fmuls f0, f3, f0
/* 80623D18  EC 01 00 2A */	fadds f0, f1, f0
/* 80623D1C  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 80623D20  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80623D24  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 80623D28  D0 5F 07 0C */	stfs f2, 0x70c(r31)
/* 80623D2C  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 80623D30  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80623D34  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80623D38  B0 BC 06 04 */	sth r5, 0x604(r28)
/* 80623D3C  38 00 00 00 */	li r0, 0
/* 80623D40  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80623D44  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80623D48  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80623D4C  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80623D50  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80623D54  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 80623D58  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80623D5C  7F 83 E3 78 */	mr r3, r28
/* 80623D60  38 81 00 98 */	addi r4, r1, 0x98
/* 80623D64  38 A0 90 00 */	li r5, -28672
/* 80623D68  38 C0 00 00 */	li r6, 0
/* 80623D6C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80623D70  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80623D74  7D 89 03 A6 */	mtctr r12
/* 80623D78  4E 80 04 21 */	bctrl 
/* 80623D7C  38 00 00 04 */	li r0, 4
/* 80623D80  90 1C 06 14 */	stw r0, 0x614(r28)
/* 80623D84  38 00 00 01 */	li r0, 1
/* 80623D88  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80623D8C  38 00 00 00 */	li r0, 0
/* 80623D90  90 1C 06 10 */	stw r0, 0x610(r28)
/* 80623D94  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80623D98  48 00 08 C4 */	b lbl_8062465C
lbl_80623D9C:
/* 80623D9C  38 7F 07 20 */	addi r3, r31, 0x720
/* 80623DA0  38 80 04 00 */	li r4, 0x400
/* 80623DA4  38 A0 00 08 */	li r5, 8
/* 80623DA8  38 C0 00 30 */	li r6, 0x30
/* 80623DAC  4B C4 C8 5D */	bl cLib_addCalcAngleS2__FPssss
/* 80623DB0  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80623DB4  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80623DB8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80623DBC  EC 21 00 2A */	fadds f1, f1, f0
/* 80623DC0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80623DC4  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 80623DC8  D0 3F 07 14 */	stfs f1, 0x714(r31)
/* 80623DCC  D0 5F 07 18 */	stfs f2, 0x718(r31)
/* 80623DD0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80623DD4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80623DD8  A8 1F 07 20 */	lha r0, 0x720(r31)
/* 80623DDC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80623DE0  7C 64 02 14 */	add r3, r4, r0
/* 80623DE4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80623DE8  C0 3F 07 18 */	lfs f1, 0x718(r31)
/* 80623DEC  C0 7F 07 24 */	lfs f3, 0x724(r31)
/* 80623DF0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80623DF4  EC 41 00 2A */	fadds f2, f1, f0
/* 80623DF8  7C 04 04 2E */	lfsx f0, r4, r0
/* 80623DFC  C0 3F 07 10 */	lfs f1, 0x710(r31)
/* 80623E00  EC 03 00 32 */	fmuls f0, f3, f0
/* 80623E04  EC 01 00 2A */	fadds f0, f1, f0
/* 80623E08  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 80623E0C  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80623E10  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 80623E14  D0 5F 07 0C */	stfs f2, 0x70c(r31)
/* 80623E18  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 80623E1C  2C 00 00 00 */	cmpwi r0, 0
/* 80623E20  40 82 08 3C */	bne lbl_8062465C
/* 80623E24  7F E3 FB 78 */	mr r3, r31
/* 80623E28  38 80 00 0E */	li r4, 0xe
/* 80623E2C  38 A0 00 00 */	li r5, 0
/* 80623E30  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 80623E34  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80623E38  4B FF CA 91 */	bl setBck__8daB_TN_cFiUcff
/* 80623E3C  38 00 00 04 */	li r0, 4
/* 80623E40  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 80623E44  38 00 00 01 */	li r0, 1
/* 80623E48  98 1F 0A AE */	stb r0, 0xaae(r31)
/* 80623E4C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80623E50  D0 1F 0A B0 */	stfs f0, 0xab0(r31)
/* 80623E54  48 00 08 08 */	b lbl_8062465C
lbl_80623E58:
/* 80623E58  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80623E5C  38 63 00 0C */	addi r3, r3, 0xc
/* 80623E60  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 80623E64  4B D0 45 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80623E68  2C 03 00 00 */	cmpwi r3, 0
/* 80623E6C  41 82 00 30 */	beq lbl_80623E9C
/* 80623E70  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80623E74  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80623E78  90 01 00 28 */	stw r0, 0x28(r1)
/* 80623E7C  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80623E80  38 81 00 28 */	addi r4, r1, 0x28
/* 80623E84  38 A0 00 00 */	li r5, 0
/* 80623E88  38 C0 FF FF */	li r6, -1
/* 80623E8C  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80623E90  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80623E94  7D 89 03 A6 */	mtctr r12
/* 80623E98  4E 80 04 21 */	bctrl 
lbl_80623E9C:
/* 80623E9C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80623EA0  38 63 00 0C */	addi r3, r3, 0xc
/* 80623EA4  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 80623EA8  4B D0 45 85 */	bl checkPass__12J3DFrameCtrlFf
/* 80623EAC  2C 03 00 00 */	cmpwi r3, 0
/* 80623EB0  41 82 00 30 */	beq lbl_80623EE0
/* 80623EB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80623EB8  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80623EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80623EC0  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80623EC4  38 81 00 24 */	addi r4, r1, 0x24
/* 80623EC8  38 A0 00 00 */	li r5, 0
/* 80623ECC  38 C0 FF FF */	li r6, -1
/* 80623ED0  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80623ED4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80623ED8  7D 89 03 A6 */	mtctr r12
/* 80623EDC  4E 80 04 21 */	bctrl 
lbl_80623EE0:
/* 80623EE0  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80623EE4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80623EE8  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80623EEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80623EF0  40 80 00 3C */	bge lbl_80623F2C
/* 80623EF4  38 7F 07 20 */	addi r3, r31, 0x720
/* 80623EF8  38 80 FC 00 */	li r4, -1024
/* 80623EFC  38 A0 00 08 */	li r5, 8
/* 80623F00  38 C0 00 30 */	li r6, 0x30
/* 80623F04  4B C4 C7 05 */	bl cLib_addCalcAngleS2__FPssss
/* 80623F08  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80623F0C  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80623F10  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80623F14  EC 21 00 2A */	fadds f1, f1, f0
/* 80623F18  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80623F1C  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 80623F20  D0 3F 07 14 */	stfs f1, 0x714(r31)
/* 80623F24  D0 5F 07 18 */	stfs f2, 0x718(r31)
/* 80623F28  48 00 00 6C */	b lbl_80623F94
lbl_80623F2C:
/* 80623F2C  38 7F 07 24 */	addi r3, r31, 0x724
/* 80623F30  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80623F34  C0 5E 01 58 */	lfs f2, 0x158(r30)
/* 80623F38  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80623F3C  4B C4 BB 01 */	bl cLib_addCalc2__FPffff
/* 80623F40  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80623F44  80 63 00 04 */	lwz r3, 4(r3)
/* 80623F48  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80623F4C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80623F50  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80623F54  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80623F58  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80623F5C  4B D2 25 55 */	bl PSMTXCopy
/* 80623F60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80623F64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80623F68  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80623F6C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80623F70  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80623F74  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80623F78  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80623F7C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80623F80  38 7F 07 10 */	addi r3, r31, 0x710
/* 80623F84  38 81 00 8C */	addi r4, r1, 0x8c
/* 80623F88  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80623F8C  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80623F90  4B C4 C1 E9 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
lbl_80623F94:
/* 80623F94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80623F98  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80623F9C  A8 1F 07 20 */	lha r0, 0x720(r31)
/* 80623FA0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80623FA4  7C 64 02 14 */	add r3, r4, r0
/* 80623FA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80623FAC  C0 3F 07 18 */	lfs f1, 0x718(r31)
/* 80623FB0  C0 7F 07 24 */	lfs f3, 0x724(r31)
/* 80623FB4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80623FB8  EC 41 00 2A */	fadds f2, f1, f0
/* 80623FBC  7C 04 04 2E */	lfsx f0, r4, r0
/* 80623FC0  C0 3F 07 10 */	lfs f1, 0x710(r31)
/* 80623FC4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80623FC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80623FCC  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 80623FD0  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80623FD4  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 80623FD8  D0 5F 07 0C */	stfs f2, 0x70c(r31)
/* 80623FDC  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80623FE0  38 80 00 01 */	li r4, 1
/* 80623FE4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80623FE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80623FEC  40 82 00 18 */	bne lbl_80624004
/* 80623FF0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80623FF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80623FF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80623FFC  41 82 00 08 */	beq lbl_80624004
/* 80624000  38 80 00 00 */	li r4, 0
lbl_80624004:
/* 80624004  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80624008  41 82 06 54 */	beq lbl_8062465C
/* 8062400C  7F E3 FB 78 */	mr r3, r31
/* 80624010  38 80 00 0F */	li r4, 0xf
/* 80624014  38 A0 00 02 */	li r5, 2
/* 80624018  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 8062401C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80624020  4B FF C8 A9 */	bl setBck__8daB_TN_cFiUcff
/* 80624024  38 00 00 3C */	li r0, 0x3c
/* 80624028  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 8062402C  38 00 00 0A */	li r0, 0xa
/* 80624030  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 80624034  48 00 06 28 */	b lbl_8062465C
lbl_80624038:
/* 80624038  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062403C  80 63 00 04 */	lwz r3, 4(r3)
/* 80624040  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80624044  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80624048  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8062404C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80624050  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80624054  4B D2 24 5D */	bl PSMTXCopy
/* 80624058  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062405C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80624060  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80624064  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80624068  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8062406C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80624070  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80624074  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80624078  38 7F 07 10 */	addi r3, r31, 0x710
/* 8062407C  38 81 00 8C */	addi r4, r1, 0x8c
/* 80624080  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80624084  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80624088  4B C4 C0 F1 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8062408C  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 80624090  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80624094  40 80 00 30 */	bge lbl_806240C4
/* 80624098  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062409C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806240A0  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 806240A4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806240A8  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 806240AC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 806240B0  38 7F 07 04 */	addi r3, r31, 0x704
/* 806240B4  38 81 00 8C */	addi r4, r1, 0x8c
/* 806240B8  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 806240BC  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 806240C0  4B C4 C0 B9 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
lbl_806240C4:
/* 806240C4  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 806240C8  2C 00 00 00 */	cmpwi r0, 0
/* 806240CC  40 82 05 90 */	bne lbl_8062465C
/* 806240D0  7F E3 FB 78 */	mr r3, r31
/* 806240D4  38 80 00 07 */	li r4, 7
/* 806240D8  38 A0 00 00 */	li r5, 0
/* 806240DC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 806240E0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806240E4  4B FF C7 E5 */	bl setBck__8daB_TN_cFiUcff
/* 806240E8  38 00 00 0E */	li r0, 0xe
/* 806240EC  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 806240F0  48 00 05 6C */	b lbl_8062465C
lbl_806240F4:
/* 806240F4  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 806240F8  38 63 00 0C */	addi r3, r3, 0xc
/* 806240FC  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 80624100  4B D0 43 2D */	bl checkPass__12J3DFrameCtrlFf
/* 80624104  2C 03 00 00 */	cmpwi r3, 0
/* 80624108  40 82 00 1C */	bne lbl_80624124
/* 8062410C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80624110  38 63 00 0C */	addi r3, r3, 0xc
/* 80624114  C0 3E 01 60 */	lfs f1, 0x160(r30)
/* 80624118  4B D0 43 15 */	bl checkPass__12J3DFrameCtrlFf
/* 8062411C  2C 03 00 00 */	cmpwi r3, 0
/* 80624120  41 82 00 34 */	beq lbl_80624154
lbl_80624124:
/* 80624124  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80624128  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 8062412C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80624130  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80624134  38 81 00 20 */	addi r4, r1, 0x20
/* 80624138  38 A0 00 00 */	li r5, 0
/* 8062413C  38 C0 FF FF */	li r6, -1
/* 80624140  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80624144  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80624148  7D 89 03 A6 */	mtctr r12
/* 8062414C  4E 80 04 21 */	bctrl 
/* 80624150  48 00 01 00 */	b lbl_80624250
lbl_80624154:
/* 80624154  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80624158  38 63 00 0C */	addi r3, r3, 0xc
/* 8062415C  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 80624160  4B D0 42 CD */	bl checkPass__12J3DFrameCtrlFf
/* 80624164  2C 03 00 00 */	cmpwi r3, 0
/* 80624168  41 82 00 5C */	beq lbl_806241C4
/* 8062416C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A9@ha */
/* 80624170  38 03 03 A9 */	addi r0, r3, 0x03A9 /* 0x000703A9@l */
/* 80624174  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80624178  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062417C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80624180  38 A0 00 00 */	li r5, 0
/* 80624184  38 C0 FF FF */	li r6, -1
/* 80624188  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062418C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80624190  7D 89 03 A6 */	mtctr r12
/* 80624194  4E 80 04 21 */	bctrl 
/* 80624198  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070399@ha */
/* 8062419C  38 03 03 99 */	addi r0, r3, 0x0399 /* 0x00070399@l */
/* 806241A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 806241A4  38 7F 06 4C */	addi r3, r31, 0x64c
/* 806241A8  38 81 00 18 */	addi r4, r1, 0x18
/* 806241AC  38 A0 FF FF */	li r5, -1
/* 806241B0  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 806241B4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806241B8  7D 89 03 A6 */	mtctr r12
/* 806241BC  4E 80 04 21 */	bctrl 
/* 806241C0  48 00 00 90 */	b lbl_80624250
lbl_806241C4:
/* 806241C4  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 806241C8  38 63 00 0C */	addi r3, r3, 0xc
/* 806241CC  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 806241D0  4B D0 42 5D */	bl checkPass__12J3DFrameCtrlFf
/* 806241D4  2C 03 00 00 */	cmpwi r3, 0
/* 806241D8  41 82 00 34 */	beq lbl_8062420C
/* 806241DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 806241E0  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 806241E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806241E8  38 7F 06 4C */	addi r3, r31, 0x64c
/* 806241EC  38 81 00 14 */	addi r4, r1, 0x14
/* 806241F0  38 A0 00 00 */	li r5, 0
/* 806241F4  38 C0 FF FF */	li r6, -1
/* 806241F8  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 806241FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80624200  7D 89 03 A6 */	mtctr r12
/* 80624204  4E 80 04 21 */	bctrl 
/* 80624208  48 00 00 48 */	b lbl_80624250
lbl_8062420C:
/* 8062420C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80624210  38 63 00 0C */	addi r3, r3, 0xc
/* 80624214  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 80624218  4B D0 42 15 */	bl checkPass__12J3DFrameCtrlFf
/* 8062421C  2C 03 00 00 */	cmpwi r3, 0
/* 80624220  41 82 00 30 */	beq lbl_80624250
/* 80624224  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A9@ha */
/* 80624228  38 03 03 A9 */	addi r0, r3, 0x03A9 /* 0x000703A9@l */
/* 8062422C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80624230  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80624234  38 81 00 10 */	addi r4, r1, 0x10
/* 80624238  38 A0 00 00 */	li r5, 0
/* 8062423C  38 C0 FF FF */	li r6, -1
/* 80624240  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80624244  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80624248  7D 89 03 A6 */	mtctr r12
/* 8062424C  4E 80 04 21 */	bctrl 
lbl_80624250:
/* 80624250  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80624254  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80624258  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8062425C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80624260  40 80 00 84 */	bge lbl_806242E4
/* 80624264  80 63 00 04 */	lwz r3, 4(r3)
/* 80624268  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062426C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80624270  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80624274  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80624278  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062427C  4B D2 22 35 */	bl PSMTXCopy
/* 80624280  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80624284  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80624288  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8062428C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80624290  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80624294  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80624298  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8062429C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 806242A0  38 7F 07 10 */	addi r3, r31, 0x710
/* 806242A4  38 81 00 8C */	addi r4, r1, 0x8c
/* 806242A8  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 806242AC  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 806242B0  4B C4 BE C9 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 806242B4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806242B8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806242BC  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 806242C0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806242C4  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 806242C8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 806242CC  38 7F 07 04 */	addi r3, r31, 0x704
/* 806242D0  38 81 00 8C */	addi r4, r1, 0x8c
/* 806242D4  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 806242D8  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 806242DC  4B C4 BE 9D */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 806242E0  48 00 01 24 */	b lbl_80624404
lbl_806242E4:
/* 806242E4  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 806242E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806242EC  40 80 00 90 */	bge lbl_8062437C
/* 806242F0  80 63 00 04 */	lwz r3, 4(r3)
/* 806242F4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806242F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806242FC  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 80624300  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80624304  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80624308  4B D2 21 A9 */	bl PSMTXCopy
/* 8062430C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80624310  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80624314  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80624318  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8062431C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80624320  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80624324  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80624328  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8062432C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80624330  EC 01 00 28 */	fsubs f0, f1, f0
/* 80624334  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80624338  38 7F 07 10 */	addi r3, r31, 0x710
/* 8062433C  38 81 00 8C */	addi r4, r1, 0x8c
/* 80624340  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80624344  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80624348  4B C4 BE 31 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8062434C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80624350  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80624354  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80624358  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8062435C  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80624360  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80624364  38 7F 07 04 */	addi r3, r31, 0x704
/* 80624368  38 81 00 8C */	addi r4, r1, 0x8c
/* 8062436C  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80624370  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80624374  4B C4 BE 05 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80624378  48 00 00 8C */	b lbl_80624404
lbl_8062437C:
/* 8062437C  80 63 00 04 */	lwz r3, 4(r3)
/* 80624380  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80624384  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80624388  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 8062438C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80624390  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80624394  4B D2 21 1D */	bl PSMTXCopy
/* 80624398  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062439C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806243A0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806243A4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806243A8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806243AC  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 806243B0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806243B4  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 806243B8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 806243BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 806243C0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806243C4  38 7F 07 10 */	addi r3, r31, 0x710
/* 806243C8  38 81 00 8C */	addi r4, r1, 0x8c
/* 806243CC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806243D0  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 806243D4  4B C4 BD A5 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 806243D8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806243DC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806243E0  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 806243E4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806243E8  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 806243EC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 806243F0  38 7F 07 04 */	addi r3, r31, 0x704
/* 806243F4  38 81 00 8C */	addi r4, r1, 0x8c
/* 806243F8  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 806243FC  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80624400  4B C4 BD 79 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
lbl_80624404:
/* 80624404  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80624408  38 63 00 0C */	addi r3, r3, 0xc
/* 8062440C  C0 3E 01 70 */	lfs f1, 0x170(r30)
/* 80624410  4B D0 40 1D */	bl checkPass__12J3DFrameCtrlFf
/* 80624414  2C 03 00 00 */	cmpwi r3, 0
/* 80624418  40 82 00 1C */	bne lbl_80624434
/* 8062441C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80624420  38 63 00 0C */	addi r3, r3, 0xc
/* 80624424  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 80624428  4B D0 40 05 */	bl checkPass__12J3DFrameCtrlFf
/* 8062442C  2C 03 00 00 */	cmpwi r3, 0
/* 80624430  41 82 00 3C */	beq lbl_8062446C
lbl_80624434:
/* 80624434  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80624438  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8062443C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80624440  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80624444  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80624448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062444C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80624450  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80624454  38 80 00 04 */	li r4, 4
/* 80624458  38 A0 00 1F */	li r5, 0x1f
/* 8062445C  38 C1 00 80 */	addi r6, r1, 0x80
/* 80624460  4B A4 B5 C5 */	bl StartShock__12dVibration_cFii4cXyz
/* 80624464  38 00 00 07 */	li r0, 7
/* 80624468  90 1F 0A 88 */	stw r0, 0xa88(r31)
lbl_8062446C:
/* 8062446C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80624470  38 63 00 0C */	addi r3, r3, 0xc
/* 80624474  C0 3E 01 74 */	lfs f1, 0x174(r30)
/* 80624478  4B D0 3F B5 */	bl checkPass__12J3DFrameCtrlFf
/* 8062447C  2C 03 00 00 */	cmpwi r3, 0
/* 80624480  41 82 01 DC */	beq lbl_8062465C
/* 80624484  38 00 00 11 */	li r0, 0x11
/* 80624488  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 8062448C  38 00 00 1E */	li r0, 0x1e
/* 80624490  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 80624494  48 00 01 C8 */	b lbl_8062465C
lbl_80624498:
/* 80624498  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 8062449C  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 806244A0  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 806244A4  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 806244A8  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 806244AC  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 806244B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806244B4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806244B8  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 806244BC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806244C0  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 806244C4  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 806244C8  38 7F 07 04 */	addi r3, r31, 0x704
/* 806244CC  38 81 00 8C */	addi r4, r1, 0x8c
/* 806244D0  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 806244D4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806244D8  4B C4 BC A1 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 806244DC  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 806244E0  38 63 00 0C */	addi r3, r3, 0xc
/* 806244E4  C0 3E 01 84 */	lfs f1, 0x184(r30)
/* 806244E8  4B D0 3F 45 */	bl checkPass__12J3DFrameCtrlFf
/* 806244EC  2C 03 00 00 */	cmpwi r3, 0
/* 806244F0  41 82 01 6C */	beq lbl_8062465C
/* 806244F4  38 00 00 14 */	li r0, 0x14
/* 806244F8  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 806244FC  38 00 00 17 */	li r0, 0x17
/* 80624500  90 1C 06 14 */	stw r0, 0x614(r28)
/* 80624504  38 00 00 00 */	li r0, 0
/* 80624508  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 8062450C  90 1C 06 10 */	stw r0, 0x610(r28)
/* 80624510  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80624514  48 00 01 48 */	b lbl_8062465C
lbl_80624518:
/* 80624518  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062451C  80 63 00 04 */	lwz r3, 4(r3)
/* 80624520  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80624524  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80624528  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8062452C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80624530  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80624534  4B D2 1F 7D */	bl PSMTXCopy
/* 80624538  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062453C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80624540  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80624544  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80624548  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8062454C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80624550  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80624554  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80624558  38 7F 07 10 */	addi r3, r31, 0x710
/* 8062455C  38 81 00 8C */	addi r4, r1, 0x8c
/* 80624560  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80624564  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80624568  4B C4 BC 11 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8062456C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80624570  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80624574  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 80624578  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8062457C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80624580  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80624584  38 7F 07 04 */	addi r3, r31, 0x704
/* 80624588  38 81 00 8C */	addi r4, r1, 0x8c
/* 8062458C  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80624590  C0 5E 01 4C */	lfs f2, 0x14c(r30)
/* 80624594  4B C4 BB E5 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80624598  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062459C  38 63 00 0C */	addi r3, r3, 0xc
/* 806245A0  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 806245A4  4B D0 3E 89 */	bl checkPass__12J3DFrameCtrlFf
/* 806245A8  2C 03 00 00 */	cmpwi r3, 0
/* 806245AC  41 82 00 B0 */	beq lbl_8062465C
/* 806245B0  C0 1F 07 10 */	lfs f0, 0x710(r31)
/* 806245B4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806245B8  C0 1F 07 14 */	lfs f0, 0x714(r31)
/* 806245BC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806245C0  C0 1F 07 18 */	lfs f0, 0x718(r31)
/* 806245C4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806245C8  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 806245CC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806245D0  C0 1F 07 08 */	lfs f0, 0x708(r31)
/* 806245D4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806245D8  C0 1F 07 0C */	lfs f0, 0x70c(r31)
/* 806245DC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806245E0  38 7D 02 48 */	addi r3, r29, 0x248
/* 806245E4  38 81 00 74 */	addi r4, r1, 0x74
/* 806245E8  38 A1 00 68 */	addi r5, r1, 0x68
/* 806245EC  4B B5 C6 2D */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 806245F0  38 7D 02 48 */	addi r3, r29, 0x248
/* 806245F4  4B B3 CE B9 */	bl Start__9dCamera_cFv
/* 806245F8  38 7D 02 48 */	addi r3, r29, 0x248
/* 806245FC  38 80 00 00 */	li r4, 0
/* 80624600  4B B3 EA 0D */	bl SetTrimSize__9dCamera_cFl
/* 80624604  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80624608  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062460C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80624610  4B A1 DE 59 */	bl reset__14dEvt_control_cFv
/* 80624614  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80624618  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8062461C  80 63 00 00 */	lwz r3, 0(r3)
/* 80624620  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80624624  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100006C@ha */
/* 80624628  38 84 00 6C */	addi r4, r4, 0x006C /* 0x0100006C@l */
/* 8062462C  4B C8 AE 71 */	bl subBgmStart__8Z2SeqMgrFUl
/* 80624630  7F E3 FB 78 */	mr r3, r31
/* 80624634  38 80 00 02 */	li r4, 2
/* 80624638  38 A0 00 00 */	li r5, 0
/* 8062463C  4B FF C3 8D */	bl setActionMode__8daB_TN_cFii
/* 80624640  38 00 00 01 */	li r0, 1
/* 80624644  98 1F 0A 93 */	stb r0, 0xa93(r31)
/* 80624648  38 00 00 02 */	li r0, 2
/* 8062464C  98 1F 0A AE */	stb r0, 0xaae(r31)
/* 80624650  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80624654  D0 1F 0A B0 */	stfs f0, 0xab0(r31)
/* 80624658  48 00 00 78 */	b lbl_806246D0
lbl_8062465C:
/* 8062465C  C0 1F 07 10 */	lfs f0, 0x710(r31)
/* 80624660  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80624664  C0 1F 07 14 */	lfs f0, 0x714(r31)
/* 80624668  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8062466C  C0 1F 07 18 */	lfs f0, 0x718(r31)
/* 80624670  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80624674  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 80624678  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8062467C  C0 1F 07 08 */	lfs f0, 0x708(r31)
/* 80624680  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80624684  C0 1F 07 0C */	lfs f0, 0x70c(r31)
/* 80624688  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8062468C  38 7D 02 48 */	addi r3, r29, 0x248
/* 80624690  38 81 00 5C */	addi r4, r1, 0x5c
/* 80624694  38 A1 00 50 */	addi r5, r1, 0x50
/* 80624698  C0 3F 07 1C */	lfs f1, 0x71c(r31)
/* 8062469C  38 C0 00 00 */	li r6, 0
/* 806246A0  4B B5 C4 41 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 806246A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806246A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806246AC  3B 83 4E C8 */	addi r28, r3, 0x4ec8
/* 806246B0  7F 83 E3 78 */	mr r3, r28
/* 806246B4  4B A1 E2 F5 */	bl onSkipFade__14dEvt_control_cFv
/* 806246B8  7F 83 E3 78 */	mr r3, r28
/* 806246BC  7F E4 FB 78 */	mr r4, r31
/* 806246C0  3C A0 80 62 */	lis r5, DemoSkipCallBack__8daB_TN_cFPvi@ha /* 0x8062318C@ha */
/* 806246C4  38 A5 31 8C */	addi r5, r5, DemoSkipCallBack__8daB_TN_cFPvi@l /* 0x8062318C@l */
/* 806246C8  38 C0 00 00 */	li r6, 0
/* 806246CC  4B A1 E2 49 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_806246D0:
/* 806246D0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806246D4  4B D3 DB 51 */	bl _restgpr_28
/* 806246D8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806246DC  7C 08 03 A6 */	mtlr r0
/* 806246E0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806246E4  4E 80 00 20 */	blr 
