lbl_801FCA4C:
/* 801FCA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FCA50  7C 08 02 A6 */	mflr r0
/* 801FCA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FCA58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FCA5C  7C 7F 1B 78 */	mr r31, r3
/* 801FCA60  48 00 06 35 */	bl markMemSize__5dMw_cFv
/* 801FCA64  38 60 02 0C */	li r3, 0x20c
/* 801FCA68  48 0D 21 E5 */	bl __nw__FUl
/* 801FCA6C  7C 60 1B 79 */	or. r0, r3, r3
/* 801FCA70  41 82 00 18 */	beq lbl_801FCA88
/* 801FCA74  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 801FCA78  80 BF 01 04 */	lwz r5, 0x104(r31)
/* 801FCA7C  80 DF 01 08 */	lwz r6, 0x108(r31)
/* 801FCA80  4B FF A7 A5 */	bl __ct__13dMenu_Skill_cFP10JKRExpHeapP9STControlP10CSTControl
/* 801FCA84  7C 60 1B 78 */	mr r0, r3
lbl_801FCA88:
/* 801FCA88  90 1F 01 30 */	stw r0, 0x130(r31)
/* 801FCA8C  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 801FCA90  28 00 00 00 */	cmplwi r0, 0
/* 801FCA94  40 82 00 44 */	bne lbl_801FCAD8
/* 801FCA98  38 60 00 08 */	li r3, 8
/* 801FCA9C  48 0D 21 B1 */	bl __nw__FUl
/* 801FCAA0  28 03 00 00 */	cmplwi r3, 0
/* 801FCAA4  41 82 00 30 */	beq lbl_801FCAD4
/* 801FCAA8  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha
/* 801FCAAC  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l
/* 801FCAB0  90 03 00 00 */	stw r0, 0(r3)
/* 801FCAB4  3C 80 80 3C */	lis r4, __vt__20dDlst_MENU_CAPTURE_c@ha
/* 801FCAB8  38 04 F0 D4 */	addi r0, r4, __vt__20dDlst_MENU_CAPTURE_c@l
/* 801FCABC  90 03 00 00 */	stw r0, 0(r3)
/* 801FCAC0  38 80 00 00 */	li r4, 0
/* 801FCAC4  98 83 00 04 */	stb r4, 4(r3)
/* 801FCAC8  38 00 00 FF */	li r0, 0xff
/* 801FCACC  98 03 00 05 */	stb r0, 5(r3)
/* 801FCAD0  98 83 00 06 */	stb r4, 6(r3)
lbl_801FCAD4:
/* 801FCAD4  90 7F 01 0C */	stw r3, 0x10c(r31)
lbl_801FCAD8:
/* 801FCAD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FCADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FCAE0  7C 08 03 A6 */	mtlr r0
/* 801FCAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FCAE8  4E 80 00 20 */	blr 
