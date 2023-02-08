lbl_801CA814:
/* 801CA814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CA818  7C 08 02 A6 */	mflr r0
/* 801CA81C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CA820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CA824  7C 7F 1B 78 */	mr r31, r3
/* 801CA828  48 00 0E 3D */	bl talkButton__12dMenu_Fmap_cFv
/* 801CA82C  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 801CA830  38 80 00 00 */	li r4, 0
/* 801CA834  38 A0 00 00 */	li r5, 0
/* 801CA838  38 C0 00 00 */	li r6, 0
/* 801CA83C  48 07 FA 9D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 801CA840  2C 03 00 00 */	cmpwi r3, 0
/* 801CA844  41 82 00 1C */	beq lbl_801CA860
/* 801CA848  7F E3 FB 78 */	mr r3, r31
/* 801CA84C  38 80 00 0D */	li r4, 0xd
/* 801CA850  48 00 0E 81 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801CA854  38 00 00 01 */	li r0, 1
/* 801CA858  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA85C  98 03 12 3A */	stb r0, 0x123a(r3)
lbl_801CA860:
/* 801CA860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CA864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CA868  7C 08 03 A6 */	mtlr r0
/* 801CA86C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CA870  4E 80 00 20 */	blr 
