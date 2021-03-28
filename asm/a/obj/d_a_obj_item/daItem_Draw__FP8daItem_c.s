lbl_8015DE50:
/* 8015DE50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015DE54  7C 08 02 A6 */	mflr r0
/* 8015DE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015DE5C  4B FF DF 29 */	bl _daItem_draw__8daItem_cFv
/* 8015DE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015DE64  7C 08 03 A6 */	mtlr r0
/* 8015DE68  38 21 00 10 */	addi r1, r1, 0x10
/* 8015DE6C  4E 80 00 20 */	blr 
