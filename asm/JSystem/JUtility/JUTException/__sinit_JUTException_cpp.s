lbl_802E414C:
/* 802E414C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4150  7C 08 02 A6 */	mflr r0
/* 802E4154  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4158  3C 60 80 43 */	lis r3, sMapFileList__12JUTException@ha
/* 802E415C  38 63 45 98 */	addi r3, r3, sMapFileList__12JUTException@l
/* 802E4160  38 80 00 00 */	li r4, 0
/* 802E4164  4B FF 7D 11 */	bl __ct__10JSUPtrListFb
/* 802E4168  3C 60 80 43 */	lis r3, sMapFileList__12JUTException@ha
/* 802E416C  38 63 45 98 */	addi r3, r3, sMapFileList__12JUTException@l
/* 802E4170  3C 80 80 2E */	lis r4, func_802E4194@ha
/* 802E4174  38 84 41 94 */	addi r4, r4, func_802E4194@l
/* 802E4178  3C A0 80 43 */	lis r5, lit_2182@ha
/* 802E417C  38 A5 45 8C */	addi r5, r5, lit_2182@l
/* 802E4180  48 07 DA A5 */	bl __register_global_object
/* 802E4184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4188  7C 08 03 A6 */	mtlr r0
/* 802E418C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4190  4E 80 00 20 */	blr 
