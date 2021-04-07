lbl_8066F454:
/* 8066F454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066F458  7C 08 02 A6 */	mflr r0
/* 8066F45C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066F460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066F464  93 C1 00 08 */	stw r30, 8(r1)
/* 8066F468  7C 7E 1B 78 */	mr r30, r3
/* 8066F46C  4B FF FF D9 */	bl getBmd2__9daBdoor_cFv
/* 8066F470  4B 9B FF C5 */	bl dComIfG_getStageRes__FPCc
/* 8066F474  28 03 00 00 */	cmplwi r3, 0
/* 8066F478  40 82 00 34 */	bne lbl_8066F4AC
/* 8066F47C  7F C3 F3 78 */	mr r3, r30
/* 8066F480  4B FF FF A5 */	bl getBmd__9daBdoor_cFv
/* 8066F484  7C 7F 1B 78 */	mr r31, r3
/* 8066F488  7F C3 F3 78 */	mr r3, r30
/* 8066F48C  4B FF FF 8D */	bl getArcName__9daBdoor_cFv
/* 8066F490  7F E4 FB 78 */	mr r4, r31
/* 8066F494  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066F498  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066F49C  3C A5 00 02 */	addis r5, r5, 2
/* 8066F4A0  38 C0 00 80 */	li r6, 0x80
/* 8066F4A4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8066F4A8  4B 9C CE D5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
lbl_8066F4AC:
/* 8066F4AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066F4B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8066F4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066F4B8  7C 08 03 A6 */	mtlr r0
/* 8066F4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8066F4C0  4E 80 00 20 */	blr 
