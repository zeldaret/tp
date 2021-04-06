lbl_802C0074:
/* 802C0074  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0078  7C 08 02 A6 */	mflr r0
/* 802C007C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0080  39 61 00 20 */	addi r11, r1, 0x20
/* 802C0084  48 0A 21 51 */	bl _savegpr_27
/* 802C0088  7C 7B 1B 78 */	mr r27, r3
/* 802C008C  7C 9C 23 79 */	or. r28, r4, r4
/* 802C0090  7C BD 2B 78 */	mr r29, r5
/* 802C0094  41 82 00 50 */	beq lbl_802C00E4
/* 802C0098  3B C0 00 00 */	li r30, 0
/* 802C009C  3C 60 80 3D */	lis r3, mEnemyInfo@ha /* 0x803CAD70@ha */
/* 802C00A0  3B E3 AD 70 */	addi r31, r3, mEnemyInfo@l /* 0x803CAD70@l */
/* 802C00A4  48 00 00 34 */	b lbl_802C00D8
lbl_802C00A8:
/* 802C00A8  7F 83 E3 78 */	mr r3, r28
/* 802C00AC  57 C0 25 36 */	rlwinm r0, r30, 4, 0x14, 0x1b
/* 802C00B0  7C 9F 02 14 */	add r4, r31, r0
/* 802C00B4  48 0A 88 E1 */	bl strcmp
/* 802C00B8  2C 03 00 00 */	cmpwi r3, 0
/* 802C00BC  40 82 00 18 */	bne lbl_802C00D4
/* 802C00C0  7F 63 DB 78 */	mr r3, r27
/* 802C00C4  7F A4 EB 78 */	mr r4, r29
/* 802C00C8  48 01 BE 85 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802C00CC  7F C3 F3 78 */	mr r3, r30
/* 802C00D0  48 00 00 18 */	b lbl_802C00E8
lbl_802C00D4:
/* 802C00D4  3B DE 00 01 */	addi r30, r30, 1
lbl_802C00D8:
/* 802C00D8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802C00DC  28 00 00 40 */	cmplwi r0, 0x40
/* 802C00E0  41 80 FF C8 */	blt lbl_802C00A8
lbl_802C00E4:
/* 802C00E4  38 60 00 00 */	li r3, 0
lbl_802C00E8:
/* 802C00E8  39 61 00 20 */	addi r11, r1, 0x20
/* 802C00EC  48 0A 21 35 */	bl _restgpr_27
/* 802C00F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C00F4  7C 08 03 A6 */	mtlr r0
/* 802C00F8  38 21 00 20 */	addi r1, r1, 0x20
/* 802C00FC  4E 80 00 20 */	blr 
