lbl_809E02E8:
/* 809E02E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E02EC  7C 08 02 A6 */	mflr r0
/* 809E02F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E02F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E02F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E02FC  41 82 00 1C */	beq lbl_809E0318
/* 809E0300  3C A0 80 9E */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x809E3E08@ha */
/* 809E0304  38 05 3E 08 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x809E3E08@l */
/* 809E0308  90 1F 00 00 */	stw r0, 0(r31)
/* 809E030C  7C 80 07 35 */	extsh. r0, r4
/* 809E0310  40 81 00 08 */	ble lbl_809E0318
/* 809E0314  4B 8E EA 29 */	bl __dl__FPv
lbl_809E0318:
/* 809E0318  7F E3 FB 78 */	mr r3, r31
/* 809E031C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E0320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E0324  7C 08 03 A6 */	mtlr r0
/* 809E0328  38 21 00 10 */	addi r1, r1, 0x10
/* 809E032C  4E 80 00 20 */	blr 
