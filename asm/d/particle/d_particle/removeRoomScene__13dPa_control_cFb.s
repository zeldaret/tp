lbl_8004BF3C:
/* 8004BF3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004BF40  7C 08 02 A6 */	mflr r0
/* 8004BF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004BF48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004BF4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8004BF50  7C 7E 1B 78 */	mr r30, r3
/* 8004BF54  7C 9F 23 78 */	mr r31, r4
/* 8004BF58  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8004BF5C  28 00 00 00 */	cmplwi r0, 0
/* 8004BF60  40 82 00 0C */	bne lbl_8004BF6C
/* 8004BF64  38 60 00 00 */	li r3, 0
/* 8004BF68  48 00 00 54 */	b lbl_8004BFBC
lbl_8004BF6C:
/* 8004BF6C  80 6D 89 20 */	lwz r3, mEmitterMng__13dPa_control_c(r13)
/* 8004BF70  38 80 00 01 */	li r4, 1
/* 8004BF74  48 23 23 E1 */	bl clearResourceManager__17JPAEmitterManagerFUc
/* 8004BF78  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8004BF7C  4B FC 32 11 */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 8004BF80  38 00 00 00 */	li r0, 0
/* 8004BF84  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8004BF88  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8004BF8C  88 1E 00 1A */	lbz r0, 0x1a(r30)
/* 8004BF90  98 1E 00 19 */	stb r0, 0x19(r30)
/* 8004BF94  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8004BF98  41 82 00 20 */	beq lbl_8004BFB8
/* 8004BF9C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8004BFA0  38 80 00 00 */	li r4, 0
/* 8004BFA4  48 28 25 5D */	bl free__7JKRHeapFPvP7JKRHeap
/* 8004BFA8  38 00 00 00 */	li r0, 0
/* 8004BFAC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8004BFB0  38 00 00 FF */	li r0, 0xff
/* 8004BFB4  98 1E 00 18 */	stb r0, 0x18(r30)
lbl_8004BFB8:
/* 8004BFB8  38 60 00 01 */	li r3, 1
lbl_8004BFBC:
/* 8004BFBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004BFC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004BFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004BFC8  7C 08 03 A6 */	mtlr r0
/* 8004BFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8004BFD0  4E 80 00 20 */	blr 
