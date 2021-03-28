lbl_80C8EF4C:
/* 80C8EF4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8EF50  7C 08 02 A6 */	mflr r0
/* 80C8EF54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8EF58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8EF5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8EF60  41 82 00 1C */	beq lbl_80C8EF7C
/* 80C8EF64  3C A0 80 C9 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C8EF68  38 05 FC 6C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C8EF6C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8EF70  7C 80 07 35 */	extsh. r0, r4
/* 80C8EF74  40 81 00 08 */	ble lbl_80C8EF7C
/* 80C8EF78  4B 63 FD C4 */	b __dl__FPv
lbl_80C8EF7C:
/* 80C8EF7C  7F E3 FB 78 */	mr r3, r31
/* 80C8EF80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8EF84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8EF88  7C 08 03 A6 */	mtlr r0
/* 80C8EF8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8EF90  4E 80 00 20 */	blr 
