lbl_809E31B4:
/* 809E31B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E31B8  7C 08 02 A6 */	mflr r0
/* 809E31BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E31C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E31C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E31C8  41 82 00 10 */	beq lbl_809E31D8
/* 809E31CC  7C 80 07 35 */	extsh. r0, r4
/* 809E31D0  40 81 00 08 */	ble lbl_809E31D8
/* 809E31D4  4B 8E BB 68 */	b __dl__FPv
lbl_809E31D8:
/* 809E31D8  7F E3 FB 78 */	mr r3, r31
/* 809E31DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E31E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E31E4  7C 08 03 A6 */	mtlr r0
/* 809E31E8  38 21 00 10 */	addi r1, r1, 0x10
/* 809E31EC  4E 80 00 20 */	blr 
