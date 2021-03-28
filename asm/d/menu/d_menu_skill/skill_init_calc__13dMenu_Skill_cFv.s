lbl_801F7978:
/* 801F7978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F797C  7C 08 02 A6 */	mflr r0
/* 801F7980  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F7984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F7988  7C 7F 1B 78 */	mr r31, r3
/* 801F798C  48 00 1A E5 */	bl getSkillNum__13dMenu_Skill_cFv
/* 801F7990  98 7F 02 0B */	stb r3, 0x20b(r31)
/* 801F7994  88 1F 02 0B */	lbz r0, 0x20b(r31)
/* 801F7998  28 00 00 07 */	cmplwi r0, 7
/* 801F799C  40 80 00 0C */	bge lbl_801F79A8
/* 801F79A0  98 1F 02 07 */	stb r0, 0x207(r31)
/* 801F79A4  48 00 00 0C */	b lbl_801F79B0
lbl_801F79A8:
/* 801F79A8  38 00 00 07 */	li r0, 7
/* 801F79AC  98 1F 02 07 */	stb r0, 0x207(r31)
lbl_801F79B0:
/* 801F79B0  88 9F 02 0B */	lbz r4, 0x20b(r31)
/* 801F79B4  38 00 00 07 */	li r0, 7
/* 801F79B8  7C 64 03 D6 */	divw r3, r4, r0
/* 801F79BC  7C 03 01 D6 */	mullw r0, r3, r0
/* 801F79C0  7C 00 20 51 */	subf. r0, r0, r4
/* 801F79C4  40 82 00 0C */	bne lbl_801F79D0
/* 801F79C8  98 7F 02 08 */	stb r3, 0x208(r31)
/* 801F79CC  48 00 00 0C */	b lbl_801F79D8
lbl_801F79D0:
/* 801F79D0  38 03 00 01 */	addi r0, r3, 1
/* 801F79D4  98 1F 02 08 */	stb r0, 0x208(r31)
lbl_801F79D8:
/* 801F79D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F79DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F79E0  7C 08 03 A6 */	mtlr r0
/* 801F79E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801F79E8  4E 80 00 20 */	blr 
