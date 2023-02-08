lbl_808476B0:
/* 808476B0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 808476B4  7C 08 02 A6 */	mflr r0
/* 808476B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 808476BC  39 61 00 60 */	addi r11, r1, 0x60
/* 808476C0  4B B1 AB 0D */	bl _savegpr_25
/* 808476C4  7C 79 1B 78 */	mr r25, r3
/* 808476C8  3C 60 80 85 */	lis r3, l_arcName@ha /* 0x80848E3C@ha */
/* 808476CC  3B E3 8E 3C */	addi r31, r3, l_arcName@l /* 0x80848E3C@l */
/* 808476D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808476D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808476D8  83 83 5D B8 */	lwz r28, 0x5db8(r3)
/* 808476DC  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 808476E0  28 1C 00 00 */	cmplwi r28, 0
/* 808476E4  41 82 07 48 */	beq lbl_80847E2C
/* 808476E8  38 A1 00 20 */	addi r5, r1, 0x20
/* 808476EC  38 60 00 00 */	li r3, 0
/* 808476F0  38 00 00 03 */	li r0, 3
/* 808476F4  7C 09 03 A6 */	mtctr r0
lbl_808476F8:
/* 808476F8  38 03 16 C4 */	addi r0, r3, 0x16c4
/* 808476FC  7C 1C 02 2E */	lhzx r0, r28, r0
/* 80847700  28 00 00 14 */	cmplwi r0, 0x14
/* 80847704  40 82 00 10 */	bne lbl_80847714
/* 80847708  38 00 00 16 */	li r0, 0x16
/* 8084770C  B0 05 00 00 */	sth r0, 0(r5)
/* 80847710  48 00 00 BC */	b lbl_808477CC
lbl_80847714:
/* 80847714  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80847718  28 00 00 15 */	cmplwi r0, 0x15
/* 8084771C  40 82 00 10 */	bne lbl_8084772C
/* 80847720  38 00 00 18 */	li r0, 0x18
/* 80847724  B0 05 00 00 */	sth r0, 0(r5)
/* 80847728  48 00 00 A4 */	b lbl_808477CC
lbl_8084772C:
/* 8084772C  28 00 00 16 */	cmplwi r0, 0x16
/* 80847730  40 82 00 10 */	bne lbl_80847740
/* 80847734  38 00 00 19 */	li r0, 0x19
/* 80847738  B0 05 00 00 */	sth r0, 0(r5)
/* 8084773C  48 00 00 90 */	b lbl_808477CC
lbl_80847740:
/* 80847740  28 00 00 0C */	cmplwi r0, 0xc
/* 80847744  40 82 00 10 */	bne lbl_80847754
/* 80847748  38 00 00 14 */	li r0, 0x14
/* 8084774C  B0 05 00 00 */	sth r0, 0(r5)
/* 80847750  48 00 00 7C */	b lbl_808477CC
lbl_80847754:
/* 80847754  28 00 00 0B */	cmplwi r0, 0xb
/* 80847758  40 82 00 10 */	bne lbl_80847768
/* 8084775C  38 00 00 12 */	li r0, 0x12
/* 80847760  B0 05 00 00 */	sth r0, 0(r5)
/* 80847764  48 00 00 68 */	b lbl_808477CC
lbl_80847768:
/* 80847768  28 00 00 0A */	cmplwi r0, 0xa
/* 8084776C  40 82 00 10 */	bne lbl_8084777C
/* 80847770  38 00 00 13 */	li r0, 0x13
/* 80847774  B0 05 00 00 */	sth r0, 0(r5)
/* 80847778  48 00 00 54 */	b lbl_808477CC
lbl_8084777C:
/* 8084777C  28 00 00 11 */	cmplwi r0, 0x11
/* 80847780  40 82 00 10 */	bne lbl_80847790
/* 80847784  38 00 00 0F */	li r0, 0xf
/* 80847788  B0 05 00 00 */	sth r0, 0(r5)
/* 8084778C  48 00 00 40 */	b lbl_808477CC
lbl_80847790:
/* 80847790  28 00 00 12 */	cmplwi r0, 0x12
/* 80847794  41 82 00 0C */	beq lbl_808477A0
/* 80847798  28 00 00 13 */	cmplwi r0, 0x13
/* 8084779C  40 82 00 10 */	bne lbl_808477AC
lbl_808477A0:
/* 808477A0  38 00 00 0E */	li r0, 0xe
/* 808477A4  B0 05 00 00 */	sth r0, 0(r5)
/* 808477A8  48 00 00 24 */	b lbl_808477CC
lbl_808477AC:
/* 808477AC  28 00 FF FF */	cmplwi r0, 0xffff
/* 808477B0  40 82 00 14 */	bne lbl_808477C4
/* 808477B4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 808477B8  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 808477BC  B0 05 00 00 */	sth r0, 0(r5)
/* 808477C0  48 00 00 0C */	b lbl_808477CC
lbl_808477C4:
/* 808477C4  38 00 00 1C */	li r0, 0x1c
/* 808477C8  B0 05 00 00 */	sth r0, 0(r5)
lbl_808477CC:
/* 808477CC  38 63 00 02 */	addi r3, r3, 2
/* 808477D0  38 A5 00 02 */	addi r5, r5, 2
/* 808477D4  42 00 FF 24 */	bdnz lbl_808476F8
/* 808477D8  83 B9 06 D0 */	lwz r29, 0x6d0(r25)
/* 808477DC  28 1D 00 00 */	cmplwi r29, 0
/* 808477E0  41 82 00 4C */	beq lbl_8084782C
/* 808477E4  C0 59 04 D8 */	lfs f2, 0x4d8(r25)
/* 808477E8  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 808477EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 808477F0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 808477F4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 808477F8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 808477FC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80847800  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80847804  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80847808  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8084780C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80847810  38 61 00 28 */	addi r3, r1, 0x28
/* 80847814  38 81 00 34 */	addi r4, r1, 0x34
/* 80847818  4B AF FB 85 */	bl PSVECSquareDistance
/* 8084781C  7F 23 CB 78 */	mr r3, r25
/* 80847820  7F A4 EB 78 */	mr r4, r29
/* 80847824  4B 7D 2F 79 */	bl fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80847828  7C 7B 1B 78 */	mr r27, r3
lbl_8084782C:
/* 8084782C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80847830  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80847834  3B 43 56 B8 */	addi r26, r3, 0x56b8
/* 80847838  7F 43 D3 78 */	mr r3, r26
/* 8084783C  38 80 00 00 */	li r4, 0
/* 80847840  4B 82 90 05 */	bl GetLockonList__12dAttention_cFl
/* 80847844  28 03 00 00 */	cmplwi r3, 0
/* 80847848  41 82 00 34 */	beq lbl_8084787C
/* 8084784C  7F 43 D3 78 */	mr r3, r26
/* 80847850  4B 82 BF 95 */	bl LockonTruth__12dAttention_cFv
/* 80847854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80847858  41 82 00 24 */	beq lbl_8084787C
/* 8084785C  7F 43 D3 78 */	mr r3, r26
/* 80847860  38 80 00 00 */	li r4, 0
/* 80847864  4B 82 8F E1 */	bl GetLockonList__12dAttention_cFl
/* 80847868  4B 82 BF FD */	bl getActor__10dAttList_cFv
/* 8084786C  7C 03 E8 40 */	cmplw r3, r29
/* 80847870  40 82 00 0C */	bne lbl_8084787C
/* 80847874  3B 40 00 01 */	li r26, 1
/* 80847878  48 00 00 08 */	b lbl_80847880
lbl_8084787C:
/* 8084787C  3B 40 00 00 */	li r26, 0
lbl_80847880:
/* 80847880  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80847884  28 00 00 0E */	cmplwi r0, 0xe
/* 80847888  40 82 00 AC */	bne lbl_80847934
/* 8084788C  88 19 06 DA */	lbz r0, 0x6da(r25)
/* 80847890  28 00 00 00 */	cmplwi r0, 0
/* 80847894  40 82 00 A0 */	bne lbl_80847934
/* 80847898  88 19 06 DB */	lbz r0, 0x6db(r25)
/* 8084789C  28 00 00 00 */	cmplwi r0, 0
/* 808478A0  40 82 00 94 */	bne lbl_80847934
/* 808478A4  88 19 06 DD */	lbz r0, 0x6dd(r25)
/* 808478A8  28 00 00 00 */	cmplwi r0, 0
/* 808478AC  40 82 00 88 */	bne lbl_80847934
/* 808478B0  7F C3 F3 78 */	mr r3, r30
/* 808478B4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 808478B8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 808478BC  7D 89 03 A6 */	mtctr r12
/* 808478C0  4E 80 04 21 */	bctrl 
/* 808478C4  28 03 00 00 */	cmplwi r3, 0
/* 808478C8  41 82 00 6C */	beq lbl_80847934
/* 808478CC  28 1D 00 00 */	cmplwi r29, 0
/* 808478D0  41 82 00 64 */	beq lbl_80847934
/* 808478D4  88 1D 1E 08 */	lbz r0, 0x1e08(r29)
/* 808478D8  28 00 00 00 */	cmplwi r0, 0
/* 808478DC  40 82 00 58 */	bne lbl_80847934
/* 808478E0  38 7F 00 08 */	addi r3, r31, 8
/* 808478E4  A8 03 00 02 */	lha r0, 2(r3)
/* 808478E8  7C 1B 00 00 */	cmpw r27, r0
/* 808478EC  40 80 00 0C */	bge lbl_808478F8
/* 808478F0  2C 1A 00 00 */	cmpwi r26, 0
/* 808478F4  40 82 00 34 */	bne lbl_80847928
lbl_808478F8:
/* 808478F8  88 19 06 D8 */	lbz r0, 0x6d8(r25)
/* 808478FC  28 00 00 00 */	cmplwi r0, 0
/* 80847900  41 82 00 34 */	beq lbl_80847934
/* 80847904  38 7F 00 08 */	addi r3, r31, 8
/* 80847908  A8 03 00 04 */	lha r0, 4(r3)
/* 8084790C  7C 1B 00 00 */	cmpw r27, r0
/* 80847910  40 80 00 24 */	bge lbl_80847934
/* 80847914  2C 1A 00 00 */	cmpwi r26, 0
/* 80847918  40 82 00 10 */	bne lbl_80847928
/* 8084791C  80 19 06 C8 */	lwz r0, 0x6c8(r25)
/* 80847920  28 00 00 00 */	cmplwi r0, 0
/* 80847924  41 82 00 10 */	beq lbl_80847934
lbl_80847928:
/* 80847928  38 00 00 01 */	li r0, 1
/* 8084792C  98 19 06 D8 */	stb r0, 0x6d8(r25)
/* 80847930  48 00 00 0C */	b lbl_8084793C
lbl_80847934:
/* 80847934  38 00 00 00 */	li r0, 0
/* 80847938  98 19 06 D8 */	stb r0, 0x6d8(r25)
lbl_8084793C:
/* 8084793C  3B 60 00 01 */	li r27, 1
/* 80847940  3B 40 00 00 */	li r26, 0
/* 80847944  38 00 00 00 */	li r0, 0
/* 80847948  98 19 06 DF */	stb r0, 0x6df(r25)
/* 8084794C  7F C3 F3 78 */	mr r3, r30
/* 80847950  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80847954  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80847958  7D 89 03 A6 */	mtctr r12
/* 8084795C  4E 80 04 21 */	bctrl 
/* 80847960  28 03 00 00 */	cmplwi r3, 0
/* 80847964  40 82 00 48 */	bne lbl_808479AC
/* 80847968  28 1D 00 00 */	cmplwi r29, 0
/* 8084796C  41 82 00 10 */	beq lbl_8084797C
/* 80847970  80 1D 1F C4 */	lwz r0, 0x1fc4(r29)
/* 80847974  2C 00 00 00 */	cmpwi r0, 0
/* 80847978  40 82 00 34 */	bne lbl_808479AC
lbl_8084797C:
/* 8084797C  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80847980  28 00 00 16 */	cmplwi r0, 0x16
/* 80847984  40 82 00 10 */	bne lbl_80847994
/* 80847988  38 00 00 17 */	li r0, 0x17
/* 8084798C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80847990  48 00 00 10 */	b lbl_808479A0
lbl_80847994:
/* 80847994  38 00 00 1B */	li r0, 0x1b
/* 80847998  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8084799C  3B 60 00 00 */	li r27, 0
lbl_808479A0:
/* 808479A0  38 00 00 01 */	li r0, 1
/* 808479A4  98 19 06 DF */	stb r0, 0x6df(r25)
/* 808479A8  48 00 00 54 */	b lbl_808479FC
lbl_808479AC:
/* 808479AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808479B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808479B4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 808479B8  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 808479BC  41 82 00 20 */	beq lbl_808479DC
/* 808479C0  38 00 00 07 */	li r0, 7
/* 808479C4  B0 01 00 20 */	sth r0, 0x20(r1)
/* 808479C8  3B 60 00 00 */	li r27, 0
/* 808479CC  38 00 00 01 */	li r0, 1
/* 808479D0  98 19 06 DD */	stb r0, 0x6dd(r25)
/* 808479D4  3B 40 00 01 */	li r26, 1
/* 808479D8  48 00 00 24 */	b lbl_808479FC
lbl_808479DC:
/* 808479DC  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 808479E0  28 00 00 5D */	cmplwi r0, 0x5d
/* 808479E4  40 82 00 18 */	bne lbl_808479FC
/* 808479E8  38 00 00 10 */	li r0, 0x10
/* 808479EC  B0 01 00 20 */	sth r0, 0x20(r1)
/* 808479F0  3B 60 00 00 */	li r27, 0
/* 808479F4  38 00 00 01 */	li r0, 1
/* 808479F8  98 19 06 DD */	stb r0, 0x6dd(r25)
lbl_808479FC:
/* 808479FC  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80847A00  28 00 00 1C */	cmplwi r0, 0x1c
/* 80847A04  41 82 00 0C */	beq lbl_80847A10
/* 80847A08  28 00 00 0E */	cmplwi r0, 0xe
/* 80847A0C  40 82 00 20 */	bne lbl_80847A2C
lbl_80847A10:
/* 80847A10  7F C3 F3 78 */	mr r3, r30
/* 80847A14  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80847A18  81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 80847A1C  7D 89 03 A6 */	mtctr r12
/* 80847A20  4E 80 04 21 */	bctrl 
/* 80847A24  2C 03 00 00 */	cmpwi r3, 0
/* 80847A28  41 82 00 90 */	beq lbl_80847AB8
lbl_80847A2C:
/* 80847A2C  7F 23 CB 78 */	mr r3, r25
/* 80847A30  4B FF F8 05 */	bl resetUpperAnime__11daHoZelda_cFv
/* 80847A34  A0 19 06 E4 */	lhz r0, 0x6e4(r25)
/* 80847A38  A0 81 00 20 */	lhz r4, 0x20(r1)
/* 80847A3C  7C 00 20 40 */	cmplw r0, r4
/* 80847A40  41 82 00 6C */	beq lbl_80847AAC
/* 80847A44  7F 23 CB 78 */	mr r3, r25
/* 80847A48  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80847A4C  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80847A50  38 A0 FF FF */	li r5, -1
/* 80847A54  C0 7C 17 50 */	lfs f3, 0x1750(r28)
/* 80847A58  4B FF F8 69 */	bl setSingleAnime__11daHoZelda_cFUsffsf
/* 80847A5C  88 19 06 DD */	lbz r0, 0x6dd(r25)
/* 80847A60  28 00 00 00 */	cmplwi r0, 0
/* 80847A64  41 82 00 48 */	beq lbl_80847AAC
/* 80847A68  2C 1A 00 00 */	cmpwi r26, 0
/* 80847A6C  41 82 00 24 */	beq lbl_80847A90
/* 80847A70  7F 23 CB 78 */	mr r3, r25
/* 80847A74  38 80 00 2C */	li r4, 0x2c
/* 80847A78  4B FF FA FD */	bl setEyeBtp__11daHoZelda_cFUs
/* 80847A7C  7F 23 CB 78 */	mr r3, r25
/* 80847A80  38 80 00 27 */	li r4, 0x27
/* 80847A84  38 A0 00 01 */	li r5, 1
/* 80847A88  4B FF FB 69 */	bl setEyeBtk__11daHoZelda_cFUsUc
/* 80847A8C  48 00 00 20 */	b lbl_80847AAC
lbl_80847A90:
/* 80847A90  7F 23 CB 78 */	mr r3, r25
/* 80847A94  38 80 00 2E */	li r4, 0x2e
/* 80847A98  4B FF FA DD */	bl setEyeBtp__11daHoZelda_cFUs
/* 80847A9C  7F 23 CB 78 */	mr r3, r25
/* 80847AA0  38 80 00 28 */	li r4, 0x28
/* 80847AA4  38 A0 00 01 */	li r5, 1
/* 80847AA8  4B FF FB 49 */	bl setEyeBtk__11daHoZelda_cFUsUc
lbl_80847AAC:
/* 80847AAC  7F 23 CB 78 */	mr r3, r25
/* 80847AB0  48 00 05 E1 */	bl deleteArrow__11daHoZelda_cFv
/* 80847AB4  48 00 03 3C */	b lbl_80847DF0
lbl_80847AB8:
/* 80847AB8  88 19 06 D8 */	lbz r0, 0x6d8(r25)
/* 80847ABC  28 00 00 00 */	cmplwi r0, 0
/* 80847AC0  41 82 02 08 */	beq lbl_80847CC8
/* 80847AC4  38 79 05 F8 */	addi r3, r25, 0x5f8
/* 80847AC8  4B 91 6A 05 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80847ACC  54 7A 06 3E */	clrlwi r26, r3, 0x18
/* 80847AD0  38 80 00 1A */	li r4, 0x1a
/* 80847AD4  B0 81 00 20 */	sth r4, 0x20(r1)
/* 80847AD8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80847ADC  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80847AE0  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80847AE4  A0 19 06 E8 */	lhz r0, 0x6e8(r25)
/* 80847AE8  28 00 00 09 */	cmplwi r0, 9
/* 80847AEC  40 82 00 1C */	bne lbl_80847B08
/* 80847AF0  2C 1A 00 00 */	cmpwi r26, 0
/* 80847AF4  41 82 01 A0 */	beq lbl_80847C94
/* 80847AF8  B0 81 00 24 */	sth r4, 0x24(r1)
/* 80847AFC  38 00 00 1E */	li r0, 0x1e
/* 80847B00  98 19 06 D9 */	stb r0, 0x6d9(r25)
/* 80847B04  48 00 01 90 */	b lbl_80847C94
lbl_80847B08:
/* 80847B08  28 00 00 0A */	cmplwi r0, 0xa
/* 80847B0C  40 82 00 8C */	bne lbl_80847B98
/* 80847B10  88 19 06 D9 */	lbz r0, 0x6d9(r25)
/* 80847B14  28 00 00 00 */	cmplwi r0, 0
/* 80847B18  40 82 00 50 */	bne lbl_80847B68
/* 80847B1C  38 00 00 09 */	li r0, 9
/* 80847B20  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80847B24  7F 23 CB 78 */	mr r3, r25
/* 80847B28  38 80 00 0C */	li r4, 0xc
/* 80847B2C  48 00 05 ED */	bl setBowBck__11daHoZelda_cFUs
/* 80847B30  7F 23 CB 78 */	mr r3, r25
/* 80847B34  48 00 05 25 */	bl shootArrow__11daHoZelda_cFv
/* 80847B38  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006001B@ha */
/* 80847B3C  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0006001B@l */
/* 80847B40  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80847B44  38 79 06 18 */	addi r3, r25, 0x618
/* 80847B48  38 81 00 1C */	addi r4, r1, 0x1c
/* 80847B4C  38 A0 00 00 */	li r5, 0
/* 80847B50  88 D9 06 E0 */	lbz r6, 0x6e0(r25)
/* 80847B54  81 99 06 18 */	lwz r12, 0x618(r25)
/* 80847B58  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80847B5C  7D 89 03 A6 */	mtctr r12
/* 80847B60  4E 80 04 21 */	bctrl 
/* 80847B64  48 00 01 30 */	b lbl_80847C94
lbl_80847B68:
/* 80847B68  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006007C@ha */
/* 80847B6C  38 03 00 7C */	addi r0, r3, 0x007C /* 0x0006007C@l */
/* 80847B70  90 01 00 18 */	stw r0, 0x18(r1)
/* 80847B74  38 79 06 18 */	addi r3, r25, 0x618
/* 80847B78  38 81 00 18 */	addi r4, r1, 0x18
/* 80847B7C  38 A0 00 00 */	li r5, 0
/* 80847B80  88 D9 06 E0 */	lbz r6, 0x6e0(r25)
/* 80847B84  81 99 06 18 */	lwz r12, 0x618(r25)
/* 80847B88  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80847B8C  7D 89 03 A6 */	mtctr r12
/* 80847B90  4E 80 04 21 */	bctrl 
/* 80847B94  48 00 01 00 */	b lbl_80847C94
lbl_80847B98:
/* 80847B98  28 00 00 08 */	cmplwi r0, 8
/* 80847B9C  40 82 00 4C */	bne lbl_80847BE8
/* 80847BA0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006007C@ha */
/* 80847BA4  38 03 00 7C */	addi r0, r3, 0x007C /* 0x0006007C@l */
/* 80847BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80847BAC  38 79 06 18 */	addi r3, r25, 0x618
/* 80847BB0  38 81 00 14 */	addi r4, r1, 0x14
/* 80847BB4  38 A0 00 00 */	li r5, 0
/* 80847BB8  88 D9 06 E0 */	lbz r6, 0x6e0(r25)
/* 80847BBC  81 99 06 18 */	lwz r12, 0x618(r25)
/* 80847BC0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80847BC4  7D 89 03 A6 */	mtctr r12
/* 80847BC8  4E 80 04 21 */	bctrl 
/* 80847BCC  2C 1A 00 00 */	cmpwi r26, 0
/* 80847BD0  41 82 00 C4 */	beq lbl_80847C94
/* 80847BD4  38 00 00 0A */	li r0, 0xa
/* 80847BD8  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80847BDC  38 00 00 1E */	li r0, 0x1e
/* 80847BE0  98 19 06 D9 */	stb r0, 0x6d9(r25)
/* 80847BE4  48 00 00 B0 */	b lbl_80847C94
lbl_80847BE8:
/* 80847BE8  28 00 00 1A */	cmplwi r0, 0x1a
/* 80847BEC  40 82 00 9C */	bne lbl_80847C88
/* 80847BF0  88 19 06 D9 */	lbz r0, 0x6d9(r25)
/* 80847BF4  28 00 00 00 */	cmplwi r0, 0
/* 80847BF8  40 82 00 9C */	bne lbl_80847C94
/* 80847BFC  38 00 00 00 */	li r0, 0
/* 80847C00  90 01 00 08 */	stw r0, 8(r1)
/* 80847C04  38 60 03 08 */	li r3, 0x308
/* 80847C08  38 80 02 00 */	li r4, 0x200
/* 80847C0C  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80847C10  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 80847C14  7C 06 07 74 */	extsb r6, r0
/* 80847C18  38 E0 00 00 */	li r7, 0
/* 80847C1C  39 00 00 00 */	li r8, 0
/* 80847C20  39 20 FF FF */	li r9, -1
/* 80847C24  39 40 00 00 */	li r10, 0
/* 80847C28  4B 7D 21 DD */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 80847C2C  7C 64 1B 78 */	mr r4, r3
/* 80847C30  38 79 06 C4 */	addi r3, r25, 0x6c4
/* 80847C34  4B 91 70 85 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 80847C38  80 19 06 C8 */	lwz r0, 0x6c8(r25)
/* 80847C3C  28 00 00 00 */	cmplwi r0, 0
/* 80847C40  41 82 00 54 */	beq lbl_80847C94
/* 80847C44  38 00 00 08 */	li r0, 8
/* 80847C48  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80847C4C  7F 23 CB 78 */	mr r3, r25
/* 80847C50  38 80 00 0B */	li r4, 0xb
/* 80847C54  48 00 04 C5 */	bl setBowBck__11daHoZelda_cFUs
/* 80847C58  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006001A@ha */
/* 80847C5C  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0006001A@l */
/* 80847C60  90 01 00 10 */	stw r0, 0x10(r1)
/* 80847C64  38 79 06 18 */	addi r3, r25, 0x618
/* 80847C68  38 81 00 10 */	addi r4, r1, 0x10
/* 80847C6C  38 A0 00 00 */	li r5, 0
/* 80847C70  88 D9 06 E0 */	lbz r6, 0x6e0(r25)
/* 80847C74  81 99 06 18 */	lwz r12, 0x618(r25)
/* 80847C78  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80847C7C  7D 89 03 A6 */	mtctr r12
/* 80847C80  4E 80 04 21 */	bctrl 
/* 80847C84  48 00 00 10 */	b lbl_80847C94
lbl_80847C88:
/* 80847C88  B0 81 00 24 */	sth r4, 0x24(r1)
/* 80847C8C  38 00 00 00 */	li r0, 0
/* 80847C90  98 19 06 D9 */	stb r0, 0x6d9(r25)
lbl_80847C94:
/* 80847C94  A0 81 00 24 */	lhz r4, 0x24(r1)
/* 80847C98  28 04 FF FF */	cmplwi r4, 0xffff
/* 80847C9C  41 82 01 54 */	beq lbl_80847DF0
/* 80847CA0  7F 23 CB 78 */	mr r3, r25
/* 80847CA4  4B FF F4 E9 */	bl setUpperAnime__11daHoZelda_cFUs
/* 80847CA8  7F 23 CB 78 */	mr r3, r25
/* 80847CAC  A0 81 00 20 */	lhz r4, 0x20(r1)
/* 80847CB0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80847CB4  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80847CB8  38 A0 FF FF */	li r5, -1
/* 80847CBC  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80847CC0  4B FF F6 01 */	bl setSingleAnime__11daHoZelda_cFUsffsf
/* 80847CC4  48 00 01 2C */	b lbl_80847DF0
lbl_80847CC8:
/* 80847CC8  88 19 06 DA */	lbz r0, 0x6da(r25)
/* 80847CCC  28 00 00 00 */	cmplwi r0, 0
/* 80847CD0  40 82 00 4C */	bne lbl_80847D1C
/* 80847CD4  88 19 06 DB */	lbz r0, 0x6db(r25)
/* 80847CD8  28 00 00 00 */	cmplwi r0, 0
/* 80847CDC  41 82 00 40 */	beq lbl_80847D1C
/* 80847CE0  38 00 00 01 */	li r0, 1
/* 80847CE4  98 19 06 DA */	stb r0, 0x6da(r25)
/* 80847CE8  38 00 00 00 */	li r0, 0
/* 80847CEC  98 19 06 D8 */	stb r0, 0x6d8(r25)
/* 80847CF0  7F 23 CB 78 */	mr r3, r25
/* 80847CF4  38 80 00 0D */	li r4, 0xd
/* 80847CF8  4B FF F4 95 */	bl setUpperAnime__11daHoZelda_cFUs
/* 80847CFC  7F 23 CB 78 */	mr r3, r25
/* 80847D00  38 80 00 2D */	li r4, 0x2d
/* 80847D04  4B FF F8 71 */	bl setEyeBtp__11daHoZelda_cFUs
/* 80847D08  7F 23 CB 78 */	mr r3, r25
/* 80847D0C  38 80 00 26 */	li r4, 0x26
/* 80847D10  38 A0 00 00 */	li r5, 0
/* 80847D14  4B FF F8 DD */	bl setEyeBtk__11daHoZelda_cFUsUc
/* 80847D18  48 00 00 50 */	b lbl_80847D68
lbl_80847D1C:
/* 80847D1C  88 19 06 DD */	lbz r0, 0x6dd(r25)
/* 80847D20  28 00 00 00 */	cmplwi r0, 0
/* 80847D24  41 82 00 14 */	beq lbl_80847D38
/* 80847D28  38 00 00 00 */	li r0, 0
/* 80847D2C  98 19 06 DD */	stb r0, 0x6dd(r25)
/* 80847D30  7F 23 CB 78 */	mr r3, r25
/* 80847D34  4B FF F9 3D */	bl setNormalFace__11daHoZelda_cFv
lbl_80847D38:
/* 80847D38  88 19 06 D8 */	lbz r0, 0x6d8(r25)
/* 80847D3C  28 00 00 00 */	cmplwi r0, 0
/* 80847D40  40 82 00 20 */	bne lbl_80847D60
/* 80847D44  88 19 06 DA */	lbz r0, 0x6da(r25)
/* 80847D48  28 00 00 00 */	cmplwi r0, 0
/* 80847D4C  41 82 00 1C */	beq lbl_80847D68
/* 80847D50  38 79 05 F8 */	addi r3, r25, 0x5f8
/* 80847D54  4B 91 67 79 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80847D58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80847D5C  41 82 00 0C */	beq lbl_80847D68
lbl_80847D60:
/* 80847D60  7F 23 CB 78 */	mr r3, r25
/* 80847D64  4B FF F4 D1 */	bl resetUpperAnime__11daHoZelda_cFv
lbl_80847D68:
/* 80847D68  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 80847D6C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80847D70  40 82 00 0C */	bne lbl_80847D7C
/* 80847D74  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80847D78  B0 01 00 22 */	sth r0, 0x22(r1)
lbl_80847D7C:
/* 80847D7C  A0 19 06 E6 */	lhz r0, 0x6e6(r25)
/* 80847D80  A0 A1 00 22 */	lhz r5, 0x22(r1)
/* 80847D84  7C 00 28 40 */	cmplw r0, r5
/* 80847D88  40 82 00 14 */	bne lbl_80847D9C
/* 80847D8C  A0 79 06 E4 */	lhz r3, 0x6e4(r25)
/* 80847D90  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80847D94  7C 03 00 40 */	cmplw r3, r0
/* 80847D98  41 82 00 20 */	beq lbl_80847DB8
lbl_80847D9C:
/* 80847D9C  7F 23 CB 78 */	mr r3, r25
/* 80847DA0  C0 3C 05 9C */	lfs f1, 0x59c(r28)
/* 80847DA4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80847DA8  FC 60 10 90 */	fmr f3, f2
/* 80847DAC  A0 81 00 20 */	lhz r4, 0x20(r1)
/* 80847DB0  C0 9C 17 50 */	lfs f4, 0x1750(r28)
/* 80847DB4  4B FF F1 99 */	bl setDoubleAnime__11daHoZelda_cFfffUsUsf
lbl_80847DB8:
/* 80847DB8  A0 19 06 E4 */	lhz r0, 0x6e4(r25)
/* 80847DBC  28 00 00 0E */	cmplwi r0, 0xe
/* 80847DC0  41 82 00 08 */	beq lbl_80847DC8
/* 80847DC4  3B 60 00 00 */	li r27, 0
lbl_80847DC8:
/* 80847DC8  A0 19 06 E6 */	lhz r0, 0x6e6(r25)
/* 80847DCC  28 00 00 0E */	cmplwi r0, 0xe
/* 80847DD0  40 82 00 18 */	bne lbl_80847DE8
/* 80847DD4  C0 1C 05 D8 */	lfs f0, 0x5d8(r28)
/* 80847DD8  D0 19 05 F0 */	stfs f0, 0x5f0(r25)
/* 80847DDC  C0 19 05 F0 */	lfs f0, 0x5f0(r25)
/* 80847DE0  80 79 05 B8 */	lwz r3, 0x5b8(r25)
/* 80847DE4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80847DE8:
/* 80847DE8  7F 23 CB 78 */	mr r3, r25
/* 80847DEC  48 00 02 A5 */	bl deleteArrow__11daHoZelda_cFv
lbl_80847DF0:
/* 80847DF0  2C 1B 00 00 */	cmpwi r27, 0
/* 80847DF4  41 82 00 38 */	beq lbl_80847E2C
/* 80847DF8  C0 1C 05 C0 */	lfs f0, 0x5c0(r28)
/* 80847DFC  D0 19 05 D8 */	stfs f0, 0x5d8(r25)
/* 80847E00  C0 19 05 D8 */	lfs f0, 0x5d8(r25)
/* 80847E04  80 79 05 B0 */	lwz r3, 0x5b0(r25)
/* 80847E08  D0 03 00 08 */	stfs f0, 8(r3)
/* 80847E0C  A0 19 06 E6 */	lhz r0, 0x6e6(r25)
/* 80847E10  28 00 00 1A */	cmplwi r0, 0x1a
/* 80847E14  40 82 00 18 */	bne lbl_80847E2C
/* 80847E18  C0 19 05 D8 */	lfs f0, 0x5d8(r25)
/* 80847E1C  D0 19 05 F0 */	stfs f0, 0x5f0(r25)
/* 80847E20  C0 19 05 F0 */	lfs f0, 0x5f0(r25)
/* 80847E24  80 79 05 B8 */	lwz r3, 0x5b8(r25)
/* 80847E28  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80847E2C:
/* 80847E2C  39 61 00 60 */	addi r11, r1, 0x60
/* 80847E30  4B B1 A3 E9 */	bl _restgpr_25
/* 80847E34  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80847E38  7C 08 03 A6 */	mtlr r0
/* 80847E3C  38 21 00 60 */	addi r1, r1, 0x60
/* 80847E40  4E 80 00 20 */	blr 
