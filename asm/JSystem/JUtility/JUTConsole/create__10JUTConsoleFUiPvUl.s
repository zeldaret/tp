lbl_802E73E4:
/* 802E73E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E73E8  7C 08 02 A6 */	mflr r0
/* 802E73EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E73F0  39 61 00 20 */	addi r11, r1, 0x20
/* 802E73F4  48 07 AD E5 */	bl _savegpr_28
/* 802E73F8  7C 7C 1B 78 */	mr r28, r3
/* 802E73FC  7C 9D 23 78 */	mr r29, r4
/* 802E7400  83 CD 8F F0 */	lwz r30, sManager__17JUTConsoleManager(r13)
/* 802E7404  7C A3 2B 78 */	mr r3, r5
/* 802E7408  7F 84 E3 78 */	mr r4, r28
/* 802E740C  48 00 01 D1 */	bl getLineFromObjectSize__10JUTConsoleFUlUi
/* 802E7410  7C 65 1B 78 */	mr r5, r3
/* 802E7414  7F BF EB 78 */	mr r31, r29
/* 802E7418  28 1D 00 00 */	cmplwi r29, 0
/* 802E741C  41 82 00 18 */	beq lbl_802E7434
/* 802E7420  7F A3 EB 78 */	mr r3, r29
/* 802E7424  7F 84 E3 78 */	mr r4, r28
/* 802E7428  38 C0 00 00 */	li r6, 0
/* 802E742C  48 00 00 41 */	bl __ct__10JUTConsoleFUiUib
/* 802E7430  7C 7F 1B 78 */	mr r31, r3
lbl_802E7434:
/* 802E7434  38 1D 00 6C */	addi r0, r29, 0x6c
/* 802E7438  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802E743C  7F E3 FB 78 */	mr r3, r31
/* 802E7440  48 00 01 AD */	bl clear__10JUTConsoleFv
/* 802E7444  7F C3 F3 78 */	mr r3, r30
/* 802E7448  7F E4 FB 78 */	mr r4, r31
/* 802E744C  48 00 0D F5 */	bl appendConsole__17JUTConsoleManagerFP10JUTConsole
/* 802E7450  7F E3 FB 78 */	mr r3, r31
/* 802E7454  39 61 00 20 */	addi r11, r1, 0x20
/* 802E7458  48 07 AD CD */	bl _restgpr_28
/* 802E745C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E7460  7C 08 03 A6 */	mtlr r0
/* 802E7464  38 21 00 20 */	addi r1, r1, 0x20
/* 802E7468  4E 80 00 20 */	blr 
