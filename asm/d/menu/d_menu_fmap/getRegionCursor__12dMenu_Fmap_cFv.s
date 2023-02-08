lbl_801CB200:
/* 801CB200  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801CB204  28 04 00 00 */	cmplwi r4, 0
/* 801CB208  41 82 00 20 */	beq lbl_801CB228
/* 801CB20C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801CB210  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801CB214  88 03 02 F9 */	lbz r0, 0x2f9(r3)
/* 801CB218  28 00 00 00 */	cmplwi r0, 0
/* 801CB21C  41 82 00 0C */	beq lbl_801CB228
/* 801CB220  88 64 12 27 */	lbz r3, 0x1227(r4)
/* 801CB224  4E 80 00 20 */	blr 
lbl_801CB228:
/* 801CB228  38 60 00 00 */	li r3, 0
/* 801CB22C  4E 80 00 20 */	blr 
