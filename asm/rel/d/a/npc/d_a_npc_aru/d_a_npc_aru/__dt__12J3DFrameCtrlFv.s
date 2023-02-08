lbl_80956F60:
/* 80956F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80956F64  7C 08 02 A6 */	mflr r0
/* 80956F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80956F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80956F70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80956F74  41 82 00 1C */	beq lbl_80956F90
/* 80956F78  3C A0 80 95 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80957FB4@ha */
/* 80956F7C  38 05 7F B4 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80957FB4@l */
/* 80956F80  90 1F 00 00 */	stw r0, 0(r31)
/* 80956F84  7C 80 07 35 */	extsh. r0, r4
/* 80956F88  40 81 00 08 */	ble lbl_80956F90
/* 80956F8C  4B 97 7D B1 */	bl __dl__FPv
lbl_80956F90:
/* 80956F90  7F E3 FB 78 */	mr r3, r31
/* 80956F94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80956F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80956F9C  7C 08 03 A6 */	mtlr r0
/* 80956FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80956FA4  4E 80 00 20 */	blr 
