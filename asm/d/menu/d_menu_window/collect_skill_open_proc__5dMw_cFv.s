lbl_801FBA1C:
/* 801FBA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBA20  7C 08 02 A6 */	mflr r0
/* 801FBA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBA28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FBA2C  7C 7F 1B 78 */	mr r31, r3
/* 801FBA30  80 63 01 30 */	lwz r3, 0x130(r3)
/* 801FBA34  88 03 02 04 */	lbz r0, 0x204(r3)
/* 801FBA38  28 00 00 01 */	cmplwi r0, 1
/* 801FBA3C  40 82 00 30 */	bne lbl_801FBA6C
/* 801FBA40  4B FF C0 01 */	bl _open__13dMenu_Skill_cFv
/* 801FBA44  88 1F 01 52 */	lbz r0, 0x152(r31)
/* 801FBA48  28 00 00 00 */	cmplwi r0, 0
/* 801FBA4C  40 82 00 20 */	bne lbl_801FBA6C
/* 801FBA50  80 7F 01 30 */	lwz r3, 0x130(r31)
/* 801FBA54  4B FF BE FD */	bl isSync__13dMenu_Skill_cFv
/* 801FBA58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FBA5C  41 82 00 10 */	beq lbl_801FBA6C
/* 801FBA60  48 00 14 19 */	bl dMw_fade_in__5dMw_cFv
/* 801FBA64  38 00 00 01 */	li r0, 1
/* 801FBA68  98 1F 01 52 */	stb r0, 0x152(r31)
lbl_801FBA6C:
/* 801FBA6C  80 7F 01 30 */	lwz r3, 0x130(r31)
/* 801FBA70  88 03 02 04 */	lbz r0, 0x204(r3)
/* 801FBA74  28 00 00 02 */	cmplwi r0, 2
/* 801FBA78  40 82 00 20 */	bne lbl_801FBA98
/* 801FBA7C  88 1F 01 52 */	lbz r0, 0x152(r31)
/* 801FBA80  28 00 00 01 */	cmplwi r0, 1
/* 801FBA84  40 82 00 14 */	bne lbl_801FBA98
/* 801FBA88  38 00 00 1A */	li r0, 0x1a
/* 801FBA8C  98 1F 01 46 */	stb r0, 0x146(r31)
/* 801FBA90  38 00 00 00 */	li r0, 0
/* 801FBA94  98 1F 01 52 */	stb r0, 0x152(r31)
lbl_801FBA98:
/* 801FBA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FBA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBAA0  7C 08 03 A6 */	mtlr r0
/* 801FBAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBAA8  4E 80 00 20 */	blr 
