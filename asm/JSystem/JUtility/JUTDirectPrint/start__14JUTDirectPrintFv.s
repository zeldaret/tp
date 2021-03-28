lbl_802E4240:
/* 802E4240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4244  7C 08 02 A6 */	mflr r0
/* 802E4248  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E424C  80 0D 8F A8 */	lwz r0, sDirectPrint__14JUTDirectPrint(r13)
/* 802E4250  28 00 00 00 */	cmplwi r0, 0
/* 802E4254  40 82 00 20 */	bne lbl_802E4274
/* 802E4258  38 60 00 2C */	li r3, 0x2c
/* 802E425C  4B FE A9 F1 */	bl __nw__FUl
/* 802E4260  7C 60 1B 79 */	or. r0, r3, r3
/* 802E4264  41 82 00 0C */	beq lbl_802E4270
/* 802E4268  4B FF FF 81 */	bl __ct__14JUTDirectPrintFv
/* 802E426C  7C 60 1B 78 */	mr r0, r3
lbl_802E4270:
/* 802E4270  90 0D 8F A8 */	stw r0, sDirectPrint__14JUTDirectPrint(r13)
lbl_802E4274:
/* 802E4274  80 6D 8F A8 */	lwz r3, sDirectPrint__14JUTDirectPrint(r13)
/* 802E4278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E427C  7C 08 03 A6 */	mtlr r0
/* 802E4280  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4284  4E 80 00 20 */	blr 
