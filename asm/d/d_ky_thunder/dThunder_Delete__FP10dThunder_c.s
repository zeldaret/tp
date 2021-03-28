lbl_801AE37C:
/* 801AE37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AE380  7C 08 02 A6 */	mflr r0
/* 801AE384  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AE388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AE38C  7C 7F 1B 79 */	or. r31, r3, r3
/* 801AE390  41 82 00 54 */	beq lbl_801AE3E4
/* 801AE394  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 801AE398  4B E6 0D F5 */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 801AE39C  34 1F 00 FC */	addic. r0, r31, 0xfc
/* 801AE3A0  41 82 00 44 */	beq lbl_801AE3E4
/* 801AE3A4  34 1F 01 20 */	addic. r0, r31, 0x120
/* 801AE3A8  41 82 00 1C */	beq lbl_801AE3C4
/* 801AE3AC  28 00 00 00 */	cmplwi r0, 0
/* 801AE3B0  41 82 00 14 */	beq lbl_801AE3C4
/* 801AE3B4  41 82 00 10 */	beq lbl_801AE3C4
/* 801AE3B8  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 801AE3BC  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 801AE3C0  90 1F 01 20 */	stw r0, 0x120(r31)
lbl_801AE3C4:
/* 801AE3C4  34 1F 01 08 */	addic. r0, r31, 0x108
/* 801AE3C8  41 82 00 1C */	beq lbl_801AE3E4
/* 801AE3CC  28 00 00 00 */	cmplwi r0, 0
/* 801AE3D0  41 82 00 14 */	beq lbl_801AE3E4
/* 801AE3D4  41 82 00 10 */	beq lbl_801AE3E4
/* 801AE3D8  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 801AE3DC  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 801AE3E0  90 1F 01 08 */	stw r0, 0x108(r31)
lbl_801AE3E4:
/* 801AE3E4  38 60 00 01 */	li r3, 1
/* 801AE3E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AE3EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AE3F0  7C 08 03 A6 */	mtlr r0
/* 801AE3F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801AE3F8  4E 80 00 20 */	blr 
