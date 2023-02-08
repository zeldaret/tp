lbl_801CB230:
/* 801CB230  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801CB234  28 04 00 00 */	cmplwi r4, 0
/* 801CB238  41 82 00 20 */	beq lbl_801CB258
/* 801CB23C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801CB240  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801CB244  88 03 02 F9 */	lbz r0, 0x2f9(r3)
/* 801CB248  28 00 00 00 */	cmplwi r0, 0
/* 801CB24C  41 82 00 0C */	beq lbl_801CB258
/* 801CB250  88 64 12 29 */	lbz r3, 0x1229(r4)
/* 801CB254  4E 80 00 20 */	blr 
lbl_801CB258:
/* 801CB258  38 60 00 00 */	li r3, 0
/* 801CB25C  4E 80 00 20 */	blr 
