lbl_809DEDD4:
/* 809DEDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DEDD8  7C 08 02 A6 */	mflr r0
/* 809DEDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DEDE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DEDE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DEDE8  41 82 00 1C */	beq lbl_809DEE04
/* 809DEDEC  3C A0 80 9E */	lis r5, __vt__12J3DFrameCtrl@ha
/* 809DEDF0  38 05 F6 68 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 809DEDF4  90 1F 00 00 */	stw r0, 0(r31)
/* 809DEDF8  7C 80 07 35 */	extsh. r0, r4
/* 809DEDFC  40 81 00 08 */	ble lbl_809DEE04
/* 809DEE00  4B 8E FF 3C */	b __dl__FPv
lbl_809DEE04:
/* 809DEE04  7F E3 FB 78 */	mr r3, r31
/* 809DEE08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DEE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DEE10  7C 08 03 A6 */	mtlr r0
/* 809DEE14  38 21 00 10 */	addi r1, r1, 0x10
/* 809DEE18  4E 80 00 20 */	blr 
