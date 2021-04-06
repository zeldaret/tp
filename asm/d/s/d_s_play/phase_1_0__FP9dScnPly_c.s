lbl_8025A438:
/* 8025A438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025A43C  7C 08 02 A6 */	mflr r0
/* 8025A440  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025A444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025A448  3C 60 80 3A */	lis r3, d_s_d_s_play__stringBase0@ha /* 0x8039A2D8@ha */
/* 8025A44C  38 63 A2 D8 */	addi r3, r3, d_s_d_s_play__stringBase0@l /* 0x8039A2D8@l */
/* 8025A450  38 63 00 86 */	addi r3, r3, 0x86
/* 8025A454  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A458  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A45C  3F E4 00 02 */	addis r31, r4, 2
/* 8025A460  38 9F D4 F8 */	addi r4, r31, -11016
/* 8025A464  38 A0 00 40 */	li r5, 0x40
/* 8025A468  3B FF C2 F8 */	addi r31, r31, -15624
/* 8025A46C  4B DE 1C F5 */	bl syncRes__14dRes_control_cFPCcP11dRes_info_ci
/* 8025A470  2C 03 00 00 */	cmpwi r3, 0
/* 8025A474  41 82 00 0C */	beq lbl_8025A480
/* 8025A478  38 60 00 00 */	li r3, 0
/* 8025A47C  48 00 00 68 */	b lbl_8025A4E4
lbl_8025A480:
/* 8025A480  4B DC C8 5D */	bl dStage_infoCreate__Fv
/* 8025A484  3C 60 80 3A */	lis r3, d_s_d_s_play__stringBase0@ha /* 0x8039A2D8@ha */
/* 8025A488  38 C3 A2 D8 */	addi r6, r3, d_s_d_s_play__stringBase0@l /* 0x8039A2D8@l */
/* 8025A48C  38 66 00 8D */	addi r3, r6, 0x8d
/* 8025A490  7F E4 FB 78 */	mr r4, r31
/* 8025A494  38 A0 00 80 */	li r5, 0x80
/* 8025A498  38 C6 00 93 */	addi r6, r6, 0x93
/* 8025A49C  38 E0 00 00 */	li r7, 0
/* 8025A4A0  39 00 00 00 */	li r8, 0
/* 8025A4A4  4B DE 1B D5 */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 8025A4A8  3C 60 80 3C */	lis r3, camparamarc@ha /* 0x803C3188@ha */
/* 8025A4AC  38 03 31 88 */	addi r0, r3, camparamarc@l /* 0x803C3188@l */
/* 8025A4B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A4B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A4B8  90 03 5D 88 */	stw r0, 0x5d88(r3)
/* 8025A4BC  3C 60 80 3A */	lis r3, d_s_d_s_play__stringBase0@ha /* 0x8039A2D8@ha */
/* 8025A4C0  38 C3 A2 D8 */	addi r6, r3, d_s_d_s_play__stringBase0@l /* 0x8039A2D8@l */
/* 8025A4C4  38 66 00 A0 */	addi r3, r6, 0xa0
/* 8025A4C8  7F E4 FB 78 */	mr r4, r31
/* 8025A4CC  38 A0 00 80 */	li r5, 0x80
/* 8025A4D0  38 C6 00 93 */	addi r6, r6, 0x93
/* 8025A4D4  38 E0 00 00 */	li r7, 0
/* 8025A4D8  39 00 00 00 */	li r8, 0
/* 8025A4DC  4B DE 1B 9D */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 8025A4E0  38 60 00 02 */	li r3, 2
lbl_8025A4E4:
/* 8025A4E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025A4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025A4EC  7C 08 03 A6 */	mtlr r0
/* 8025A4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8025A4F4  4E 80 00 20 */	blr 
