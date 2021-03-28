lbl_80C355F8:
/* 80C355F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C355FC  7C 08 02 A6 */	mflr r0
/* 80C35600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C35604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C35608  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3560C  41 82 00 1C */	beq lbl_80C35628
/* 80C35610  3C A0 80 C4 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C35614  38 05 85 B0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C35618  90 1F 00 00 */	stw r0, 0(r31)
/* 80C3561C  7C 80 07 35 */	extsh. r0, r4
/* 80C35620  40 81 00 08 */	ble lbl_80C35628
/* 80C35624  4B 69 97 18 */	b __dl__FPv
lbl_80C35628:
/* 80C35628  7F E3 FB 78 */	mr r3, r31
/* 80C3562C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C35630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C35634  7C 08 03 A6 */	mtlr r0
/* 80C35638  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3563C  4E 80 00 20 */	blr 
