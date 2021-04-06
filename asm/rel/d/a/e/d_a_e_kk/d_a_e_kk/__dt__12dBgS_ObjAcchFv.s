lbl_806FEFA4:
/* 806FEFA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FEFA8  7C 08 02 A6 */	mflr r0
/* 806FEFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FEFB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FEFB4  93 C1 00 08 */	stw r30, 8(r1)
/* 806FEFB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 806FEFBC  7C 9F 23 78 */	mr r31, r4
/* 806FEFC0  41 82 00 38 */	beq lbl_806FEFF8
/* 806FEFC4  3C 80 80 70 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x806FF844@ha */
/* 806FEFC8  38 84 F8 44 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x806FF844@l */
/* 806FEFCC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806FEFD0  38 04 00 0C */	addi r0, r4, 0xc
/* 806FEFD4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806FEFD8  38 04 00 18 */	addi r0, r4, 0x18
/* 806FEFDC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806FEFE0  38 80 00 00 */	li r4, 0
/* 806FEFE4  4B 97 6F B1 */	bl __dt__9dBgS_AcchFv
/* 806FEFE8  7F E0 07 35 */	extsh. r0, r31
/* 806FEFEC  40 81 00 0C */	ble lbl_806FEFF8
/* 806FEFF0  7F C3 F3 78 */	mr r3, r30
/* 806FEFF4  4B BC FD 49 */	bl __dl__FPv
lbl_806FEFF8:
/* 806FEFF8  7F C3 F3 78 */	mr r3, r30
/* 806FEFFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FF000  83 C1 00 08 */	lwz r30, 8(r1)
/* 806FF004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FF008  7C 08 03 A6 */	mtlr r0
/* 806FF00C  38 21 00 10 */	addi r1, r1, 0x10
/* 806FF010  4E 80 00 20 */	blr 
