lbl_80D4AB68:
/* 80D4AB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4AB6C  7C 08 02 A6 */	mflr r0
/* 80D4AB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4AB74  4B FF CC 31 */	bl Draw__8daPeru_cFv
/* 80D4AB78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4AB7C  7C 08 03 A6 */	mtlr r0
/* 80D4AB80  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4AB84  4E 80 00 20 */	blr 
