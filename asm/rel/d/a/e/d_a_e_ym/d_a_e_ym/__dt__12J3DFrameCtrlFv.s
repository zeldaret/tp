lbl_80813E3C:
/* 80813E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80813E40  7C 08 02 A6 */	mflr r0
/* 80813E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80813E48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80813E4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80813E50  41 82 00 1C */	beq lbl_80813E6C
/* 80813E54  3C A0 80 81 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80815CF8@ha */
/* 80813E58  38 05 5C F8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80815CF8@l */
/* 80813E5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80813E60  7C 80 07 35 */	extsh. r0, r4
/* 80813E64  40 81 00 08 */	ble lbl_80813E6C
/* 80813E68  4B AB AE D5 */	bl __dl__FPv
lbl_80813E6C:
/* 80813E6C  7F E3 FB 78 */	mr r3, r31
/* 80813E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80813E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80813E78  7C 08 03 A6 */	mtlr r0
/* 80813E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80813E80  4E 80 00 20 */	blr 
