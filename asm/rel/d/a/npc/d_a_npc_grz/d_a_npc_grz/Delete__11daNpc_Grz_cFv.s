lbl_809E92AC:
/* 809E92AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E92B0  7C 08 02 A6 */	mflr r0
/* 809E92B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E92B8  38 80 FF FF */	li r4, -1
/* 809E92BC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809E92C0  81 8C 00 08 */	lwz r12, 8(r12)
/* 809E92C4  7D 89 03 A6 */	mtctr r12
/* 809E92C8  4E 80 04 21 */	bctrl 
/* 809E92CC  38 60 00 01 */	li r3, 1
/* 809E92D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E92D4  7C 08 03 A6 */	mtlr r0
/* 809E92D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809E92DC  4E 80 00 20 */	blr 
