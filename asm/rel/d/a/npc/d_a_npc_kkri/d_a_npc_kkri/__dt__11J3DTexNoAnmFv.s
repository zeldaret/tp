lbl_8054FAFC:
/* 8054FAFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054FB00  7C 08 02 A6 */	mflr r0
/* 8054FB04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054FB08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054FB0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8054FB10  41 82 00 1C */	beq lbl_8054FB2C
/* 8054FB14  3C A0 80 55 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 8054FB18  38 05 3D 60 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 8054FB1C  90 1F 00 00 */	stw r0, 0(r31)
/* 8054FB20  7C 80 07 35 */	extsh. r0, r4
/* 8054FB24  40 81 00 08 */	ble lbl_8054FB2C
/* 8054FB28  4B D7 F2 14 */	b __dl__FPv
lbl_8054FB2C:
/* 8054FB2C  7F E3 FB 78 */	mr r3, r31
/* 8054FB30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054FB34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054FB38  7C 08 03 A6 */	mtlr r0
/* 8054FB3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054FB40  4E 80 00 20 */	blr 
