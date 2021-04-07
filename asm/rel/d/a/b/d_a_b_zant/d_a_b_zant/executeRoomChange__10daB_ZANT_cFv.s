lbl_8064B868:
/* 8064B868  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8064B86C  7C 08 02 A6 */	mflr r0
/* 8064B870  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8064B874  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8064B878  4B D1 69 59 */	bl _savegpr_26
/* 8064B87C  7C 7B 1B 78 */	mr r27, r3
/* 8064B880  3C 60 80 65 */	lis r3, lit_3757@ha /* 0x8064EB1C@ha */
/* 8064B884  3B C3 EB 1C */	addi r30, r3, lit_3757@l /* 0x8064EB1C@l */
/* 8064B888  4B B3 5D B9 */	bl dCam_getBody__Fv
/* 8064B88C  7C 7C 1B 78 */	mr r28, r3
/* 8064B890  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8064B894  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8064B898  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8064B89C  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8064B8A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064B8A4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064B8A8  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 8064B8AC  80 1B 06 DC */	lwz r0, 0x6dc(r27)
/* 8064B8B0  28 00 00 10 */	cmplwi r0, 0x10
/* 8064B8B4  41 81 08 88 */	bgt lbl_8064C13C
/* 8064B8B8  3C 60 80 65 */	lis r3, lit_9790@ha /* 0x8064F368@ha */
/* 8064B8BC  38 63 F3 68 */	addi r3, r3, lit_9790@l /* 0x8064F368@l */
/* 8064B8C0  54 00 10 3A */	slwi r0, r0, 2
/* 8064B8C4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8064B8C8  7C 09 03 A6 */	mtctr r0
/* 8064B8CC  4E 80 04 20 */	bctr 
lbl_8064B8D0:
/* 8064B8D0  7F 63 DB 78 */	mr r3, r27
/* 8064B8D4  38 80 00 00 */	li r4, 0
/* 8064B8D8  4B FF 46 95 */	bl setTgHitBit__10daB_ZANT_cFi
/* 8064B8DC  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 8064B8E0  28 00 00 02 */	cmplwi r0, 2
/* 8064B8E4  41 82 00 2C */	beq lbl_8064B910
/* 8064B8E8  7F 63 DB 78 */	mr r3, r27
/* 8064B8EC  38 80 00 02 */	li r4, 2
/* 8064B8F0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8064B8F4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8064B8F8  38 C0 00 00 */	li r6, 0
/* 8064B8FC  4B 9D 00 0D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8064B900  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 8064B904  60 00 00 02 */	ori r0, r0, 2
/* 8064B908  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 8064B90C  48 00 08 9C */	b lbl_8064C1A8
lbl_8064B910:
/* 8064B910  7F 83 E3 78 */	mr r3, r28
/* 8064B914  4B B1 5B BD */	bl Stop__9dCamera_cFv
/* 8064B918  7F 83 E3 78 */	mr r3, r28
/* 8064B91C  38 80 00 03 */	li r4, 3
/* 8064B920  4B B1 76 ED */	bl SetTrimSize__9dCamera_cFl
/* 8064B924  4B B3 5D 1D */	bl dCam_getBody__Fv
/* 8064B928  7C 64 1B 78 */	mr r4, r3
/* 8064B92C  38 61 00 6C */	addi r3, r1, 0x6c
/* 8064B930  4B B3 65 69 */	bl Center__9dCamera_cFv
/* 8064B934  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8064B938  D0 1B 07 6C */	stfs f0, 0x76c(r27)
/* 8064B93C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8064B940  D0 1B 07 70 */	stfs f0, 0x770(r27)
/* 8064B944  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8064B948  D0 1B 07 74 */	stfs f0, 0x774(r27)
/* 8064B94C  4B B3 5C F5 */	bl dCam_getBody__Fv
/* 8064B950  7C 64 1B 78 */	mr r4, r3
/* 8064B954  38 61 00 60 */	addi r3, r1, 0x60
/* 8064B958  4B B3 65 0D */	bl Eye__9dCamera_cFv
/* 8064B95C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8064B960  D0 1B 07 60 */	stfs f0, 0x760(r27)
/* 8064B964  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8064B968  D0 1B 07 64 */	stfs f0, 0x764(r27)
/* 8064B96C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8064B970  D0 1B 07 68 */	stfs f0, 0x768(r27)
/* 8064B974  4B B3 5C CD */	bl dCam_getBody__Fv
/* 8064B978  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 8064B97C  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 8064B980  EC 01 00 2A */	fadds f0, f1, f0
/* 8064B984  D0 1B 07 78 */	stfs f0, 0x778(r27)
/* 8064B988  38 00 00 00 */	li r0, 0
/* 8064B98C  98 1B 07 05 */	stb r0, 0x705(r27)
/* 8064B990  38 00 00 01 */	li r0, 1
/* 8064B994  90 1B 06 DC */	stw r0, 0x6dc(r27)
/* 8064B998  88 1B 06 FB */	lbz r0, 0x6fb(r27)
/* 8064B99C  28 00 00 04 */	cmplwi r0, 4
/* 8064B9A0  41 82 00 1C */	beq lbl_8064B9BC
/* 8064B9A4  7F 63 DB 78 */	mr r3, r27
/* 8064B9A8  38 80 00 12 */	li r4, 0x12
/* 8064B9AC  38 A0 00 02 */	li r5, 2
/* 8064B9B0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8064B9B4  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8064B9B8  4B FF 2C 0D */	bl setBck__10daB_ZANT_cFiUcff
lbl_8064B9BC:
/* 8064B9BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064B9C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064B9C4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8064B9C8  38 80 00 00 */	li r4, 0
/* 8064B9CC  90 81 00 08 */	stw r4, 8(r1)
/* 8064B9D0  38 00 FF FF */	li r0, -1
/* 8064B9D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8064B9D8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8064B9DC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8064B9E0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8064B9E4  38 80 00 00 */	li r4, 0
/* 8064B9E8  3C A0 00 01 */	lis r5, 0x0001 /* 0x000088FE@ha */
/* 8064B9EC  38 A5 88 FE */	addi r5, r5, 0x88FE /* 0x000088FE@l */
/* 8064B9F0  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 8064B9F4  38 E0 00 00 */	li r7, 0
/* 8064B9F8  39 1B 04 E4 */	addi r8, r27, 0x4e4
/* 8064B9FC  39 20 00 00 */	li r9, 0
/* 8064BA00  39 40 00 FF */	li r10, 0xff
/* 8064BA04  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8064BA08  4B A0 10 89 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8064BA0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070403@ha */
/* 8064BA10  38 03 04 03 */	addi r0, r3, 0x0403 /* 0x00070403@l */
/* 8064BA14  90 01 00 28 */	stw r0, 0x28(r1)
/* 8064BA18  38 7B 05 F0 */	addi r3, r27, 0x5f0
/* 8064BA1C  38 81 00 28 */	addi r4, r1, 0x28
/* 8064BA20  38 A0 00 00 */	li r5, 0
/* 8064BA24  38 C0 FF FF */	li r6, -1
/* 8064BA28  81 9B 05 F0 */	lwz r12, 0x5f0(r27)
/* 8064BA2C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8064BA30  7D 89 03 A6 */	mtctr r12
/* 8064BA34  4E 80 04 21 */	bctrl 
/* 8064BA38  48 00 07 04 */	b lbl_8064C13C
lbl_8064BA3C:
/* 8064BA3C  7F 63 DB 78 */	mr r3, r27
/* 8064BA40  38 80 00 00 */	li r4, 0
/* 8064BA44  4B FF 51 DD */	bl calcScale__10daB_ZANT_cFi
/* 8064BA48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8064BA4C  41 82 06 F0 */	beq lbl_8064C13C
/* 8064BA50  38 00 00 04 */	li r0, 4
/* 8064BA54  90 1B 06 DC */	stw r0, 0x6dc(r27)
/* 8064BA58  3C 60 80 65 */	lis r3, l_HIO@ha /* 0x8064F604@ha */
/* 8064BA5C  38 63 F6 04 */	addi r3, r3, l_HIO@l /* 0x8064F604@l */
/* 8064BA60  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8064BA64  FC 00 00 1E */	fctiwz f0, f0
/* 8064BA68  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 8064BA6C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8064BA70  90 1B 06 E8 */	stw r0, 0x6e8(r27)
/* 8064BA74  48 00 06 C8 */	b lbl_8064C13C
lbl_8064BA78:
/* 8064BA78  80 1B 06 E8 */	lwz r0, 0x6e8(r27)
/* 8064BA7C  2C 00 00 00 */	cmpwi r0, 0
/* 8064BA80  40 82 06 BC */	bne lbl_8064C13C
/* 8064BA84  38 00 00 0A */	li r0, 0xa
/* 8064BA88  90 1B 06 DC */	stw r0, 0x6dc(r27)
/* 8064BA8C  38 00 00 0F */	li r0, 0xf
/* 8064BA90  90 1B 06 E8 */	stw r0, 0x6e8(r27)
/* 8064BA94  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 8064BA98  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 8064BA9C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 8064BAA0  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 8064BAA4  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8064BAA8  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 8064BAAC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8064BAB0  D0 1B 04 BC */	stfs f0, 0x4bc(r27)
/* 8064BAB4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8064BAB8  D0 1B 04 C0 */	stfs f0, 0x4c0(r27)
/* 8064BABC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8064BAC0  D0 1B 04 C4 */	stfs f0, 0x4c4(r27)
/* 8064BAC4  D0 3B 05 2C */	stfs f1, 0x52c(r27)
/* 8064BAC8  D0 3B 04 FC */	stfs f1, 0x4fc(r27)
/* 8064BACC  D0 3B 05 30 */	stfs f1, 0x530(r27)
/* 8064BAD0  38 00 00 00 */	li r0, 0
/* 8064BAD4  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 8064BAD8  38 00 80 00 */	li r0, -32768
/* 8064BADC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8064BAE0  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8064BAE4  7F 63 DB 78 */	mr r3, r27
/* 8064BAE8  38 80 00 12 */	li r4, 0x12
/* 8064BAEC  38 A0 00 02 */	li r5, 2
/* 8064BAF0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8064BAF4  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8064BAF8  4B FF 2A CD */	bl setBck__10daB_ZANT_cFiUcff
/* 8064BAFC  7F A3 EB 78 */	mr r3, r29
/* 8064BB00  38 81 00 84 */	addi r4, r1, 0x84
/* 8064BB04  38 A0 00 00 */	li r5, 0
/* 8064BB08  38 C0 00 00 */	li r6, 0
/* 8064BB0C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8064BB10  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8064BB14  7D 89 03 A6 */	mtctr r12
/* 8064BB18  4E 80 04 21 */	bctrl 
/* 8064BB1C  38 00 00 03 */	li r0, 3
/* 8064BB20  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 8064BB24  38 60 00 00 */	li r3, 0
/* 8064BB28  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 8064BB2C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8064BB30  D0 1D 06 1C */	stfs f0, 0x61c(r29)
/* 8064BB34  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8064BB38  D0 1D 06 20 */	stfs f0, 0x620(r29)
/* 8064BB3C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8064BB40  D0 1D 06 24 */	stfs f0, 0x624(r29)
/* 8064BB44  38 00 00 17 */	li r0, 0x17
/* 8064BB48  90 1D 06 14 */	stw r0, 0x614(r29)
/* 8064BB4C  38 00 00 01 */	li r0, 1
/* 8064BB50  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 8064BB54  38 00 00 04 */	li r0, 4
/* 8064BB58  90 1D 06 10 */	stw r0, 0x610(r29)
/* 8064BB5C  B0 7D 06 0A */	sth r3, 0x60a(r29)
/* 8064BB60  C0 1E 03 30 */	lfs f0, 0x330(r30)
/* 8064BB64  D0 1B 07 78 */	stfs f0, 0x778(r27)
/* 8064BB68  C0 1E 03 34 */	lfs f0, 0x334(r30)
/* 8064BB6C  D0 1B 07 60 */	stfs f0, 0x760(r27)
/* 8064BB70  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 8064BB74  D0 1B 07 64 */	stfs f0, 0x764(r27)
/* 8064BB78  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 8064BB7C  D0 1B 07 68 */	stfs f0, 0x768(r27)
/* 8064BB80  C0 1E 03 38 */	lfs f0, 0x338(r30)
/* 8064BB84  D0 1B 07 6C */	stfs f0, 0x76c(r27)
/* 8064BB88  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 8064BB8C  D0 1B 07 70 */	stfs f0, 0x770(r27)
/* 8064BB90  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 8064BB94  D0 1B 07 74 */	stfs f0, 0x774(r27)
/* 8064BB98  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8064BB9C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8064BBA0  80 63 00 00 */	lwz r3, 0(r3)
/* 8064BBA4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8064BBA8  38 80 00 0D */	li r4, 0xd
/* 8064BBAC  4B C6 43 E1 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 8064BBB0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064BBB4  D0 1B 07 7C */	stfs f0, 0x77c(r27)
/* 8064BBB8  7F 63 DB 78 */	mr r3, r27
/* 8064BBBC  38 80 00 00 */	li r4, 0
/* 8064BBC0  4B FF F8 DD */	bl calcRoomChangeCamera__10daB_ZANT_cFi
/* 8064BBC4  88 1B 06 FB */	lbz r0, 0x6fb(r27)
/* 8064BBC8  28 00 00 03 */	cmplwi r0, 3
/* 8064BBCC  40 82 00 44 */	bne lbl_8064BC10
/* 8064BBD0  3B 40 00 00 */	li r26, 0
/* 8064BBD4  3B A0 00 00 */	li r29, 0
/* 8064BBD8  3B C0 FF FF */	li r30, -1
lbl_8064BBDC:
/* 8064BBDC  3B FD 07 2C */	addi r31, r29, 0x72c
/* 8064BBE0  7C 7B F8 2E */	lwzx r3, r27, r31
/* 8064BBE4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8064BBE8  4B 9C DD D5 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8064BBEC  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8064BBF0  28 03 00 00 */	cmplwi r3, 0
/* 8064BBF4  41 82 00 0C */	beq lbl_8064BC00
/* 8064BBF8  4B 9C E0 85 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8064BBFC  7F DB F9 2E */	stwx r30, r27, r31
lbl_8064BC00:
/* 8064BC00  3B 5A 00 01 */	addi r26, r26, 1
/* 8064BC04  2C 1A 00 04 */	cmpwi r26, 4
/* 8064BC08  3B BD 00 04 */	addi r29, r29, 4
/* 8064BC0C  41 80 FF D0 */	blt lbl_8064BBDC
lbl_8064BC10:
/* 8064BC10  38 00 00 01 */	li r0, 1
/* 8064BC14  98 1B 06 FC */	stb r0, 0x6fc(r27)
/* 8064BC18  48 00 05 24 */	b lbl_8064C13C
lbl_8064BC1C:
/* 8064BC1C  7F 63 DB 78 */	mr r3, r27
/* 8064BC20  7F A4 EB 78 */	mr r4, r29
/* 8064BC24  4B 9C EA ED */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8064BC28  B0 7B 04 E6 */	sth r3, 0x4e6(r27)
/* 8064BC2C  7F 63 DB 78 */	mr r3, r27
/* 8064BC30  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8064BC34  4B 9C EB 05 */	bl fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8064BC38  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8064BC3C  7C 60 07 34 */	extsh r0, r3
/* 8064BC40  7C 00 00 D0 */	neg r0, r0
/* 8064BC44  C8 3E 01 80 */	lfd f1, 0x180(r30)
/* 8064BC48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8064BC4C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8064BC50  3C 00 43 30 */	lis r0, 0x4330
/* 8064BC54  90 01 00 90 */	stw r0, 0x90(r1)
/* 8064BC58  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8064BC5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8064BC60  EC 02 00 32 */	fmuls f0, f2, f0
/* 8064BC64  FC 00 00 1E */	fctiwz f0, f0
/* 8064BC68  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8064BC6C  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8064BC70  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 8064BC74  80 1B 06 E8 */	lwz r0, 0x6e8(r27)
/* 8064BC78  2C 00 00 00 */	cmpwi r0, 0
/* 8064BC7C  40 82 04 C0 */	bne lbl_8064C13C
/* 8064BC80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064BC84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064BC88  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8064BC8C  38 80 00 00 */	li r4, 0
/* 8064BC90  90 81 00 08 */	stw r4, 8(r1)
/* 8064BC94  38 00 FF FF */	li r0, -1
/* 8064BC98  90 01 00 0C */	stw r0, 0xc(r1)
/* 8064BC9C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8064BCA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8064BCA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8064BCA8  38 80 00 00 */	li r4, 0
/* 8064BCAC  3C A0 00 01 */	lis r5, 0x0001 /* 0x000088FE@ha */
/* 8064BCB0  38 A5 88 FE */	addi r5, r5, 0x88FE /* 0x000088FE@l */
/* 8064BCB4  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 8064BCB8  38 E0 00 00 */	li r7, 0
/* 8064BCBC  39 1B 04 E4 */	addi r8, r27, 0x4e4
/* 8064BCC0  39 20 00 00 */	li r9, 0
/* 8064BCC4  39 40 00 FF */	li r10, 0xff
/* 8064BCC8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8064BCCC  4B A0 0D C5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8064BCD0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070404@ha */
/* 8064BCD4  38 03 04 04 */	addi r0, r3, 0x0404 /* 0x00070404@l */
/* 8064BCD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8064BCDC  38 7B 05 F0 */	addi r3, r27, 0x5f0
/* 8064BCE0  38 81 00 24 */	addi r4, r1, 0x24
/* 8064BCE4  38 A0 00 00 */	li r5, 0
/* 8064BCE8  38 C0 FF FF */	li r6, -1
/* 8064BCEC  81 9B 05 F0 */	lwz r12, 0x5f0(r27)
/* 8064BCF0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8064BCF4  7D 89 03 A6 */	mtctr r12
/* 8064BCF8  4E 80 04 21 */	bctrl 
/* 8064BCFC  38 00 00 0B */	li r0, 0xb
/* 8064BD00  90 1B 06 DC */	stw r0, 0x6dc(r27)
/* 8064BD04  48 00 04 38 */	b lbl_8064C13C
lbl_8064BD08:
/* 8064BD08  7F 63 DB 78 */	mr r3, r27
/* 8064BD0C  7F A4 EB 78 */	mr r4, r29
/* 8064BD10  4B 9C EA 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8064BD14  B0 7B 04 E6 */	sth r3, 0x4e6(r27)
/* 8064BD18  7F 63 DB 78 */	mr r3, r27
/* 8064BD1C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8064BD20  4B 9C EA 19 */	bl fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8064BD24  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8064BD28  7C 60 07 34 */	extsh r0, r3
/* 8064BD2C  7C 00 00 D0 */	neg r0, r0
/* 8064BD30  C8 3E 01 80 */	lfd f1, 0x180(r30)
/* 8064BD34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8064BD38  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8064BD3C  3C 00 43 30 */	lis r0, 0x4330
/* 8064BD40  90 01 00 98 */	stw r0, 0x98(r1)
/* 8064BD44  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8064BD48  EC 00 08 28 */	fsubs f0, f0, f1
/* 8064BD4C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8064BD50  FC 00 00 1E */	fctiwz f0, f0
/* 8064BD54  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 8064BD58  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8064BD5C  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 8064BD60  7F 63 DB 78 */	mr r3, r27
/* 8064BD64  38 80 00 01 */	li r4, 1
/* 8064BD68  4B FF 4E B9 */	bl calcScale__10daB_ZANT_cFi
/* 8064BD6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8064BD70  41 82 03 CC */	beq lbl_8064C13C
/* 8064BD74  38 00 00 0C */	li r0, 0xc
/* 8064BD78  90 1B 06 DC */	stw r0, 0x6dc(r27)
/* 8064BD7C  38 00 00 14 */	li r0, 0x14
/* 8064BD80  90 1B 06 E8 */	stw r0, 0x6e8(r27)
/* 8064BD84  48 00 03 B8 */	b lbl_8064C13C
lbl_8064BD88:
/* 8064BD88  80 1B 06 E8 */	lwz r0, 0x6e8(r27)
/* 8064BD8C  2C 00 00 00 */	cmpwi r0, 0
/* 8064BD90  40 82 03 AC */	bne lbl_8064C13C
/* 8064BD94  38 00 00 0D */	li r0, 0xd
/* 8064BD98  90 1B 06 DC */	stw r0, 0x6dc(r27)
/* 8064BD9C  38 00 00 32 */	li r0, 0x32
/* 8064BDA0  90 1B 06 E8 */	stw r0, 0x6e8(r27)
/* 8064BDA4  48 00 03 98 */	b lbl_8064C13C
lbl_8064BDA8:
/* 8064BDA8  7F 63 DB 78 */	mr r3, r27
/* 8064BDAC  38 80 00 00 */	li r4, 0
/* 8064BDB0  4B FF F6 ED */	bl calcRoomChangeCamera__10daB_ZANT_cFi
/* 8064BDB4  80 1B 06 E8 */	lwz r0, 0x6e8(r27)
/* 8064BDB8  2C 00 00 00 */	cmpwi r0, 0
/* 8064BDBC  40 82 03 80 */	bne lbl_8064C13C
/* 8064BDC0  38 00 00 0E */	li r0, 0xe
/* 8064BDC4  90 1B 06 DC */	stw r0, 0x6dc(r27)
/* 8064BDC8  7F 63 DB 78 */	mr r3, r27
/* 8064BDCC  38 80 00 0D */	li r4, 0xd
/* 8064BDD0  38 A0 00 00 */	li r5, 0
/* 8064BDD4  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 8064BDD8  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8064BDDC  4B FF 27 E9 */	bl setBck__10daB_ZANT_cFiUcff
/* 8064BDE0  38 00 00 01 */	li r0, 1
/* 8064BDE4  98 1B 07 14 */	stb r0, 0x714(r27)
/* 8064BDE8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064BDEC  D0 1B 06 C8 */	stfs f0, 0x6c8(r27)
/* 8064BDF0  88 1B 06 FB */	lbz r0, 0x6fb(r27)
/* 8064BDF4  54 00 10 3A */	slwi r0, r0, 2
/* 8064BDF8  3C 60 80 65 */	lis r3, mahojin_se@ha /* 0x8064F350@ha */
/* 8064BDFC  38 63 F3 50 */	addi r3, r3, mahojin_se@l /* 0x8064F350@l */
/* 8064BE00  7C 03 00 2E */	lwzx r0, r3, r0
/* 8064BE04  90 01 00 20 */	stw r0, 0x20(r1)
/* 8064BE08  38 7B 05 F0 */	addi r3, r27, 0x5f0
/* 8064BE0C  38 81 00 20 */	addi r4, r1, 0x20
/* 8064BE10  38 A0 00 00 */	li r5, 0
/* 8064BE14  38 C0 FF FF */	li r6, -1
/* 8064BE18  81 9B 05 F0 */	lwz r12, 0x5f0(r27)
/* 8064BE1C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8064BE20  7D 89 03 A6 */	mtctr r12
/* 8064BE24  4E 80 04 21 */	bctrl 
/* 8064BE28  48 00 03 14 */	b lbl_8064C13C
lbl_8064BE2C:
/* 8064BE2C  38 7B 06 C8 */	addi r3, r27, 0x6c8
/* 8064BE30  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8064BE34  C0 5E 01 7C */	lfs f2, 0x17c(r30)
/* 8064BE38  4B C2 49 09 */	bl cLib_chaseF__FPfff
/* 8064BE3C  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 8064BE40  38 63 00 0C */	addi r3, r3, 0xc
/* 8064BE44  C0 3E 03 3C */	lfs f1, 0x33c(r30)
/* 8064BE48  4B CD C5 E5 */	bl checkPass__12J3DFrameCtrlFf
/* 8064BE4C  2C 03 00 00 */	cmpwi r3, 0
/* 8064BE50  41 82 00 28 */	beq lbl_8064BE78
/* 8064BE54  38 00 00 01 */	li r0, 1
/* 8064BE58  98 1B 05 E8 */	stb r0, 0x5e8(r27)
/* 8064BE5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8064BE60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8064BE64  80 63 00 00 */	lwz r3, 0(r3)
/* 8064BE68  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8064BE6C  88 9B 06 FB */	lbz r4, 0x6fb(r27)
/* 8064BE70  38 84 00 07 */	addi r4, r4, 7
/* 8064BE74  4B C6 41 19 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_8064BE78:
/* 8064BE78  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 8064BE7C  38 63 00 0C */	addi r3, r3, 0xc
/* 8064BE80  C0 3E 03 3C */	lfs f1, 0x33c(r30)
/* 8064BE84  4B CD C5 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 8064BE88  2C 03 00 00 */	cmpwi r3, 0
/* 8064BE8C  41 82 00 0C */	beq lbl_8064BE98
/* 8064BE90  38 00 00 1E */	li r0, 0x1e
/* 8064BE94  98 1B 07 15 */	stb r0, 0x715(r27)
lbl_8064BE98:
/* 8064BE98  7F 63 DB 78 */	mr r3, r27
/* 8064BE9C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8064BEA0  4B 9C E8 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8064BEA4  B0 7B 04 E6 */	sth r3, 0x4e6(r27)
/* 8064BEA8  7F 63 DB 78 */	mr r3, r27
/* 8064BEAC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8064BEB0  4B 9C E8 89 */	bl fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8064BEB4  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8064BEB8  7C 60 07 34 */	extsh r0, r3
/* 8064BEBC  7C 00 00 D0 */	neg r0, r0
/* 8064BEC0  C8 3E 01 80 */	lfd f1, 0x180(r30)
/* 8064BEC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8064BEC8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8064BECC  3C 00 43 30 */	lis r0, 0x4330
/* 8064BED0  90 01 00 98 */	stw r0, 0x98(r1)
/* 8064BED4  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8064BED8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8064BEDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8064BEE0  FC 00 00 1E */	fctiwz f0, f0
/* 8064BEE4  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 8064BEE8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8064BEEC  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 8064BEF0  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 8064BEF4  38 80 00 01 */	li r4, 1
/* 8064BEF8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8064BEFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8064BF00  40 82 00 18 */	bne lbl_8064BF18
/* 8064BF04  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8064BF08  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8064BF0C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8064BF10  41 82 00 08 */	beq lbl_8064BF18
/* 8064BF14  38 80 00 00 */	li r4, 0
lbl_8064BF18:
/* 8064BF18  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8064BF1C  41 82 02 20 */	beq lbl_8064C13C
/* 8064BF20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064BF24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064BF28  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8064BF2C  38 80 00 1F */	li r4, 0x1f
/* 8064BF30  4B A2 3E 65 */	bl StopQuake__12dVibration_cFi
/* 8064BF34  7F 63 DB 78 */	mr r3, r27
/* 8064BF38  38 80 00 0E */	li r4, 0xe
/* 8064BF3C  38 A0 00 02 */	li r5, 2
/* 8064BF40  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8064BF44  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8064BF48  4B FF 26 7D */	bl setBck__10daB_ZANT_cFiUcff
/* 8064BF4C  88 7B 06 FB */	lbz r3, 0x6fb(r27)
/* 8064BF50  38 03 00 01 */	addi r0, r3, 1
/* 8064BF54  98 1B 06 FB */	stb r0, 0x6fb(r27)
/* 8064BF58  88 1B 06 FB */	lbz r0, 0x6fb(r27)
/* 8064BF5C  28 00 00 07 */	cmplwi r0, 7
/* 8064BF60  41 80 00 0C */	blt lbl_8064BF6C
/* 8064BF64  38 00 00 00 */	li r0, 0
/* 8064BF68  98 1B 06 FB */	stb r0, 0x6fb(r27)
lbl_8064BF6C:
/* 8064BF6C  38 00 00 0F */	li r0, 0xf
/* 8064BF70  90 1B 06 DC */	stw r0, 0x6dc(r27)
/* 8064BF74  3C 60 80 65 */	lis r3, l_HIO@ha /* 0x8064F604@ha */
/* 8064BF78  38 63 F6 04 */	addi r3, r3, l_HIO@l /* 0x8064F604@l */
/* 8064BF7C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8064BF80  FC 00 00 1E */	fctiwz f0, f0
/* 8064BF84  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8064BF88  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8064BF8C  90 1B 06 E8 */	stw r0, 0x6e8(r27)
/* 8064BF90  7F 63 DB 78 */	mr r3, r27
/* 8064BF94  4B FF F7 09 */	bl initNextRoom__10daB_ZANT_cFv
/* 8064BF98  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064BF9C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8064BFA0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8064BFA4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8064BFA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064BFAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064BFB0  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 8064BFB4  38 81 00 78 */	addi r4, r1, 0x78
/* 8064BFB8  38 A0 00 00 */	li r5, 0
/* 8064BFBC  88 1B 06 FB */	lbz r0, 0x6fb(r27)
/* 8064BFC0  3C C0 80 65 */	lis r6, data_8064F030@ha /* 0x8064F030@ha */
/* 8064BFC4  38 C6 F0 30 */	addi r6, r6, data_8064F030@l /* 0x8064F030@l */
/* 8064BFC8  7C C6 00 AE */	lbzx r6, r6, r0
/* 8064BFCC  4B 9E 8F B5 */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
/* 8064BFD0  48 00 01 6C */	b lbl_8064C13C
lbl_8064BFD4:
/* 8064BFD4  80 1B 06 E8 */	lwz r0, 0x6e8(r27)
/* 8064BFD8  2C 00 00 00 */	cmpwi r0, 0
/* 8064BFDC  40 82 01 60 */	bne lbl_8064C13C
/* 8064BFE0  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8064BFE4  38 83 60 94 */	addi r4, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8064BFE8  88 1B 06 FB */	lbz r0, 0x6fb(r27)
/* 8064BFEC  3C 60 80 65 */	lis r3, data_8064F030@ha /* 0x8064F030@ha */
/* 8064BFF0  38 63 F0 30 */	addi r3, r3, data_8064F030@l /* 0x8064F030@l */
/* 8064BFF4  7C 03 00 AE */	lbzx r0, r3, r0
/* 8064BFF8  7C 00 07 74 */	extsb r0, r0
/* 8064BFFC  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8064C000  7C 64 02 14 */	add r3, r4, r0
/* 8064C004  88 03 03 F4 */	lbz r0, 0x3f4(r3)
/* 8064C008  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8064C00C  41 82 01 30 */	beq lbl_8064C13C
/* 8064C010  38 00 00 10 */	li r0, 0x10
/* 8064C014  90 1B 06 DC */	stw r0, 0x6dc(r27)
/* 8064C018  38 00 00 00 */	li r0, 0
/* 8064C01C  98 1B 07 14 */	stb r0, 0x714(r27)
/* 8064C020  D0 3B 06 C8 */	stfs f1, 0x6c8(r27)
/* 8064C024  7F 63 DB 78 */	mr r3, r27
/* 8064C028  38 80 00 13 */	li r4, 0x13
/* 8064C02C  38 A0 00 00 */	li r5, 0
/* 8064C030  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 8064C034  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8064C038  4B FF 25 8D */	bl setBck__10daB_ZANT_cFiUcff
/* 8064C03C  38 00 00 04 */	li r0, 4
/* 8064C040  98 1B 05 E8 */	stb r0, 0x5e8(r27)
/* 8064C044  48 00 00 F8 */	b lbl_8064C13C
lbl_8064C048:
/* 8064C048  38 7B 06 C8 */	addi r3, r27, 0x6c8
/* 8064C04C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8064C050  C0 5E 01 7C */	lfs f2, 0x17c(r30)
/* 8064C054  4B C2 46 ED */	bl cLib_chaseF__FPfff
/* 8064C058  7F A3 EB 78 */	mr r3, r29
/* 8064C05C  38 81 00 84 */	addi r4, r1, 0x84
/* 8064C060  38 A0 00 00 */	li r5, 0
/* 8064C064  38 C0 00 00 */	li r6, 0
/* 8064C068  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8064C06C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8064C070  7D 89 03 A6 */	mtctr r12
/* 8064C074  4E 80 04 21 */	bctrl 
/* 8064C078  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 8064C07C  38 80 00 01 */	li r4, 1
/* 8064C080  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8064C084  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8064C088  40 82 00 18 */	bne lbl_8064C0A0
/* 8064C08C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8064C090  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8064C094  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8064C098  41 82 00 08 */	beq lbl_8064C0A0
/* 8064C09C  38 80 00 00 */	li r4, 0
lbl_8064C0A0:
/* 8064C0A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8064C0A4  41 82 00 98 */	beq lbl_8064C13C
/* 8064C0A8  88 1B 06 FB */	lbz r0, 0x6fb(r27)
/* 8064C0AC  28 00 00 06 */	cmplwi r0, 6
/* 8064C0B0  41 82 00 68 */	beq lbl_8064C118
/* 8064C0B4  C0 1B 07 6C */	lfs f0, 0x76c(r27)
/* 8064C0B8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8064C0BC  C0 1B 07 70 */	lfs f0, 0x770(r27)
/* 8064C0C0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8064C0C4  C0 1B 07 74 */	lfs f0, 0x774(r27)
/* 8064C0C8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8064C0CC  C0 1B 07 60 */	lfs f0, 0x760(r27)
/* 8064C0D0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8064C0D4  C0 1B 07 64 */	lfs f0, 0x764(r27)
/* 8064C0D8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8064C0DC  C0 1B 07 68 */	lfs f0, 0x768(r27)
/* 8064C0E0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8064C0E4  7F 83 E3 78 */	mr r3, r28
/* 8064C0E8  38 81 00 54 */	addi r4, r1, 0x54
/* 8064C0EC  38 A1 00 48 */	addi r5, r1, 0x48
/* 8064C0F0  4B B3 4B 29 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 8064C0F4  7F 83 E3 78 */	mr r3, r28
/* 8064C0F8  4B B1 53 B5 */	bl Start__9dCamera_cFv
/* 8064C0FC  7F 83 E3 78 */	mr r3, r28
/* 8064C100  38 80 00 00 */	li r4, 0
/* 8064C104  4B B1 6F 09 */	bl SetTrimSize__9dCamera_cFl
/* 8064C108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064C10C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064C110  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8064C114  4B 9F 63 55 */	bl reset__14dEvt_control_cFv
lbl_8064C118:
/* 8064C118  38 00 00 00 */	li r0, 0
/* 8064C11C  98 1B 06 FC */	stb r0, 0x6fc(r27)
/* 8064C120  7F 63 DB 78 */	mr r3, r27
/* 8064C124  38 80 00 01 */	li r4, 1
/* 8064C128  4B FF 3E 45 */	bl setTgHitBit__10daB_ZANT_cFi
/* 8064C12C  7F 63 DB 78 */	mr r3, r27
/* 8064C130  38 80 00 01 */	li r4, 1
/* 8064C134  48 00 00 8D */	bl setBaseActionMode__10daB_ZANT_cFi
/* 8064C138  48 00 00 70 */	b lbl_8064C1A8
lbl_8064C13C:
/* 8064C13C  88 1B 07 15 */	lbz r0, 0x715(r27)
/* 8064C140  28 00 00 00 */	cmplwi r0, 0
/* 8064C144  41 82 00 1C */	beq lbl_8064C160
/* 8064C148  7F 63 DB 78 */	mr r3, r27
/* 8064C14C  38 80 00 01 */	li r4, 1
/* 8064C150  4B FF F3 4D */	bl calcRoomChangeCamera__10daB_ZANT_cFi
/* 8064C154  88 7B 07 15 */	lbz r3, 0x715(r27)
/* 8064C158  38 03 FF FF */	addi r0, r3, -1
/* 8064C15C  98 1B 07 15 */	stb r0, 0x715(r27)
lbl_8064C160:
/* 8064C160  C0 1B 07 6C */	lfs f0, 0x76c(r27)
/* 8064C164  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8064C168  C0 1B 07 70 */	lfs f0, 0x770(r27)
/* 8064C16C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8064C170  C0 1B 07 74 */	lfs f0, 0x774(r27)
/* 8064C174  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8064C178  C0 1B 07 60 */	lfs f0, 0x760(r27)
/* 8064C17C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8064C180  C0 1B 07 64 */	lfs f0, 0x764(r27)
/* 8064C184  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8064C188  C0 1B 07 68 */	lfs f0, 0x768(r27)
/* 8064C18C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8064C190  7F 83 E3 78 */	mr r3, r28
/* 8064C194  38 81 00 3C */	addi r4, r1, 0x3c
/* 8064C198  38 A1 00 30 */	addi r5, r1, 0x30
/* 8064C19C  C0 3B 07 78 */	lfs f1, 0x778(r27)
/* 8064C1A0  38 C0 00 00 */	li r6, 0
/* 8064C1A4  4B B3 49 3D */	bl Set__9dCamera_cF4cXyz4cXyzfs
lbl_8064C1A8:
/* 8064C1A8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8064C1AC  4B D1 60 71 */	bl _restgpr_26
/* 8064C1B0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8064C1B4  7C 08 03 A6 */	mtlr r0
/* 8064C1B8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8064C1BC  4E 80 00 20 */	blr 
