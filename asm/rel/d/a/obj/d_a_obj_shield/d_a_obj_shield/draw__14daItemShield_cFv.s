lbl_80CD80EC:
/* 80CD80EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD80F0  7C 08 02 A6 */	mflr r0
/* 80CD80F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD80F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD80FC  7C 7F 1B 78 */	mr r31, r3
/* 80CD8100  4B 35 F9 CC */	b chkDraw__12daItemBase_cFv
/* 80CD8104  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CD8108  40 82 00 0C */	bne lbl_80CD8114
/* 80CD810C  38 60 00 01 */	li r3, 1
/* 80CD8110  48 00 00 1C */	b lbl_80CD812C
lbl_80CD8114:
/* 80CD8114  7F E3 FB 78 */	mr r3, r31
/* 80CD8118  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80CD811C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CD8120  7D 89 03 A6 */	mtctr r12
/* 80CD8124  4E 80 04 21 */	bctrl 
/* 80CD8128  38 60 00 01 */	li r3, 1
lbl_80CD812C:
/* 80CD812C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD8130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD8134  7C 08 03 A6 */	mtlr r0
/* 80CD8138  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD813C  4E 80 00 20 */	blr 
