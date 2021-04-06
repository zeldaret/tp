lbl_809E9198:
/* 809E9198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E919C  7C 08 02 A6 */	mflr r0
/* 809E91A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E91A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E91A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E91AC  41 82 00 1C */	beq lbl_809E91C8
/* 809E91B0  3C A0 80 9F */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x809EFAF8@ha */
/* 809E91B4  38 05 FA F8 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x809EFAF8@l */
/* 809E91B8  90 1F 00 00 */	stw r0, 0(r31)
/* 809E91BC  7C 80 07 35 */	extsh. r0, r4
/* 809E91C0  40 81 00 08 */	ble lbl_809E91C8
/* 809E91C4  4B 8E 5B 79 */	bl __dl__FPv
lbl_809E91C8:
/* 809E91C8  7F E3 FB 78 */	mr r3, r31
/* 809E91CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E91D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E91D4  7C 08 03 A6 */	mtlr r0
/* 809E91D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809E91DC  4E 80 00 20 */	blr 
