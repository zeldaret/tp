lbl_8054395C:
/* 8054395C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80543960  7C 08 02 A6 */	mflr r0
/* 80543964  90 01 00 34 */	stw r0, 0x34(r1)
/* 80543968  39 61 00 30 */	addi r11, r1, 0x30
/* 8054396C  4B E1 E8 6C */	b _savegpr_28
/* 80543970  7C 7D 1B 78 */	mr r29, r3
/* 80543974  3C 80 80 55 */	lis r4, lit_3905@ha
/* 80543978  3B E4 A9 64 */	addi r31, r4, lit_3905@l
/* 8054397C  3B C0 08 00 */	li r30, 0x800
/* 80543980  A8 03 06 A4 */	lha r0, 0x6a4(r3)
/* 80543984  28 00 00 0C */	cmplwi r0, 0xc
/* 80543988  41 81 03 08 */	bgt lbl_80543C90
/* 8054398C  3C 80 80 55 */	lis r4, lit_4437@ha
/* 80543990  38 84 AC B0 */	addi r4, r4, lit_4437@l
/* 80543994  54 00 10 3A */	slwi r0, r0, 2
/* 80543998  7C 04 00 2E */	lwzx r0, r4, r0
/* 8054399C  7C 09 03 A6 */	mtctr r0
/* 805439A0  4E 80 04 20 */	bctr 
lbl_805439A4:
/* 805439A4  38 80 00 1A */	li r4, 0x1a
/* 805439A8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805439AC  38 A0 00 02 */	li r5, 2
/* 805439B0  FC 40 08 90 */	fmr f2, f1
/* 805439B4  4B FF F5 E5 */	bl anm_init__FP15npc_henna_classifUcf
/* 805439B8  38 00 80 00 */	li r0, -32768
/* 805439BC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805439C0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 805439C4  B0 1D 06 18 */	sth r0, 0x618(r29)
/* 805439C8  38 00 00 01 */	li r0, 1
/* 805439CC  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
lbl_805439D0:
/* 805439D0  3B C0 00 00 */	li r30, 0
/* 805439D4  48 00 02 BC */	b lbl_80543C90
lbl_805439D8:
/* 805439D8  38 80 00 1B */	li r4, 0x1b
/* 805439DC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805439E0  38 A0 00 00 */	li r5, 0
/* 805439E4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805439E8  4B FF F5 B1 */	bl anm_init__FP15npc_henna_classifUcf
/* 805439EC  38 00 00 03 */	li r0, 3
/* 805439F0  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
lbl_805439F4:
/* 805439F4  80 1D 06 5C */	lwz r0, 0x65c(r29)
/* 805439F8  2C 00 00 1B */	cmpwi r0, 0x1b
/* 805439FC  40 82 02 94 */	bne lbl_80543C90
/* 80543A00  80 7D 06 24 */	lwz r3, 0x624(r29)
/* 80543A04  38 80 00 01 */	li r4, 1
/* 80543A08  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80543A0C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80543A10  40 82 00 18 */	bne lbl_80543A28
/* 80543A14  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80543A18  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80543A1C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80543A20  41 82 00 08 */	beq lbl_80543A28
/* 80543A24  38 80 00 00 */	li r4, 0
lbl_80543A28:
/* 80543A28  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80543A2C  41 82 02 64 */	beq lbl_80543C90
/* 80543A30  7F A3 EB 78 */	mr r3, r29
/* 80543A34  38 80 00 20 */	li r4, 0x20
/* 80543A38  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80543A3C  38 A0 00 02 */	li r5, 2
/* 80543A40  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80543A44  4B FF F5 55 */	bl anm_init__FP15npc_henna_classifUcf
/* 80543A48  38 00 00 05 */	li r0, 5
/* 80543A4C  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 80543A50  48 00 02 40 */	b lbl_80543C90
lbl_80543A54:
/* 80543A54  A8 1D 06 A0 */	lha r0, 0x6a0(r29)
/* 80543A58  2C 00 00 50 */	cmpwi r0, 0x50
/* 80543A5C  40 81 02 34 */	ble lbl_80543C90
/* 80543A60  38 00 00 02 */	li r0, 2
/* 80543A64  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 80543A68  48 00 02 28 */	b lbl_80543C90
lbl_80543A6C:
/* 80543A6C  A8 1D 07 52 */	lha r0, 0x752(r29)
/* 80543A70  2C 00 00 00 */	cmpwi r0, 0
/* 80543A74  41 82 00 24 */	beq lbl_80543A98
/* 80543A78  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80543A7C  4B D2 3E D8 */	b cM_rndF__Ff
/* 80543A80  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80543A84  EC 00 08 2A */	fadds f0, f0, f1
/* 80543A88  FC 00 00 1E */	fctiwz f0, f0
/* 80543A8C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80543A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80543A94  B0 1D 07 46 */	sth r0, 0x746(r29)
lbl_80543A98:
/* 80543A98  A8 1D 07 46 */	lha r0, 0x746(r29)
/* 80543A9C  2C 00 00 01 */	cmpwi r0, 1
/* 80543AA0  40 82 01 F0 */	bne lbl_80543C90
/* 80543AA4  38 00 00 0A */	li r0, 0xa
/* 80543AA8  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 80543AAC  48 00 01 E4 */	b lbl_80543C90
lbl_80543AB0:
/* 80543AB0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80543AB4  4B D2 3E A0 */	b cM_rndF__Ff
/* 80543AB8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80543ABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80543AC0  41 80 00 10 */	blt lbl_80543AD0
/* 80543AC4  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80543AC8  28 00 00 00 */	cmplwi r0, 0
/* 80543ACC  41 82 00 30 */	beq lbl_80543AFC
lbl_80543AD0:
/* 80543AD0  7F A3 EB 78 */	mr r3, r29
/* 80543AD4  38 80 00 18 */	li r4, 0x18
/* 80543AD8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80543ADC  38 A0 00 00 */	li r5, 0
/* 80543AE0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80543AE4  4B FF F4 B5 */	bl anm_init__FP15npc_henna_classifUcf
/* 80543AE8  38 00 00 02 */	li r0, 2
/* 80543AEC  90 1D 06 54 */	stw r0, 0x654(r29)
/* 80543AF0  38 00 00 00 */	li r0, 0
/* 80543AF4  98 1D 07 08 */	stb r0, 0x708(r29)
/* 80543AF8  48 00 00 24 */	b lbl_80543B1C
lbl_80543AFC:
/* 80543AFC  7F A3 EB 78 */	mr r3, r29
/* 80543B00  38 80 00 14 */	li r4, 0x14
/* 80543B04  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80543B08  38 A0 00 00 */	li r5, 0
/* 80543B0C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80543B10  4B FF F4 89 */	bl anm_init__FP15npc_henna_classifUcf
/* 80543B14  38 00 00 01 */	li r0, 1
/* 80543B18  90 1D 06 54 */	stw r0, 0x654(r29)
lbl_80543B1C:
/* 80543B1C  38 00 00 0B */	li r0, 0xb
/* 80543B20  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 80543B24  38 00 00 03 */	li r0, 3
/* 80543B28  90 1D 06 88 */	stw r0, 0x688(r29)
/* 80543B2C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80543B30  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 80543B34  80 1D 06 88 */	lwz r0, 0x688(r29)
/* 80543B38  54 00 10 3A */	slwi r0, r0, 2
/* 80543B3C  7C 7D 02 14 */	add r3, r29, r0
/* 80543B40  80 63 06 68 */	lwz r3, 0x668(r3)
/* 80543B44  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80543B48  80 1D 06 88 */	lwz r0, 0x688(r29)
/* 80543B4C  54 00 10 3A */	slwi r0, r0, 2
/* 80543B50  7C 7D 02 14 */	add r3, r29, r0
/* 80543B54  80 63 06 78 */	lwz r3, 0x678(r3)
/* 80543B58  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80543B5C  48 00 01 34 */	b lbl_80543C90
lbl_80543B60:
/* 80543B60  3B C0 00 00 */	li r30, 0
/* 80543B64  38 60 00 00 */	li r3, 0
/* 80543B68  98 7D 07 0D */	stb r3, 0x70d(r29)
/* 80543B6C  38 00 00 05 */	li r0, 5
/* 80543B70  98 1D 07 09 */	stb r0, 0x709(r29)
/* 80543B74  80 9D 06 24 */	lwz r4, 0x624(r29)
/* 80543B78  38 A0 00 01 */	li r5, 1
/* 80543B7C  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80543B80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80543B84  40 82 00 18 */	bne lbl_80543B9C
/* 80543B88  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80543B8C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80543B90  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80543B94  41 82 00 08 */	beq lbl_80543B9C
/* 80543B98  7C 65 1B 78 */	mr r5, r3
lbl_80543B9C:
/* 80543B9C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80543BA0  41 82 00 F0 */	beq lbl_80543C90
/* 80543BA4  80 1D 06 5C */	lwz r0, 0x65c(r29)
/* 80543BA8  2C 00 00 14 */	cmpwi r0, 0x14
/* 80543BAC  40 82 00 20 */	bne lbl_80543BCC
/* 80543BB0  7F A3 EB 78 */	mr r3, r29
/* 80543BB4  38 80 00 13 */	li r4, 0x13
/* 80543BB8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80543BBC  38 A0 00 02 */	li r5, 2
/* 80543BC0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80543BC4  4B FF F3 D5 */	bl anm_init__FP15npc_henna_classifUcf
/* 80543BC8  48 00 00 1C */	b lbl_80543BE4
lbl_80543BCC:
/* 80543BCC  7F A3 EB 78 */	mr r3, r29
/* 80543BD0  38 80 00 17 */	li r4, 0x17
/* 80543BD4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80543BD8  38 A0 00 02 */	li r5, 2
/* 80543BDC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80543BE0  4B FF F3 B9 */	bl anm_init__FP15npc_henna_classifUcf
lbl_80543BE4:
/* 80543BE4  38 00 00 0C */	li r0, 0xc
/* 80543BE8  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 80543BEC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80543BF0  4B D2 3D 64 */	b cM_rndF__Ff
/* 80543BF4  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80543BF8  EC 00 08 2A */	fadds f0, f0, f1
/* 80543BFC  FC 00 00 1E */	fctiwz f0, f0
/* 80543C00  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80543C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80543C08  B0 1D 07 3C */	sth r0, 0x73c(r29)
/* 80543C0C  48 00 00 84 */	b lbl_80543C90
lbl_80543C10:
/* 80543C10  3B C0 00 00 */	li r30, 0
/* 80543C14  38 00 00 00 */	li r0, 0
/* 80543C18  98 1D 07 0D */	stb r0, 0x70d(r29)
/* 80543C1C  38 00 00 05 */	li r0, 5
/* 80543C20  98 1D 07 09 */	stb r0, 0x709(r29)
/* 80543C24  A8 1D 07 3C */	lha r0, 0x73c(r29)
/* 80543C28  2C 00 00 00 */	cmpwi r0, 0
/* 80543C2C  41 82 00 10 */	beq lbl_80543C3C
/* 80543C30  A8 1D 07 52 */	lha r0, 0x752(r29)
/* 80543C34  2C 00 00 00 */	cmpwi r0, 0
/* 80543C38  41 82 00 58 */	beq lbl_80543C90
lbl_80543C3C:
/* 80543C3C  7F A3 EB 78 */	mr r3, r29
/* 80543C40  38 80 00 20 */	li r4, 0x20
/* 80543C44  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80543C48  38 A0 00 02 */	li r5, 2
/* 80543C4C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80543C50  4B FF F3 49 */	bl anm_init__FP15npc_henna_classifUcf
/* 80543C54  38 00 00 05 */	li r0, 5
/* 80543C58  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 80543C5C  38 00 00 00 */	li r0, 0
/* 80543C60  90 1D 06 88 */	stw r0, 0x688(r29)
/* 80543C64  90 1D 06 54 */	stw r0, 0x654(r29)
/* 80543C68  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80543C6C  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 80543C70  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80543C74  4B D2 3C E0 */	b cM_rndF__Ff
/* 80543C78  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80543C7C  EC 00 08 2A */	fadds f0, f0, f1
/* 80543C80  FC 00 00 1E */	fctiwz f0, f0
/* 80543C84  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80543C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80543C8C  B0 1D 07 46 */	sth r0, 0x746(r29)
lbl_80543C90:
/* 80543C90  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80543C94  A8 7D 06 20 */	lha r3, 0x620(r29)
/* 80543C98  7C 00 18 50 */	subf r0, r0, r3
/* 80543C9C  7C 00 07 34 */	extsh r0, r0
/* 80543CA0  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80543CA4  41 81 00 0C */	bgt lbl_80543CB0
/* 80543CA8  2C 00 E0 00 */	cmpwi r0, -8192
/* 80543CAC  40 80 00 20 */	bge lbl_80543CCC
lbl_80543CB0:
/* 80543CB0  7C 00 07 35 */	extsh. r0, r0
/* 80543CB4  40 81 00 10 */	ble lbl_80543CC4
/* 80543CB8  38 03 E0 00 */	addi r0, r3, -8192
/* 80543CBC  B0 1D 06 18 */	sth r0, 0x618(r29)
/* 80543CC0  48 00 00 0C */	b lbl_80543CCC
lbl_80543CC4:
/* 80543CC4  38 03 20 00 */	addi r0, r3, 0x2000
/* 80543CC8  B0 1D 06 18 */	sth r0, 0x618(r29)
lbl_80543CCC:
/* 80543CCC  A8 1D 07 52 */	lha r0, 0x752(r29)
/* 80543CD0  2C 00 00 50 */	cmpwi r0, 0x50
/* 80543CD4  41 80 00 30 */	blt lbl_80543D04
/* 80543CD8  A8 1D 07 54 */	lha r0, 0x754(r29)
/* 80543CDC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80543CE0  40 81 00 24 */	ble lbl_80543D04
/* 80543CE4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80543CE8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80543CEC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80543CF0  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 80543CF4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80543CF8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80543CFC  4B D2 39 78 */	b cM_atan2s__Fff
/* 80543D00  B0 7D 06 18 */	sth r3, 0x618(r29)
lbl_80543D04:
/* 80543D04  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80543D08  A8 9D 06 18 */	lha r4, 0x618(r29)
/* 80543D0C  38 A0 00 02 */	li r5, 2
/* 80543D10  7F C6 F3 78 */	mr r6, r30
/* 80543D14  4B D2 C8 F4 */	b cLib_addCalcAngleS2__FPssss
/* 80543D18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80543D1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80543D20  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 80543D24  7F 83 E3 78 */	mr r3, r28
/* 80543D28  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80543D2C  3B C4 72 88 */	addi r30, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80543D30  A0 9E 03 9A */	lhz r4, 0x39a(r30)
/* 80543D34  4B AF 0C 88 */	b isEventBit__11dSv_event_cCFUs
/* 80543D38  2C 03 00 00 */	cmpwi r3, 0
/* 80543D3C  41 82 00 14 */	beq lbl_80543D50
/* 80543D40  3C 60 80 45 */	lis r3, struct_80450C9C+0x0@ha
/* 80543D44  88 03 0C 9C */	lbz r0, struct_80450C9C+0x0@l(r3)
/* 80543D48  28 00 00 00 */	cmplwi r0, 0
/* 80543D4C  41 82 00 6C */	beq lbl_80543DB8
lbl_80543D50:
/* 80543D50  88 1D 07 D7 */	lbz r0, 0x7d7(r29)
/* 80543D54  28 00 00 00 */	cmplwi r0, 0
/* 80543D58  40 82 00 60 */	bne lbl_80543DB8
/* 80543D5C  A8 1D 06 A0 */	lha r0, 0x6a0(r29)
/* 80543D60  2C 00 00 38 */	cmpwi r0, 0x38
/* 80543D64  40 82 00 54 */	bne lbl_80543DB8
/* 80543D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80543D6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80543D70  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80543D74  4B AF E6 F4 */	b reset__14dEvt_control_cFv
/* 80543D78  3C 60 80 45 */	lis r3, struct_80450C9C+0x0@ha
/* 80543D7C  8C 03 0C 9C */	lbzu r0, struct_80450C9C+0x0@l(r3)
/* 80543D80  28 00 00 00 */	cmplwi r0, 0
/* 80543D84  41 82 00 18 */	beq lbl_80543D9C
/* 80543D88  38 00 00 00 */	li r0, 0
/* 80543D8C  98 03 00 00 */	stb r0, 0(r3)
/* 80543D90  38 00 00 3C */	li r0, 0x3c
/* 80543D94  B0 1D 07 52 */	sth r0, 0x752(r29)
/* 80543D98  48 00 00 18 */	b lbl_80543DB0
lbl_80543D9C:
/* 80543D9C  7F 83 E3 78 */	mr r3, r28
/* 80543DA0  A0 9E 03 9A */	lhz r4, 0x39a(r30)
/* 80543DA4  4B AF 0B E8 */	b onEventBit__11dSv_event_cFUs
/* 80543DA8  38 00 00 01 */	li r0, 1
/* 80543DAC  B0 1D 07 52 */	sth r0, 0x752(r29)
lbl_80543DB0:
/* 80543DB0  38 00 00 01 */	li r0, 1
/* 80543DB4  98 1D 07 D7 */	stb r0, 0x7d7(r29)
lbl_80543DB8:
/* 80543DB8  A8 7D 07 42 */	lha r3, 0x742(r29)
/* 80543DBC  7C 60 07 35 */	extsh. r0, r3
/* 80543DC0  41 82 00 48 */	beq lbl_80543E08
/* 80543DC4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80543DC8  41 82 00 40 */	beq lbl_80543E08
/* 80543DCC  38 00 00 4F */	li r0, 0x4f
/* 80543DD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80543DD4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80543DD8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80543DDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80543DE0  38 81 00 0C */	addi r4, r1, 0xc
/* 80543DE4  38 A0 00 00 */	li r5, 0
/* 80543DE8  38 C0 00 00 */	li r6, 0
/* 80543DEC  38 E0 00 00 */	li r7, 0
/* 80543DF0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80543DF4  FC 40 08 90 */	fmr f2, f1
/* 80543DF8  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80543DFC  FC 80 18 90 */	fmr f4, f3
/* 80543E00  39 00 00 00 */	li r8, 0
/* 80543E04  4B D6 7B 80 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80543E08:
/* 80543E08  A8 1D 07 44 */	lha r0, 0x744(r29)
/* 80543E0C  2C 00 00 00 */	cmpwi r0, 0
/* 80543E10  41 82 00 40 */	beq lbl_80543E50
/* 80543E14  38 00 00 4A */	li r0, 0x4a
/* 80543E18  90 01 00 08 */	stw r0, 8(r1)
/* 80543E1C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80543E20  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80543E24  80 63 00 00 */	lwz r3, 0(r3)
/* 80543E28  38 81 00 08 */	addi r4, r1, 8
/* 80543E2C  38 A0 00 00 */	li r5, 0
/* 80543E30  38 C0 00 00 */	li r6, 0
/* 80543E34  38 E0 00 00 */	li r7, 0
/* 80543E38  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80543E3C  FC 40 08 90 */	fmr f2, f1
/* 80543E40  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80543E44  FC 80 18 90 */	fmr f4, f3
/* 80543E48  39 00 00 00 */	li r8, 0
/* 80543E4C  4B D6 7B 38 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80543E50:
/* 80543E50  39 61 00 30 */	addi r11, r1, 0x30
/* 80543E54  4B E1 E3 D0 */	b _restgpr_28
/* 80543E58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80543E5C  7C 08 03 A6 */	mtlr r0
/* 80543E60  38 21 00 30 */	addi r1, r1, 0x30
/* 80543E64  4E 80 00 20 */	blr 
