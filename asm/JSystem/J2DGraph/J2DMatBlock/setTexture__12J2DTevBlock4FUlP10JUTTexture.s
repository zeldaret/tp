lbl_802EE5F0:
/* 802EE5F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EE5F4  7C 08 02 A6 */	mflr r0
/* 802EE5F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EE5FC  39 61 00 20 */	addi r11, r1, 0x20
/* 802EE600  48 07 3B D5 */	bl _savegpr_27
/* 802EE604  7C 7B 1B 78 */	mr r27, r3
/* 802EE608  7C 9C 23 78 */	mr r28, r4
/* 802EE60C  7C BD 2B 78 */	mr r29, r5
/* 802EE610  28 1C 00 04 */	cmplwi r28, 4
/* 802EE614  41 80 00 0C */	blt lbl_802EE620
/* 802EE618  38 60 00 00 */	li r3, 0
/* 802EE61C  48 00 00 6C */	b lbl_802EE688
lbl_802EE620:
/* 802EE620  88 7B 00 B0 */	lbz r3, 0xb0(r27)
/* 802EE624  38 00 00 01 */	li r0, 1
/* 802EE628  7C 1E E0 30 */	slw r30, r0, r28
/* 802EE62C  7C 60 F0 39 */	and. r0, r3, r30
/* 802EE630  41 82 00 18 */	beq lbl_802EE648
/* 802EE634  57 80 10 3A */	slwi r0, r28, 2
/* 802EE638  7C 7B 02 14 */	add r3, r27, r0
/* 802EE63C  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 802EE640  38 80 00 01 */	li r4, 1
/* 802EE644  4B FE FB F1 */	bl __dt__10JUTTextureFv
lbl_802EE648:
/* 802EE648  57 80 10 3A */	slwi r0, r28, 2
/* 802EE64C  7F FB 02 14 */	add r31, r27, r0
/* 802EE650  93 BF 00 8C */	stw r29, 0x8c(r31)
/* 802EE654  88 1B 00 B0 */	lbz r0, 0xb0(r27)
/* 802EE658  7C 00 F0 78 */	andc r0, r0, r30
/* 802EE65C  98 1B 00 B0 */	stb r0, 0xb0(r27)
/* 802EE660  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 802EE664  4B FE 06 D9 */	bl __dl__FPv
/* 802EE668  38 00 00 00 */	li r0, 0
/* 802EE66C  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 802EE670  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EE674  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EE678  57 80 08 3C */	slwi r0, r28, 1
/* 802EE67C  7C 7B 02 14 */	add r3, r27, r0
/* 802EE680  B0 83 00 04 */	sth r4, 4(r3)
/* 802EE684  38 60 00 01 */	li r3, 1
lbl_802EE688:
/* 802EE688  39 61 00 20 */	addi r11, r1, 0x20
/* 802EE68C  48 07 3B 95 */	bl _restgpr_27
/* 802EE690  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EE694  7C 08 03 A6 */	mtlr r0
/* 802EE698  38 21 00 20 */	addi r1, r1, 0x20
/* 802EE69C  4E 80 00 20 */	blr 
