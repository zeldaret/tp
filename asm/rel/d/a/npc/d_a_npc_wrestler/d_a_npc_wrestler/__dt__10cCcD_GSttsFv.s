lbl_80B415D0:
/* 80B415D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B415D4  7C 08 02 A6 */	mflr r0
/* 80B415D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B415DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B415E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B415E4  41 82 00 1C */	beq lbl_80B41600
/* 80B415E8  3C A0 80 B4 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80B42DAC@ha */
/* 80B415EC  38 05 2D AC */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80B42DAC@l */
/* 80B415F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80B415F4  7C 80 07 35 */	extsh. r0, r4
/* 80B415F8  40 81 00 08 */	ble lbl_80B41600
/* 80B415FC  4B 78 D7 41 */	bl __dl__FPv
lbl_80B41600:
/* 80B41600  7F E3 FB 78 */	mr r3, r31
/* 80B41604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B41608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4160C  7C 08 03 A6 */	mtlr r0
/* 80B41610  38 21 00 10 */	addi r1, r1, 0x10
/* 80B41614  4E 80 00 20 */	blr 
