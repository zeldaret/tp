lbl_801C504C:
/* 801C504C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C5050  7C 08 02 A6 */	mflr r0
/* 801C5054  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5058  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C505C  7C 7F 1B 78 */	mr r31, r3
/* 801C5060  38 60 00 2C */	li r3, 0x2c
/* 801C5064  48 10 9B E9 */	bl __nw__FUl
/* 801C5068  7C 60 1B 79 */	or. r0, r3, r3
/* 801C506C  41 82 00 0C */	beq lbl_801C5078
/* 801C5070  48 08 4B B1 */	bl __ct__12dMsgString_cFv
/* 801C5074  7C 60 1B 78 */	mr r0, r3
lbl_801C5078:
/* 801C5078  90 1F 01 F4 */	stw r0, 0x1f4(r31)
/* 801C507C  7F E3 FB 78 */	mr r3, r31
/* 801C5080  48 00 05 59 */	bl screenSetBase__15dMenu_Fishing_cFv
/* 801C5084  7F E3 FB 78 */	mr r3, r31
/* 801C5088  48 00 0C B5 */	bl screenSetDoIcon__15dMenu_Fishing_cFv
/* 801C508C  7F E3 FB 78 */	mr r3, r31
/* 801C5090  38 80 00 01 */	li r4, 1
/* 801C5094  48 00 11 7D */	bl setHIO__15dMenu_Fishing_cFb
/* 801C5098  7F E3 FB 78 */	mr r3, r31
/* 801C509C  48 00 01 91 */	bl init__15dMenu_Fishing_cFv
/* 801C50A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C50A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C50A8  7C 08 03 A6 */	mtlr r0
/* 801C50AC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C50B0  4E 80 00 20 */	blr 
