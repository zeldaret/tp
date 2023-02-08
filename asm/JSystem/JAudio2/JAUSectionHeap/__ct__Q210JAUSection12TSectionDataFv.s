lbl_802A4EE8:
/* 802A4EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4EEC  7C 08 02 A6 */	mflr r0
/* 802A4EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4EF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A4EF8  7C 7F 1B 78 */	mr r31, r3
/* 802A4EFC  48 00 1B 5D */	bl __ct__23JAUDynamicSeqDataBlocksFv
/* 802A4F00  38 7F 00 28 */	addi r3, r31, 0x28
/* 802A4F04  48 03 70 11 */	bl initiate__10JSUPtrListFv
/* 802A4F08  38 7F 00 34 */	addi r3, r31, 0x34
/* 802A4F0C  48 00 17 51 */	bl func_802A665C
/* 802A4F10  38 7F 00 54 */	addi r3, r31, 0x54
/* 802A4F14  48 00 17 49 */	bl func_802A665C
/* 802A4F18  38 7F 00 74 */	addi r3, r31, 0x74
/* 802A4F1C  48 03 6F F9 */	bl initiate__10JSUPtrListFv
/* 802A4F20  38 7F 00 8C */	addi r3, r31, 0x8c
/* 802A4F24  48 03 6F F1 */	bl initiate__10JSUPtrListFv
/* 802A4F28  7F E3 FB 78 */	mr r3, r31
/* 802A4F2C  48 00 00 B9 */	bl resetRegisteredWaveBankTables__Q210JAUSection12TSectionDataFv
/* 802A4F30  7F E3 FB 78 */	mr r3, r31
/* 802A4F34  48 00 00 35 */	bl resetRegisteredBankTables__Q210JAUSection12TSectionDataFv
/* 802A4F38  38 00 00 00 */	li r0, 0
/* 802A4F3C  90 1F 00 84 */	stw r0, 0x84(r31)
/* 802A4F40  90 1F 00 88 */	stw r0, 0x88(r31)
/* 802A4F44  90 1F 00 80 */	stw r0, 0x80(r31)
/* 802A4F48  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 802A4F4C  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 802A4F50  7F E3 FB 78 */	mr r3, r31
/* 802A4F54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4F5C  7C 08 03 A6 */	mtlr r0
/* 802A4F60  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4F64  4E 80 00 20 */	blr 
