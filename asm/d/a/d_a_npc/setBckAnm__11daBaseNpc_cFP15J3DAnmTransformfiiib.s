lbl_8014EEE4:
/* 8014EEE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014EEE8  7C 08 02 A6 */	mflr r0
/* 8014EEEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014EEF0  7C AB 2B 78 */	mr r11, r5
/* 8014EEF4  7C CA 33 78 */	mr r10, r6
/* 8014EEF8  7C E0 3B 78 */	mr r0, r7
/* 8014EEFC  7D 09 43 78 */	mr r9, r8
/* 8014EF00  38 A0 00 01 */	li r5, 1
/* 8014EF04  7D 66 5B 78 */	mr r6, r11
/* 8014EF08  7D 47 07 34 */	extsh r7, r10
/* 8014EF0C  7C 08 07 34 */	extsh r8, r0
/* 8014EF10  38 63 07 EC */	addi r3, r3, 0x7ec
/* 8014EF14  4B EB E8 C9 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 8014EF18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014EF1C  7C 08 03 A6 */	mtlr r0
/* 8014EF20  38 21 00 10 */	addi r1, r1, 0x10
/* 8014EF24  4E 80 00 20 */	blr 
