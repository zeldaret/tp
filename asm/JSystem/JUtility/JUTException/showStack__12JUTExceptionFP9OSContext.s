lbl_802E26B0:
/* 802E26B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E26B4  7C 08 02 A6 */	mflr r0
/* 802E26B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E26BC  39 61 00 20 */	addi r11, r1, 0x20
/* 802E26C0  48 07 FB 19 */	bl _savegpr_28
/* 802E26C4  7C 7C 1B 78 */	mr r28, r3
/* 802E26C8  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E26CC  28 03 00 00 */	cmplwi r3, 0
/* 802E26D0  41 82 00 C8 */	beq lbl_802E2798
/* 802E26D4  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E26D8  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E26DC  38 84 01 51 */	addi r4, r4, 0x151
/* 802E26E0  48 00 55 59 */	bl print__10JUTConsoleFPCc
/* 802E26E4  83 BC 00 A0 */	lwz r29, 0xa0(r28)
/* 802E26E8  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E26EC  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E26F0  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E26F4  38 84 01 79 */	addi r4, r4, 0x179
/* 802E26F8  4C C6 31 82 */	crclr 6
/* 802E26FC  48 00 54 BD */	bl print_f__10JUTConsoleFPCce
/* 802E2700  3B C0 00 00 */	li r30, 0
/* 802E2704  3C 60 80 3A */	lis r3, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2708  3B E3 D4 90 */	addi r31, r3, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E270C  48 00 00 6C */	b lbl_802E2778
lbl_802E2710:
/* 802E2710  80 1C 00 94 */	lwz r0, 0x94(r28)
/* 802E2714  7C 1E 00 40 */	cmplw r30, r0
/* 802E2718  40 81 00 1C */	ble lbl_802E2734
/* 802E271C  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2720  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2724  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E2728  38 84 01 99 */	addi r4, r4, 0x199
/* 802E272C  48 00 55 0D */	bl print__10JUTConsoleFPCc
/* 802E2730  48 00 00 68 */	b lbl_802E2798
lbl_802E2734:
/* 802E2734  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2738  38 9F 01 AA */	addi r4, r31, 0x1aa
/* 802E273C  7F A5 EB 78 */	mr r5, r29
/* 802E2740  80 DD 00 00 */	lwz r6, 0(r29)
/* 802E2744  80 FD 00 04 */	lwz r7, 4(r29)
/* 802E2748  4C C6 31 82 */	crclr 6
/* 802E274C  48 00 54 6D */	bl print_f__10JUTConsoleFPCce
/* 802E2750  7F 83 E3 78 */	mr r3, r28
/* 802E2754  80 9D 00 04 */	lwz r4, 4(r29)
/* 802E2758  38 A0 00 00 */	li r5, 0
/* 802E275C  48 00 03 E9 */	bl showMapInfo_subroutine__12JUTExceptionFUlb
/* 802E2760  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E2764  38 80 00 01 */	li r4, 1
/* 802E2768  48 00 5C E9 */	bl drawDirect__17JUTConsoleManagerCFb
/* 802E276C  80 7C 00 90 */	lwz r3, 0x90(r28)
/* 802E2770  48 00 12 11 */	bl waitTime__12JUTExceptionFl
/* 802E2774  83 BD 00 00 */	lwz r29, 0(r29)
lbl_802E2778:
/* 802E2778  28 1D 00 00 */	cmplwi r29, 0
/* 802E277C  41 82 00 1C */	beq lbl_802E2798
/* 802E2780  3C 1D 00 01 */	addis r0, r29, 1
/* 802E2784  28 00 FF FF */	cmplwi r0, 0xffff
/* 802E2788  41 82 00 10 */	beq lbl_802E2798
/* 802E278C  28 1E 01 00 */	cmplwi r30, 0x100
/* 802E2790  3B DE 00 01 */	addi r30, r30, 1
/* 802E2794  41 80 FF 7C */	blt lbl_802E2710
lbl_802E2798:
/* 802E2798  39 61 00 20 */	addi r11, r1, 0x20
/* 802E279C  48 07 FA 89 */	bl _restgpr_28
/* 802E27A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E27A4  7C 08 03 A6 */	mtlr r0
/* 802E27A8  38 21 00 20 */	addi r1, r1, 0x20
/* 802E27AC  4E 80 00 20 */	blr 
