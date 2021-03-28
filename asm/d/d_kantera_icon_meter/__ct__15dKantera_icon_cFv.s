lbl_801AE938:
/* 801AE938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AE93C  7C 08 02 A6 */	mflr r0
/* 801AE940  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AE944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AE948  7C 7F 1B 78 */	mr r31, r3
/* 801AE94C  3C 80 80 3C */	lis r4, __vt__15dKantera_icon_c@ha
/* 801AE950  38 04 C2 28 */	addi r0, r4, __vt__15dKantera_icon_c@l
/* 801AE954  90 03 00 00 */	stw r0, 0(r3)
/* 801AE958  48 00 01 11 */	bl initiate__15dKantera_icon_cFv
/* 801AE95C  7F E3 FB 78 */	mr r3, r31
/* 801AE960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AE964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AE968  7C 08 03 A6 */	mtlr r0
/* 801AE96C  38 21 00 10 */	addi r1, r1, 0x10
/* 801AE970  4E 80 00 20 */	blr 
