lbl_80D1FF5C:
/* 80D1FF5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1FF60  7C 08 02 A6 */	mflr r0
/* 80D1FF64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1FF68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1FF6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1FF70  41 82 00 1C */	beq lbl_80D1FF8C
/* 80D1FF74  3C A0 80 D2 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D1FF78  38 05 06 40 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D1FF7C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D1FF80  7C 80 07 35 */	extsh. r0, r4
/* 80D1FF84  40 81 00 08 */	ble lbl_80D1FF8C
/* 80D1FF88  4B 5A ED B4 */	b __dl__FPv
lbl_80D1FF8C:
/* 80D1FF8C  7F E3 FB 78 */	mr r3, r31
/* 80D1FF90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1FF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1FF98  7C 08 03 A6 */	mtlr r0
/* 80D1FF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1FFA0  4E 80 00 20 */	blr 
