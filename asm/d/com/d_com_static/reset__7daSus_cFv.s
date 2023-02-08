lbl_800313BC:
/* 800313BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800313C0  7C 08 02 A6 */	mflr r0
/* 800313C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800313C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800313CC  93 C1 00 08 */	stw r30, 8(r1)
/* 800313D0  3C 60 80 42 */	lis r3, mData__7daSus_c@ha /* 0x80423FFC@ha */
/* 800313D4  38 03 3F FC */	addi r0, r3, mData__7daSus_c@l /* 0x80423FFC@l */
/* 800313D8  7C 1F 03 78 */	mr r31, r0
/* 800313DC  3B C0 00 00 */	li r30, 0
lbl_800313E0:
/* 800313E0  7F E3 FB 78 */	mr r3, r31
/* 800313E4  4B FF FB D9 */	bl reset__Q27daSus_c6data_cFv
/* 800313E8  3B DE 00 01 */	addi r30, r30, 1
/* 800313EC  2C 1E 00 20 */	cmpwi r30, 0x20
/* 800313F0  3B FF 00 24 */	addi r31, r31, 0x24
/* 800313F4  41 80 FF EC */	blt lbl_800313E0
/* 800313F8  3C 60 80 42 */	lis r3, mRoom__7daSus_c@ha /* 0x8042447C@ha */
/* 800313FC  38 03 44 7C */	addi r0, r3, mRoom__7daSus_c@l /* 0x8042447C@l */
/* 80031400  7C 04 03 78 */	mr r4, r0
/* 80031404  38 60 00 00 */	li r3, 0
/* 80031408  38 00 00 40 */	li r0, 0x40
/* 8003140C  7C 09 03 A6 */	mtctr r0
lbl_80031410:
/* 80031410  90 64 00 00 */	stw r3, 0(r4)
/* 80031414  38 84 00 04 */	addi r4, r4, 4
/* 80031418  42 00 FF F8 */	bdnz lbl_80031410
/* 8003141C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80031420  83 C1 00 08 */	lwz r30, 8(r1)
/* 80031424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031428  7C 08 03 A6 */	mtlr r0
/* 8003142C  38 21 00 10 */	addi r1, r1, 0x10
/* 80031430  4E 80 00 20 */	blr 
