lbl_80CCC74C:
/* 80CCC74C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCC750  7C 08 02 A6 */	mflr r0
/* 80CCC754  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCC758  39 61 00 20 */	addi r11, r1, 0x20
/* 80CCC75C  4B 69 5A 7C */	b _savegpr_28
/* 80CCC760  7C 7C 1B 78 */	mr r28, r3
/* 80CCC764  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80CCC768  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80CCC76C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80CCC770  A0 1C 05 EE */	lhz r0, 0x5ee(r28)
/* 80CCC774  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80CCC778  7F C3 02 15 */	add. r30, r3, r0
/* 80CCC77C  41 82 00 3C */	beq lbl_80CCC7B8
/* 80CCC780  3B A0 00 00 */	li r29, 0
/* 80CCC784  3B E0 00 00 */	li r31, 0
lbl_80CCC788:
/* 80CCC788  38 1F 05 F4 */	addi r0, r31, 0x5f4
/* 80CCC78C  7C BC 00 2E */	lwzx r5, r28, r0
/* 80CCC790  28 05 00 00 */	cmplwi r5, 0
/* 80CCC794  41 82 00 14 */	beq lbl_80CCC7A8
/* 80CCC798  7F C3 F3 78 */	mr r3, r30
/* 80CCC79C  38 85 00 68 */	addi r4, r5, 0x68
/* 80CCC7A0  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80CCC7A4  4B 5B 40 3C */	b func_802807E0
lbl_80CCC7A8:
/* 80CCC7A8  3B BD 00 01 */	addi r29, r29, 1
/* 80CCC7AC  2C 1D 00 03 */	cmpwi r29, 3
/* 80CCC7B0  3B FF 00 04 */	addi r31, r31, 4
/* 80CCC7B4  41 80 FF D4 */	blt lbl_80CCC788
lbl_80CCC7B8:
/* 80CCC7B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CCC7BC  4B 69 5A 68 */	b _restgpr_28
/* 80CCC7C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCC7C4  7C 08 03 A6 */	mtlr r0
/* 80CCC7C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCC7CC  4E 80 00 20 */	blr 
