lbl_801CB938:
/* 801CB938  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 801CB93C  7C 08 02 A6 */	mflr r0
/* 801CB940  90 01 01 34 */	stw r0, 0x134(r1)
/* 801CB944  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 801CB948  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 801CB94C  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 801CB950  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 801CB954  39 61 01 10 */	addi r11, r1, 0x110
/* 801CB958  48 19 68 49 */	bl _savegpr_14
/* 801CB95C  7C 6F 1B 78 */	mr r15, r3
/* 801CB960  7C 90 23 78 */	mr r16, r4
/* 801CB964  7C B1 2B 78 */	mr r17, r5
/* 801CB968  88 03 03 05 */	lbz r0, 0x305(r3)
/* 801CB96C  28 00 00 00 */	cmplwi r0, 0
/* 801CB970  41 82 00 0C */	beq lbl_801CB97C
/* 801CB974  38 60 00 00 */	li r3, 0
/* 801CB978  48 00 05 64 */	b lbl_801CBEDC
lbl_801CB97C:
/* 801CB97C  80 8F 00 8C */	lwz r4, 0x8c(r15)
/* 801CB980  80 64 00 04 */	lwz r3, 4(r4)
/* 801CB984  3B 23 00 04 */	addi r25, r3, 4
/* 801CB988  7F 24 CA 14 */	add r25, r4, r25
/* 801CB98C  3B 00 00 00 */	li r24, 0
/* 801CB990  38 00 00 00 */	li r0, 0
/* 801CB994  90 01 00 BC */	stw r0, 0xbc(r1)
/* 801CB998  3A E0 00 00 */	li r23, 0
/* 801CB99C  38 60 00 00 */	li r3, 0
/* 801CB9A0  98 61 00 17 */	stb r3, 0x17(r1)
/* 801CB9A4  56 20 06 3F */	clrlwi. r0, r17, 0x18
/* 801CB9A8  41 82 00 08 */	beq lbl_801CB9B0
/* 801CB9AC  98 6F 03 06 */	stb r3, 0x306(r15)
lbl_801CB9B0:
/* 801CB9B0  3A C0 00 00 */	li r22, 0
/* 801CB9B4  3B E0 00 00 */	li r31, 0
/* 801CB9B8  3A A0 00 00 */	li r21, 0
/* 801CB9BC  88 8F 03 03 */	lbz r4, 0x303(r15)
/* 801CB9C0  38 00 00 00 */	li r0, 0
/* 801CB9C4  38 61 00 58 */	addi r3, r1, 0x58
/* 801CB9C8  7C 89 03 A6 */	mtctr r4
/* 801CB9CC  2C 04 00 00 */	cmpwi r4, 0
/* 801CB9D0  40 81 00 10 */	ble lbl_801CB9E0
lbl_801CB9D4:
/* 801CB9D4  98 03 00 00 */	stb r0, 0(r3)
/* 801CB9D8  38 63 00 01 */	addi r3, r3, 1
/* 801CB9DC  42 00 FF F8 */	bdnz lbl_801CB9D4
lbl_801CB9E0:
/* 801CB9E0  56 20 06 3F */	clrlwi. r0, r17, 0x18
/* 801CB9E4  41 82 00 14 */	beq lbl_801CB9F8
/* 801CB9E8  38 00 00 FF */	li r0, 0xff
/* 801CB9EC  98 0F 03 0A */	stb r0, 0x30a(r15)
/* 801CB9F0  38 00 FF FF */	li r0, -1
/* 801CB9F4  90 0F 02 0C */	stw r0, 0x20c(r15)
lbl_801CB9F8:
/* 801CB9F8  38 00 00 00 */	li r0, 0
/* 801CB9FC  90 0F 02 00 */	stw r0, 0x200(r15)
/* 801CBA00  56 00 06 3E */	clrlwi r0, r16, 0x18
/* 801CBA04  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801CBA08  56 1A 15 BA */	rlwinm r26, r16, 2, 0x16, 0x1d
/* 801CBA0C  7F 6F D2 14 */	add r27, r15, r26
/* 801CBA10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801CBA14  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801CBA18  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801CBA1C  80 61 00 C0 */	lwz r3, 0xc0(r1)
/* 801CBA20  39 C3 FF FF */	addi r14, r3, -1
/* 801CBA24  3B C1 00 58 */	addi r30, r1, 0x58
/* 801CBA28  48 00 03 7C */	b lbl_801CBDA4
lbl_801CBA2C:
/* 801CBA2C  88 1E 00 00 */	lbz r0, 0(r30)
/* 801CBA30  28 00 00 00 */	cmplwi r0, 0
/* 801CBA34  40 82 03 64 */	bne lbl_801CBD98
/* 801CBA38  38 61 00 08 */	addi r3, r1, 8
/* 801CBA3C  38 8F 02 58 */	addi r4, r15, 0x258
/* 801CBA40  48 19 D0 ED */	bl strcpy
/* 801CBA44  7D E3 7B 78 */	mr r3, r15
/* 801CBA48  48 00 10 7D */	bl resetRoomDataBit__12dMenu_Fmap_cFv
/* 801CBA4C  56 20 06 3F */	clrlwi. r0, r17, 0x18
/* 801CBA50  41 82 00 14 */	beq lbl_801CBA64
/* 801CBA54  38 6F 02 58 */	addi r3, r15, 0x258
/* 801CBA58  7C 99 FA 14 */	add r4, r25, r31
/* 801CBA5C  48 19 D0 D1 */	bl strcpy
/* 801CBA60  48 00 00 10 */	b lbl_801CBA70
lbl_801CBA64:
/* 801CBA64  38 6F 02 58 */	addi r3, r15, 0x258
/* 801CBA68  38 81 00 08 */	addi r4, r1, 8
/* 801CBA6C  48 19 D0 C1 */	bl strcpy
lbl_801CBA70:
/* 801CBA70  38 61 00 08 */	addi r3, r1, 8
/* 801CBA74  7C 99 FA 14 */	add r4, r25, r31
/* 801CBA78  48 19 D0 B5 */	bl strcpy
/* 801CBA7C  38 A0 00 00 */	li r5, 0
/* 801CBA80  38 80 00 00 */	li r4, 0
/* 801CBA84  38 61 00 18 */	addi r3, r1, 0x18
/* 801CBA88  38 00 00 40 */	li r0, 0x40
/* 801CBA8C  7C 09 03 A6 */	mtctr r0
lbl_801CBA90:
/* 801CBA90  98 83 00 00 */	stb r4, 0(r3)
/* 801CBA94  38 A5 00 01 */	addi r5, r5, 1
/* 801CBA98  38 63 00 01 */	addi r3, r3, 1
/* 801CBA9C  42 00 FF F4 */	bdnz lbl_801CBA90
/* 801CBAA0  3A 80 00 00 */	li r20, 0
/* 801CBAA4  7E D3 B3 78 */	mr r19, r22
/* 801CBAA8  1F B6 00 14 */	mulli r29, r22, 0x14
/* 801CBAAC  48 00 00 C0 */	b lbl_801CBB6C
lbl_801CBAB0:
/* 801CBAB0  7E 59 EA 14 */	add r18, r25, r29
/* 801CBAB4  7E 43 93 78 */	mr r3, r18
/* 801CBAB8  38 81 00 08 */	addi r4, r1, 8
/* 801CBABC  48 19 CE D9 */	bl strcmp
/* 801CBAC0  2C 03 00 00 */	cmpwi r3, 0
/* 801CBAC4  40 82 00 A0 */	bne lbl_801CBB64
/* 801CBAC8  38 80 00 01 */	li r4, 1
/* 801CBACC  38 61 00 58 */	addi r3, r1, 0x58
/* 801CBAD0  7C 83 99 AE */	stbx r4, r3, r19
/* 801CBAD4  56 03 06 3E */	clrlwi r3, r16, 0x18
/* 801CBAD8  88 12 00 09 */	lbz r0, 9(r18)
/* 801CBADC  7C 03 00 40 */	cmplw r3, r0
/* 801CBAE0  40 82 00 70 */	bne lbl_801CBB50
/* 801CBAE4  88 92 00 08 */	lbz r4, 8(r18)
/* 801CBAE8  28 04 00 FF */	cmplwi r4, 0xff
/* 801CBAEC  41 82 00 20 */	beq lbl_801CBB0C
/* 801CBAF0  7D E3 7B 78 */	mr r3, r15
/* 801CBAF4  48 00 0F 7D */	bl onRoomDataBit__12dMenu_Fmap_cFi
/* 801CBAF8  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 801CBAFC  40 82 00 68 */	bne lbl_801CBB64
/* 801CBB00  7E 75 9B 78 */	mr r21, r19
/* 801CBB04  3A 80 00 01 */	li r20, 1
/* 801CBB08  48 00 00 5C */	b lbl_801CBB64
lbl_801CBB0C:
/* 801CBB0C  3A 40 00 00 */	li r18, 0
/* 801CBB10  3B 81 00 18 */	addi r28, r1, 0x18
lbl_801CBB14:
/* 801CBB14  88 1C 00 00 */	lbz r0, 0(r28)
/* 801CBB18  28 00 00 00 */	cmplwi r0, 0
/* 801CBB1C  40 82 00 10 */	bne lbl_801CBB2C
/* 801CBB20  7D E3 7B 78 */	mr r3, r15
/* 801CBB24  7E 44 93 78 */	mr r4, r18
/* 801CBB28  48 00 0F 49 */	bl onRoomDataBit__12dMenu_Fmap_cFi
lbl_801CBB2C:
/* 801CBB2C  3A 52 00 01 */	addi r18, r18, 1
/* 801CBB30  2C 12 00 40 */	cmpwi r18, 0x40
/* 801CBB34  3B 9C 00 01 */	addi r28, r28, 1
/* 801CBB38  41 80 FF DC */	blt lbl_801CBB14
/* 801CBB3C  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 801CBB40  40 82 00 24 */	bne lbl_801CBB64
/* 801CBB44  7E 75 9B 78 */	mr r21, r19
/* 801CBB48  3A 80 00 01 */	li r20, 1
/* 801CBB4C  48 00 00 18 */	b lbl_801CBB64
lbl_801CBB50:
/* 801CBB50  88 12 00 08 */	lbz r0, 8(r18)
/* 801CBB54  28 00 00 FF */	cmplwi r0, 0xff
/* 801CBB58  41 82 00 0C */	beq lbl_801CBB64
/* 801CBB5C  38 61 00 18 */	addi r3, r1, 0x18
/* 801CBB60  7C 83 01 AE */	stbx r4, r3, r0
lbl_801CBB64:
/* 801CBB64  3A 73 00 01 */	addi r19, r19, 1
/* 801CBB68  3B BD 00 14 */	addi r29, r29, 0x14
lbl_801CBB6C:
/* 801CBB6C  88 0F 03 03 */	lbz r0, 0x303(r15)
/* 801CBB70  7C 13 00 00 */	cmpw r19, r0
/* 801CBB74  41 80 FF 3C */	blt lbl_801CBAB0
/* 801CBB78  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 801CBB7C  41 82 02 1C */	beq lbl_801CBD98
/* 801CBB80  38 60 00 30 */	li r3, 0x30
/* 801CBB84  48 10 30 C9 */	bl __nw__FUl
/* 801CBB88  7C 72 1B 79 */	or. r18, r3, r3
/* 801CBB8C  41 82 00 4C */	beq lbl_801CBBD8
/* 801CBB90  38 80 00 00 */	li r4, 0
/* 801CBB94  90 92 00 08 */	stw r4, 8(r18)
/* 801CBB98  90 92 00 0C */	stw r4, 0xc(r18)
/* 801CBB9C  90 92 00 10 */	stw r4, 0x10(r18)
/* 801CBBA0  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CBBA4  D0 12 00 1C */	stfs f0, 0x1c(r18)
/* 801CBBA8  D0 12 00 20 */	stfs f0, 0x20(r18)
/* 801CBBAC  D0 12 00 24 */	stfs f0, 0x24(r18)
/* 801CBBB0  D0 12 00 28 */	stfs f0, 0x28(r18)
/* 801CBBB4  D0 12 00 14 */	stfs f0, 0x14(r18)
/* 801CBBB8  D0 12 00 18 */	stfs f0, 0x18(r18)
/* 801CBBBC  7C 85 23 78 */	mr r5, r4
/* 801CBBC0  38 00 00 08 */	li r0, 8
/* 801CBBC4  7C 09 03 A6 */	mtctr r0
lbl_801CBBC8:
/* 801CBBC8  98 83 00 00 */	stb r4, 0(r3)
/* 801CBBCC  38 A5 00 01 */	addi r5, r5, 1
/* 801CBBD0  38 63 00 01 */	addi r3, r3, 1
/* 801CBBD4  42 00 FF F4 */	bdnz lbl_801CBBC8
lbl_801CBBD8:
/* 801CBBD8  80 1B 00 40 */	lwz r0, 0x40(r27)
/* 801CBBDC  28 00 00 00 */	cmplwi r0, 0
/* 801CBBE0  40 82 00 0C */	bne lbl_801CBBEC
/* 801CBBE4  92 5B 00 40 */	stw r18, 0x40(r27)
/* 801CBBE8  48 00 00 0C */	b lbl_801CBBF4
lbl_801CBBEC:
/* 801CBBEC  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 801CBBF0  92 43 00 10 */	stw r18, 0x10(r3)
lbl_801CBBF4:
/* 801CBBF4  92 41 00 BC */	stw r18, 0xbc(r1)
/* 801CBBF8  38 A0 00 00 */	li r5, 0
/* 801CBBFC  90 B2 00 10 */	stw r5, 0x10(r18)
/* 801CBC00  57 14 06 3E */	clrlwi r20, r24, 0x18
/* 801CBC04  92 92 00 2C */	stw r20, 0x2c(r18)
/* 801CBC08  1C 15 00 14 */	mulli r0, r21, 0x14
/* 801CBC0C  7E 79 02 14 */	add r19, r25, r0
/* 801CBC10  7E 64 9B 78 */	mr r4, r19
/* 801CBC14  7E 43 93 78 */	mr r3, r18
/* 801CBC18  38 00 00 08 */	li r0, 8
/* 801CBC1C  7C 09 03 A6 */	mtctr r0
lbl_801CBC20:
/* 801CBC20  88 04 00 00 */	lbz r0, 0(r4)
/* 801CBC24  98 03 00 00 */	stb r0, 0(r3)
/* 801CBC28  38 A5 00 01 */	addi r5, r5, 1
/* 801CBC2C  38 63 00 01 */	addi r3, r3, 1
/* 801CBC30  38 84 00 01 */	addi r4, r4, 1
/* 801CBC34  42 00 FF EC */	bdnz lbl_801CBC20
/* 801CBC38  38 A0 00 00 */	li r5, 0
/* 801CBC3C  7E 64 9B 78 */	mr r4, r19
/* 801CBC40  38 61 00 10 */	addi r3, r1, 0x10
/* 801CBC44  38 00 00 08 */	li r0, 8
/* 801CBC48  7C 09 03 A6 */	mtctr r0
lbl_801CBC4C:
/* 801CBC4C  88 04 00 00 */	lbz r0, 0(r4)
/* 801CBC50  98 03 00 00 */	stb r0, 0(r3)
/* 801CBC54  38 A5 00 01 */	addi r5, r5, 1
/* 801CBC58  38 63 00 01 */	addi r3, r3, 1
/* 801CBC5C  38 84 00 01 */	addi r4, r4, 1
/* 801CBC60  42 00 FF EC */	bdnz lbl_801CBC4C
/* 801CBC64  4B E6 31 FD */	bl dComIfGp_getNowLevel__Fv
/* 801CBC68  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801CBC6C  56 00 06 3E */	clrlwi r0, r16, 0x18
/* 801CBC70  7C 00 18 40 */	cmplw r0, r3
/* 801CBC74  40 82 00 68 */	bne lbl_801CBCDC
/* 801CBC78  80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 801CBC7C  88 03 00 7C */	lbz r0, 0x7c(r3)
/* 801CBC80  28 00 00 00 */	cmplwi r0, 0
/* 801CBC84  41 82 00 34 */	beq lbl_801CBCB8
/* 801CBC88  80 6F 00 8C */	lwz r3, 0x8c(r15)
/* 801CBC8C  4B FF A9 A1 */	bl dMenuFmap_getStartStageName__FPv
/* 801CBC90  38 81 00 10 */	addi r4, r1, 0x10
/* 801CBC94  48 19 CD 01 */	bl strcmp
/* 801CBC98  2C 03 00 00 */	cmpwi r3, 0
/* 801CBC9C  40 82 00 40 */	bne lbl_801CBCDC
/* 801CBCA0  80 6F 00 14 */	lwz r3, 0x14(r15)
/* 801CBCA4  7F 04 C3 78 */	mr r4, r24
/* 801CBCA8  48 00 60 CD */	bl setSpotCursor__18dMenu_Fmap2DBack_cFUc
/* 801CBCAC  9B 0F 03 0A */	stb r24, 0x30a(r15)
/* 801CBCB0  92 8F 02 0C */	stw r20, 0x20c(r15)
/* 801CBCB4  48 00 00 28 */	b lbl_801CBCDC
lbl_801CBCB8:
/* 801CBCB8  38 63 00 72 */	addi r3, r3, 0x72
/* 801CBCBC  38 81 00 10 */	addi r4, r1, 0x10
/* 801CBCC0  48 19 CC D5 */	bl strcmp
/* 801CBCC4  2C 03 00 00 */	cmpwi r3, 0
/* 801CBCC8  40 82 00 14 */	bne lbl_801CBCDC
/* 801CBCCC  80 6F 00 14 */	lwz r3, 0x14(r15)
/* 801CBCD0  7F 04 C3 78 */	mr r4, r24
/* 801CBCD4  48 00 60 A1 */	bl setSpotCursor__18dMenu_Fmap2DBack_cFUc
/* 801CBCD8  92 8F 02 0C */	stw r20, 0x20c(r15)
lbl_801CBCDC:
/* 801CBCDC  C0 13 00 0C */	lfs f0, 0xc(r19)
/* 801CBCE0  D0 12 00 14 */	stfs f0, 0x14(r18)
/* 801CBCE4  C0 13 00 10 */	lfs f0, 0x10(r19)
/* 801CBCE8  D0 12 00 18 */	stfs f0, 0x18(r18)
/* 801CBCEC  56 20 06 3F */	clrlwi. r0, r17, 0x18
/* 801CBCF0  41 82 00 5C */	beq lbl_801CBD4C
/* 801CBCF4  C0 33 00 10 */	lfs f1, 0x10(r19)
/* 801CBCF8  88 0F 03 06 */	lbz r0, 0x306(r15)
/* 801CBCFC  80 6F 00 14 */	lwz r3, 0x14(r15)
/* 801CBD00  C0 13 00 0C */	lfs f0, 0xc(r19)
/* 801CBD04  54 00 10 3A */	slwi r0, r0, 2
/* 801CBD08  7C 63 02 14 */	add r3, r3, r0
/* 801CBD0C  D0 03 10 44 */	stfs f0, 0x1044(r3)
/* 801CBD10  D0 23 10 94 */	stfs f1, 0x1094(r3)
/* 801CBD14  A0 93 00 0A */	lhz r4, 0xa(r19)
/* 801CBD18  88 0F 03 06 */	lbz r0, 0x306(r15)
/* 801CBD1C  54 03 08 3C */	slwi r3, r0, 1
/* 801CBD20  38 03 02 28 */	addi r0, r3, 0x228
/* 801CBD24  7C 8F 03 2E */	sthx r4, r15, r0
/* 801CBD28  88 0F 03 06 */	lbz r0, 0x306(r15)
/* 801CBD2C  54 03 18 38 */	slwi r3, r0, 3
/* 801CBD30  38 63 02 60 */	addi r3, r3, 0x260
/* 801CBD34  7C 6F 1A 14 */	add r3, r15, r3
/* 801CBD38  38 81 00 10 */	addi r4, r1, 0x10
/* 801CBD3C  48 19 CD F1 */	bl strcpy
/* 801CBD40  88 6F 03 06 */	lbz r3, 0x306(r15)
/* 801CBD44  38 03 00 01 */	addi r0, r3, 1
/* 801CBD48  98 0F 03 06 */	stb r0, 0x306(r15)
lbl_801CBD4C:
/* 801CBD4C  38 60 00 08 */	li r3, 8
/* 801CBD50  48 10 2E FD */	bl __nw__FUl
/* 801CBD54  7C 66 1B 78 */	mr r6, r3
/* 801CBD58  80 1B 00 68 */	lwz r0, 0x68(r27)
/* 801CBD5C  28 00 00 00 */	cmplwi r0, 0
/* 801CBD60  40 82 00 0C */	bne lbl_801CBD6C
/* 801CBD64  90 DB 00 68 */	stw r6, 0x68(r27)
/* 801CBD68  48 00 00 08 */	b lbl_801CBD70
lbl_801CBD6C:
/* 801CBD6C  90 D7 00 04 */	stw r6, 4(r23)
lbl_801CBD70:
/* 801CBD70  7C D7 33 78 */	mr r23, r6
/* 801CBD74  38 00 00 00 */	li r0, 0
/* 801CBD78  90 06 00 04 */	stw r0, 4(r6)
/* 801CBD7C  7D E3 7B 78 */	mr r3, r15
/* 801CBD80  38 81 00 10 */	addi r4, r1, 0x10
/* 801CBD84  7E 45 93 78 */	mr r5, r18
/* 801CBD88  7D C7 73 78 */	mr r7, r14
/* 801CBD8C  89 13 00 08 */	lbz r8, 8(r19)
/* 801CBD90  48 00 01 75 */	bl readRoomData__12dMenu_Fmap_cFPCcP23dMenu_Fmap_stage_data_cPviUc
/* 801CBD94  3B 18 00 01 */	addi r24, r24, 1
lbl_801CBD98:
/* 801CBD98  3A D6 00 01 */	addi r22, r22, 1
/* 801CBD9C  3B FF 00 14 */	addi r31, r31, 0x14
/* 801CBDA0  3B DE 00 01 */	addi r30, r30, 1
lbl_801CBDA4:
/* 801CBDA4  88 0F 03 03 */	lbz r0, 0x303(r15)
/* 801CBDA8  7C 16 00 00 */	cmpw r22, r0
/* 801CBDAC  41 80 FC 80 */	blt lbl_801CBA2C
/* 801CBDB0  7E 2F D2 14 */	add r17, r15, r26
/* 801CBDB4  80 11 00 40 */	lwz r0, 0x40(r17)
/* 801CBDB8  28 00 00 00 */	cmplwi r0, 0
/* 801CBDBC  40 82 00 0C */	bne lbl_801CBDC8
/* 801CBDC0  38 60 00 00 */	li r3, 0
/* 801CBDC4  48 00 01 18 */	b lbl_801CBEDC
lbl_801CBDC8:
/* 801CBDC8  80 11 00 20 */	lwz r0, 0x20(r17)
/* 801CBDCC  28 00 00 00 */	cmplwi r0, 0
/* 801CBDD0  40 82 00 5C */	bne lbl_801CBE2C
/* 801CBDD4  38 60 00 24 */	li r3, 0x24
/* 801CBDD8  48 10 2E 75 */	bl __nw__FUl
/* 801CBDDC  7C 70 1B 79 */	or. r16, r3, r3
/* 801CBDE0  41 82 00 48 */	beq lbl_801CBE28
/* 801CBDE4  C0 31 01 C8 */	lfs f1, 0x1c8(r17)
/* 801CBDE8  C0 11 01 A8 */	lfs f0, 0x1a8(r17)
/* 801CBDEC  80 11 00 40 */	lwz r0, 0x40(r17)
/* 801CBDF0  90 10 00 00 */	stw r0, 0(r16)
/* 801CBDF4  38 00 00 00 */	li r0, 0
/* 801CBDF8  90 10 00 04 */	stw r0, 4(r16)
/* 801CBDFC  D0 10 00 08 */	stfs f0, 8(r16)
/* 801CBE00  D0 30 00 0C */	stfs f1, 0xc(r16)
/* 801CBE04  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CBE08  D0 10 00 10 */	stfs f0, 0x10(r16)
/* 801CBE0C  D0 10 00 14 */	stfs f0, 0x14(r16)
/* 801CBE10  D0 10 00 18 */	stfs f0, 0x18(r16)
/* 801CBE14  D0 10 00 1C */	stfs f0, 0x1c(r16)
/* 801CBE18  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 801CBE1C  90 10 00 20 */	stw r0, 0x20(r16)
/* 801CBE20  38 80 00 00 */	li r4, 0
/* 801CBE24  4B E7 20 BD */	bl buildFmapRegionData__24dMenu_Fmap_region_data_cFi
lbl_801CBE28:
/* 801CBE28  92 11 00 20 */	stw r16, 0x20(r17)
lbl_801CBE2C:
/* 801CBE2C  80 6F 00 14 */	lwz r3, 0x14(r15)
/* 801CBE30  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801CBE34  7C 0E 00 00 */	cmpw r14, r0
/* 801CBE38  40 82 00 A0 */	bne lbl_801CBED8
/* 801CBE3C  3A 20 00 00 */	li r17, 0
/* 801CBE40  39 C0 00 00 */	li r14, 0
/* 801CBE44  C3 E2 A7 4C */	lfs f31, lit_4398(r2)
/* 801CBE48  48 00 00 84 */	b lbl_801CBECC
lbl_801CBE4C:
/* 801CBE4C  7D E3 7B 78 */	mr r3, r15
/* 801CBE50  48 00 15 01 */	bl getNowFmapRegionData__12dMenu_Fmap_cFv
/* 801CBE54  7C 70 1B 78 */	mr r16, r3
/* 801CBE58  7E 24 8B 78 */	mr r4, r17
/* 801CBE5C  4B E7 1C ED */	bl getMenuFmapStageData__24dMenu_Fmap_region_data_cFi
/* 801CBE60  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 801CBE64  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 801CBE68  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 801CBE6C  EC 01 00 2A */	fadds f0, f1, f0
/* 801CBE70  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801CBE74  EC 22 00 2A */	fadds f1, f2, f0
/* 801CBE78  C0 10 00 0C */	lfs f0, 0xc(r16)
/* 801CBE7C  EF C0 08 2A */	fadds f30, f0, f1
/* 801CBE80  7D E3 7B 78 */	mr r3, r15
/* 801CBE84  48 00 14 CD */	bl getNowFmapRegionData__12dMenu_Fmap_cFv
/* 801CBE88  7C 70 1B 78 */	mr r16, r3
/* 801CBE8C  7E 24 8B 78 */	mr r4, r17
/* 801CBE90  4B E7 1C B9 */	bl getMenuFmapStageData__24dMenu_Fmap_region_data_cFi
/* 801CBE94  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 801CBE98  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 801CBE9C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 801CBEA0  EC 01 00 2A */	fadds f0, f1, f0
/* 801CBEA4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801CBEA8  EC 22 00 2A */	fadds f1, f2, f0
/* 801CBEAC  C0 10 00 08 */	lfs f0, 8(r16)
/* 801CBEB0  EC 00 08 2A */	fadds f0, f0, f1
/* 801CBEB4  80 0F 00 14 */	lwz r0, 0x14(r15)
/* 801CBEB8  7C 60 72 14 */	add r3, r0, r14
/* 801CBEBC  D0 03 10 E4 */	stfs f0, 0x10e4(r3)
/* 801CBEC0  D3 C3 11 34 */	stfs f30, 0x1134(r3)
/* 801CBEC4  3A 31 00 01 */	addi r17, r17, 1
/* 801CBEC8  39 CE 00 04 */	addi r14, r14, 4
lbl_801CBECC:
/* 801CBECC  88 0F 03 06 */	lbz r0, 0x306(r15)
/* 801CBED0  7C 11 00 00 */	cmpw r17, r0
/* 801CBED4  41 80 FF 78 */	blt lbl_801CBE4C
lbl_801CBED8:
/* 801CBED8  38 60 00 01 */	li r3, 1
lbl_801CBEDC:
/* 801CBEDC  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 801CBEE0  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 801CBEE4  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 801CBEE8  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 801CBEEC  39 61 01 10 */	addi r11, r1, 0x110
/* 801CBEF0  48 19 62 FD */	bl _restgpr_14
/* 801CBEF4  80 01 01 34 */	lwz r0, 0x134(r1)
/* 801CBEF8  7C 08 03 A6 */	mtlr r0
/* 801CBEFC  38 21 01 30 */	addi r1, r1, 0x130
/* 801CBF00  4E 80 00 20 */	blr 
