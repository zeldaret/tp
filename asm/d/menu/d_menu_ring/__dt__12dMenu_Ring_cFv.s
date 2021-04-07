lbl_801EA708:
/* 801EA708  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801EA70C  7C 08 02 A6 */	mflr r0
/* 801EA710  90 01 00 54 */	stw r0, 0x54(r1)
/* 801EA714  39 61 00 50 */	addi r11, r1, 0x50
/* 801EA718  48 17 7A 95 */	bl _savegpr_17
/* 801EA71C  7C 7F 1B 79 */	or. r31, r3, r3
/* 801EA720  7C 9E 23 78 */	mr r30, r4
/* 801EA724  41 82 04 3C */	beq lbl_801EAB60
/* 801EA728  3C 60 80 3C */	lis r3, __vt__12dMenu_Ring_c@ha /* 0x803BDF5C@ha */
/* 801EA72C  38 03 DF 5C */	addi r0, r3, __vt__12dMenu_Ring_c@l /* 0x803BDF5C@l */
/* 801EA730  90 1F 00 00 */	stw r0, 0(r31)
/* 801EA734  80 7F 00 04 */	lwz r3, 4(r31)
/* 801EA738  48 0E 40 4D */	bl getTotalFreeSize__7JKRHeapFv
/* 801EA73C  38 00 00 00 */	li r0, 0
/* 801EA740  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801EA744  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801EA748  98 03 00 E8 */	stb r0, 0xe8(r3)
/* 801EA74C  3A 60 00 00 */	li r19, 0
/* 801EA750  3B 80 00 00 */	li r28, 0
/* 801EA754  3B A0 00 00 */	li r29, 0
lbl_801EA758:
/* 801EA758  3A 40 00 00 */	li r18, 0
/* 801EA75C  3B 60 00 00 */	li r27, 0
/* 801EA760  3B 40 00 00 */	li r26, 0
/* 801EA764  7E DF EA 14 */	add r22, r31, r29
/* 801EA768  7E BF E2 14 */	add r21, r31, r28
lbl_801EA76C:
/* 801EA76C  3A 20 00 00 */	li r17, 0
/* 801EA770  3B 20 00 00 */	li r25, 0
/* 801EA774  7E F6 D2 14 */	add r23, r22, r26
/* 801EA778  7F 38 CB 78 */	mr r24, r25
lbl_801EA77C:
/* 801EA77C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801EA780  3A 99 01 F0 */	addi r20, r25, 0x1f0
/* 801EA784  7C 97 A0 2E */	lwzx r4, r23, r20
/* 801EA788  48 0E 3D C1 */	bl free__7JKRHeapFPv
/* 801EA78C  7F 17 A1 2E */	stwx r24, r23, r20
/* 801EA790  3A 31 00 01 */	addi r17, r17, 1
/* 801EA794  2C 11 00 02 */	cmpwi r17, 2
/* 801EA798  3B 39 00 04 */	addi r25, r25, 4
/* 801EA79C  41 80 FF E0 */	blt lbl_801EA77C
/* 801EA7A0  3A 9B 00 68 */	addi r20, r27, 0x68
/* 801EA7A4  7C 75 A0 2E */	lwzx r3, r21, r20
/* 801EA7A8  28 03 00 00 */	cmplwi r3, 0
/* 801EA7AC  41 82 00 24 */	beq lbl_801EA7D0
/* 801EA7B0  41 82 00 18 */	beq lbl_801EA7C8
/* 801EA7B4  38 80 00 01 */	li r4, 1
/* 801EA7B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA7BC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA7C0  7D 89 03 A6 */	mtctr r12
/* 801EA7C4  4E 80 04 21 */	bctrl 
lbl_801EA7C8:
/* 801EA7C8  38 00 00 00 */	li r0, 0
/* 801EA7CC  7C 15 A1 2E */	stwx r0, r21, r20
lbl_801EA7D0:
/* 801EA7D0  3A 52 00 01 */	addi r18, r18, 1
/* 801EA7D4  2C 12 00 03 */	cmpwi r18, 3
/* 801EA7D8  3B 7B 00 04 */	addi r27, r27, 4
/* 801EA7DC  3B 5A 00 08 */	addi r26, r26, 8
/* 801EA7E0  41 80 FF 8C */	blt lbl_801EA76C
/* 801EA7E4  3A 73 00 01 */	addi r19, r19, 1
/* 801EA7E8  2C 13 00 04 */	cmpwi r19, 4
/* 801EA7EC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 801EA7F0  3B BD 00 18 */	addi r29, r29, 0x18
/* 801EA7F4  41 80 FF 64 */	blt lbl_801EA758
/* 801EA7F8  3A 20 00 00 */	li r17, 0
/* 801EA7FC  3B 80 00 00 */	li r28, 0
/* 801EA800  3B 20 00 00 */	li r25, 0
lbl_801EA804:
/* 801EA804  3A 9C 01 BC */	addi r20, r28, 0x1bc
/* 801EA808  7C 7F A0 2E */	lwzx r3, r31, r20
/* 801EA80C  28 03 00 00 */	cmplwi r3, 0
/* 801EA810  41 82 00 20 */	beq lbl_801EA830
/* 801EA814  41 82 00 18 */	beq lbl_801EA82C
/* 801EA818  38 80 00 01 */	li r4, 1
/* 801EA81C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA820  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA824  7D 89 03 A6 */	mtctr r12
/* 801EA828  4E 80 04 21 */	bctrl 
lbl_801EA82C:
/* 801EA82C  7F 3F A1 2E */	stwx r25, r31, r20
lbl_801EA830:
/* 801EA830  3A 31 00 01 */	addi r17, r17, 1
/* 801EA834  2C 11 00 03 */	cmpwi r17, 3
/* 801EA838  3B 9C 00 04 */	addi r28, r28, 4
/* 801EA83C  41 80 FF C8 */	blt lbl_801EA804
/* 801EA840  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 801EA844  28 03 00 00 */	cmplwi r3, 0
/* 801EA848  41 82 00 18 */	beq lbl_801EA860
/* 801EA84C  38 80 00 01 */	li r4, 1
/* 801EA850  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA854  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA858  7D 89 03 A6 */	mtctr r12
/* 801EA85C  4E 80 04 21 */	bctrl 
lbl_801EA860:
/* 801EA860  38 00 00 00 */	li r0, 0
/* 801EA864  90 1F 00 54 */	stw r0, 0x54(r31)
/* 801EA868  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801EA86C  28 03 00 00 */	cmplwi r3, 0
/* 801EA870  41 82 00 18 */	beq lbl_801EA888
/* 801EA874  38 80 00 01 */	li r4, 1
/* 801EA878  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA87C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA880  7D 89 03 A6 */	mtctr r12
/* 801EA884  4E 80 04 21 */	bctrl 
lbl_801EA888:
/* 801EA888  38 00 00 00 */	li r0, 0
/* 801EA88C  90 1F 00 58 */	stw r0, 0x58(r31)
/* 801EA890  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801EA894  28 03 00 00 */	cmplwi r3, 0
/* 801EA898  41 82 00 18 */	beq lbl_801EA8B0
/* 801EA89C  38 80 00 01 */	li r4, 1
/* 801EA8A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA8A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA8A8  7D 89 03 A6 */	mtctr r12
/* 801EA8AC  4E 80 04 21 */	bctrl 
lbl_801EA8B0:
/* 801EA8B0  3B 20 00 00 */	li r25, 0
/* 801EA8B4  93 3F 00 18 */	stw r25, 0x18(r31)
/* 801EA8B8  3A 20 00 00 */	li r17, 0
/* 801EA8BC  3B 80 00 00 */	li r28, 0
lbl_801EA8C0:
/* 801EA8C0  3A 9C 00 24 */	addi r20, r28, 0x24
/* 801EA8C4  7C 7F A0 2E */	lwzx r3, r31, r20
/* 801EA8C8  28 03 00 00 */	cmplwi r3, 0
/* 801EA8CC  41 82 00 20 */	beq lbl_801EA8EC
/* 801EA8D0  41 82 00 18 */	beq lbl_801EA8E8
/* 801EA8D4  38 80 00 01 */	li r4, 1
/* 801EA8D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA8DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA8E0  7D 89 03 A6 */	mtctr r12
/* 801EA8E4  4E 80 04 21 */	bctrl 
lbl_801EA8E8:
/* 801EA8E8  7F 3F A1 2E */	stwx r25, r31, r20
lbl_801EA8EC:
/* 801EA8EC  3A 31 00 01 */	addi r17, r17, 1
/* 801EA8F0  2C 11 00 0A */	cmpwi r17, 0xa
/* 801EA8F4  3B 9C 00 04 */	addi r28, r28, 4
/* 801EA8F8  41 80 FF C8 */	blt lbl_801EA8C0
/* 801EA8FC  3A 20 00 00 */	li r17, 0
/* 801EA900  3B A0 00 00 */	li r29, 0
lbl_801EA904:
/* 801EA904  3A 40 00 00 */	li r18, 0
/* 801EA908  3B 80 00 00 */	li r28, 0
/* 801EA90C  7E BF EA 14 */	add r21, r31, r29
lbl_801EA910:
/* 801EA910  7E 95 E2 14 */	add r20, r21, r28
/* 801EA914  80 74 00 98 */	lwz r3, 0x98(r20)
/* 801EA918  28 03 00 00 */	cmplwi r3, 0
/* 801EA91C  41 82 00 24 */	beq lbl_801EA940
/* 801EA920  41 82 00 18 */	beq lbl_801EA938
/* 801EA924  38 80 00 01 */	li r4, 1
/* 801EA928  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA92C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA930  7D 89 03 A6 */	mtctr r12
/* 801EA934  4E 80 04 21 */	bctrl 
lbl_801EA938:
/* 801EA938  38 00 00 00 */	li r0, 0
/* 801EA93C  90 14 00 98 */	stw r0, 0x98(r20)
lbl_801EA940:
/* 801EA940  80 94 02 50 */	lwz r4, 0x250(r20)
/* 801EA944  28 04 00 00 */	cmplwi r4, 0
/* 801EA948  41 82 00 14 */	beq lbl_801EA95C
/* 801EA94C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801EA950  48 0E 3B F9 */	bl free__7JKRHeapFPv
/* 801EA954  38 00 00 00 */	li r0, 0
/* 801EA958  90 14 02 50 */	stw r0, 0x250(r20)
lbl_801EA95C:
/* 801EA95C  3A 52 00 01 */	addi r18, r18, 1
/* 801EA960  2C 12 00 03 */	cmpwi r18, 3
/* 801EA964  3B 9C 00 04 */	addi r28, r28, 4
/* 801EA968  41 80 FF A8 */	blt lbl_801EA910
/* 801EA96C  3A 31 00 01 */	addi r17, r17, 1
/* 801EA970  2C 11 00 18 */	cmpwi r17, 0x18
/* 801EA974  3B BD 00 0C */	addi r29, r29, 0xc
/* 801EA978  41 80 FF 8C */	blt lbl_801EA904
/* 801EA97C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801EA980  38 80 00 01 */	li r4, 1
/* 801EA984  48 05 F3 A5 */	bl __dt__12dMsgString_cFv
/* 801EA988  38 00 00 00 */	li r0, 0
/* 801EA98C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801EA990  80 7F 00 04 */	lwz r3, 4(r31)
/* 801EA994  48 0E 3D F1 */	bl getTotalFreeSize__7JKRHeapFv
/* 801EA998  80 7F 01 B8 */	lwz r3, 0x1b8(r31)
/* 801EA99C  28 03 00 00 */	cmplwi r3, 0
/* 801EA9A0  41 82 00 18 */	beq lbl_801EA9B8
/* 801EA9A4  38 80 00 01 */	li r4, 1
/* 801EA9A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA9AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA9B0  7D 89 03 A6 */	mtctr r12
/* 801EA9B4  4E 80 04 21 */	bctrl 
lbl_801EA9B8:
/* 801EA9B8  38 00 00 00 */	li r0, 0
/* 801EA9BC  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 801EA9C0  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801EA9C4  28 03 00 00 */	cmplwi r3, 0
/* 801EA9C8  41 82 00 18 */	beq lbl_801EA9E0
/* 801EA9CC  38 80 00 01 */	li r4, 1
/* 801EA9D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA9D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EA9D8  7D 89 03 A6 */	mtctr r12
/* 801EA9DC  4E 80 04 21 */	bctrl 
lbl_801EA9E0:
/* 801EA9E0  38 00 00 00 */	li r0, 0
/* 801EA9E4  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 801EA9E8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801EA9EC  28 03 00 00 */	cmplwi r3, 0
/* 801EA9F0  41 82 00 18 */	beq lbl_801EAA08
/* 801EA9F4  38 80 00 01 */	li r4, 1
/* 801EA9F8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EA9FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EAA00  7D 89 03 A6 */	mtctr r12
/* 801EAA04  4E 80 04 21 */	bctrl 
lbl_801EAA08:
/* 801EAA08  38 00 00 00 */	li r0, 0
/* 801EAA0C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801EAA10  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801EAA14  28 03 00 00 */	cmplwi r3, 0
/* 801EAA18  41 82 00 18 */	beq lbl_801EAA30
/* 801EAA1C  38 80 00 01 */	li r4, 1
/* 801EAA20  81 83 00 00 */	lwz r12, 0(r3)
/* 801EAA24  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EAA28  7D 89 03 A6 */	mtctr r12
/* 801EAA2C  4E 80 04 21 */	bctrl 
lbl_801EAA30:
/* 801EAA30  3B 20 00 00 */	li r25, 0
/* 801EAA34  93 3F 00 64 */	stw r25, 0x64(r31)
/* 801EAA38  3A 20 00 00 */	li r17, 0
/* 801EAA3C  3B A0 00 00 */	li r29, 0
lbl_801EAA40:
/* 801EAA40  3A 9D 03 74 */	addi r20, r29, 0x374
/* 801EAA44  7C 9F A0 2E */	lwzx r4, r31, r20
/* 801EAA48  28 04 00 00 */	cmplwi r4, 0
/* 801EAA4C  41 82 00 10 */	beq lbl_801EAA5C
/* 801EAA50  80 7F 00 04 */	lwz r3, 4(r31)
/* 801EAA54  48 0E 3A F5 */	bl free__7JKRHeapFPv
/* 801EAA58  7F 3F A1 2E */	stwx r25, r31, r20
lbl_801EAA5C:
/* 801EAA5C  3A 31 00 01 */	addi r17, r17, 1
/* 801EAA60  2C 11 00 03 */	cmpwi r17, 3
/* 801EAA64  3B BD 00 04 */	addi r29, r29, 4
/* 801EAA68  41 80 FF D8 */	blt lbl_801EAA40
/* 801EAA6C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801EAA70  28 03 00 00 */	cmplwi r3, 0
/* 801EAA74  41 82 00 18 */	beq lbl_801EAA8C
/* 801EAA78  38 80 00 01 */	li r4, 1
/* 801EAA7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EAA80  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EAA84  7D 89 03 A6 */	mtctr r12
/* 801EAA88  4E 80 04 21 */	bctrl 
lbl_801EAA8C:
/* 801EAA8C  38 00 00 00 */	li r0, 0
/* 801EAA90  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801EAA94  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801EAA98  28 03 00 00 */	cmplwi r3, 0
/* 801EAA9C  41 82 00 18 */	beq lbl_801EAAB4
/* 801EAAA0  38 80 00 01 */	li r4, 1
/* 801EAAA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EAAA8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EAAAC  7D 89 03 A6 */	mtctr r12
/* 801EAAB0  4E 80 04 21 */	bctrl 
lbl_801EAAB4:
/* 801EAAB4  38 00 00 00 */	li r0, 0
/* 801EAAB8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 801EAABC  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 801EAAC0  28 03 00 00 */	cmplwi r3, 0
/* 801EAAC4  41 82 00 18 */	beq lbl_801EAADC
/* 801EAAC8  38 80 00 01 */	li r4, 1
/* 801EAACC  81 83 00 00 */	lwz r12, 0(r3)
/* 801EAAD0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EAAD4  7D 89 03 A6 */	mtctr r12
/* 801EAAD8  4E 80 04 21 */	bctrl 
lbl_801EAADC:
/* 801EAADC  38 00 00 00 */	li r0, 0
/* 801EAAE0  90 1F 00 50 */	stw r0, 0x50(r31)
/* 801EAAE4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801EAAE8  28 03 00 00 */	cmplwi r3, 0
/* 801EAAEC  41 82 00 18 */	beq lbl_801EAB04
/* 801EAAF0  38 80 00 01 */	li r4, 1
/* 801EAAF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EAAF8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EAAFC  7D 89 03 A6 */	mtctr r12
/* 801EAB00  4E 80 04 21 */	bctrl 
lbl_801EAB04:
/* 801EAB04  38 00 00 00 */	li r0, 0
/* 801EAB08  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801EAB0C  80 7F 03 70 */	lwz r3, 0x370(r31)
/* 801EAB10  28 03 00 00 */	cmplwi r3, 0
/* 801EAB14  41 82 00 18 */	beq lbl_801EAB2C
/* 801EAB18  38 80 00 01 */	li r4, 1
/* 801EAB1C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EAB20  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EAB24  7D 89 03 A6 */	mtctr r12
/* 801EAB28  4E 80 04 21 */	bctrl 
lbl_801EAB2C:
/* 801EAB2C  38 00 00 00 */	li r0, 0
/* 801EAB30  90 1F 03 70 */	stw r0, 0x370(r31)
/* 801EAB34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EAB38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EAB3C  80 63 5C E8 */	lwz r3, 0x5ce8(r3)
/* 801EAB40  81 83 00 00 */	lwz r12, 0(r3)
/* 801EAB44  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801EAB48  7D 89 03 A6 */	mtctr r12
/* 801EAB4C  4E 80 04 21 */	bctrl 
/* 801EAB50  7F C0 07 35 */	extsh. r0, r30
/* 801EAB54  40 81 00 0C */	ble lbl_801EAB60
/* 801EAB58  7F E3 FB 78 */	mr r3, r31
/* 801EAB5C  48 0E 41 E1 */	bl __dl__FPv
lbl_801EAB60:
/* 801EAB60  7F E3 FB 78 */	mr r3, r31
/* 801EAB64  39 61 00 50 */	addi r11, r1, 0x50
/* 801EAB68  48 17 76 91 */	bl _restgpr_17
/* 801EAB6C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801EAB70  7C 08 03 A6 */	mtlr r0
/* 801EAB74  38 21 00 50 */	addi r1, r1, 0x50
/* 801EAB78  4E 80 00 20 */	blr 
