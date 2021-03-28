lbl_80CB8A28:
/* 80CB8A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8A2C  7C 08 02 A6 */	mflr r0
/* 80CB8A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8A34  38 80 FF FF */	li r4, -1
/* 80CB8A38  81 83 05 70 */	lwz r12, 0x570(r3)
/* 80CB8A3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CB8A40  7D 89 03 A6 */	mtctr r12
/* 80CB8A44  4E 80 04 21 */	bctrl 
/* 80CB8A48  38 60 00 01 */	li r3, 1
/* 80CB8A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8A50  7C 08 03 A6 */	mtlr r0
/* 80CB8A54  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8A58  4E 80 00 20 */	blr 
