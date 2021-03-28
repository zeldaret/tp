lbl_800BF884:
/* 800BF884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF888  7C 08 02 A6 */	mflr r0
/* 800BF88C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BF894  7C 7F 1B 78 */	mr r31, r3
/* 800BF898  38 80 00 00 */	li r4, 0
/* 800BF89C  38 A0 00 00 */	li r5, 0
/* 800BF8A0  48 00 1A 3D */	bl deleteEquipItem__9daAlink_cFii
/* 800BF8A4  A0 1F 30 CE */	lhz r0, 0x30ce(r31)
/* 800BF8A8  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800BF8AC  38 00 00 FF */	li r0, 0xff
/* 800BF8B0  B0 1F 30 CE */	sth r0, 0x30ce(r31)
/* 800BF8B4  7F E3 FB 78 */	mr r3, r31
/* 800BF8B8  48 00 04 BD */	bl makeItemType__9daAlink_cFv
/* 800BF8BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BF8C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF8C4  7C 08 03 A6 */	mtlr r0
/* 800BF8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF8CC  4E 80 00 20 */	blr 
