lbl_80C86064:
/* 80C86064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C86068  7C 08 02 A6 */	mflr r0
/* 80C8606C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C86070  4B FF F5 B5 */	bl create__9daPropY_cFv
/* 80C86074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C86078  7C 08 03 A6 */	mtlr r0
/* 80C8607C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C86080  4E 80 00 20 */	blr 
