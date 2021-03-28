lbl_80587BB8:
/* 80587BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587BBC  7C 08 02 A6 */	mflr r0
/* 80587BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587BC4  4B FF E4 85 */	bl create__15daObj_KBacket_cFv
/* 80587BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587BCC  7C 08 03 A6 */	mtlr r0
/* 80587BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80587BD4  4E 80 00 20 */	blr 
