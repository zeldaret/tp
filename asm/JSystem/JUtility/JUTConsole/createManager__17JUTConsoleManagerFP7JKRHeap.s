lbl_802E81F4:
/* 802E81F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E81F8  7C 08 02 A6 */	mflr r0
/* 802E81FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8200  7C 64 1B 79 */	or. r4, r3, r3
/* 802E8204  40 82 00 08 */	bne lbl_802E820C
/* 802E8208  80 8D 8D F4 */	lwz r4, sCurrentHeap__7JKRHeap(r13)
lbl_802E820C:
/* 802E820C  38 60 00 14 */	li r3, 0x14
/* 802E8210  38 A0 00 00 */	li r5, 0
/* 802E8214  4B FE 6A 85 */	bl __nw__FUlP7JKRHeapi
/* 802E8218  7C 60 1B 79 */	or. r0, r3, r3
/* 802E821C  41 82 00 0C */	beq lbl_802E8228
/* 802E8220  4B FF FF AD */	bl __ct__17JUTConsoleManagerFv
/* 802E8224  7C 60 1B 78 */	mr r0, r3
lbl_802E8228:
/* 802E8228  90 0D 8F F0 */	stw r0, sManager__17JUTConsoleManager(r13)
/* 802E822C  7C 03 03 78 */	mr r3, r0
/* 802E8230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E8234  7C 08 03 A6 */	mtlr r0
/* 802E8238  38 21 00 10 */	addi r1, r1, 0x10
/* 802E823C  4E 80 00 20 */	blr 
