lbl_80252C68:
/* 80252C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252C6C  7C 08 02 A6 */	mflr r0
/* 80252C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80252C78  7C 7F 1B 78 */	mr r31, r3
/* 80252C7C  A8 63 01 14 */	lha r3, 0x114(r3)
/* 80252C80  38 03 F8 00 */	addi r0, r3, -2048
/* 80252C84  B0 1F 01 14 */	sth r0, 0x114(r31)
/* 80252C88  38 7F 01 18 */	addi r3, r31, 0x118
/* 80252C8C  C0 22 B4 30 */	lfs f1, lit_3686(r2)
/* 80252C90  C0 42 B4 4C */	lfs f2, lit_3794(r2)
/* 80252C94  48 01 CD ED */	bl cLib_addCalc0__FPfff
/* 80252C98  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 80252C9C  C0 02 B4 50 */	lfs f0, lit_3795(r2)
/* 80252CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80252CA4  40 80 00 40 */	bge lbl_80252CE4
/* 80252CA8  88 1F 01 1E */	lbz r0, 0x11e(r31)
/* 80252CAC  28 00 00 00 */	cmplwi r0, 0
/* 80252CB0  40 82 00 14 */	bne lbl_80252CC4
/* 80252CB4  4B DC B8 11 */	bl fopOvlpM_SceneIsStart__Fv
/* 80252CB8  38 00 00 01 */	li r0, 1
/* 80252CBC  98 1F 01 1E */	stb r0, 0x11e(r31)
/* 80252CC0  48 00 00 38 */	b lbl_80252CF8
lbl_80252CC4:
/* 80252CC4  7F E3 FB 78 */	mr r3, r31
/* 80252CC8  4B DC B8 55 */	bl fopOvlpM_Done__FP18overlap_task_class
/* 80252CCC  38 00 00 01 */	li r0, 1
/* 80252CD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80252CD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80252CD8  98 03 5D 44 */	stb r0, 0x5d44(r3)
/* 80252CDC  98 03 5E B8 */	stb r0, 0x5eb8(r3)
/* 80252CE0  48 00 00 18 */	b lbl_80252CF8
lbl_80252CE4:
/* 80252CE4  38 00 00 00 */	li r0, 0
/* 80252CE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80252CEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80252CF0  98 03 5D 44 */	stb r0, 0x5d44(r3)
/* 80252CF4  4B DC B7 91 */	bl fopOvlpM_SceneIsStop__Fv
lbl_80252CF8:
/* 80252CF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252D00  7C 08 03 A6 */	mtlr r0
/* 80252D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80252D08  4E 80 00 20 */	blr 
