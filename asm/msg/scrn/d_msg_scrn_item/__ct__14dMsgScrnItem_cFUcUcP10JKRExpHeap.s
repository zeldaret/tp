lbl_8023E79C:
/* 8023E79C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8023E7A0  7C 08 02 A6 */	mflr r0
/* 8023E7A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8023E7A8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8023E7AC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8023E7B0  39 61 00 50 */	addi r11, r1, 0x50
/* 8023E7B4  48 12 3A 19 */	bl _savegpr_25
/* 8023E7B8  7C 7F 1B 78 */	mr r31, r3
/* 8023E7BC  7C 9C 23 78 */	mr r28, r4
/* 8023E7C0  7C BD 2B 78 */	mr r29, r5
/* 8023E7C4  7C D9 33 78 */	mr r25, r6
/* 8023E7C8  4B FF D9 15 */	bl __ct__14dMsgScrnBase_cFv
/* 8023E7CC  3C 80 80 3C */	lis r4, __vt__14dMsgScrnItem_c@ha
/* 8023E7D0  38 04 0F 78 */	addi r0, r4, __vt__14dMsgScrnItem_c@l
/* 8023E7D4  90 1F 00 00 */	stw r0, 0(r31)
/* 8023E7D8  28 19 00 00 */	cmplwi r25, 0
/* 8023E7DC  41 82 00 0C */	beq lbl_8023E7E8
/* 8023E7E0  93 3F 01 38 */	stw r25, 0x138(r31)
/* 8023E7E4  48 00 00 10 */	b lbl_8023E7F4
lbl_8023E7E8:
/* 8023E7E8  38 60 00 07 */	li r3, 7
/* 8023E7EC  4B DE FB E5 */	bl dComIfGp_getSubHeap2D__Fi
/* 8023E7F0  90 7F 01 38 */	stw r3, 0x138(r31)
lbl_8023E7F4:
/* 8023E7F4  38 00 00 00 */	li r0, 0
/* 8023E7F8  98 1F 01 9E */	stb r0, 0x19e(r31)
/* 8023E7FC  7F E3 FB 78 */	mr r3, r31
/* 8023E800  4B FF D9 6D */	bl init__14dMsgScrnBase_cFv
/* 8023E804  4B FF 9B CD */	bl getMessageID__12dMsgObject_cFv
/* 8023E808  38 00 00 00 */	li r0, 0
/* 8023E80C  2C 03 06 45 */	cmpwi r3, 0x645
/* 8023E810  41 80 00 1C */	blt lbl_8023E82C
/* 8023E814  2C 03 06 48 */	cmpwi r3, 0x648
/* 8023E818  41 81 00 14 */	bgt lbl_8023E82C
/* 8023E81C  38 03 F9 BF */	addi r0, r3, -1601
/* 8023E820  90 1F 01 98 */	stw r0, 0x198(r31)
/* 8023E824  38 00 00 01 */	li r0, 1
/* 8023E828  48 00 00 20 */	b lbl_8023E848
lbl_8023E82C:
/* 8023E82C  2C 03 08 F5 */	cmpwi r3, 0x8f5
/* 8023E830  41 80 00 18 */	blt lbl_8023E848
/* 8023E834  2C 03 09 0C */	cmpwi r3, 0x90c
/* 8023E838  41 81 00 10 */	bgt lbl_8023E848
/* 8023E83C  38 03 F7 CB */	addi r0, r3, -2101
/* 8023E840  90 1F 01 98 */	stw r0, 0x198(r31)
/* 8023E844  38 00 00 01 */	li r0, 1
lbl_8023E848:
/* 8023E848  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8023E84C  40 82 00 10 */	bne lbl_8023E85C
/* 8023E850  4B FF 9B 81 */	bl getMessageID__12dMsgObject_cFv
/* 8023E854  38 03 FF 9B */	addi r0, r3, -101
/* 8023E858  90 1F 01 98 */	stw r0, 0x198(r31)
lbl_8023E85C:
/* 8023E85C  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 8023E860  2C 00 02 40 */	cmpwi r0, 0x240
/* 8023E864  40 82 00 10 */	bne lbl_8023E874
/* 8023E868  38 00 00 40 */	li r0, 0x40
/* 8023E86C  90 1F 01 98 */	stw r0, 0x198(r31)
/* 8023E870  48 00 00 8C */	b lbl_8023E8FC
lbl_8023E874:
/* 8023E874  2C 00 19 1E */	cmpwi r0, 0x191e
/* 8023E878  41 82 00 0C */	beq lbl_8023E884
/* 8023E87C  2C 00 40 2E */	cmpwi r0, 0x402e
/* 8023E880  40 82 00 10 */	bne lbl_8023E890
lbl_8023E884:
/* 8023E884  38 00 00 46 */	li r0, 0x46
/* 8023E888  90 1F 01 98 */	stw r0, 0x198(r31)
/* 8023E88C  48 00 00 70 */	b lbl_8023E8FC
lbl_8023E890:
/* 8023E890  2C 00 04 6A */	cmpwi r0, 0x46a
/* 8023E894  41 82 00 14 */	beq lbl_8023E8A8
/* 8023E898  2C 00 04 6B */	cmpwi r0, 0x46b
/* 8023E89C  41 82 00 0C */	beq lbl_8023E8A8
/* 8023E8A0  2C 00 04 6C */	cmpwi r0, 0x46c
/* 8023E8A4  40 82 00 10 */	bne lbl_8023E8B4
lbl_8023E8A8:
/* 8023E8A8  38 00 00 E0 */	li r0, 0xe0
/* 8023E8AC  90 1F 01 98 */	stw r0, 0x198(r31)
/* 8023E8B0  48 00 00 4C */	b lbl_8023E8FC
lbl_8023E8B4:
/* 8023E8B4  2C 00 1D 35 */	cmpwi r0, 0x1d35
/* 8023E8B8  40 82 00 10 */	bne lbl_8023E8C8
/* 8023E8BC  38 00 00 21 */	li r0, 0x21
/* 8023E8C0  90 1F 01 98 */	stw r0, 0x198(r31)
/* 8023E8C4  48 00 00 38 */	b lbl_8023E8FC
lbl_8023E8C8:
/* 8023E8C8  2C 00 05 5B */	cmpwi r0, 0x55b
/* 8023E8CC  41 82 00 0C */	beq lbl_8023E8D8
/* 8023E8D0  2C 00 05 5C */	cmpwi r0, 0x55c
/* 8023E8D4  40 82 00 10 */	bne lbl_8023E8E4
lbl_8023E8D8:
/* 8023E8D8  38 00 00 23 */	li r0, 0x23
/* 8023E8DC  90 1F 01 98 */	stw r0, 0x198(r31)
/* 8023E8E0  48 00 00 1C */	b lbl_8023E8FC
lbl_8023E8E4:
/* 8023E8E4  2C 00 06 B9 */	cmpwi r0, 0x6b9
/* 8023E8E8  41 82 00 0C */	beq lbl_8023E8F4
/* 8023E8EC  2C 00 06 EB */	cmpwi r0, 0x6eb
/* 8023E8F0  40 82 00 0C */	bne lbl_8023E8FC
lbl_8023E8F4:
/* 8023E8F4  38 00 00 60 */	li r0, 0x60
/* 8023E8F8  90 1F 01 98 */	stw r0, 0x198(r31)
lbl_8023E8FC:
/* 8023E8FC  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 8023E900  2C 00 00 EC */	cmpwi r0, 0xec
/* 8023E904  40 82 00 0C */	bne lbl_8023E910
/* 8023E908  38 00 00 33 */	li r0, 0x33
/* 8023E90C  90 1F 01 98 */	stw r0, 0x198(r31)
lbl_8023E910:
/* 8023E910  7F E3 FB 78 */	mr r3, r31
/* 8023E914  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 8023E918  2C 00 00 00 */	cmpwi r0, 0
/* 8023E91C  41 80 00 0C */	blt lbl_8023E928
/* 8023E920  2C 00 00 FF */	cmpwi r0, 0xff
/* 8023E924  40 81 00 18 */	ble lbl_8023E93C
lbl_8023E928:
/* 8023E928  48 00 1F 7D */	bl isOugiID__14dMsgScrnItem_cFv
/* 8023E92C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023E930  40 82 00 0C */	bne lbl_8023E93C
/* 8023E934  38 00 00 43 */	li r0, 0x43
/* 8023E938  90 1F 01 98 */	stw r0, 0x198(r31)
lbl_8023E93C:
/* 8023E93C  3B 20 00 00 */	li r25, 0
/* 8023E940  3B 60 00 00 */	li r27, 0
/* 8023E944  7F 7A DB 78 */	mr r26, r27
/* 8023E948  7F 7E DB 78 */	mr r30, r27
lbl_8023E94C:
/* 8023E94C  38 1B 00 C8 */	addi r0, r27, 0xc8
/* 8023E950  7F 5F 01 2E */	stwx r26, r31, r0
/* 8023E954  38 1B 00 E0 */	addi r0, r27, 0xe0
/* 8023E958  7F DF 01 2E */	stwx r30, r31, r0
/* 8023E95C  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 8023E960  38 80 0C 00 */	li r4, 0xc00
/* 8023E964  38 A0 00 20 */	li r5, 0x20
/* 8023E968  48 08 FB 6D */	bl alloc__7JKRHeapFUli
/* 8023E96C  38 1B 00 D4 */	addi r0, r27, 0xd4
/* 8023E970  7C 7F 01 2E */	stwx r3, r31, r0
/* 8023E974  3B 39 00 01 */	addi r25, r25, 1
/* 8023E978  2C 19 00 03 */	cmpwi r25, 3
/* 8023E97C  3B 7B 00 04 */	addi r27, r27, 4
/* 8023E980  41 80 FF CC */	blt lbl_8023E94C
/* 8023E984  3B C0 FF FF */	li r30, -1
/* 8023E988  7F E3 FB 78 */	mr r3, r31
/* 8023E98C  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 8023E990  2C 00 00 46 */	cmpwi r0, 0x46
/* 8023E994  41 82 00 0C */	beq lbl_8023E9A0
/* 8023E998  2C 00 00 4C */	cmpwi r0, 0x4c
/* 8023E99C  40 82 00 0C */	bne lbl_8023E9A8
lbl_8023E9A0:
/* 8023E9A0  3B C0 00 16 */	li r30, 0x16
/* 8023E9A4  48 00 00 94 */	b lbl_8023EA38
lbl_8023E9A8:
/* 8023E9A8  2C 00 00 21 */	cmpwi r0, 0x21
/* 8023E9AC  41 82 00 24 */	beq lbl_8023E9D0
/* 8023E9B0  2C 00 00 37 */	cmpwi r0, 0x37
/* 8023E9B4  41 82 00 1C */	beq lbl_8023E9D0
/* 8023E9B8  2C 00 00 38 */	cmpwi r0, 0x38
/* 8023E9BC  41 82 00 14 */	beq lbl_8023E9D0
/* 8023E9C0  2C 00 00 39 */	cmpwi r0, 0x39
/* 8023E9C4  41 82 00 0C */	beq lbl_8023E9D0
/* 8023E9C8  2C 00 00 3A */	cmpwi r0, 0x3a
/* 8023E9CC  40 82 00 6C */	bne lbl_8023EA38
lbl_8023E9D0:
/* 8023E9D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8023E9D4  A0 A4 61 C0 */	lhz r5, g_dComIfG_gameInfo@l(r4)
/* 8023E9D8  38 80 00 05 */	li r4, 5
/* 8023E9DC  7C 05 23 D6 */	divw r0, r5, r4
/* 8023E9E0  7C 00 21 D6 */	mullw r0, r0, r4
/* 8023E9E4  7C 00 28 50 */	subf r0, r0, r5
/* 8023E9E8  2C 00 00 02 */	cmpwi r0, 2
/* 8023E9EC  41 82 00 38 */	beq lbl_8023EA24
/* 8023E9F0  40 80 00 14 */	bge lbl_8023EA04
/* 8023E9F4  2C 00 00 00 */	cmpwi r0, 0
/* 8023E9F8  41 82 00 1C */	beq lbl_8023EA14
/* 8023E9FC  40 80 00 20 */	bge lbl_8023EA1C
/* 8023EA00  48 00 00 38 */	b lbl_8023EA38
lbl_8023EA04:
/* 8023EA04  2C 00 00 04 */	cmpwi r0, 4
/* 8023EA08  41 82 00 2C */	beq lbl_8023EA34
/* 8023EA0C  40 80 00 2C */	bge lbl_8023EA38
/* 8023EA10  48 00 00 1C */	b lbl_8023EA2C
lbl_8023EA14:
/* 8023EA14  3B C0 00 75 */	li r30, 0x75
/* 8023EA18  48 00 00 20 */	b lbl_8023EA38
lbl_8023EA1C:
/* 8023EA1C  3B C0 00 76 */	li r30, 0x76
/* 8023EA20  48 00 00 18 */	b lbl_8023EA38
lbl_8023EA24:
/* 8023EA24  3B C0 00 77 */	li r30, 0x77
/* 8023EA28  48 00 00 10 */	b lbl_8023EA38
lbl_8023EA2C:
/* 8023EA2C  3B C0 00 78 */	li r30, 0x78
/* 8023EA30  48 00 00 08 */	b lbl_8023EA38
lbl_8023EA34:
/* 8023EA34  3B C0 00 51 */	li r30, 0x51
lbl_8023EA38:
/* 8023EA38  48 00 1E 6D */	bl isOugiID__14dMsgScrnItem_cFv
/* 8023EA3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023EA40  41 82 00 4C */	beq lbl_8023EA8C
/* 8023EA44  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8023EA48  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8023EA4C  80 64 5C D0 */	lwz r3, 0x5cd0(r4)
/* 8023EA50  80 9F 00 D4 */	lwz r4, 0xd4(r31)
/* 8023EA54  38 A0 0C 00 */	li r5, 0xc00
/* 8023EA58  38 C0 00 3D */	li r6, 0x3d
/* 8023EA5C  48 09 74 71 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 8023EA60  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 8023EA64  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 8023EA68  38 60 01 50 */	li r3, 0x150
/* 8023EA6C  48 09 01 E1 */	bl __nw__FUl
/* 8023EA70  7C 60 1B 79 */	or. r0, r3, r3
/* 8023EA74  41 82 00 10 */	beq lbl_8023EA84
/* 8023EA78  80 9F 00 E0 */	lwz r4, 0xe0(r31)
/* 8023EA7C  48 0B DC 8D */	bl __ct__10J2DPictureFPC7ResTIMG
/* 8023EA80  7C 60 1B 78 */	mr r0, r3
lbl_8023EA84:
/* 8023EA84  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8023EA88  48 00 00 B8 */	b lbl_8023EB40
lbl_8023EA8C:
/* 8023EA8C  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 8023EA90  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8023EA94  38 00 00 00 */	li r0, 0
/* 8023EA98  90 01 00 08 */	stw r0, 8(r1)
/* 8023EA9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8023EAA0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8023EAA4  3C A0 80 43 */	lis r5, g_meter2_info@ha
/* 8023EAA8  38 65 01 88 */	addi r3, r5, g_meter2_info@l
/* 8023EAAC  80 BF 00 D4 */	lwz r5, 0xd4(r31)
/* 8023EAB0  38 C0 00 00 */	li r6, 0
/* 8023EAB4  80 FF 00 D8 */	lwz r7, 0xd8(r31)
/* 8023EAB8  39 00 00 00 */	li r8, 0
/* 8023EABC  81 3F 00 DC */	lwz r9, 0xdc(r31)
/* 8023EAC0  39 40 00 00 */	li r10, 0
/* 8023EAC4  4B FD E4 45 */	bl readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei
/* 8023EAC8  7C 7E 1B 78 */	mr r30, r3
/* 8023EACC  3B 20 00 00 */	li r25, 0
/* 8023EAD0  3B 60 00 00 */	li r27, 0
/* 8023EAD4  48 00 00 40 */	b lbl_8023EB14
lbl_8023EAD8:
/* 8023EAD8  7C 9F DA 14 */	add r4, r31, r27
/* 8023EADC  80 04 00 D4 */	lwz r0, 0xd4(r4)
/* 8023EAE0  90 04 00 E0 */	stw r0, 0xe0(r4)
/* 8023EAE4  38 60 01 50 */	li r3, 0x150
/* 8023EAE8  48 09 01 65 */	bl __nw__FUl
/* 8023EAEC  7C 64 1B 79 */	or. r4, r3, r3
/* 8023EAF0  41 82 00 14 */	beq lbl_8023EB04
/* 8023EAF4  38 1B 00 E0 */	addi r0, r27, 0xe0
/* 8023EAF8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8023EAFC  48 0B DC 0D */	bl __ct__10J2DPictureFPC7ResTIMG
/* 8023EB00  7C 64 1B 78 */	mr r4, r3
lbl_8023EB04:
/* 8023EB04  38 1B 00 C8 */	addi r0, r27, 0xc8
/* 8023EB08  7C 9F 01 2E */	stwx r4, r31, r0
/* 8023EB0C  3B 39 00 01 */	addi r25, r25, 1
/* 8023EB10  3B 7B 00 04 */	addi r27, r27, 4
lbl_8023EB14:
/* 8023EB14  7C 19 F0 00 */	cmpw r25, r30
/* 8023EB18  41 80 FF C0 */	blt lbl_8023EAD8
/* 8023EB1C  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 8023EB20  38 64 01 88 */	addi r3, r4, g_meter2_info@l
/* 8023EB24  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 8023EB28  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8023EB2C  80 BF 00 C8 */	lwz r5, 0xc8(r31)
/* 8023EB30  80 DF 00 CC */	lwz r6, 0xcc(r31)
/* 8023EB34  80 FF 00 D0 */	lwz r7, 0xd0(r31)
/* 8023EB38  39 00 00 00 */	li r8, 0
/* 8023EB3C  4B FD E8 31 */	bl setItemColor__13dMeter2Info_cFUcP10J2DPictureP10J2DPictureP10J2DPictureP10J2DPicture
lbl_8023EB40:
/* 8023EB40  38 60 01 18 */	li r3, 0x118
/* 8023EB44  48 09 01 09 */	bl __nw__FUl
/* 8023EB48  7C 60 1B 79 */	or. r0, r3, r3
/* 8023EB4C  41 82 00 0C */	beq lbl_8023EB58
/* 8023EB50  48 0B 99 49 */	bl __ct__9J2DScreenFv
/* 8023EB54  7C 60 1B 78 */	mr r0, r3
lbl_8023EB58:
/* 8023EB58  90 1F 00 04 */	stw r0, 4(r31)
/* 8023EB5C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023EB60  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_item__stringBase0@ha
/* 8023EB64  38 84 99 90 */	addi r4, r4, msg_scrn_d_msg_scrn_item__stringBase0@l
/* 8023EB68  3C A0 01 02 */	lis r5, 0x102
/* 8023EB6C  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 8023EB70  3B C6 61 C0 */	addi r30, r6, g_dComIfG_gameInfo@l
/* 8023EB74  80 DE 5C 78 */	lwz r6, 0x5c78(r30)
/* 8023EB78  48 0B 9A D1 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8023EB7C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023EB80  48 01 65 69 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8023EB84  38 60 01 18 */	li r3, 0x118
/* 8023EB88  48 09 00 C5 */	bl __nw__FUl
/* 8023EB8C  7C 60 1B 79 */	or. r0, r3, r3
/* 8023EB90  41 82 00 0C */	beq lbl_8023EB9C
/* 8023EB94  48 0B 99 05 */	bl __ct__9J2DScreenFv
/* 8023EB98  7C 60 1B 78 */	mr r0, r3
lbl_8023EB9C:
/* 8023EB9C  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 8023EBA0  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8023EBA4  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_item__stringBase0@ha
/* 8023EBA8  38 84 99 90 */	addi r4, r4, msg_scrn_d_msg_scrn_item__stringBase0@l
/* 8023EBAC  38 84 00 1A */	addi r4, r4, 0x1a
/* 8023EBB0  3C A0 00 02 */	lis r5, 2
/* 8023EBB4  80 DE 5C 78 */	lwz r6, 0x5c78(r30)
/* 8023EBB8  48 0B 9A 91 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8023EBBC  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8023EBC0  48 01 65 29 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8023EBC4  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8023EBC8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8023EBCC  88 04 05 68 */	lbz r0, 0x568(r4)
/* 8023EBD0  28 00 00 01 */	cmplwi r0, 1
/* 8023EBD4  40 82 00 2C */	bne lbl_8023EC00
/* 8023EBD8  88 04 05 69 */	lbz r0, 0x569(r4)
/* 8023EBDC  C8 22 B2 10 */	lfd f1, lit_4199(r2)
/* 8023EBE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8023EBE4  3C 00 43 30 */	lis r0, 0x4330
/* 8023EBE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8023EBEC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8023EBF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8023EBF4  C0 02 B1 F8 */	lfs f0, lit_4192(r2)
/* 8023EBF8  EF E1 00 24 */	fdivs f31, f1, f0
/* 8023EBFC  48 00 00 58 */	b lbl_8023EC54
lbl_8023EC00:
/* 8023EC00  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 8023EC04  2C 00 00 00 */	cmpwi r0, 0
/* 8023EC08  41 80 00 48 */	blt lbl_8023EC50
/* 8023EC0C  2C 00 00 FF */	cmpwi r0, 0xff
/* 8023EC10  41 81 00 40 */	bgt lbl_8023EC50
/* 8023EC14  3C 80 80 3B */	lis r4, item_resource__10dItem_data@ha
/* 8023EC18  38 84 C5 A0 */	addi r4, r4, item_resource__10dItem_data@l
/* 8023EC1C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8023EC20  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8023EC24  7C 84 02 14 */	add r4, r4, r0
/* 8023EC28  88 04 00 12 */	lbz r0, 0x12(r4)
/* 8023EC2C  C8 22 B2 10 */	lfd f1, lit_4199(r2)
/* 8023EC30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8023EC34  3C 00 43 30 */	lis r0, 0x4330
/* 8023EC38  90 01 00 18 */	stw r0, 0x18(r1)
/* 8023EC3C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8023EC40  EC 20 08 28 */	fsubs f1, f0, f1
/* 8023EC44  C0 02 B1 F8 */	lfs f0, lit_4192(r2)
/* 8023EC48  EF E1 00 24 */	fdivs f31, f1, f0
/* 8023EC4C  48 00 00 08 */	b lbl_8023EC54
lbl_8023EC50:
/* 8023EC50  C3 E2 B1 FC */	lfs f31, lit_4193(r2)
lbl_8023EC54:
/* 8023EC54  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023EC58  3C 80 69 74 */	lis r4, 0x6974 /* 0x69745F6E@ha */
/* 8023EC5C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x69745F6E@l */
/* 8023EC60  3C 80 73 65 */	lis r4, 0x7365 /* 0x7365745F@ha */
/* 8023EC64  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x7365745F@l */
/* 8023EC68  81 83 00 00 */	lwz r12, 0(r3)
/* 8023EC6C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023EC70  7D 89 03 A6 */	mtctr r12
/* 8023EC74  4E 80 04 21 */	bctrl 
/* 8023EC78  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8023EC7C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8023EC80  EC 41 00 28 */	fsubs f2, f1, f0
/* 8023EC84  80 9F 00 E0 */	lwz r4, 0xe0(r31)
/* 8023EC88  A0 04 00 02 */	lhz r0, 2(r4)
/* 8023EC8C  C8 22 B2 10 */	lfd f1, lit_4199(r2)
/* 8023EC90  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8023EC94  3C 00 43 30 */	lis r0, 0x4330
/* 8023EC98  90 01 00 18 */	stw r0, 0x18(r1)
/* 8023EC9C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8023ECA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023ECA4  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8023ECA8  C0 02 B2 00 */	lfs f0, lit_4194(r2)
/* 8023ECAC  EC 01 00 24 */	fdivs f0, f1, f0
/* 8023ECB0  D0 1F 01 78 */	stfs f0, 0x178(r31)
/* 8023ECB4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023ECB8  3C 80 69 74 */	lis r4, 0x6974 /* 0x69745F6E@ha */
/* 8023ECBC  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x69745F6E@l */
/* 8023ECC0  3C 80 73 65 */	lis r4, 0x7365 /* 0x7365745F@ha */
/* 8023ECC4  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x7365745F@l */
/* 8023ECC8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023ECCC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023ECD0  7D 89 03 A6 */	mtctr r12
/* 8023ECD4  4E 80 04 21 */	bctrl 
/* 8023ECD8  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8023ECDC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8023ECE0  EC 41 00 28 */	fsubs f2, f1, f0
/* 8023ECE4  80 9F 00 E0 */	lwz r4, 0xe0(r31)
/* 8023ECE8  A0 04 00 04 */	lhz r0, 4(r4)
/* 8023ECEC  C8 22 B2 10 */	lfd f1, lit_4199(r2)
/* 8023ECF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023ECF4  3C 00 43 30 */	lis r0, 0x4330
/* 8023ECF8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8023ECFC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8023ED00  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023ED04  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8023ED08  C0 02 B2 00 */	lfs f0, lit_4194(r2)
/* 8023ED0C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8023ED10  D0 1F 01 7C */	stfs f0, 0x17c(r31)
/* 8023ED14  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023ED18  3C 80 69 74 */	lis r4, 0x6974 /* 0x69745F6E@ha */
/* 8023ED1C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x69745F6E@l */
/* 8023ED20  3C 80 73 65 */	lis r4, 0x7365 /* 0x7365745F@ha */
/* 8023ED24  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x7365745F@l */
/* 8023ED28  81 83 00 00 */	lwz r12, 0(r3)
/* 8023ED2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023ED30  7D 89 03 A6 */	mtctr r12
/* 8023ED34  4E 80 04 21 */	bctrl 
/* 8023ED38  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8023ED3C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8023ED40  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023ED44  D0 1F 01 70 */	stfs f0, 0x170(r31)
/* 8023ED48  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023ED4C  3C 80 69 74 */	lis r4, 0x6974 /* 0x69745F6E@ha */
/* 8023ED50  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x69745F6E@l */
/* 8023ED54  3C 80 73 65 */	lis r4, 0x7365 /* 0x7365745F@ha */
/* 8023ED58  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x7365745F@l */
/* 8023ED5C  81 83 00 00 */	lwz r12, 0(r3)
/* 8023ED60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023ED64  7D 89 03 A6 */	mtctr r12
/* 8023ED68  4E 80 04 21 */	bctrl 
/* 8023ED6C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8023ED70  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8023ED74  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023ED78  D0 1F 01 74 */	stfs f0, 0x174(r31)
/* 8023ED7C  3B 20 00 00 */	li r25, 0
/* 8023ED80  3B 60 00 00 */	li r27, 0
lbl_8023ED84:
/* 8023ED84  38 1B 00 C8 */	addi r0, r27, 0xc8
/* 8023ED88  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8023ED8C  28 03 00 00 */	cmplwi r3, 0
/* 8023ED90  41 82 00 34 */	beq lbl_8023EDC4
/* 8023ED94  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 8023ED98  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8023ED9C  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 8023EDA0  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8023EDA4  81 83 00 00 */	lwz r12, 0(r3)
/* 8023EDA8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023EDAC  7D 89 03 A6 */	mtctr r12
/* 8023EDB0  4E 80 04 21 */	bctrl 
/* 8023EDB4  38 1B 00 C8 */	addi r0, r27, 0xc8
/* 8023EDB8  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8023EDBC  38 80 00 04 */	li r4, 4
/* 8023EDC0  48 0B 89 39 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
lbl_8023EDC4:
/* 8023EDC4  3B 39 00 01 */	addi r25, r25, 1
/* 8023EDC8  2C 19 00 03 */	cmpwi r25, 3
/* 8023EDCC  3B 7B 00 04 */	addi r27, r27, 4
/* 8023EDD0  41 80 FF B4 */	blt lbl_8023ED84
/* 8023EDD4  38 60 00 24 */	li r3, 0x24
/* 8023EDD8  48 08 FE 75 */	bl __nw__FUl
/* 8023EDDC  7C 60 1B 79 */	or. r0, r3, r3
/* 8023EDE0  41 82 00 0C */	beq lbl_8023EDEC
/* 8023EDE4  4B FF CB D1 */	bl __ct__15dMsgScrnArrow_cFv
/* 8023EDE8  7C 60 1B 78 */	mr r0, r3
lbl_8023EDEC:
/* 8023EDEC  90 1F 00 EC */	stw r0, 0xec(r31)
/* 8023EDF0  38 60 01 18 */	li r3, 0x118
/* 8023EDF4  48 08 FE 59 */	bl __nw__FUl
/* 8023EDF8  7C 60 1B 79 */	or. r0, r3, r3
/* 8023EDFC  41 82 00 0C */	beq lbl_8023EE08
/* 8023EE00  4B FF A2 B5 */	bl __ct__17dMsgScrn3Select_cFv
/* 8023EE04  7C 60 1B 78 */	mr r0, r3
lbl_8023EE08:
/* 8023EE08  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 8023EE0C  38 60 00 24 */	li r3, 0x24
/* 8023EE10  48 08 FE 3D */	bl __nw__FUl
/* 8023EE14  7C 60 1B 79 */	or. r0, r3, r3
/* 8023EE18  41 82 00 14 */	beq lbl_8023EE2C
/* 8023EE1C  38 80 00 03 */	li r4, 3
/* 8023EE20  7F A5 EB 78 */	mr r5, r29
/* 8023EE24  48 00 6B 11 */	bl __ct__15dMsgScrnLight_cFUcUc
/* 8023EE28  7C 60 1B 78 */	mr r0, r3
lbl_8023EE2C:
/* 8023EE2C  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 8023EE30  80 7F 01 38 */	lwz r3, 0x138(r31)
/* 8023EE34  38 80 10 6A */	li r4, 0x106a
/* 8023EE38  38 A0 00 20 */	li r5, 0x20
/* 8023EE3C  48 08 F6 99 */	bl alloc__7JKRHeapFUli
/* 8023EE40  7C 7B 1B 78 */	mr r27, r3
/* 8023EE44  38 80 00 00 */	li r4, 0
/* 8023EE48  38 A0 10 6A */	li r5, 0x106a
/* 8023EE4C  4B DC 46 0D */	bl memset
/* 8023EE50  93 7F 00 50 */	stw r27, 0x50(r31)
/* 8023EE54  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023EE58  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F616C6C@ha */
/* 8023EE5C  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x5F616C6C@l */
/* 8023EE60  38 A0 00 6E */	li r5, 0x6e
/* 8023EE64  81 83 00 00 */	lwz r12, 0(r3)
/* 8023EE68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023EE6C  7D 89 03 A6 */	mtctr r12
/* 8023EE70  4E 80 04 21 */	bctrl 
/* 8023EE74  48 0B 82 8D */	bl getBounds__7J2DPaneFv
/* 8023EE78  C0 03 00 00 */	lfs f0, 0(r3)
/* 8023EE7C  D0 1F 01 60 */	stfs f0, 0x160(r31)
/* 8023EE80  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023EE84  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F616C6C@ha */
/* 8023EE88  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x5F616C6C@l */
/* 8023EE8C  38 A0 00 6E */	li r5, 0x6e
/* 8023EE90  81 83 00 00 */	lwz r12, 0(r3)
/* 8023EE94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023EE98  7D 89 03 A6 */	mtctr r12
/* 8023EE9C  4E 80 04 21 */	bctrl 
/* 8023EEA0  48 0B 82 61 */	bl getBounds__7J2DPaneFv
/* 8023EEA4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8023EEA8  D0 1F 01 64 */	stfs f0, 0x164(r31)
/* 8023EEAC  C0 02 B2 04 */	lfs f0, lit_4195(r2)
/* 8023EEB0  D0 1F 01 80 */	stfs f0, 0x180(r31)
/* 8023EEB4  D0 1F 01 84 */	stfs f0, 0x184(r31)
/* 8023EEB8  38 80 00 00 */	li r4, 0
/* 8023EEBC  38 A0 00 00 */	li r5, 0
/* 8023EEC0  3C C0 80 43 */	lis r6, g_MsgObject_HIO_c@ha
/* 8023EEC4  38 E6 02 8C */	addi r7, r6, g_MsgObject_HIO_c@l
/* 8023EEC8  38 00 00 03 */	li r0, 3
/* 8023EECC  7C 09 03 A6 */	mtctr r0
lbl_8023EED0:
/* 8023EED0  7C C7 2A 14 */	add r6, r7, r5
/* 8023EED4  C0 06 02 58 */	lfs f0, 0x258(r6)
/* 8023EED8  38 04 01 88 */	addi r0, r4, 0x188
/* 8023EEDC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8023EEE0  38 84 00 04 */	addi r4, r4, 4
/* 8023EEE4  38 A5 00 28 */	addi r5, r5, 0x28
/* 8023EEE8  42 00 FF E8 */	bdnz lbl_8023EED0
/* 8023EEEC  C0 02 B2 04 */	lfs f0, lit_4195(r2)
/* 8023EEF0  D0 1F 01 94 */	stfs f0, 0x194(r31)
/* 8023EEF4  38 60 00 6C */	li r3, 0x6c
/* 8023EEF8  48 08 FD 55 */	bl __nw__FUl
/* 8023EEFC  7C 60 1B 79 */	or. r0, r3, r3
/* 8023EF00  41 82 00 28 */	beq lbl_8023EF28
/* 8023EF04  80 9F 00 04 */	lwz r4, 4(r31)
/* 8023EF08  3C A0 79 61 */	lis r5, 0x7961 /* 0x79615F6E@ha */
/* 8023EF0C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x79615F6E@l */
/* 8023EF10  3C A0 73 65 */	lis r5, 0x7365 /* 0x7365745F@ha */
/* 8023EF14  38 A5 74 5F */	addi r5, r5, 0x745F /* 0x7365745F@l */
/* 8023EF18  38 E0 00 00 */	li r7, 0
/* 8023EF1C  39 00 00 00 */	li r8, 0
/* 8023EF20  48 01 4A 65 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023EF24  7C 60 1B 78 */	mr r0, r3
lbl_8023EF28:
/* 8023EF28  90 1F 01 08 */	stw r0, 0x108(r31)
/* 8023EF2C  38 60 00 6C */	li r3, 0x6c
/* 8023EF30  48 08 FD 1D */	bl __nw__FUl
/* 8023EF34  7C 60 1B 79 */	or. r0, r3, r3
/* 8023EF38  41 82 00 28 */	beq lbl_8023EF60
/* 8023EF3C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8023EF40  3C A0 6E 75 */	lis r5, 0x6E75 /* 0x6E756C6C@ha */
/* 8023EF44  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x6E756C6C@l */
/* 8023EF48  3C A0 00 6D */	lis r5, 0x006D /* 0x006D675F@ha */
/* 8023EF4C  38 A5 67 5F */	addi r5, r5, 0x675F /* 0x006D675F@l */
/* 8023EF50  38 E0 00 00 */	li r7, 0
/* 8023EF54  39 00 00 00 */	li r8, 0
/* 8023EF58  48 01 4A 2D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023EF5C  7C 60 1B 78 */	mr r0, r3
lbl_8023EF60:
/* 8023EF60  90 1F 01 0C */	stw r0, 0x10c(r31)
/* 8023EF64  38 60 00 6C */	li r3, 0x6c
/* 8023EF68  48 08 FC E5 */	bl __nw__FUl
/* 8023EF6C  7C 60 1B 79 */	or. r0, r3, r3
/* 8023EF70  41 82 00 28 */	beq lbl_8023EF98
/* 8023EF74  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 8023EF78  3C A0 6E 75 */	lis r5, 0x6E75 /* 0x6E756C6C@ha */
/* 8023EF7C  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x6E756C6C@l */
/* 8023EF80  3C A0 00 6D */	lis r5, 0x006D /* 0x006D675F@ha */
/* 8023EF84  38 A5 67 5F */	addi r5, r5, 0x675F /* 0x006D675F@l */
/* 8023EF88  38 E0 00 00 */	li r7, 0
/* 8023EF8C  39 00 00 00 */	li r8, 0
/* 8023EF90  48 01 49 F5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023EF94  7C 60 1B 78 */	mr r0, r3
lbl_8023EF98:
/* 8023EF98  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8023EF9C  38 60 00 04 */	li r3, 4
/* 8023EFA0  64 63 00 04 */	oris r3, r3, 4
/* 8023EFA4  7C 72 E3 A6 */	mtspr 0x392, r3
/* 8023EFA8  38 60 00 05 */	li r3, 5
/* 8023EFAC  64 63 00 05 */	oris r3, r3, 5
/* 8023EFB0  7C 73 E3 A6 */	mtspr 0x393, r3
/* 8023EFB4  38 60 00 06 */	li r3, 6
/* 8023EFB8  64 63 00 06 */	oris r3, r3, 6
/* 8023EFBC  7C 74 E3 A6 */	mtspr 0x394, r3
/* 8023EFC0  38 60 00 07 */	li r3, 7
/* 8023EFC4  64 63 00 07 */	oris r3, r3, 7
/* 8023EFC8  7C 75 E3 A6 */	mtspr 0x395, r3
/* 8023EFCC  7F E3 FB 78 */	mr r3, r31
/* 8023EFD0  7F 84 E3 78 */	mr r4, r28
/* 8023EFD4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8023EFD8  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8023EFDC  7D 89 03 A6 */	mtctr r12
/* 8023EFE0  4E 80 04 21 */	bctrl 
/* 8023EFE4  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_item__stringBase0@ha
/* 8023EFE8  38 84 99 90 */	addi r4, r4, msg_scrn_d_msg_scrn_item__stringBase0@l
/* 8023EFEC  38 64 00 39 */	addi r3, r4, 0x39
/* 8023EFF0  80 9E 5C 78 */	lwz r4, 0x5c78(r30)
/* 8023EFF4  48 09 52 7D */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8023EFF8  48 0C 9A 75 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8023EFFC  90 7F 01 18 */	stw r3, 0x118(r31)
/* 8023F000  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 8023F004  80 9F 00 04 */	lwz r4, 4(r31)
/* 8023F008  81 83 00 00 */	lwz r12, 0(r3)
/* 8023F00C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8023F010  7D 89 03 A6 */	mtctr r12
/* 8023F014  4E 80 04 21 */	bctrl 
/* 8023F018  C0 02 B2 04 */	lfs f0, lit_4195(r2)
/* 8023F01C  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 8023F020  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_item__stringBase0@ha
/* 8023F024  38 84 99 90 */	addi r4, r4, msg_scrn_d_msg_scrn_item__stringBase0@l
/* 8023F028  38 64 00 53 */	addi r3, r4, 0x53
/* 8023F02C  80 9E 5C 78 */	lwz r4, 0x5c78(r30)
/* 8023F030  48 09 52 41 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8023F034  48 0C 9A 39 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8023F038  90 7F 01 2C */	stw r3, 0x12c(r31)
/* 8023F03C  80 7F 01 2C */	lwz r3, 0x12c(r31)
/* 8023F040  80 9F 00 04 */	lwz r4, 4(r31)
/* 8023F044  81 83 00 00 */	lwz r12, 0(r3)
/* 8023F048  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8023F04C  7D 89 03 A6 */	mtctr r12
/* 8023F050  4E 80 04 21 */	bctrl 
/* 8023F054  C0 02 B2 04 */	lfs f0, lit_4195(r2)
/* 8023F058  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 8023F05C  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_item__stringBase0@ha
/* 8023F060  38 84 99 90 */	addi r4, r4, msg_scrn_d_msg_scrn_item__stringBase0@l
/* 8023F064  38 64 00 6D */	addi r3, r4, 0x6d
/* 8023F068  80 9E 5C 78 */	lwz r4, 0x5c78(r30)
/* 8023F06C  48 09 52 05 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8023F070  48 0C 99 FD */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8023F074  90 7F 01 30 */	stw r3, 0x130(r31)
/* 8023F078  80 7F 01 30 */	lwz r3, 0x130(r31)
/* 8023F07C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8023F080  81 83 00 00 */	lwz r12, 0(r3)
/* 8023F084  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8023F088  7D 89 03 A6 */	mtctr r12
/* 8023F08C  4E 80 04 21 */	bctrl 
/* 8023F090  C0 02 B2 04 */	lfs f0, lit_4195(r2)
/* 8023F094  D0 1F 01 58 */	stfs f0, 0x158(r31)
/* 8023F098  38 00 00 00 */	li r0, 0
/* 8023F09C  98 1F 01 9D */	stb r0, 0x19d(r31)
/* 8023F0A0  38 60 00 6C */	li r3, 0x6c
/* 8023F0A4  48 08 FB A9 */	bl __nw__FUl
/* 8023F0A8  7C 60 1B 79 */	or. r0, r3, r3
/* 8023F0AC  41 82 00 24 */	beq lbl_8023F0D0
/* 8023F0B0  80 9F 00 04 */	lwz r4, 4(r31)
/* 8023F0B4  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 8023F0B8  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 8023F0BC  38 A0 00 6E */	li r5, 0x6e
/* 8023F0C0  38 E0 00 03 */	li r7, 3
/* 8023F0C4  39 00 00 00 */	li r8, 0
/* 8023F0C8  48 01 48 BD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023F0CC  7C 60 1B 78 */	mr r0, r3
lbl_8023F0D0:
/* 8023F0D0  90 1F 00 08 */	stw r0, 8(r31)
/* 8023F0D4  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 8023F0D8  38 A4 02 8C */	addi r5, r4, g_MsgObject_HIO_c@l
/* 8023F0DC  C0 25 00 A8 */	lfs f1, 0xa8(r5)
/* 8023F0E0  80 9F 00 08 */	lwz r4, 8(r31)
/* 8023F0E4  80 64 00 04 */	lwz r3, 4(r4)
/* 8023F0E8  C0 05 00 7C */	lfs f0, 0x7c(r5)
/* 8023F0EC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023F0F0  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8023F0F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8023F0F8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023F0FC  7D 89 03 A6 */	mtctr r12
/* 8023F100  4E 80 04 21 */	bctrl 
/* 8023F104  38 60 00 6C */	li r3, 0x6c
/* 8023F108  48 08 FB 45 */	bl __nw__FUl
/* 8023F10C  7C 60 1B 79 */	or. r0, r3, r3
/* 8023F110  41 82 00 28 */	beq lbl_8023F138
/* 8023F114  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 8023F118  3C A0 34 6C */	lis r5, 0x346C /* 0x346C696E@ha */
/* 8023F11C  38 C5 69 6E */	addi r6, r5, 0x696E /* 0x346C696E@l */
/* 8023F120  3C A0 6D 67 */	lis r5, 0x6D67 /* 0x6D675F65@ha */
/* 8023F124  38 A5 5F 65 */	addi r5, r5, 0x5F65 /* 0x6D675F65@l */
/* 8023F128  38 E0 00 00 */	li r7, 0
/* 8023F12C  39 00 00 00 */	li r8, 0
/* 8023F130  48 01 48 55 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023F134  7C 60 1B 78 */	mr r0, r3
lbl_8023F138:
/* 8023F138  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8023F13C  38 60 00 6C */	li r3, 0x6c
/* 8023F140  48 08 FB 0D */	bl __nw__FUl
/* 8023F144  7C 60 1B 79 */	or. r0, r3, r3
/* 8023F148  41 82 00 24 */	beq lbl_8023F16C
/* 8023F14C  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 8023F150  3C A0 74 34 */	lis r5, 0x7434 /* 0x74345F73@ha */
/* 8023F154  38 C5 5F 73 */	addi r6, r5, 0x5F73 /* 0x74345F73@l */
/* 8023F158  38 A0 00 00 */	li r5, 0
/* 8023F15C  38 E0 00 00 */	li r7, 0
/* 8023F160  39 00 00 00 */	li r8, 0
/* 8023F164  48 01 48 21 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023F168  7C 60 1B 78 */	mr r0, r3
lbl_8023F16C:
/* 8023F16C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8023F170  38 60 00 6C */	li r3, 0x6c
/* 8023F174  48 08 FA D9 */	bl __nw__FUl
/* 8023F178  7C 60 1B 79 */	or. r0, r3, r3
/* 8023F17C  41 82 00 24 */	beq lbl_8023F1A0
/* 8023F180  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 8023F184  3C A0 74 34 */	lis r5, 0x7434 /* 0x74345F77@ha */
/* 8023F188  38 C5 5F 77 */	addi r6, r5, 0x5F77 /* 0x74345F77@l */
/* 8023F18C  38 A0 00 00 */	li r5, 0
/* 8023F190  38 E0 00 00 */	li r7, 0
/* 8023F194  39 00 00 00 */	li r8, 0
/* 8023F198  48 01 47 ED */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023F19C  7C 60 1B 78 */	mr r0, r3
lbl_8023F1A0:
/* 8023F1A0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8023F1A4  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8023F1A8  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 8023F1AC  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8023F1B0  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F33@ha */
/* 8023F1B4  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x006E5F33@l */
/* 8023F1B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023F1BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023F1C0  7D 89 03 A6 */	mtctr r12
/* 8023F1C4  4E 80 04 21 */	bctrl 
/* 8023F1C8  38 00 00 00 */	li r0, 0
/* 8023F1CC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8023F1D0  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8023F1D4  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 8023F1D8  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8023F1DC  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3366@ha */
/* 8023F1E0  38 A4 33 66 */	addi r5, r4, 0x3366 /* 0x6E5F3366@l */
/* 8023F1E4  81 83 00 00 */	lwz r12, 0(r3)
/* 8023F1E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023F1EC  7D 89 03 A6 */	mtctr r12
/* 8023F1F0  4E 80 04 21 */	bctrl 
/* 8023F1F4  38 00 00 00 */	li r0, 0
/* 8023F1F8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8023F1FC  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8023F200  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 8023F204  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8023F208  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F6534@ha */
/* 8023F20C  38 A4 65 34 */	addi r5, r4, 0x6534 /* 0x6E5F6534@l */
/* 8023F210  81 83 00 00 */	lwz r12, 0(r3)
/* 8023F214  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023F218  7D 89 03 A6 */	mtctr r12
/* 8023F21C  4E 80 04 21 */	bctrl 
/* 8023F220  38 00 00 01 */	li r0, 1
/* 8023F224  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8023F228  3B 20 00 00 */	li r25, 0
/* 8023F22C  3B 80 00 00 */	li r28, 0
lbl_8023F230:
/* 8023F230  38 1C 00 0C */	addi r0, r28, 0xc
/* 8023F234  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8023F238  83 44 00 04 */	lwz r26, 4(r4)
/* 8023F23C  4B DD 57 B5 */	bl mDoExt_getMesgFont__Fv
/* 8023F240  7C 64 1B 78 */	mr r4, r3
/* 8023F244  7F 43 D3 78 */	mr r3, r26
/* 8023F248  81 9A 00 00 */	lwz r12, 0(r26)
/* 8023F24C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8023F250  7D 89 03 A6 */	mtctr r12
/* 8023F254  4E 80 04 21 */	bctrl 
/* 8023F258  38 1C 00 28 */	addi r0, r28, 0x28
/* 8023F25C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8023F260  28 04 00 00 */	cmplwi r4, 0
/* 8023F264  41 82 00 24 */	beq lbl_8023F288
/* 8023F268  83 44 00 04 */	lwz r26, 4(r4)
/* 8023F26C  4B DD 57 85 */	bl mDoExt_getMesgFont__Fv
/* 8023F270  7C 64 1B 78 */	mr r4, r3
/* 8023F274  7F 43 D3 78 */	mr r3, r26
/* 8023F278  81 9A 00 00 */	lwz r12, 0(r26)
/* 8023F27C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8023F280  7D 89 03 A6 */	mtctr r12
/* 8023F284  4E 80 04 21 */	bctrl 
lbl_8023F288:
/* 8023F288  3B 39 00 01 */	addi r25, r25, 1
/* 8023F28C  2C 19 00 03 */	cmpwi r25, 3
/* 8023F290  3B 9C 00 04 */	addi r28, r28, 4
/* 8023F294  41 80 FF 9C */	blt lbl_8023F230
/* 8023F298  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8023F29C  80 84 00 04 */	lwz r4, 4(r4)
/* 8023F2A0  C0 04 01 1C */	lfs f0, 0x11c(r4)
/* 8023F2A4  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 8023F2A8  C0 04 01 20 */	lfs f0, 0x120(r4)
/* 8023F2AC  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8023F2B0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8023F2B4  80 84 00 04 */	lwz r4, 4(r4)
/* 8023F2B8  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8023F2BC  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8023F2C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023F2C4  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8023F2C8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8023F2CC  80 84 00 04 */	lwz r4, 4(r4)
/* 8023F2D0  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 8023F2D4  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8023F2D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023F2DC  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8023F2E0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8023F2E4  80 84 00 04 */	lwz r4, 4(r4)
/* 8023F2E8  C0 04 01 18 */	lfs f0, 0x118(r4)
/* 8023F2EC  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 8023F2F0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8023F2F4  80 84 00 04 */	lwz r4, 4(r4)
/* 8023F2F8  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 8023F2FC  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8023F300  3B 20 00 00 */	li r25, 0
/* 8023F304  3B 80 00 00 */	li r28, 0
/* 8023F308  C3 E2 B2 08 */	lfs f31, lit_4196(r2)
lbl_8023F30C:
/* 8023F30C  38 1C 00 0C */	addi r0, r28, 0xc
/* 8023F310  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8023F314  80 84 00 04 */	lwz r4, 4(r4)
/* 8023F318  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8023F31C  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 8023F320  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8023F324  80 64 00 04 */	lwz r3, 4(r4)
/* 8023F328  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8023F32C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8023F330  EC 41 00 28 */	fsubs f2, f1, f0
/* 8023F334  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8023F338  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8023F33C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023F340  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8023F344  81 83 00 00 */	lwz r12, 0(r3)
/* 8023F348  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023F34C  7D 89 03 A6 */	mtctr r12
/* 8023F350  4E 80 04 21 */	bctrl 
/* 8023F354  3B 39 00 01 */	addi r25, r25, 1
/* 8023F358  2C 19 00 03 */	cmpwi r25, 3
/* 8023F35C  3B 9C 00 04 */	addi r28, r28, 4
/* 8023F360  41 80 FF AC */	blt lbl_8023F30C
/* 8023F364  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023F368  C3 E3 00 34 */	lfs f31, 0x34(r3)
/* 8023F36C  48 01 4F 7D */	bl getGlobalPosX__8CPaneMgrFv
/* 8023F370  C0 62 B2 0C */	lfs f3, lit_4197(r2)
/* 8023F374  C0 42 B1 FC */	lfs f2, lit_4193(r2)
/* 8023F378  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 8023F37C  3B 64 02 8C */	addi r27, r4, g_MsgObject_HIO_c@l
/* 8023F380  C0 1B 00 D8 */	lfs f0, 0xd8(r27)
/* 8023F384  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023F388  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8023F38C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8023F390  EC 01 00 2A */	fadds f0, f1, f0
/* 8023F394  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 8023F398  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023F39C  C3 E3 00 38 */	lfs f31, 0x38(r3)
/* 8023F3A0  48 01 4F C5 */	bl getGlobalPosY__8CPaneMgrFv
/* 8023F3A4  C0 62 B2 0C */	lfs f3, lit_4197(r2)
/* 8023F3A8  C0 42 B1 FC */	lfs f2, lit_4193(r2)
/* 8023F3AC  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 8023F3B0  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 8023F3B4  C0 04 00 DC */	lfs f0, 0xdc(r4)
/* 8023F3B8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023F3BC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8023F3C0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8023F3C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8023F3C8  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 8023F3CC  C0 1B 00 D8 */	lfs f0, 0xd8(r27)
/* 8023F3D0  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 8023F3D4  C0 04 00 DC */	lfs f0, 0xdc(r4)
/* 8023F3D8  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 8023F3DC  3B 20 00 00 */	li r25, 0
/* 8023F3E0  3B 80 00 00 */	li r28, 0
lbl_8023F3E4:
/* 8023F3E4  38 1C 00 28 */	addi r0, r28, 0x28
/* 8023F3E8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8023F3EC  28 04 00 00 */	cmplwi r4, 0
/* 8023F3F0  41 82 00 74 */	beq lbl_8023F464
/* 8023F3F4  80 84 00 04 */	lwz r4, 4(r4)
/* 8023F3F8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8023F3FC  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 8023F400  2C 19 00 00 */	cmpwi r25, 0
/* 8023F404  40 82 00 24 */	bne lbl_8023F428
/* 8023F408  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8023F40C  80 84 00 04 */	lwz r4, 4(r4)
/* 8023F410  C0 04 01 1C */	lfs f0, 0x11c(r4)
/* 8023F414  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 8023F418  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8023F41C  80 84 00 04 */	lwz r4, 4(r4)
/* 8023F420  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 8023F424  D0 1F 00 84 */	stfs f0, 0x84(r31)
lbl_8023F428:
/* 8023F428  38 1C 00 28 */	addi r0, r28, 0x28
/* 8023F42C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8023F430  80 64 00 04 */	lwz r3, 4(r4)
/* 8023F434  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8023F438  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8023F43C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8023F440  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8023F444  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8023F448  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023F44C  C0 02 B2 08 */	lfs f0, lit_4196(r2)
/* 8023F450  EC 20 00 72 */	fmuls f1, f0, f1
/* 8023F454  81 83 00 00 */	lwz r12, 0(r3)
/* 8023F458  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023F45C  7D 89 03 A6 */	mtctr r12
/* 8023F460  4E 80 04 21 */	bctrl 
lbl_8023F464:
/* 8023F464  3B 39 00 01 */	addi r25, r25, 1
/* 8023F468  2C 19 00 03 */	cmpwi r25, 3
/* 8023F46C  3B 9C 00 04 */	addi r28, r28, 4
/* 8023F470  41 80 FF 74 */	blt lbl_8023F3E4
/* 8023F474  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8023F478  4B FF B4 BD */	bl getTextBoxWidth__17dMsgScrn3Select_cFv
/* 8023F47C  D0 3F 00 A8 */	stfs f1, 0xa8(r31)
/* 8023F480  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8023F484  4B FF B4 C9 */	bl getFontSize__17dMsgScrn3Select_cFv
/* 8023F488  D0 3F 00 88 */	stfs f1, 0x88(r31)
/* 8023F48C  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8023F490  4B FF B4 CD */	bl getRubyFontSize__17dMsgScrn3Select_cFv
/* 8023F494  D0 3F 00 8C */	stfs f1, 0x8c(r31)
/* 8023F498  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8023F49C  4B FF B4 E1 */	bl getCharSpace__17dMsgScrn3Select_cFv
/* 8023F4A0  D0 3F 00 AC */	stfs f1, 0xac(r31)
/* 8023F4A4  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8023F4A8  4B FF B4 E5 */	bl getRubyCharSpace__17dMsgScrn3Select_cFv
/* 8023F4AC  D0 3F 00 B0 */	stfs f1, 0xb0(r31)
/* 8023F4B0  3B 20 00 00 */	li r25, 0
/* 8023F4B4  3B 80 00 00 */	li r28, 0
lbl_8023F4B8:
/* 8023F4B8  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8023F4BC  7F 24 CB 78 */	mr r4, r25
/* 8023F4C0  4B FF B4 ED */	bl getTextBoxGlobalPosX__17dMsgScrn3Select_cFi
/* 8023F4C4  38 1C 00 90 */	addi r0, r28, 0x90
/* 8023F4C8  7C 3F 05 2E */	stfsx f1, r31, r0
/* 8023F4CC  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8023F4D0  7F 24 CB 78 */	mr r4, r25
/* 8023F4D4  4B FF B5 05 */	bl getTextBoxGlobalPosY__17dMsgScrn3Select_cFi
/* 8023F4D8  38 1C 00 9C */	addi r0, r28, 0x9c
/* 8023F4DC  7C 3F 05 2E */	stfsx f1, r31, r0
/* 8023F4E0  3B 39 00 01 */	addi r25, r25, 1
/* 8023F4E4  2C 19 00 03 */	cmpwi r25, 3
/* 8023F4E8  3B 9C 00 04 */	addi r28, r28, 4
/* 8023F4EC  41 80 FF CC */	blt lbl_8023F4B8
/* 8023F4F0  C0 02 B2 04 */	lfs f0, lit_4195(r2)
/* 8023F4F4  D0 1F 01 3C */	stfs f0, 0x13c(r31)
/* 8023F4F8  7F E3 FB 78 */	mr r3, r31
/* 8023F4FC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8023F500  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8023F504  39 61 00 50 */	addi r11, r1, 0x50
/* 8023F508  48 12 2D 11 */	bl _restgpr_25
/* 8023F50C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8023F510  7C 08 03 A6 */	mtlr r0
/* 8023F514  38 21 00 60 */	addi r1, r1, 0x60
/* 8023F518  4E 80 00 20 */	blr 
