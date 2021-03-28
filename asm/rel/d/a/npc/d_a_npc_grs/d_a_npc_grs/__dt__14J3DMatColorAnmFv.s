lbl_809E4C04:
/* 809E4C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E4C08  7C 08 02 A6 */	mflr r0
/* 809E4C0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E4C10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E4C14  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E4C18  41 82 00 10 */	beq lbl_809E4C28
/* 809E4C1C  7C 80 07 35 */	extsh. r0, r4
/* 809E4C20  40 81 00 08 */	ble lbl_809E4C28
/* 809E4C24  4B 8E A1 18 */	b __dl__FPv
lbl_809E4C28:
/* 809E4C28  7F E3 FB 78 */	mr r3, r31
/* 809E4C2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E4C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E4C34  7C 08 03 A6 */	mtlr r0
/* 809E4C38  38 21 00 10 */	addi r1, r1, 0x10
/* 809E4C3C  4E 80 00 20 */	blr 
