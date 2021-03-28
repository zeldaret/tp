lbl_80C5BB8C:
/* 80C5BB8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5BB90  7C 08 02 A6 */	mflr r0
/* 80C5BB94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5BB98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5BB9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5BBA0  41 82 00 1C */	beq lbl_80C5BBBC
/* 80C5BBA4  3C A0 80 C6 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C5BBA8  38 05 BD D4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C5BBAC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5BBB0  7C 80 07 35 */	extsh. r0, r4
/* 80C5BBB4  40 81 00 08 */	ble lbl_80C5BBBC
/* 80C5BBB8  4B 67 31 84 */	b __dl__FPv
lbl_80C5BBBC:
/* 80C5BBBC  7F E3 FB 78 */	mr r3, r31
/* 80C5BBC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5BBC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5BBC8  7C 08 03 A6 */	mtlr r0
/* 80C5BBCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5BBD0  4E 80 00 20 */	blr 
