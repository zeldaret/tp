lbl_809E7C40:
/* 809E7C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E7C44  7C 08 02 A6 */	mflr r0
/* 809E7C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E7C50  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E7C54  41 82 00 1C */	beq lbl_809E7C70
/* 809E7C58  3C A0 80 9F */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x809E81A0@ha */
/* 809E7C5C  38 05 81 A0 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x809E81A0@l */
/* 809E7C60  90 1F 00 00 */	stw r0, 0(r31)
/* 809E7C64  7C 80 07 35 */	extsh. r0, r4
/* 809E7C68  40 81 00 08 */	ble lbl_809E7C70
/* 809E7C6C  4B 8E 70 D1 */	bl __dl__FPv
lbl_809E7C70:
/* 809E7C70  7F E3 FB 78 */	mr r3, r31
/* 809E7C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E7C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E7C7C  7C 08 03 A6 */	mtlr r0
/* 809E7C80  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7C84  4E 80 00 20 */	blr 
