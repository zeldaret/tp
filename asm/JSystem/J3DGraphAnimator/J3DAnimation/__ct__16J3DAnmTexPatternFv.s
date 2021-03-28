lbl_8032AED8:
/* 8032AED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032AEDC  7C 08 02 A6 */	mflr r0
/* 8032AEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032AEE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032AEE8  7C 7F 1B 78 */	mr r31, r3
/* 8032AEEC  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 8032AEF0  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 8032AEF4  90 1F 00 00 */	stw r0, 0(r31)
/* 8032AEF8  38 80 00 00 */	li r4, 0
/* 8032AEFC  98 9F 00 04 */	stb r4, 4(r31)
/* 8032AF00  98 9F 00 05 */	stb r4, 5(r31)
/* 8032AF04  B0 9F 00 06 */	sth r4, 6(r31)
/* 8032AF08  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 8032AF0C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8032AF10  3C 60 80 3D */	lis r3, __vt__16J3DAnmTexPattern@ha
/* 8032AF14  38 03 ED 50 */	addi r0, r3, __vt__16J3DAnmTexPattern@l
/* 8032AF18  90 1F 00 00 */	stw r0, 0(r31)
/* 8032AF1C  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8032AF20  90 9F 00 10 */	stw r4, 0x10(r31)
/* 8032AF24  B0 9F 00 14 */	sth r4, 0x14(r31)
/* 8032AF28  B0 9F 00 16 */	sth r4, 0x16(r31)
/* 8032AF2C  90 9F 00 18 */	stw r4, 0x18(r31)
/* 8032AF30  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8032AF34  4B FB 3A 6D */	bl __ct__10JUTNameTabFv
/* 8032AF38  7F E3 FB 78 */	mr r3, r31
/* 8032AF3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032AF40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032AF44  7C 08 03 A6 */	mtlr r0
/* 8032AF48  38 21 00 10 */	addi r1, r1, 0x10
/* 8032AF4C  4E 80 00 20 */	blr 
