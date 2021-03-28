lbl_802ECA18:
/* 802ECA18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ECA1C  7C 08 02 A6 */	mflr r0
/* 802ECA20  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ECA24  39 61 00 20 */	addi r11, r1, 0x20
/* 802ECA28  48 07 57 B1 */	bl _savegpr_28
/* 802ECA2C  7C 7C 1B 78 */	mr r28, r3
/* 802ECA30  3B A0 00 00 */	li r29, 0
/* 802ECA34  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 802ECA38  48 00 00 88 */	b lbl_802ECAC0
lbl_802ECA3C:
/* 802ECA3C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802ECA40  28 00 00 02 */	cmplwi r0, 2
/* 802ECA44  41 80 00 0C */	blt lbl_802ECA50
/* 802ECA48  38 60 00 00 */	li r3, 0
/* 802ECA4C  48 00 00 84 */	b lbl_802ECAD0
lbl_802ECA50:
/* 802ECA50  57 A3 15 BA */	rlwinm r3, r29, 2, 0x16, 0x1d
/* 802ECA54  3B C3 00 64 */	addi r30, r3, 0x64
/* 802ECA58  7C 1C F0 2E */	lwzx r0, r28, r30
/* 802ECA5C  28 00 00 00 */	cmplwi r0, 0
/* 802ECA60  40 82 00 5C */	bne lbl_802ECABC
/* 802ECA64  38 60 00 40 */	li r3, 0x40
/* 802ECA68  4B FE 21 E5 */	bl __nw__FUl
/* 802ECA6C  28 03 00 00 */	cmplwi r3, 0
/* 802ECA70  41 82 00 1C */	beq lbl_802ECA8C
/* 802ECA74  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 802ECA78  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802ECA7C  98 03 00 3B */	stb r0, 0x3b(r3)
/* 802ECA80  38 00 00 00 */	li r0, 0
/* 802ECA84  90 03 00 28 */	stw r0, 0x28(r3)
/* 802ECA88  90 03 00 20 */	stw r0, 0x20(r3)
lbl_802ECA8C:
/* 802ECA8C  7C 7C F1 2E */	stwx r3, r28, r30
/* 802ECA90  7C 1C F0 2E */	lwzx r0, r28, r30
/* 802ECA94  28 00 00 00 */	cmplwi r0, 0
/* 802ECA98  40 82 00 0C */	bne lbl_802ECAA4
/* 802ECA9C  38 60 00 00 */	li r3, 0
/* 802ECAA0  48 00 00 30 */	b lbl_802ECAD0
lbl_802ECAA4:
/* 802ECAA4  88 9C 00 78 */	lbz r4, 0x78(r28)
/* 802ECAA8  38 60 00 01 */	li r3, 1
/* 802ECAAC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802ECAB0  7C 60 00 30 */	slw r0, r3, r0
/* 802ECAB4  7C 80 03 78 */	or r0, r4, r0
/* 802ECAB8  98 1C 00 78 */	stb r0, 0x78(r28)
lbl_802ECABC:
/* 802ECABC  3B BD 00 01 */	addi r29, r29, 1
lbl_802ECAC0:
/* 802ECAC0  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802ECAC4  7C 00 F8 40 */	cmplw r0, r31
/* 802ECAC8  41 80 FF 74 */	blt lbl_802ECA3C
/* 802ECACC  38 60 00 01 */	li r3, 1
lbl_802ECAD0:
/* 802ECAD0  39 61 00 20 */	addi r11, r1, 0x20
/* 802ECAD4  48 07 57 51 */	bl _restgpr_28
/* 802ECAD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ECADC  7C 08 03 A6 */	mtlr r0
/* 802ECAE0  38 21 00 20 */	addi r1, r1, 0x20
/* 802ECAE4  4E 80 00 20 */	blr 
