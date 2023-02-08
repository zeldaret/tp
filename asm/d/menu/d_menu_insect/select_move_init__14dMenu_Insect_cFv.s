lbl_801D9290:
/* 801D9290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9294  7C 08 02 A6 */	mflr r0
/* 801D9298  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D929C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D92A0  7C 7F 1B 78 */	mr r31, r3
/* 801D92A4  38 00 00 FF */	li r0, 0xff
/* 801D92A8  3C 80 80 43 */	lis r4, g_meter2_info@ha /* 0x80430188@ha */
/* 801D92AC  38 84 01 88 */	addi r4, r4, g_meter2_info@l /* 0x80430188@l */
/* 801D92B0  98 04 00 C3 */	stb r0, 0xc3(r4)
/* 801D92B4  38 80 04 0C */	li r4, 0x40c
/* 801D92B8  48 00 10 4D */	bl setAButtonString__14dMenu_Insect_cFUs
/* 801D92BC  7F E3 FB 78 */	mr r3, r31
/* 801D92C0  38 80 03 F9 */	li r4, 0x3f9
/* 801D92C4  48 00 10 F1 */	bl setBButtonString__14dMenu_Insect_cFUs
/* 801D92C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D92CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D92D0  7C 08 03 A6 */	mtlr r0
/* 801D92D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D92D8  4E 80 00 20 */	blr 
