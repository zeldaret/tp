lbl_80AEAF8C:
/* 80AEAF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEAF90  7C 08 02 A6 */	mflr r0
/* 80AEAF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEAF98  38 80 FF FF */	li r4, -1
/* 80AEAF9C  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80AEAFA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AEAFA4  7D 89 03 A6 */	mtctr r12
/* 80AEAFA8  4E 80 04 21 */	bctrl 
/* 80AEAFAC  38 60 00 01 */	li r3, 1
/* 80AEAFB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEAFB4  7C 08 03 A6 */	mtlr r0
/* 80AEAFB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEAFBC  4E 80 00 20 */	blr 
