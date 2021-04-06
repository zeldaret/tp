lbl_8035FEF0:
/* 8035FEF0  7C 08 02 A6 */	mflr r0
/* 8035FEF4  90 01 00 04 */	stw r0, 4(r1)
/* 8035FEF8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035FEFC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035FF00  3B E4 00 00 */	addi r31, r4, 0
/* 8035FF04  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035FF08  3B C3 00 00 */	addi r30, r3, 0
/* 8035FF0C  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 8035FF10  80 05 05 AC */	lwz r0, 0x5ac(r5)
/* 8035FF14  28 00 00 00 */	cmplwi r0, 0
/* 8035FF18  41 82 00 08 */	beq lbl_8035FF20
/* 8035FF1C  4B FF C7 C9 */	bl __GXSetDirtyState
lbl_8035FF20:
/* 8035FF20  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035FF24  80 03 00 00 */	lwz r0, 0(r3)
/* 8035FF28  28 00 00 00 */	cmplwi r0, 0
/* 8035FF2C  40 82 00 08 */	bne lbl_8035FF34
/* 8035FF30  4B FF C9 05 */	bl __GXSendFlushPrim
lbl_8035FF34:
/* 8035FF34  38 00 00 40 */	li r0, 0x40
/* 8035FF38  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035FF3C  98 03 80 00 */	stb r0, 0x8000(r3)  /* 0xCC008000@l */
/* 8035FF40  93 C3 80 00 */	stw r30, -0x8000(r3)
/* 8035FF44  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035FF48  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035FF4C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035FF50  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035FF54  38 21 00 18 */	addi r1, r1, 0x18
/* 8035FF58  7C 08 03 A6 */	mtlr r0
/* 8035FF5C  4E 80 00 20 */	blr 
