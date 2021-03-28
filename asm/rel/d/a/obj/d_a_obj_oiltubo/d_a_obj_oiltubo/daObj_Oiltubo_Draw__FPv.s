lbl_80CA75B8:
/* 80CA75B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA75BC  7C 08 02 A6 */	mflr r0
/* 80CA75C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA75C4  4B FF F9 19 */	bl Draw__15daObj_Oiltubo_cFv
/* 80CA75C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA75CC  7C 08 03 A6 */	mtlr r0
/* 80CA75D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA75D4  4E 80 00 20 */	blr 
