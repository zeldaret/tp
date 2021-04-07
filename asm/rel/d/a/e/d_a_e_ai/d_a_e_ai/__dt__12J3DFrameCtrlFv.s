lbl_8067B87C:
/* 8067B87C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067B880  7C 08 02 A6 */	mflr r0
/* 8067B884  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067B888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067B88C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8067B890  41 82 00 1C */	beq lbl_8067B8AC
/* 8067B894  3C A0 80 68 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8067C678@ha */
/* 8067B898  38 05 C6 78 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8067C678@l */
/* 8067B89C  90 1F 00 00 */	stw r0, 0(r31)
/* 8067B8A0  7C 80 07 35 */	extsh. r0, r4
/* 8067B8A4  40 81 00 08 */	ble lbl_8067B8AC
/* 8067B8A8  4B C5 34 95 */	bl __dl__FPv
lbl_8067B8AC:
/* 8067B8AC  7F E3 FB 78 */	mr r3, r31
/* 8067B8B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067B8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067B8B8  7C 08 03 A6 */	mtlr r0
/* 8067B8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8067B8C0  4E 80 00 20 */	blr 
