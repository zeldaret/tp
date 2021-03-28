lbl_801CA410:
/* 801CA410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CA414  7C 08 02 A6 */	mflr r0
/* 801CA418  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CA41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CA420  7C 7F 1B 78 */	mr r31, r3
/* 801CA424  48 00 12 41 */	bl talkButton__12dMenu_Fmap_cFv
/* 801CA428  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 801CA42C  38 80 00 00 */	li r4, 0
/* 801CA430  38 A0 00 00 */	li r5, 0
/* 801CA434  38 C0 00 00 */	li r6, 0
/* 801CA438  48 07 FE A1 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 801CA43C  48 06 DF 95 */	bl getMessageID__12dMsgObject_cFv
/* 801CA440  28 03 0F B0 */	cmplwi r3, 0xfb0
/* 801CA444  41 80 00 10 */	blt lbl_801CA454
/* 801CA448  7F E3 FB 78 */	mr r3, r31
/* 801CA44C  38 80 00 15 */	li r4, 0x15
/* 801CA450  48 00 12 81 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801CA454:
/* 801CA454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CA458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CA45C  7C 08 03 A6 */	mtlr r0
/* 801CA460  38 21 00 10 */	addi r1, r1, 0x10
/* 801CA464  4E 80 00 20 */	blr 
