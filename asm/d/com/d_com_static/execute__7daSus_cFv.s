lbl_800315A4:
/* 800315A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800315A8  7C 08 02 A6 */	mflr r0
/* 800315AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800315B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800315B4  93 C1 00 08 */	stw r30, 8(r1)
/* 800315B8  3C 60 80 42 */	lis r3, mData__7daSus_c@ha /* 0x80423FFC@ha */
/* 800315BC  38 03 3F FC */	addi r0, r3, mData__7daSus_c@l /* 0x80423FFC@l */
/* 800315C0  7C 1F 03 78 */	mr r31, r0
/* 800315C4  3B C0 00 00 */	li r30, 0
/* 800315C8  48 00 00 20 */	b lbl_800315E8
lbl_800315CC:
/* 800315CC  88 1F 00 00 */	lbz r0, 0(r31)
/* 800315D0  7C 00 07 75 */	extsb. r0, r0
/* 800315D4  41 80 00 0C */	blt lbl_800315E0
/* 800315D8  7F E3 FB 78 */	mr r3, r31
/* 800315DC  4B FF FB 75 */	bl execute__Q27daSus_c6data_cFv
lbl_800315E0:
/* 800315E0  3B FF 00 24 */	addi r31, r31, 0x24
/* 800315E4  3B DE 00 01 */	addi r30, r30, 1
lbl_800315E8:
/* 800315E8  7F C0 07 34 */	extsh r0, r30
/* 800315EC  2C 00 00 20 */	cmpwi r0, 0x20
/* 800315F0  41 80 FF DC */	blt lbl_800315CC
/* 800315F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800315F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800315FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031600  7C 08 03 A6 */	mtlr r0
/* 80031604  38 21 00 10 */	addi r1, r1, 0x10
/* 80031608  4E 80 00 20 */	blr 
