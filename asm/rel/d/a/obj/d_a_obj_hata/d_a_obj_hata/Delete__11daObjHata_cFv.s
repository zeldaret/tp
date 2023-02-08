lbl_80C18F88:
/* 80C18F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18F8C  7C 08 02 A6 */	mflr r0
/* 80C18F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18F94  38 80 FF FF */	li r4, -1
/* 80C18F98  81 83 05 70 */	lwz r12, 0x570(r3)
/* 80C18F9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C18FA0  7D 89 03 A6 */	mtctr r12
/* 80C18FA4  4E 80 04 21 */	bctrl 
/* 80C18FA8  38 60 00 01 */	li r3, 1
/* 80C18FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18FB0  7C 08 03 A6 */	mtlr r0
/* 80C18FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18FB8  4E 80 00 20 */	blr 
