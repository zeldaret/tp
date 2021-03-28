lbl_8032BFC4:
/* 8032BFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BFC8  7C 08 02 A6 */	mflr r0
/* 8032BFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BFD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BFD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032BFD8  41 82 00 40 */	beq lbl_8032C018
/* 8032BFDC  3C 60 80 3D */	lis r3, __vt__18J3DAnmVtxColorFull@ha
/* 8032BFE0  38 03 ED C0 */	addi r0, r3, __vt__18J3DAnmVtxColorFull@l
/* 8032BFE4  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BFE8  41 82 00 20 */	beq lbl_8032C008
/* 8032BFEC  3C 60 80 3D */	lis r3, __vt__14J3DAnmVtxColor@ha
/* 8032BFF0  38 03 ED D4 */	addi r0, r3, __vt__14J3DAnmVtxColor@l
/* 8032BFF4  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BFF8  41 82 00 10 */	beq lbl_8032C008
/* 8032BFFC  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 8032C000  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 8032C004  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032C008:
/* 8032C008  7C 80 07 35 */	extsh. r0, r4
/* 8032C00C  40 81 00 0C */	ble lbl_8032C018
/* 8032C010  7F E3 FB 78 */	mr r3, r31
/* 8032C014  4B FA 2D 29 */	bl __dl__FPv
lbl_8032C018:
/* 8032C018  7F E3 FB 78 */	mr r3, r31
/* 8032C01C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C024  7C 08 03 A6 */	mtlr r0
/* 8032C028  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C02C  4E 80 00 20 */	blr 
