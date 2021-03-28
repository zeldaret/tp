lbl_805A45D8:
/* 805A45D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A45DC  7C 08 02 A6 */	mflr r0
/* 805A45E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A45E4  4B FF FE 09 */	bl create__12daTagHstop_cFv
/* 805A45E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A45EC  7C 08 03 A6 */	mtlr r0
/* 805A45F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A45F4  4E 80 00 20 */	blr 
