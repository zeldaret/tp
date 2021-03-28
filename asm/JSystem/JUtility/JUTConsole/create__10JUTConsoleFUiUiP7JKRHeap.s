lbl_802E7354:
/* 802E7354  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E7358  7C 08 02 A6 */	mflr r0
/* 802E735C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E7360  39 61 00 20 */	addi r11, r1, 0x20
/* 802E7364  48 07 AE 71 */	bl _savegpr_27
/* 802E7368  7C 7B 1B 78 */	mr r27, r3
/* 802E736C  7C 9C 23 78 */	mr r28, r4
/* 802E7370  7C BD 2B 78 */	mr r29, r5
/* 802E7374  83 CD 8F F0 */	lwz r30, sManager__17JUTConsoleManager(r13)
/* 802E7378  48 00 02 55 */	bl getObjectSizeFromBufferSize__10JUTConsoleFUiUi
/* 802E737C  38 80 00 00 */	li r4, 0
/* 802E7380  7F A5 EB 78 */	mr r5, r29
/* 802E7384  4B FE 70 F1 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802E7388  7C 60 1B 78 */	mr r0, r3
/* 802E738C  7C 1D 03 78 */	mr r29, r0
/* 802E7390  7F BF EB 79 */	or. r31, r29, r29
/* 802E7394  41 82 00 18 */	beq lbl_802E73AC
/* 802E7398  7F 64 DB 78 */	mr r4, r27
/* 802E739C  7F 85 E3 78 */	mr r5, r28
/* 802E73A0  38 C0 00 01 */	li r6, 1
/* 802E73A4  48 00 00 C9 */	bl __ct__10JUTConsoleFUiUib
/* 802E73A8  7C 7F 1B 78 */	mr r31, r3
lbl_802E73AC:
/* 802E73AC  38 1D 00 6C */	addi r0, r29, 0x6c
/* 802E73B0  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802E73B4  7F E3 FB 78 */	mr r3, r31
/* 802E73B8  48 00 02 35 */	bl clear__10JUTConsoleFv
/* 802E73BC  7F C3 F3 78 */	mr r3, r30
/* 802E73C0  7F E4 FB 78 */	mr r4, r31
/* 802E73C4  48 00 0E 7D */	bl appendConsole__17JUTConsoleManagerFP10JUTConsole
/* 802E73C8  7F E3 FB 78 */	mr r3, r31
/* 802E73CC  39 61 00 20 */	addi r11, r1, 0x20
/* 802E73D0  48 07 AE 51 */	bl _restgpr_27
/* 802E73D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E73D8  7C 08 03 A6 */	mtlr r0
/* 802E73DC  38 21 00 20 */	addi r1, r1, 0x20
/* 802E73E0  4E 80 00 20 */	blr 
