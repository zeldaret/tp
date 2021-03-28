lbl_80B0D180:
/* 80B0D180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0D184  7C 08 02 A6 */	mflr r0
/* 80B0D188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0D18C  38 80 FF FF */	li r4, -1
/* 80B0D190  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B0D194  81 8C 00 08 */	lwz r12, 8(r12)
/* 80B0D198  7D 89 03 A6 */	mtctr r12
/* 80B0D19C  4E 80 04 21 */	bctrl 
/* 80B0D1A0  38 60 00 01 */	li r3, 1
/* 80B0D1A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0D1A8  7C 08 03 A6 */	mtlr r0
/* 80B0D1AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0D1B0  4E 80 00 20 */	blr 
