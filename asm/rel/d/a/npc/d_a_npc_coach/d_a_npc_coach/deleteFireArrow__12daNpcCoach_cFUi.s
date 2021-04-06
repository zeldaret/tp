lbl_8099DBA4:
/* 8099DBA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8099DBA8  7C 08 02 A6 */	mflr r0
/* 8099DBAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8099DBB0  39 61 00 30 */	addi r11, r1, 0x30
/* 8099DBB4  4B 9C 46 21 */	bl _savegpr_27
/* 8099DBB8  7C 7F 1B 78 */	mr r31, r3
/* 8099DBBC  38 60 00 00 */	li r3, 0
/* 8099DBC0  38 00 00 05 */	li r0, 5
/* 8099DBC4  7C 09 03 A6 */	mtctr r0
lbl_8099DBC8:
/* 8099DBC8  38 03 24 7C */	addi r0, r3, 0x247c
/* 8099DBCC  7C 1F 00 2E */	lwzx r0, r31, r0
/* 8099DBD0  7C 00 20 40 */	cmplw r0, r4
/* 8099DBD4  40 82 00 F4 */	bne lbl_8099DCC8
/* 8099DBD8  38 00 00 01 */	li r0, 1
/* 8099DBDC  98 1F 25 59 */	stb r0, 0x2559(r31)
/* 8099DBE0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060053@ha */
/* 8099DBE4  38 03 00 53 */	addi r0, r3, 0x0053 /* 0x00060053@l */
/* 8099DBE8  90 01 00 08 */	stw r0, 8(r1)
/* 8099DBEC  38 7F 1B F0 */	addi r3, r31, 0x1bf0
/* 8099DBF0  38 81 00 08 */	addi r4, r1, 8
/* 8099DBF4  38 A0 00 00 */	li r5, 0
/* 8099DBF8  38 C0 FF FF */	li r6, -1
/* 8099DBFC  81 9F 1C 00 */	lwz r12, 0x1c00(r31)
/* 8099DC00  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8099DC04  7D 89 03 A6 */	mtctr r12
/* 8099DC08  4E 80 04 21 */	bctrl 
/* 8099DC0C  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 8099DC10  38 63 4E D0 */	addi r3, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 8099DC14  80 03 00 74 */	lwz r0, 0x74(r3)
/* 8099DC18  3B A0 00 14 */	li r29, 0x14
/* 8099DC1C  7C 80 EB D6 */	divw r4, r0, r29
/* 8099DC20  88 63 00 78 */	lbz r3, 0x78(r3)
/* 8099DC24  80 1F 24 C4 */	lwz r0, 0x24c4(r31)
/* 8099DC28  7C 00 23 D6 */	divw r0, r0, r4
/* 8099DC2C  7C 03 00 50 */	subf r0, r3, r0
/* 8099DC30  7C 04 01 D6 */	mullw r0, r4, r0
/* 8099DC34  90 1F 24 C4 */	stw r0, 0x24c4(r31)
/* 8099DC38  80 1F 24 C4 */	lwz r0, 0x24c4(r31)
/* 8099DC3C  2C 00 00 00 */	cmpwi r0, 0
/* 8099DC40  41 81 00 48 */	bgt lbl_8099DC88
/* 8099DC44  3B A0 00 00 */	li r29, 0
/* 8099DC48  93 BF 24 C4 */	stw r29, 0x24c4(r31)
/* 8099DC4C  93 BF 24 C0 */	stw r29, 0x24c0(r31)
/* 8099DC50  3B 60 00 00 */	li r27, 0
/* 8099DC54  3B C0 FF FF */	li r30, -1
lbl_8099DC58:
/* 8099DC58  3B 9D 24 7C */	addi r28, r29, 0x247c
/* 8099DC5C  7C 7F E0 2E */	lwzx r3, r31, r28
/* 8099DC60  3C 03 00 01 */	addis r0, r3, 1
/* 8099DC64  28 00 FF FF */	cmplwi r0, 0xffff
/* 8099DC68  41 82 00 0C */	beq lbl_8099DC74
/* 8099DC6C  4B 67 C0 4D */	bl fopAcM_delete__FUi
/* 8099DC70  7F DF E1 2E */	stwx r30, r31, r28
lbl_8099DC74:
/* 8099DC74  3B 7B 00 01 */	addi r27, r27, 1
/* 8099DC78  2C 1B 00 05 */	cmpwi r27, 5
/* 8099DC7C  3B BD 00 04 */	addi r29, r29, 4
/* 8099DC80  41 80 FF D8 */	blt lbl_8099DC58
/* 8099DC84  48 00 00 4C */	b lbl_8099DCD0
lbl_8099DC88:
/* 8099DC88  3B 60 00 00 */	li r27, 0
/* 8099DC8C  3B C0 00 00 */	li r30, 0
lbl_8099DC90:
/* 8099DC90  38 1E 24 7C */	addi r0, r30, 0x247c
/* 8099DC94  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8099DC98  3C 03 00 01 */	addis r0, r3, 1
/* 8099DC9C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8099DCA0  41 82 00 0C */	beq lbl_8099DCAC
/* 8099DCA4  4B 68 36 B5 */	bl fpcEx_SearchByID__FUi
/* 8099DCA8  93 A3 07 10 */	stw r29, 0x710(r3)
lbl_8099DCAC:
/* 8099DCAC  3B 7B 00 01 */	addi r27, r27, 1
/* 8099DCB0  2C 1B 00 05 */	cmpwi r27, 5
/* 8099DCB4  3B DE 00 04 */	addi r30, r30, 4
/* 8099DCB8  41 80 FF D8 */	blt lbl_8099DC90
/* 8099DCBC  38 00 00 14 */	li r0, 0x14
/* 8099DCC0  90 1F 1D 4C */	stw r0, 0x1d4c(r31)
/* 8099DCC4  48 00 00 0C */	b lbl_8099DCD0
lbl_8099DCC8:
/* 8099DCC8  38 63 00 04 */	addi r3, r3, 4
/* 8099DCCC  42 00 FE FC */	bdnz lbl_8099DBC8
lbl_8099DCD0:
/* 8099DCD0  39 61 00 30 */	addi r11, r1, 0x30
/* 8099DCD4  4B 9C 45 4D */	bl _restgpr_27
/* 8099DCD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8099DCDC  7C 08 03 A6 */	mtlr r0
/* 8099DCE0  38 21 00 30 */	addi r1, r1, 0x30
/* 8099DCE4  4E 80 00 20 */	blr 
