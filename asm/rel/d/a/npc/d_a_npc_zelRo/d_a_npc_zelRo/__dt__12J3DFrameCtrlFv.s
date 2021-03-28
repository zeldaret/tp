lbl_80B7463C:
/* 80B7463C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B74640  7C 08 02 A6 */	mflr r0
/* 80B74644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B74648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7464C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B74650  41 82 00 1C */	beq lbl_80B7466C
/* 80B74654  3C A0 80 B7 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80B74658  38 05 4E B8 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80B7465C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B74660  7C 80 07 35 */	extsh. r0, r4
/* 80B74664  40 81 00 08 */	ble lbl_80B7466C
/* 80B74668  4B 75 A6 D4 */	b __dl__FPv
lbl_80B7466C:
/* 80B7466C  7F E3 FB 78 */	mr r3, r31
/* 80B74670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B74674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B74678  7C 08 03 A6 */	mtlr r0
/* 80B7467C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B74680  4E 80 00 20 */	blr 
