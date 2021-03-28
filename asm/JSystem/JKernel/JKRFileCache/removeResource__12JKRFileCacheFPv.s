lbl_802D5164:
/* 802D5164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5168  7C 08 02 A6 */	mflr r0
/* 802D516C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5170  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5174  48 08 D0 69 */	bl _savegpr_29
/* 802D5178  7C 7D 1B 78 */	mr r29, r3
/* 802D517C  7C 9E 23 78 */	mr r30, r4
/* 802D5180  48 00 02 39 */	bl findCacheBlock__12JKRFileCacheCFPCv
/* 802D5184  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D5188  40 82 00 0C */	bne lbl_802D5194
/* 802D518C  38 60 00 00 */	li r3, 0
/* 802D5190  48 00 00 50 */	b lbl_802D51E0
lbl_802D5194:
/* 802D5194  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802D5198  34 03 FF FF */	addic. r0, r3, -1
/* 802D519C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802D51A0  40 82 00 3C */	bne lbl_802D51DC
/* 802D51A4  7F C3 F3 78 */	mr r3, r30
/* 802D51A8  80 9D 00 38 */	lwz r4, 0x38(r29)
/* 802D51AC  4B FF 93 55 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D51B0  38 7D 00 3C */	addi r3, r29, 0x3c
/* 802D51B4  7F E4 FB 78 */	mr r4, r31
/* 802D51B8  48 00 6F A5 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D51BC  28 1F 00 00 */	cmplwi r31, 0
/* 802D51C0  41 82 00 1C */	beq lbl_802D51DC
/* 802D51C4  41 82 00 10 */	beq lbl_802D51D4
/* 802D51C8  7F E3 FB 78 */	mr r3, r31
/* 802D51CC  38 80 00 00 */	li r4, 0
/* 802D51D0  48 00 6C 45 */	bl __dt__10JSUPtrLinkFv
lbl_802D51D4:
/* 802D51D4  7F E3 FB 78 */	mr r3, r31
/* 802D51D8  4B FF 9B 65 */	bl __dl__FPv
lbl_802D51DC:
/* 802D51DC  38 60 00 01 */	li r3, 1
lbl_802D51E0:
/* 802D51E0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D51E4  48 08 D0 45 */	bl _restgpr_29
/* 802D51E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D51EC  7C 08 03 A6 */	mtlr r0
/* 802D51F0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D51F4  4E 80 00 20 */	blr 
