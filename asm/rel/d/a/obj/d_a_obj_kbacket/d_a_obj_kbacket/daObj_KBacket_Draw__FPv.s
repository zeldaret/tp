lbl_80587C18:
/* 80587C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587C1C  7C 08 02 A6 */	mflr r0
/* 80587C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587C24  4B FF F8 09 */	bl Draw__15daObj_KBacket_cFv
/* 80587C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587C2C  7C 08 03 A6 */	mtlr r0
/* 80587C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80587C34  4E 80 00 20 */	blr 
