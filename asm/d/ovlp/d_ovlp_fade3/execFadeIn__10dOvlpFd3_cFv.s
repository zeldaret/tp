lbl_80253730:
/* 80253730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80253734  7C 08 02 A6 */	mflr r0
/* 80253738  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025373C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80253740  7C 7F 1B 78 */	mr r31, r3
/* 80253744  A8 63 01 14 */	lha r3, 0x114(r3)
/* 80253748  38 03 F8 00 */	addi r0, r3, -2048
/* 8025374C  B0 1F 01 14 */	sth r0, 0x114(r31)
/* 80253750  38 7F 01 18 */	addi r3, r31, 0x118
/* 80253754  C0 22 B4 68 */	lfs f1, lit_3803(r2)
/* 80253758  C0 42 B4 80 */	lfs f2, lit_3923(r2)
/* 8025375C  48 01 C3 25 */	bl cLib_addCalc0__FPfff
/* 80253760  88 1F 01 1E */	lbz r0, 0x11e(r31)
/* 80253764  28 00 00 00 */	cmplwi r0, 0
/* 80253768  40 82 00 14 */	bne lbl_8025377C
/* 8025376C  4B DC AD 59 */	bl fopOvlpM_SceneIsStart__Fv
/* 80253770  38 00 00 01 */	li r0, 1
/* 80253774  98 1F 01 1E */	stb r0, 0x11e(r31)
/* 80253778  48 00 00 20 */	b lbl_80253798
lbl_8025377C:
/* 8025377C  7F E3 FB 78 */	mr r3, r31
/* 80253780  4B DC AD 9D */	bl fopOvlpM_Done__FP18overlap_task_class
/* 80253784  38 00 00 01 */	li r0, 1
/* 80253788  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025378C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80253790  98 03 5D 44 */	stb r0, 0x5d44(r3)
/* 80253794  98 03 5E B8 */	stb r0, 0x5eb8(r3)
lbl_80253798:
/* 80253798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025379C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802537A0  7C 08 03 A6 */	mtlr r0
/* 802537A4  38 21 00 10 */	addi r1, r1, 0x10
/* 802537A8  4E 80 00 20 */	blr 
