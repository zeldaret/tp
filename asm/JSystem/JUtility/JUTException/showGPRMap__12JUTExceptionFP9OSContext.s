lbl_802E2CA0:
/* 802E2CA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E2CA4  7C 08 02 A6 */	mflr r0
/* 802E2CA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E2CAC  39 61 00 30 */	addi r11, r1, 0x30
/* 802E2CB0  48 07 F5 1D */	bl _savegpr_25
/* 802E2CB4  7C 79 1B 78 */	mr r25, r3
/* 802E2CB8  7C 9A 23 78 */	mr r26, r4
/* 802E2CBC  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2CC0  28 03 00 00 */	cmplwi r3, 0
/* 802E2CC4  41 82 00 D0 */	beq lbl_802E2D94
/* 802E2CC8  3B A0 00 00 */	li r29, 0
/* 802E2CCC  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2CD0  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E2CD4  38 84 03 A6 */	addi r4, r4, 0x3a6
/* 802E2CD8  48 00 4F 61 */	bl print__10JUTConsoleFPCc
/* 802E2CDC  3B 80 00 00 */	li r28, 0
/* 802E2CE0  3B E0 00 00 */	li r31, 0
/* 802E2CE4  3F C0 80 00 */	lis r30, 0x8000
lbl_802E2CE8:
/* 802E2CE8  7F 7A F8 2E */	lwzx r27, r26, r31
/* 802E2CEC  7C 1B F0 40 */	cmplw r27, r30
/* 802E2CF0  41 80 00 78 */	blt lbl_802E2D68
/* 802E2CF4  3C 60 83 00 */	lis r3, 0x8300 /* 0x82FFFFFF@ha */
/* 802E2CF8  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x82FFFFFF@l */
/* 802E2CFC  7C 1B 00 40 */	cmplw r27, r0
/* 802E2D00  41 81 00 68 */	bgt lbl_802E2D68
/* 802E2D04  3B A0 00 01 */	li r29, 1
/* 802E2D08  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2D0C  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2D10  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E2D14  38 84 03 CF */	addi r4, r4, 0x3cf
/* 802E2D18  7F 85 E3 78 */	mr r5, r28
/* 802E2D1C  7F 66 DB 78 */	mr r6, r27
/* 802E2D20  4C C6 31 82 */	crclr 6
/* 802E2D24  48 00 4E 95 */	bl print_f__10JUTConsoleFPCce
/* 802E2D28  7F 23 CB 78 */	mr r3, r25
/* 802E2D2C  7F 64 DB 78 */	mr r4, r27
/* 802E2D30  38 A0 00 01 */	li r5, 1
/* 802E2D34  4B FF FE 11 */	bl showMapInfo_subroutine__12JUTExceptionFUlb
/* 802E2D38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E2D3C  40 82 00 18 */	bne lbl_802E2D54
/* 802E2D40  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2D44  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2D48  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E2D4C  38 84 03 DC */	addi r4, r4, 0x3dc
/* 802E2D50  48 00 4E E9 */	bl print__10JUTConsoleFPCc
lbl_802E2D54:
/* 802E2D54  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E2D58  38 80 00 01 */	li r4, 1
/* 802E2D5C  48 00 56 F5 */	bl drawDirect__17JUTConsoleManagerCFb
/* 802E2D60  80 79 00 90 */	lwz r3, 0x90(r25)
/* 802E2D64  48 00 0C 1D */	bl waitTime__12JUTExceptionFl
lbl_802E2D68:
/* 802E2D68  3B 9C 00 01 */	addi r28, r28, 1
/* 802E2D6C  2C 1C 00 1F */	cmpwi r28, 0x1f
/* 802E2D70  3B FF 00 04 */	addi r31, r31, 4
/* 802E2D74  41 80 FF 74 */	blt lbl_802E2CE8
/* 802E2D78  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802E2D7C  40 82 00 18 */	bne lbl_802E2D94
/* 802E2D80  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2D84  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2D88  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E2D8C  38 84 03 EE */	addi r4, r4, 0x3ee
/* 802E2D90  48 00 4E A9 */	bl print__10JUTConsoleFPCc
lbl_802E2D94:
/* 802E2D94  39 61 00 30 */	addi r11, r1, 0x30
/* 802E2D98  48 07 F4 81 */	bl _restgpr_25
/* 802E2D9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E2DA0  7C 08 03 A6 */	mtlr r0
/* 802E2DA4  38 21 00 30 */	addi r1, r1, 0x30
/* 802E2DA8  4E 80 00 20 */	blr 
