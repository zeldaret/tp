lbl_80BA5F40:
/* 80BA5F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA5F44  7C 08 02 A6 */	mflr r0
/* 80BA5F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA5F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA5F50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA5F54  41 82 00 1C */	beq lbl_80BA5F70
/* 80BA5F58  3C A0 80 BA */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80BA5F5C  38 05 6D B4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80BA5F60  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA5F64  7C 80 07 35 */	extsh. r0, r4
/* 80BA5F68  40 81 00 08 */	ble lbl_80BA5F70
/* 80BA5F6C  4B 72 8D D0 */	b __dl__FPv
lbl_80BA5F70:
/* 80BA5F70  7F E3 FB 78 */	mr r3, r31
/* 80BA5F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA5F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA5F7C  7C 08 03 A6 */	mtlr r0
/* 80BA5F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA5F84  4E 80 00 20 */	blr 
