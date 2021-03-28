lbl_809CEC3C:
/* 809CEC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CEC40  7C 08 02 A6 */	mflr r0
/* 809CEC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CEC48  4B FF D1 D1 */	bl Draw__11daNpc_grC_cFv
/* 809CEC4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CEC50  7C 08 03 A6 */	mtlr r0
/* 809CEC54  38 21 00 10 */	addi r1, r1, 0x10
/* 809CEC58  4E 80 00 20 */	blr 
