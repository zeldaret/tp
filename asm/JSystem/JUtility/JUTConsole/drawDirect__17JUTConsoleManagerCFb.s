lbl_802E8450:
/* 802E8450  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E8454  7C 08 02 A6 */	mflr r0
/* 802E8458  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E845C  39 61 00 20 */	addi r11, r1, 0x20
/* 802E8460  48 07 9D 7D */	bl _savegpr_29
/* 802E8464  7C 7D 1B 78 */	mr r29, r3
/* 802E8468  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802E846C  28 00 00 00 */	cmplwi r0, 0
/* 802E8470  41 82 00 3C */	beq lbl_802E84AC
/* 802E8474  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802E8478  41 82 00 28 */	beq lbl_802E84A0
/* 802E847C  48 05 52 8D */	bl OSEnableInterrupts
/* 802E8480  7C 7E 1B 78 */	mr r30, r3
/* 802E8484  48 06 54 39 */	bl VIGetRetraceCount
/* 802E8488  7C 7F 1B 78 */	mr r31, r3
lbl_802E848C:
/* 802E848C  48 06 54 31 */	bl VIGetRetraceCount
/* 802E8490  7C 1F 18 40 */	cmplw r31, r3
/* 802E8494  41 82 FF F8 */	beq lbl_802E848C
/* 802E8498  7F C3 F3 78 */	mr r3, r30
/* 802E849C  48 05 52 81 */	bl OSRestoreInterrupts
lbl_802E84A0:
/* 802E84A0  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802E84A4  38 80 00 02 */	li r4, 2
/* 802E84A8  4B FF F1 A1 */	bl doDraw__10JUTConsoleCFQ210JUTConsole12EConsoleType
lbl_802E84AC:
/* 802E84AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802E84B0  48 07 9D 79 */	bl _restgpr_29
/* 802E84B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E84B8  7C 08 03 A6 */	mtlr r0
/* 802E84BC  38 21 00 20 */	addi r1, r1, 0x20
/* 802E84C0  4E 80 00 20 */	blr 
