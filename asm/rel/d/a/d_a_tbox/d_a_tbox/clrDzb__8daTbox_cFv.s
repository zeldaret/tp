lbl_804913D0:
/* 804913D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804913D4  7C 08 02 A6 */	mflr r0
/* 804913D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804913DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804913E0  7C 7F 1B 78 */	mr r31, r3
/* 804913E4  80 83 07 3C */	lwz r4, 0x73c(r3)
/* 804913E8  28 04 00 00 */	cmplwi r4, 0
/* 804913EC  41 82 00 1C */	beq lbl_80491408
/* 804913F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804913F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804913F8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804913FC  4B BE 2E 54 */	b Release__4cBgSFP9dBgW_Base
/* 80491400  38 00 00 00 */	li r0, 0
/* 80491404  90 1F 07 3C */	stw r0, 0x73c(r31)
lbl_80491408:
/* 80491408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049140C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80491410  7C 08 03 A6 */	mtlr r0
/* 80491414  38 21 00 10 */	addi r1, r1, 0x10
/* 80491418  4E 80 00 20 */	blr 
