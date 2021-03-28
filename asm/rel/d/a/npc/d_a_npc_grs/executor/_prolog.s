lbl_809E3FE0:
/* 809E3FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E3FE4  7C 08 02 A6 */	mflr r0
/* 809E3FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E3FEC  3C 60 80 9E */	lis r3, data_809E7DB8@ha
/* 809E3FF0  38 63 7D B8 */	addi r3, r3, data_809E7DB8@l
/* 809E3FF4  4B 87 F1 58 */	b ModuleConstructorsX
/* 809E3FF8  4B 87 F0 90 */	b ModuleProlog
/* 809E3FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E4000  7C 08 03 A6 */	mtlr r0
/* 809E4004  38 21 00 10 */	addi r1, r1, 0x10
/* 809E4008  4E 80 00 20 */	blr 
