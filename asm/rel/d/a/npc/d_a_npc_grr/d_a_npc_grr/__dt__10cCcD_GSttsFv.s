lbl_809E37B8:
/* 809E37B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E37BC  7C 08 02 A6 */	mflr r0
/* 809E37C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E37C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E37C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E37CC  41 82 00 1C */	beq lbl_809E37E8
/* 809E37D0  3C A0 80 9E */	lis r5, __vt__10cCcD_GStts@ha /* 0x809E3E8C@ha */
/* 809E37D4  38 05 3E 8C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x809E3E8C@l */
/* 809E37D8  90 1F 00 00 */	stw r0, 0(r31)
/* 809E37DC  7C 80 07 35 */	extsh. r0, r4
/* 809E37E0  40 81 00 08 */	ble lbl_809E37E8
/* 809E37E4  4B 8E B5 59 */	bl __dl__FPv
lbl_809E37E8:
/* 809E37E8  7F E3 FB 78 */	mr r3, r31
/* 809E37EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E37F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E37F4  7C 08 03 A6 */	mtlr r0
/* 809E37F8  38 21 00 10 */	addi r1, r1, 0x10
/* 809E37FC  4E 80 00 20 */	blr 
