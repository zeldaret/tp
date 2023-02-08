lbl_802A0168:
/* 802A0168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A016C  7C 08 02 A6 */	mflr r0
/* 802A0170  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0174  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0178  48 0C 20 61 */	bl _savegpr_28
/* 802A017C  7C 7C 1B 78 */	mr r28, r3
/* 802A0180  7C 9D 23 78 */	mr r29, r4
/* 802A0184  3B C0 00 00 */	li r30, 0
/* 802A0188  3B E0 00 00 */	li r31, 0
lbl_802A018C:
/* 802A018C  38 7F 00 14 */	addi r3, r31, 0x14
/* 802A0190  7C 7C 1A 14 */	add r3, r28, r3
/* 802A0194  7F A4 EB 78 */	mr r4, r29
/* 802A0198  4B FF F7 19 */	bl isUsingSeqData__16JAISeCategoryMgrFRC16JAISeqDataRegion
/* 802A019C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A01A0  41 82 00 0C */	beq lbl_802A01AC
/* 802A01A4  38 60 00 01 */	li r3, 1
/* 802A01A8  48 00 00 18 */	b lbl_802A01C0
lbl_802A01AC:
/* 802A01AC  3B DE 00 01 */	addi r30, r30, 1
/* 802A01B0  2C 1E 00 10 */	cmpwi r30, 0x10
/* 802A01B4  3B FF 00 6C */	addi r31, r31, 0x6c
/* 802A01B8  41 80 FF D4 */	blt lbl_802A018C
/* 802A01BC  38 60 00 00 */	li r3, 0
lbl_802A01C0:
/* 802A01C0  39 61 00 20 */	addi r11, r1, 0x20
/* 802A01C4  48 0C 20 61 */	bl _restgpr_28
/* 802A01C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A01CC  7C 08 03 A6 */	mtlr r0
/* 802A01D0  38 21 00 20 */	addi r1, r1, 0x20
/* 802A01D4  4E 80 00 20 */	blr 
