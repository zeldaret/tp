lbl_804D1F68:
/* 804D1F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1F6C  7C 08 02 A6 */	mflr r0
/* 804D1F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D1F78  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D1F7C  41 82 00 1C */	beq lbl_804D1F98
/* 804D1F80  3C A0 80 4D */	lis r5, __vt__12J3DFrameCtrl@ha
/* 804D1F84  38 05 4F B4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 804D1F88  90 1F 00 00 */	stw r0, 0(r31)
/* 804D1F8C  7C 80 07 35 */	extsh. r0, r4
/* 804D1F90  40 81 00 08 */	ble lbl_804D1F98
/* 804D1F94  4B DF CD A8 */	b __dl__FPv
lbl_804D1F98:
/* 804D1F98  7F E3 FB 78 */	mr r3, r31
/* 804D1F9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D1FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1FA4  7C 08 03 A6 */	mtlr r0
/* 804D1FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1FAC  4E 80 00 20 */	blr 
