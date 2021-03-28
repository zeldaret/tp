lbl_802DAE48:
/* 802DAE48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DAE4C  7C 08 02 A6 */	mflr r0
/* 802DAE50  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DAE54  39 61 00 20 */	addi r11, r1, 0x20
/* 802DAE58  48 08 73 85 */	bl _savegpr_29
/* 802DAE5C  7C 7D 1B 78 */	mr r29, r3
/* 802DAE60  7C 9E 23 78 */	mr r30, r4
/* 802DAE64  83 E3 00 28 */	lwz r31, 0x28(r3)
/* 802DAE68  38 7F 00 34 */	addi r3, r31, 0x34
/* 802DAE6C  48 06 41 D5 */	bl OSLockMutex
/* 802DAE70  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 802DAE74  28 03 00 00 */	cmplwi r3, 0
/* 802DAE78  41 82 00 38 */	beq lbl_802DAEB0
/* 802DAE7C  7F C4 F3 78 */	mr r4, r30
/* 802DAE80  4B FF 91 21 */	bl sync__13JKRAramStreamFP20JKRAramStreamCommandi
/* 802DAE84  30 03 FF FF */	addic r0, r3, -1
/* 802DAE88  7C 00 01 10 */	subfe r0, r0, r0
/* 802DAE8C  90 1D 00 48 */	stw r0, 0x48(r29)
/* 802DAE90  2C 1E 00 00 */	cmpwi r30, 0
/* 802DAE94  41 82 00 1C */	beq lbl_802DAEB0
/* 802DAE98  28 03 00 00 */	cmplwi r3, 0
/* 802DAE9C  40 82 00 14 */	bne lbl_802DAEB0
/* 802DAEA0  38 7F 00 34 */	addi r3, r31, 0x34
/* 802DAEA4  48 06 42 79 */	bl OSUnlockMutex
/* 802DAEA8  38 60 00 00 */	li r3, 0
/* 802DAEAC  48 00 00 58 */	b lbl_802DAF04
lbl_802DAEB0:
/* 802DAEB0  3C 60 80 43 */	lis r3, sDvdAramAsyncList__16JKRDvdAramRipper@ha
/* 802DAEB4  38 63 43 B4 */	addi r3, r3, sDvdAramAsyncList__16JKRDvdAramRipper@l
/* 802DAEB8  7F A4 EB 78 */	mr r4, r29
/* 802DAEBC  48 00 12 A1 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802DAEC0  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 802DAEC4  28 03 00 00 */	cmplwi r3, 0
/* 802DAEC8  41 82 00 08 */	beq lbl_802DAED0
/* 802DAECC  4B FF 3E 71 */	bl __dl__FPv
lbl_802DAED0:
/* 802DAED0  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 802DAED4  28 03 00 00 */	cmplwi r3, 0
/* 802DAED8  41 82 00 18 */	beq lbl_802DAEF0
/* 802DAEDC  38 80 00 01 */	li r4, 1
/* 802DAEE0  81 83 00 00 */	lwz r12, 0(r3)
/* 802DAEE4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802DAEE8  7D 89 03 A6 */	mtctr r12
/* 802DAEEC  4E 80 04 21 */	bctrl 
lbl_802DAEF0:
/* 802DAEF0  38 00 00 00 */	li r0, 0
/* 802DAEF4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802DAEF8  38 7F 00 34 */	addi r3, r31, 0x34
/* 802DAEFC  48 06 42 21 */	bl OSUnlockMutex
/* 802DAF00  38 60 00 01 */	li r3, 1
lbl_802DAF04:
/* 802DAF04  39 61 00 20 */	addi r11, r1, 0x20
/* 802DAF08  48 08 73 21 */	bl _restgpr_29
/* 802DAF0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DAF10  7C 08 03 A6 */	mtlr r0
/* 802DAF14  38 21 00 20 */	addi r1, r1, 0x20
/* 802DAF18  4E 80 00 20 */	blr 
