lbl_801F2250:
/* 801F2250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F2254  7C 08 02 A6 */	mflr r0
/* 801F2258  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F225C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F2260  93 C1 00 08 */	stw r30, 8(r1)
/* 801F2264  7C 7E 1B 78 */	mr r30, r3
/* 801F2268  48 00 2F 29 */	bl errorTxtChangeAnm__12dMenu_save_cFv
/* 801F226C  7C 7F 1B 78 */	mr r31, r3
/* 801F2270  7F C3 F3 78 */	mr r3, r30
/* 801F2274  48 00 36 55 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
/* 801F2278  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F227C  28 00 00 01 */	cmplwi r0, 1
/* 801F2280  40 82 00 34 */	bne lbl_801F22B4
/* 801F2284  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F2288  28 00 00 01 */	cmplwi r0, 1
/* 801F228C  40 82 00 28 */	bne lbl_801F22B4
/* 801F2290  3C 60 80 43 */	lis r3, g_msHIO@ha /* 0x8042E84C@ha */
/* 801F2294  38 63 E8 4C */	addi r3, r3, g_msHIO@l /* 0x8042E84C@l */
/* 801F2298  88 03 00 06 */	lbz r0, 6(r3)
/* 801F229C  98 1E 01 BD */	stb r0, 0x1bd(r30)
/* 801F22A0  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 801F22A4  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 801F22A8  4B E2 4B B1 */	bl command_format__15mDoMemCd_Ctrl_cFv
/* 801F22AC  38 00 00 15 */	li r0, 0x15
/* 801F22B0  98 1E 01 B2 */	stb r0, 0x1b2(r30)
lbl_801F22B4:
/* 801F22B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F22B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F22BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F22C0  7C 08 03 A6 */	mtlr r0
/* 801F22C4  38 21 00 10 */	addi r1, r1, 0x10
/* 801F22C8  4E 80 00 20 */	blr 
