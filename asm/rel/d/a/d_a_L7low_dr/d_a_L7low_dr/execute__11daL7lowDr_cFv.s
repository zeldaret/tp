lbl_805AABF8:
/* 805AABF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AABFC  7C 08 02 A6 */	mflr r0
/* 805AAC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AAC04  4B FF FA 99 */	bl action__11daL7lowDr_cFv
/* 805AAC08  38 60 00 01 */	li r3, 1
/* 805AAC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAC10  7C 08 03 A6 */	mtlr r0
/* 805AAC14  38 21 00 10 */	addi r1, r1, 0x10
/* 805AAC18  4E 80 00 20 */	blr 
