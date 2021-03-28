lbl_80244C2C:
/* 80244C2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80244C30  7C 08 02 A6 */	mflr r0
/* 80244C34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80244C38  39 61 00 40 */	addi r11, r1, 0x40
/* 80244C3C  48 11 D5 8D */	bl _savegpr_24
/* 80244C40  7C 7F 1B 78 */	mr r31, r3
/* 80244C44  4B FF 79 31 */	bl isTalkNow__14dMsgScrnBase_cFv
/* 80244C48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80244C4C  41 82 00 1C */	beq lbl_80244C68
/* 80244C50  7F E3 FB 78 */	mr r3, r31
/* 80244C54  C0 22 B2 B8 */	lfs f1, lit_4021(r2)
/* 80244C58  81 9F 00 00 */	lwz r12, 0(r31)
/* 80244C5C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80244C60  7D 89 03 A6 */	mtctr r12
/* 80244C64  4E 80 04 21 */	bctrl 
lbl_80244C68:
/* 80244C68  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 80244C6C  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 80244C70  C0 24 00 C0 */	lfs f1, 0xc0(r4)
/* 80244C74  80 7F 00 08 */	lwz r3, 8(r31)
/* 80244C78  80 63 00 04 */	lwz r3, 4(r3)
/* 80244C7C  C0 04 00 94 */	lfs f0, 0x94(r4)
/* 80244C80  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80244C84  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80244C88  81 83 00 00 */	lwz r12, 0(r3)
/* 80244C8C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80244C90  7D 89 03 A6 */	mtctr r12
/* 80244C94  4E 80 04 21 */	bctrl 
/* 80244C98  3B 00 00 00 */	li r24, 0
/* 80244C9C  3B C0 00 00 */	li r30, 0
/* 80244CA0  3B A0 00 00 */	li r29, 0
/* 80244CA4  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 80244CA8  3B 83 02 8C */	addi r28, r3, g_MsgObject_HIO_c@l
lbl_80244CAC:
/* 80244CAC  7C 7C EA 14 */	add r3, r28, r29
/* 80244CB0  3B 43 01 48 */	addi r26, r3, 0x148
/* 80244CB4  80 03 01 48 */	lwz r0, 0x148(r3)
/* 80244CB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80244CBC  3B 23 00 F8 */	addi r25, r3, 0xf8
/* 80244CC0  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 80244CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244CC8  7F 7F F2 14 */	add r27, r31, r30
/* 80244CCC  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 80244CD0  38 81 00 14 */	addi r4, r1, 0x14
/* 80244CD4  38 A1 00 10 */	addi r5, r1, 0x10
/* 80244CD8  48 00 F7 81 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80244CDC  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 80244CE0  28 00 00 00 */	cmplwi r0, 0
/* 80244CE4  41 82 00 24 */	beq lbl_80244D08
/* 80244CE8  80 1A 00 00 */	lwz r0, 0(r26)
/* 80244CEC  90 01 00 08 */	stw r0, 8(r1)
/* 80244CF0  80 19 00 00 */	lwz r0, 0(r25)
/* 80244CF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80244CF8  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 80244CFC  38 81 00 0C */	addi r4, r1, 0xc
/* 80244D00  38 A1 00 08 */	addi r5, r1, 8
/* 80244D04  48 00 F7 55 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
lbl_80244D08:
/* 80244D08  3B 18 00 01 */	addi r24, r24, 1
/* 80244D0C  2C 18 00 02 */	cmpwi r24, 2
/* 80244D10  3B DE 00 04 */	addi r30, r30, 4
/* 80244D14  3B BD 00 28 */	addi r29, r29, 0x28
/* 80244D18  41 80 FF 94 */	blt lbl_80244CAC
/* 80244D1C  39 61 00 40 */	addi r11, r1, 0x40
/* 80244D20  48 11 D4 F5 */	bl _restgpr_24
/* 80244D24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80244D28  7C 08 03 A6 */	mtlr r0
/* 80244D2C  38 21 00 40 */	addi r1, r1, 0x40
/* 80244D30  4E 80 00 20 */	blr 
