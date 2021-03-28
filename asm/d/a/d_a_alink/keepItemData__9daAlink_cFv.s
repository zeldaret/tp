lbl_800BF854:
/* 800BF854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF858  7C 08 02 A6 */	mflr r0
/* 800BF85C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF860  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800BF864  B0 03 30 CE */	sth r0, 0x30ce(r3)
/* 800BF868  38 80 00 00 */	li r4, 0
/* 800BF86C  38 A0 00 00 */	li r5, 0
/* 800BF870  48 00 1A 6D */	bl deleteEquipItem__9daAlink_cFii
/* 800BF874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF878  7C 08 03 A6 */	mtlr r0
/* 800BF87C  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF880  4E 80 00 20 */	blr 
