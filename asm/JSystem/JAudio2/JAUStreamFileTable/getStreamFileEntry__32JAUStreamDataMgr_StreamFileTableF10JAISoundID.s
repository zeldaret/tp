lbl_802A74AC:
/* 802A74AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A74B0  7C 08 02 A6 */	mflr r0
/* 802A74B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A74B8  A0 84 00 02 */	lhz r4, 2(r4)
/* 802A74BC  38 63 00 04 */	addi r3, r3, 4
/* 802A74C0  4B FF FF C5 */	bl getFilePath__18JAUStreamFileTableCFi
/* 802A74C4  28 03 00 00 */	cmplwi r3, 0
/* 802A74C8  40 82 00 0C */	bne lbl_802A74D4
/* 802A74CC  38 60 FF FF */	li r3, -1
/* 802A74D0  48 00 00 08 */	b lbl_802A74D8
lbl_802A74D4:
/* 802A74D4  48 0A 10 55 */	bl DVDConvertPathToEntrynum
lbl_802A74D8:
/* 802A74D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A74DC  7C 08 03 A6 */	mtlr r0
/* 802A74E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A74E4  4E 80 00 20 */	blr 
