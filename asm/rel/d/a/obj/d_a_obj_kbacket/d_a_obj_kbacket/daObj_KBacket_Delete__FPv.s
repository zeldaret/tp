lbl_80587BD8:
/* 80587BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587BDC  7C 08 02 A6 */	mflr r0
/* 80587BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587BE4  4B FF EB 21 */	bl Delete__15daObj_KBacket_cFv
/* 80587BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587BEC  7C 08 03 A6 */	mtlr r0
/* 80587BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80587BF4  4E 80 00 20 */	blr 
