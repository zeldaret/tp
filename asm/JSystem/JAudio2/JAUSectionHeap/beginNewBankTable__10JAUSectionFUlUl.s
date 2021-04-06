lbl_802A5CAC:
/* 802A5CAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A5CB0  7C 08 02 A6 */	mflr r0
/* 802A5CB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A5CB8  39 61 00 30 */	addi r11, r1, 0x30
/* 802A5CBC  48 0B C5 19 */	bl _savegpr_27
/* 802A5CC0  7C 7B 1B 78 */	mr r27, r3
/* 802A5CC4  7C 9C 23 78 */	mr r28, r4
/* 802A5CC8  7C BD 2B 78 */	mr r29, r5
/* 802A5CCC  3B C0 00 00 */	li r30, 0
/* 802A5CD0  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802A5CD4  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A5CD8  48 02 87 61 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5CDC  90 61 00 08 */	stw r3, 8(r1)
/* 802A5CE0  57 A3 10 3A */	slwi r3, r29, 2
/* 802A5CE4  48 02 8F E1 */	bl __nwa__FUl
/* 802A5CE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A5CEC  41 82 00 84 */	beq lbl_802A5D70
/* 802A5CF0  38 60 00 24 */	li r3, 0x24
/* 802A5CF4  48 02 8F 59 */	bl __nw__FUl
/* 802A5CF8  28 03 00 00 */	cmplwi r3, 0
/* 802A5CFC  41 82 00 64 */	beq lbl_802A5D60
/* 802A5D00  7C 7E 1B 78 */	mr r30, r3
/* 802A5D04  7C 64 1B 78 */	mr r4, r3
/* 802A5D08  41 82 00 08 */	beq lbl_802A5D10
/* 802A5D0C  38 84 00 10 */	addi r4, r4, 0x10
lbl_802A5D10:
/* 802A5D10  48 03 60 ED */	bl __ct__10JSUPtrLinkFPv
/* 802A5D14  3C 60 80 3C */	lis r3, __vt__11JASBankList@ha /* 0x803C5B80@ha */
/* 802A5D18  38 03 5B 80 */	addi r0, r3, __vt__11JASBankList@l /* 0x803C5B80@l */
/* 802A5D1C  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802A5D20  3C 60 80 3D */	lis r3, __vt__12JAUBankTable@ha /* 0x803C9B08@ha */
/* 802A5D24  38 03 9B 08 */	addi r0, r3, __vt__12JAUBankTable@l /* 0x803C9B08@l */
/* 802A5D28  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802A5D2C  93 FE 00 14 */	stw r31, 0x14(r30)
/* 802A5D30  93 BE 00 18 */	stw r29, 0x18(r30)
/* 802A5D34  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 802A5D38  38 80 00 00 */	li r4, 0
/* 802A5D3C  57 A5 10 3A */	slwi r5, r29, 2
/* 802A5D40  4B D5 D7 19 */	bl memset
/* 802A5D44  93 9E 00 1C */	stw r28, 0x1c(r30)
/* 802A5D48  3C 60 80 3D */	lis r3, __vt__16JAUBankTableLink@ha /* 0x803C9AF4@ha */
/* 802A5D4C  38 63 9A F4 */	addi r3, r3, __vt__16JAUBankTableLink@l /* 0x803C9AF4@l */
/* 802A5D50  90 7E 00 20 */	stw r3, 0x20(r30)
/* 802A5D54  38 03 00 08 */	addi r0, r3, 8
/* 802A5D58  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802A5D5C  7F C3 F3 78 */	mr r3, r30
lbl_802A5D60:
/* 802A5D60  7C 7E 1B 78 */	mr r30, r3
/* 802A5D64  28 03 00 00 */	cmplwi r3, 0
/* 802A5D68  41 82 00 08 */	beq lbl_802A5D70
/* 802A5D6C  90 7B 00 34 */	stw r3, 0x34(r27)
lbl_802A5D70:
/* 802A5D70  80 61 00 08 */	lwz r3, 8(r1)
/* 802A5D74  48 02 86 C5 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5D78  30 1E FF FF */	addic r0, r30, -1
/* 802A5D7C  7C 00 F1 10 */	subfe r0, r0, r30
/* 802A5D80  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 802A5D84  39 61 00 30 */	addi r11, r1, 0x30
/* 802A5D88  48 0B C4 99 */	bl _restgpr_27
/* 802A5D8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A5D90  7C 08 03 A6 */	mtlr r0
/* 802A5D94  38 21 00 30 */	addi r1, r1, 0x30
/* 802A5D98  4E 80 00 20 */	blr 
