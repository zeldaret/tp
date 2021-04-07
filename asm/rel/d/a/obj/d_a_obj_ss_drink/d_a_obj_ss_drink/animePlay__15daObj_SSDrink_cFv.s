lbl_80CE61E4:
/* 80CE61E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE61E8  7C 08 02 A6 */	mflr r0
/* 80CE61EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE61F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE61F4  7C 7F 1B 78 */	mr r31, r3
/* 80CE61F8  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80CE61FC  28 03 00 00 */	cmplwi r3, 0
/* 80CE6200  41 82 00 08 */	beq lbl_80CE6208
/* 80CE6204  4B 32 72 25 */	bl play__14mDoExt_baseAnmFv
lbl_80CE6208:
/* 80CE6208  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80CE620C  28 03 00 00 */	cmplwi r3, 0
/* 80CE6210  41 82 00 08 */	beq lbl_80CE6218
/* 80CE6214  4B 32 72 15 */	bl play__14mDoExt_baseAnmFv
lbl_80CE6218:
/* 80CE6218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE621C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6220  7C 08 03 A6 */	mtlr r0
/* 80CE6224  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE6228  4E 80 00 20 */	blr 
