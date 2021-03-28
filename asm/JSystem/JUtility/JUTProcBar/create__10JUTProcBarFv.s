lbl_802E59E0:
/* 802E59E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E59E4  7C 08 02 A6 */	mflr r0
/* 802E59E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E59EC  80 0D 8F D8 */	lwz r0, sManager__10JUTProcBar(r13)
/* 802E59F0  28 00 00 00 */	cmplwi r0, 0
/* 802E59F4  40 82 00 20 */	bne lbl_802E5A14
/* 802E59F8  38 60 01 34 */	li r3, 0x134
/* 802E59FC  4B FE 92 51 */	bl __nw__FUl
/* 802E5A00  7C 60 1B 79 */	or. r0, r3, r3
/* 802E5A04  41 82 00 0C */	beq lbl_802E5A10
/* 802E5A08  4B FF FE 81 */	bl __ct__10JUTProcBarFv
/* 802E5A0C  7C 60 1B 78 */	mr r0, r3
lbl_802E5A10:
/* 802E5A10  90 0D 8F D8 */	stw r0, sManager__10JUTProcBar(r13)
lbl_802E5A14:
/* 802E5A14  80 6D 8F D8 */	lwz r3, sManager__10JUTProcBar(r13)
/* 802E5A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5A1C  7C 08 03 A6 */	mtlr r0
/* 802E5A20  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5A24  4E 80 00 20 */	blr 
