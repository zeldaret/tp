lbl_802E2A84:
/* 802E2A84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E2A88  7C 08 02 A6 */	mflr r0
/* 802E2A8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E2A90  39 61 00 20 */	addi r11, r1, 0x20
/* 802E2A94  48 07 F7 45 */	bl _savegpr_28
/* 802E2A98  7C 9C 23 78 */	mr r28, r4
/* 802E2A9C  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2AA0  28 03 00 00 */	cmplwi r3, 0
/* 802E2AA4  41 82 00 88 */	beq lbl_802E2B2C
/* 802E2AA8  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2AAC  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E2AB0  38 84 03 29 */	addi r4, r4, 0x329
/* 802E2AB4  48 00 51 85 */	bl print__10JUTConsoleFPCc
/* 802E2AB8  3B A0 00 00 */	li r29, 0
/* 802E2ABC  3B E0 00 00 */	li r31, 0
/* 802E2AC0  3C 60 80 3A */	lis r3, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2AC4  3B C3 D4 90 */	addi r30, r3, JUTException__stringBase0@l /* 0x8039D490@l */
lbl_802E2AC8:
/* 802E2AC8  7D 5C FA 14 */	add r10, r28, r31
/* 802E2ACC  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2AD0  38 9E 03 4F */	addi r4, r30, 0x34f
/* 802E2AD4  7F A5 EB 78 */	mr r5, r29
/* 802E2AD8  80 CA 00 00 */	lwz r6, 0(r10)
/* 802E2ADC  38 FD 00 0B */	addi r7, r29, 0xb
/* 802E2AE0  81 0A 00 2C */	lwz r8, 0x2c(r10)
/* 802E2AE4  39 3D 00 16 */	addi r9, r29, 0x16
/* 802E2AE8  81 4A 00 58 */	lwz r10, 0x58(r10)
/* 802E2AEC  4C C6 31 82 */	crclr 6
/* 802E2AF0  48 00 50 C9 */	bl print_f__10JUTConsoleFPCce
/* 802E2AF4  3B BD 00 01 */	addi r29, r29, 1
/* 802E2AF8  2C 1D 00 0A */	cmpwi r29, 0xa
/* 802E2AFC  3B FF 00 04 */	addi r31, r31, 4
/* 802E2B00  41 80 FF C8 */	blt lbl_802E2AC8
/* 802E2B04  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2B08  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2B0C  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E2B10  38 84 03 76 */	addi r4, r4, 0x376
/* 802E2B14  38 A0 00 0A */	li r5, 0xa
/* 802E2B18  80 DC 00 28 */	lwz r6, 0x28(r28)
/* 802E2B1C  38 E0 00 15 */	li r7, 0x15
/* 802E2B20  81 1C 00 54 */	lwz r8, 0x54(r28)
/* 802E2B24  4C C6 31 82 */	crclr 6
/* 802E2B28  48 00 50 91 */	bl print_f__10JUTConsoleFPCce
lbl_802E2B2C:
/* 802E2B2C  39 61 00 20 */	addi r11, r1, 0x20
/* 802E2B30  48 07 F6 F5 */	bl _restgpr_28
/* 802E2B34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E2B38  7C 08 03 A6 */	mtlr r0
/* 802E2B3C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E2B40  4E 80 00 20 */	blr 
