lbl_801CA548:
/* 801CA548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CA54C  7C 08 02 A6 */	mflr r0
/* 801CA550  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CA554  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CA558  7C 7F 1B 78 */	mr r31, r3
/* 801CA55C  88 03 03 0B */	lbz r0, 0x30b(r3)
/* 801CA560  28 00 00 00 */	cmplwi r0, 0
/* 801CA564  41 82 00 18 */	beq lbl_801CA57C
/* 801CA568  48 06 DE 69 */	bl getMessageID__12dMsgObject_cFv
/* 801CA56C  28 03 0F B2 */	cmplwi r3, 0xfb2
/* 801CA570  41 80 00 0C */	blt lbl_801CA57C
/* 801CA574  38 00 00 00 */	li r0, 0
/* 801CA578  98 1F 03 0B */	stb r0, 0x30b(r31)
lbl_801CA57C:
/* 801CA57C  7F E3 FB 78 */	mr r3, r31
/* 801CA580  48 00 10 E5 */	bl talkButton__12dMenu_Fmap_cFv
/* 801CA584  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 801CA588  38 80 00 00 */	li r4, 0
/* 801CA58C  38 A0 00 00 */	li r5, 0
/* 801CA590  38 C0 00 00 */	li r6, 0
/* 801CA594  48 07 FD 45 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 801CA598  2C 03 00 00 */	cmpwi r3, 0
/* 801CA59C  41 82 00 1C */	beq lbl_801CA5B8
/* 801CA5A0  7F E3 FB 78 */	mr r3, r31
/* 801CA5A4  38 80 00 0D */	li r4, 0xd
/* 801CA5A8  48 00 11 29 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801CA5AC  38 00 00 01 */	li r0, 1
/* 801CA5B0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA5B4  98 03 12 3A */	stb r0, 0x123a(r3)
lbl_801CA5B8:
/* 801CA5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CA5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CA5C0  7C 08 03 A6 */	mtlr r0
/* 801CA5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 801CA5C8  4E 80 00 20 */	blr 
