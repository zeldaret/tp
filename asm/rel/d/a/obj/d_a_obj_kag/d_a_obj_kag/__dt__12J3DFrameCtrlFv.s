lbl_80C2E714:
/* 80C2E714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2E718  7C 08 02 A6 */	mflr r0
/* 80C2E71C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2E720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2E724  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C2E728  41 82 00 1C */	beq lbl_80C2E744
/* 80C2E72C  3C A0 80 C3 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C2E730  38 05 14 10 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C2E734  90 1F 00 00 */	stw r0, 0(r31)
/* 80C2E738  7C 80 07 35 */	extsh. r0, r4
/* 80C2E73C  40 81 00 08 */	ble lbl_80C2E744
/* 80C2E740  4B 6A 05 FC */	b __dl__FPv
lbl_80C2E744:
/* 80C2E744  7F E3 FB 78 */	mr r3, r31
/* 80C2E748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2E74C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2E750  7C 08 03 A6 */	mtlr r0
/* 80C2E754  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2E758  4E 80 00 20 */	blr 
