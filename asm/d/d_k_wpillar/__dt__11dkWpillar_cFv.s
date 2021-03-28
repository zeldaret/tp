lbl_80261F24:
/* 80261F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80261F28  7C 08 02 A6 */	mflr r0
/* 80261F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80261F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80261F34  93 C1 00 08 */	stw r30, 8(r1)
/* 80261F38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80261F3C  7C 9E 23 78 */	mr r30, r4
/* 80261F40  41 82 00 90 */	beq lbl_80261FD0
/* 80261F44  80 7F 01 48 */	lwz r3, 0x148(r31)
/* 80261F48  28 03 00 00 */	cmplwi r3, 0
/* 80261F4C  41 82 00 08 */	beq lbl_80261F54
/* 80261F50  4B DA D2 3D */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
lbl_80261F54:
/* 80261F54  34 1F 01 30 */	addic. r0, r31, 0x130
/* 80261F58  41 82 00 20 */	beq lbl_80261F78
/* 80261F5C  34 1F 01 30 */	addic. r0, r31, 0x130
/* 80261F60  41 82 00 18 */	beq lbl_80261F78
/* 80261F64  34 1F 01 30 */	addic. r0, r31, 0x130
/* 80261F68  41 82 00 10 */	beq lbl_80261F78
/* 80261F6C  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80261F70  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80261F74  90 1F 01 30 */	stw r0, 0x130(r31)
lbl_80261F78:
/* 80261F78  34 1F 01 18 */	addic. r0, r31, 0x118
/* 80261F7C  41 82 00 20 */	beq lbl_80261F9C
/* 80261F80  34 1F 01 18 */	addic. r0, r31, 0x118
/* 80261F84  41 82 00 18 */	beq lbl_80261F9C
/* 80261F88  34 1F 01 18 */	addic. r0, r31, 0x118
/* 80261F8C  41 82 00 10 */	beq lbl_80261F9C
/* 80261F90  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80261F94  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80261F98  90 1F 01 18 */	stw r0, 0x118(r31)
lbl_80261F9C:
/* 80261F9C  34 1F 00 FC */	addic. r0, r31, 0xfc
/* 80261FA0  41 82 00 20 */	beq lbl_80261FC0
/* 80261FA4  34 1F 00 FC */	addic. r0, r31, 0xfc
/* 80261FA8  41 82 00 18 */	beq lbl_80261FC0
/* 80261FAC  34 1F 00 FC */	addic. r0, r31, 0xfc
/* 80261FB0  41 82 00 10 */	beq lbl_80261FC0
/* 80261FB4  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80261FB8  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80261FBC  90 1F 00 FC */	stw r0, 0xfc(r31)
lbl_80261FC0:
/* 80261FC0  7F C0 07 35 */	extsh. r0, r30
/* 80261FC4  40 81 00 0C */	ble lbl_80261FD0
/* 80261FC8  7F E3 FB 78 */	mr r3, r31
/* 80261FCC  48 06 CD 71 */	bl __dl__FPv
lbl_80261FD0:
/* 80261FD0  7F E3 FB 78 */	mr r3, r31
/* 80261FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80261FD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80261FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80261FE0  7C 08 03 A6 */	mtlr r0
/* 80261FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80261FE8  4E 80 00 20 */	blr 
