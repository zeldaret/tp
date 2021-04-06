lbl_809E376C:
/* 809E376C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E3770  7C 08 02 A6 */	mflr r0
/* 809E3774  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E3778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E377C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E3780  41 82 00 1C */	beq lbl_809E379C
/* 809E3784  3C A0 80 9E */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x809E3E5C@ha */
/* 809E3788  38 05 3E 5C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x809E3E5C@l */
/* 809E378C  90 1F 00 00 */	stw r0, 0(r31)
/* 809E3790  7C 80 07 35 */	extsh. r0, r4
/* 809E3794  40 81 00 08 */	ble lbl_809E379C
/* 809E3798  4B 8E B5 A5 */	bl __dl__FPv
lbl_809E379C:
/* 809E379C  7F E3 FB 78 */	mr r3, r31
/* 809E37A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E37A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E37A8  7C 08 03 A6 */	mtlr r0
/* 809E37AC  38 21 00 10 */	addi r1, r1, 0x10
/* 809E37B0  4E 80 00 20 */	blr 
