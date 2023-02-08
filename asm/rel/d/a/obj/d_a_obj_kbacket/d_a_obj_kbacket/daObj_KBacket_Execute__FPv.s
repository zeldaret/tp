lbl_80587BF8:
/* 80587BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587BFC  7C 08 02 A6 */	mflr r0
/* 80587C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587C04  4B FF EB 35 */	bl Execute__15daObj_KBacket_cFv
/* 80587C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587C0C  7C 08 03 A6 */	mtlr r0
/* 80587C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80587C14  4E 80 00 20 */	blr 
