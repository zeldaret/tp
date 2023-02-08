lbl_8061F200:
/* 8061F200  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061F204  7C 08 02 A6 */	mflr r0
/* 8061F208  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061F20C  39 61 00 30 */	addi r11, r1, 0x30
/* 8061F210  4B D4 2F C5 */	bl _savegpr_27
/* 8061F214  7C 7F 1B 78 */	mr r31, r3
/* 8061F218  2C 04 00 0C */	cmpwi r4, 0xc
/* 8061F21C  41 80 00 08 */	blt lbl_8061F224
/* 8061F220  38 80 00 0D */	li r4, 0xd
lbl_8061F224:
/* 8061F224  38 E0 00 00 */	li r7, 0
/* 8061F228  38 60 00 00 */	li r3, 0
/* 8061F22C  3C A0 80 63 */	lis r5, break_part_no@ha /* 0x8062EC28@ha */
/* 8061F230  38 C5 EC 28 */	addi r6, r5, break_part_no@l /* 0x8062EC28@l */
/* 8061F234  38 00 00 0D */	li r0, 0xd
/* 8061F238  7C 09 03 A6 */	mtctr r0
lbl_8061F23C:
/* 8061F23C  7C 06 18 2E */	lwzx r0, r6, r3
/* 8061F240  54 05 08 3C */	slwi r5, r0, 1
/* 8061F244  38 05 09 FC */	addi r0, r5, 0x9fc
/* 8061F248  7C 1F 02 2E */	lhzx r0, r31, r0
/* 8061F24C  28 00 00 00 */	cmplwi r0, 0
/* 8061F250  41 82 00 08 */	beq lbl_8061F258
/* 8061F254  38 E7 00 01 */	addi r7, r7, 1
lbl_8061F258:
/* 8061F258  38 63 00 04 */	addi r3, r3, 4
/* 8061F25C  42 00 FF E0 */	bdnz lbl_8061F23C
/* 8061F260  7F 87 20 51 */	subf. r28, r7, r4
/* 8061F264  41 82 00 A0 */	beq lbl_8061F304
/* 8061F268  3B 60 00 00 */	li r27, 0
/* 8061F26C  3B C0 00 00 */	li r30, 0
/* 8061F270  3C 60 80 63 */	lis r3, break_part_no@ha /* 0x8062EC28@ha */
/* 8061F274  3B A3 EC 28 */	addi r29, r3, break_part_no@l /* 0x8062EC28@l */
lbl_8061F278:
/* 8061F278  7C 1D F0 2E */	lwzx r0, r29, r30
/* 8061F27C  54 03 08 3C */	slwi r3, r0, 1
/* 8061F280  38 63 09 FC */	addi r3, r3, 0x9fc
/* 8061F284  7C 1F 1A 2E */	lhzx r0, r31, r3
/* 8061F288  28 00 00 00 */	cmplwi r0, 0
/* 8061F28C  40 82 00 68 */	bne lbl_8061F2F4
/* 8061F290  38 00 00 02 */	li r0, 2
/* 8061F294  7C 1F 1B 2E */	sthx r0, r31, r3
/* 8061F298  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703B0@ha */
/* 8061F29C  38 03 03 B0 */	addi r0, r3, 0x03B0 /* 0x000703B0@l */
/* 8061F2A0  90 01 00 08 */	stw r0, 8(r1)
/* 8061F2A4  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8061F2A8  38 81 00 08 */	addi r4, r1, 8
/* 8061F2AC  38 A0 00 00 */	li r5, 0
/* 8061F2B0  38 C0 FF FF */	li r6, -1
/* 8061F2B4  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8061F2B8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8061F2BC  7D 89 03 A6 */	mtctr r12
/* 8061F2C0  4E 80 04 21 */	bctrl 
/* 8061F2C4  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 8061F2C8  28 00 00 01 */	cmplwi r0, 1
/* 8061F2CC  40 82 00 20 */	bne lbl_8061F2EC
/* 8061F2D0  7C 1D F0 2E */	lwzx r0, r29, r30
/* 8061F2D4  2C 00 00 04 */	cmpwi r0, 4
/* 8061F2D8  40 82 00 14 */	bne lbl_8061F2EC
/* 8061F2DC  80 7F 0A 78 */	lwz r3, 0xa78(r31)
/* 8061F2E0  38 03 00 01 */	addi r0, r3, 1
/* 8061F2E4  90 1F 0A 78 */	stw r0, 0xa78(r31)
/* 8061F2E8  3B 9C 00 01 */	addi r28, r28, 1
lbl_8061F2EC:
/* 8061F2EC  37 9C FF FF */	addic. r28, r28, -1
/* 8061F2F0  41 82 00 14 */	beq lbl_8061F304
lbl_8061F2F4:
/* 8061F2F4  3B 7B 00 01 */	addi r27, r27, 1
/* 8061F2F8  2C 1B 00 0C */	cmpwi r27, 0xc
/* 8061F2FC  3B DE 00 04 */	addi r30, r30, 4
/* 8061F300  40 81 FF 78 */	ble lbl_8061F278
lbl_8061F304:
/* 8061F304  39 61 00 30 */	addi r11, r1, 0x30
/* 8061F308  4B D4 2F 19 */	bl _restgpr_27
/* 8061F30C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061F310  7C 08 03 A6 */	mtlr r0
/* 8061F314  38 21 00 30 */	addi r1, r1, 0x30
/* 8061F318  4E 80 00 20 */	blr 
