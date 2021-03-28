lbl_809E2FF0:
/* 809E2FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E2FF4  7C 08 02 A6 */	mflr r0
/* 809E2FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E2FFC  7C 66 1B 78 */	mr r6, r3
/* 809E3000  7C 85 23 78 */	mr r5, r4
/* 809E3004  80 63 00 08 */	lwz r3, 8(r3)
/* 809E3008  A0 86 00 04 */	lhz r4, 4(r6)
/* 809E300C  4B 94 7F 44 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 809E3010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E3014  7C 08 03 A6 */	mtlr r0
/* 809E3018  38 21 00 10 */	addi r1, r1, 0x10
/* 809E301C  4E 80 00 20 */	blr 
