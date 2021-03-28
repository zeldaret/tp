lbl_801FA738:
/* 801FA738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA73C  7C 08 02 A6 */	mflr r0
/* 801FA740  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA744  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FA748  7C 7F 1B 78 */	mr r31, r3
/* 801FA74C  38 A0 00 0A */	li r5, 0xa
/* 801FA750  98 A3 01 44 */	stb r5, 0x144(r3)
/* 801FA754  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 801FA758  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 801FA75C  88 04 00 B9 */	lbz r0, 0xb9(r4)
/* 801FA760  98 04 00 BA */	stb r0, 0xba(r4)
/* 801FA764  98 A4 00 B9 */	stb r5, 0xb9(r4)
/* 801FA768  38 00 00 00 */	li r0, 0
/* 801FA76C  98 03 01 52 */	stb r0, 0x152(r3)
/* 801FA770  38 80 00 01 */	li r4, 1
/* 801FA774  48 00 19 1D */	bl dMw_collect_delete__5dMw_cFb
/* 801FA778  7F E3 FB 78 */	mr r3, r31
/* 801FA77C  48 00 21 89 */	bl dMw_fishing_create__5dMw_cFv
/* 801FA780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FA784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA788  7C 08 03 A6 */	mtlr r0
/* 801FA78C  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA790  4E 80 00 20 */	blr 
