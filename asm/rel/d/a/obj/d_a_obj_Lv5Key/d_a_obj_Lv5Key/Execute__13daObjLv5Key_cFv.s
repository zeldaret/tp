lbl_80B9C410:
/* 80B9C410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9C414  7C 08 02 A6 */	mflr r0
/* 80B9C418  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9C41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9C420  7C 7F 1B 78 */	mr r31, r3
/* 80B9C424  4B FF F9 B5 */	bl Action__13daObjLv5Key_cFv
/* 80B9C428  7F E3 FB 78 */	mr r3, r31
/* 80B9C42C  48 00 01 09 */	bl setBaseMtx__13daObjLv5Key_cFv
/* 80B9C430  7F E3 FB 78 */	mr r3, r31
/* 80B9C434  4B FF F7 F9 */	bl setCcSph__13daObjLv5Key_cFv
/* 80B9C438  38 60 00 01 */	li r3, 1
/* 80B9C43C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9C440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9C444  7C 08 03 A6 */	mtlr r0
/* 80B9C448  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9C44C  4E 80 00 20 */	blr 
