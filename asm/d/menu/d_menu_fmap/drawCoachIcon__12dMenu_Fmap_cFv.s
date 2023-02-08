lbl_801CCE70:
/* 801CCE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CCE74  7C 08 02 A6 */	mflr r0
/* 801CCE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CCE7C  38 80 00 0A */	li r4, 0xa
/* 801CCE80  38 A0 00 0D */	li r5, 0xd
/* 801CCE84  48 00 02 89 */	bl drawIcon__12dMenu_Fmap_cFUci
/* 801CCE88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CCE8C  7C 08 03 A6 */	mtlr r0
/* 801CCE90  38 21 00 10 */	addi r1, r1, 0x10
/* 801CCE94  4E 80 00 20 */	blr 
