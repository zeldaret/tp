lbl_80A88174:
/* 80A88174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A88178  7C 08 02 A6 */	mflr r0
/* 80A8817C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A88180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A88184  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A88188  41 82 00 1C */	beq lbl_80A881A4
/* 80A8818C  3C A0 80 A9 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80A88190  38 05 8A 5C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80A88194  90 1F 00 00 */	stw r0, 0(r31)
/* 80A88198  7C 80 07 35 */	extsh. r0, r4
/* 80A8819C  40 81 00 08 */	ble lbl_80A881A4
/* 80A881A0  4B 84 6B 9C */	b __dl__FPv
lbl_80A881A4:
/* 80A881A4  7F E3 FB 78 */	mr r3, r31
/* 80A881A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A881AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A881B0  7C 08 03 A6 */	mtlr r0
/* 80A881B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A881B8  4E 80 00 20 */	blr 
