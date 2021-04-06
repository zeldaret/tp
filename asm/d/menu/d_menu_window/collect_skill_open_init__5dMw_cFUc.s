lbl_801FA7F0:
/* 801FA7F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA7F4  7C 08 02 A6 */	mflr r0
/* 801FA7F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA7FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FA800  7C 7F 1B 78 */	mr r31, r3
/* 801FA804  38 A0 00 0A */	li r5, 0xa
/* 801FA808  98 A3 01 44 */	stb r5, 0x144(r3)
/* 801FA80C  3C 80 80 43 */	lis r4, g_meter2_info@ha /* 0x80430188@ha */
/* 801FA810  38 84 01 88 */	addi r4, r4, g_meter2_info@l /* 0x80430188@l */
/* 801FA814  88 04 00 B9 */	lbz r0, 0xb9(r4)
/* 801FA818  98 04 00 BA */	stb r0, 0xba(r4)
/* 801FA81C  98 A4 00 B9 */	stb r5, 0xb9(r4)
/* 801FA820  38 00 00 00 */	li r0, 0
/* 801FA824  98 03 01 52 */	stb r0, 0x152(r3)
/* 801FA828  38 80 00 01 */	li r4, 1
/* 801FA82C  48 00 18 65 */	bl dMw_collect_delete__5dMw_cFb
/* 801FA830  7F E3 FB 78 */	mr r3, r31
/* 801FA834  48 00 22 19 */	bl dMw_skill_create__5dMw_cFv
/* 801FA838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FA83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA840  7C 08 03 A6 */	mtlr r0
/* 801FA844  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA848  4E 80 00 20 */	blr 
