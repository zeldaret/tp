lbl_801FBF60:
/* 801FBF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBF64  7C 08 02 A6 */	mflr r0
/* 801FBF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FBF70  7C 7F 1B 78 */	mr r31, r3
/* 801FBF74  80 63 01 10 */	lwz r3, 0x110(r3)
/* 801FBF78  28 03 00 00 */	cmplwi r3, 0
/* 801FBF7C  41 82 00 30 */	beq lbl_801FBFAC
/* 801FBF80  4B FE EC 69 */	bl _delete__12dMenu_Ring_cFv
/* 801FBF84  80 7F 01 10 */	lwz r3, 0x110(r31)
/* 801FBF88  28 03 00 00 */	cmplwi r3, 0
/* 801FBF8C  41 82 00 18 */	beq lbl_801FBFA4
/* 801FBF90  38 80 00 01 */	li r4, 1
/* 801FBF94  81 83 00 00 */	lwz r12, 0(r3)
/* 801FBF98  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FBF9C  7D 89 03 A6 */	mtctr r12
/* 801FBFA0  4E 80 04 21 */	bctrl 
lbl_801FBFA4:
/* 801FBFA4  38 00 00 00 */	li r0, 0
/* 801FBFA8  90 1F 01 10 */	stw r0, 0x110(r31)
lbl_801FBFAC:
/* 801FBFAC  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 801FBFB0  28 03 00 00 */	cmplwi r3, 0
/* 801FBFB4  41 82 00 24 */	beq lbl_801FBFD8
/* 801FBFB8  41 82 00 18 */	beq lbl_801FBFD0
/* 801FBFBC  38 80 00 01 */	li r4, 1
/* 801FBFC0  81 83 00 00 */	lwz r12, 0(r3)
/* 801FBFC4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FBFC8  7D 89 03 A6 */	mtctr r12
/* 801FBFCC  4E 80 04 21 */	bctrl 
lbl_801FBFD0:
/* 801FBFD0  38 00 00 00 */	li r0, 0
/* 801FBFD4  90 1F 01 0C */	stw r0, 0x10c(r31)
lbl_801FBFD8:
/* 801FBFD8  7F E3 FB 78 */	mr r3, r31
/* 801FBFDC  48 00 10 F9 */	bl checkMemSize__5dMw_cFv
/* 801FBFE0  38 60 00 01 */	li r3, 1
/* 801FBFE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FBFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBFEC  7C 08 03 A6 */	mtlr r0
/* 801FBFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBFF4  4E 80 00 20 */	blr 
