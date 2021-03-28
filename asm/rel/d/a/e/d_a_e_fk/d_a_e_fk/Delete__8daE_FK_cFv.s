lbl_806BADB4:
/* 806BADB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BADB8  7C 08 02 A6 */	mflr r0
/* 806BADBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BADC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BADC4  7C 7F 1B 78 */	mr r31, r3
/* 806BADC8  38 7F 0C 40 */	addi r3, r31, 0xc40
/* 806BADCC  3C 80 80 6C */	lis r4, stringBase0@ha
/* 806BADD0  38 84 B8 1C */	addi r4, r4, stringBase0@l
/* 806BADD4  4B 97 22 34 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806BADD8  88 1F 0F 68 */	lbz r0, 0xf68(r31)
/* 806BADDC  28 00 00 00 */	cmplwi r0, 0
/* 806BADE0  41 82 00 10 */	beq lbl_806BADF0
/* 806BADE4  38 00 00 00 */	li r0, 0
/* 806BADE8  3C 60 80 6C */	lis r3, struct_806BB90C+0x1@ha
/* 806BADEC  98 03 B9 0D */	stb r0, struct_806BB90C+0x1@l(r3)
lbl_806BADF0:
/* 806BADF0  38 7F 0C 4C */	addi r3, r31, 0xc4c
/* 806BADF4  81 9F 0C 4C */	lwz r12, 0xc4c(r31)
/* 806BADF8  81 8C 00 08 */	lwz r12, 8(r12)
/* 806BADFC  7D 89 03 A6 */	mtctr r12
/* 806BAE00  4E 80 04 21 */	bctrl 
/* 806BAE04  38 60 00 01 */	li r3, 1
/* 806BAE08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BAE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BAE10  7C 08 03 A6 */	mtlr r0
/* 806BAE14  38 21 00 10 */	addi r1, r1, 0x10
/* 806BAE18  4E 80 00 20 */	blr 
