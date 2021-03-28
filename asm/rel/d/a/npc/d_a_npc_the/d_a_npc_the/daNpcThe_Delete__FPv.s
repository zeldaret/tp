lbl_80AF98D0:
/* 80AF98D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF98D4  7C 08 02 A6 */	mflr r0
/* 80AF98D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF98DC  38 80 FF FF */	li r4, -1
/* 80AF98E0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AF98E4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AF98E8  7D 89 03 A6 */	mtctr r12
/* 80AF98EC  4E 80 04 21 */	bctrl 
/* 80AF98F0  38 60 00 01 */	li r3, 1
/* 80AF98F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF98F8  7C 08 03 A6 */	mtlr r0
/* 80AF98FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF9900  4E 80 00 20 */	blr 
