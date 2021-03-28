lbl_80820D68:
/* 80820D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80820D6C  7C 08 02 A6 */	mflr r0
/* 80820D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80820D74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80820D78  7C 7F 1B 79 */	or. r31, r3, r3
/* 80820D7C  41 82 00 1C */	beq lbl_80820D98
/* 80820D80  3C A0 80 82 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80820D84  38 05 1D F4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80820D88  90 1F 00 00 */	stw r0, 0(r31)
/* 80820D8C  7C 80 07 35 */	extsh. r0, r4
/* 80820D90  40 81 00 08 */	ble lbl_80820D98
/* 80820D94  4B AA DF A8 */	b __dl__FPv
lbl_80820D98:
/* 80820D98  7F E3 FB 78 */	mr r3, r31
/* 80820D9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80820DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80820DA4  7C 08 03 A6 */	mtlr r0
/* 80820DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80820DAC  4E 80 00 20 */	blr 
