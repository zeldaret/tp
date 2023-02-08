lbl_805A6004:
/* 805A6004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6008  7C 08 02 A6 */	mflr r0
/* 805A600C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6010  4B FF FA D5 */	bl execute__12daTagMhint_cFv
/* 805A6014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6018  7C 08 03 A6 */	mtlr r0
/* 805A601C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6020  4E 80 00 20 */	blr 
