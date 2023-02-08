lbl_801CB290:
/* 801CB290  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801CB294  28 04 00 00 */	cmplwi r4, 0
/* 801CB298  41 82 00 20 */	beq lbl_801CB2B8
/* 801CB29C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801CB2A0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801CB2A4  88 03 02 F9 */	lbz r0, 0x2f9(r3)
/* 801CB2A8  28 00 00 00 */	cmplwi r0, 0
/* 801CB2AC  41 82 00 0C */	beq lbl_801CB2B8
/* 801CB2B0  C0 24 0F CC */	lfs f1, 0xfcc(r4)
/* 801CB2B4  4E 80 00 20 */	blr 
lbl_801CB2B8:
/* 801CB2B8  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CB2BC  4E 80 00 20 */	blr 
