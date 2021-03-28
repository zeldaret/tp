lbl_802372CC:
/* 802372CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802372D0  7C 08 02 A6 */	mflr r0
/* 802372D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802372D8  39 61 00 20 */	addi r11, r1, 0x20
/* 802372DC  48 12 AF 01 */	bl _savegpr_29
/* 802372E0  7C 7D 1B 78 */	mr r29, r3
/* 802372E4  80 63 01 28 */	lwz r3, 0x128(r3)
/* 802372E8  3B E3 00 20 */	addi r31, r3, 0x20
/* 802372EC  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802372F0  7F DF 02 14 */	add r30, r31, r0
/* 802372F4  48 00 10 F1 */	bl getSmellTypeMessageID__12dMsgObject_cFv
/* 802372F8  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 802372FC  7F A3 EB 78 */	mr r3, r29
/* 80237300  4B FF CC 85 */	bl getMessageIndex__12dMsgObject_cFUl
/* 80237304  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80237308  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8023730C  7C 7F 02 14 */	add r3, r31, r0
/* 80237310  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80237314  38 63 00 08 */	addi r3, r3, 8
/* 80237318  7C 7E 1A 14 */	add r3, r30, r3
/* 8023731C  39 61 00 20 */	addi r11, r1, 0x20
/* 80237320  48 12 AF 09 */	bl _restgpr_29
/* 80237324  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80237328  7C 08 03 A6 */	mtlr r0
/* 8023732C  38 21 00 20 */	addi r1, r1, 0x20
/* 80237330  4E 80 00 20 */	blr 
