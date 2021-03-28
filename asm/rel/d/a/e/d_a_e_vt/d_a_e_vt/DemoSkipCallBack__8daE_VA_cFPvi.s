lbl_807C53A8:
/* 807C53A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C53AC  7C 08 02 A6 */	mflr r0
/* 807C53B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C53B4  28 03 00 00 */	cmplwi r3, 0
/* 807C53B8  41 82 00 10 */	beq lbl_807C53C8
/* 807C53BC  4B FF FF 7D */	bl demo_skip__8daE_VA_cFi
/* 807C53C0  38 60 00 01 */	li r3, 1
/* 807C53C4  48 00 00 08 */	b lbl_807C53CC
lbl_807C53C8:
/* 807C53C8  38 60 00 00 */	li r3, 0
lbl_807C53CC:
/* 807C53CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C53D0  7C 08 03 A6 */	mtlr r0
/* 807C53D4  38 21 00 10 */	addi r1, r1, 0x10
/* 807C53D8  4E 80 00 20 */	blr 
