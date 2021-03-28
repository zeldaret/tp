lbl_801FA8A8:
/* 801FA8A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA8AC  7C 08 02 A6 */	mflr r0
/* 801FA8B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA8B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FA8B8  7C 7F 1B 78 */	mr r31, r3
/* 801FA8BC  38 A0 00 0A */	li r5, 0xa
/* 801FA8C0  98 A3 01 44 */	stb r5, 0x144(r3)
/* 801FA8C4  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 801FA8C8  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 801FA8CC  88 04 00 B9 */	lbz r0, 0xb9(r4)
/* 801FA8D0  98 04 00 BA */	stb r0, 0xba(r4)
/* 801FA8D4  98 A4 00 B9 */	stb r5, 0xb9(r4)
/* 801FA8D8  38 00 00 00 */	li r0, 0
/* 801FA8DC  98 03 01 52 */	stb r0, 0x152(r3)
/* 801FA8E0  38 80 00 01 */	li r4, 1
/* 801FA8E4  48 00 17 AD */	bl dMw_collect_delete__5dMw_cFb
/* 801FA8E8  7F E3 FB 78 */	mr r3, r31
/* 801FA8EC  38 80 00 00 */	li r4, 0
/* 801FA8F0  48 00 22 A5 */	bl dMw_insect_create__5dMw_cFUc
/* 801FA8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FA8F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA8FC  7C 08 03 A6 */	mtlr r0
/* 801FA900  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA904  4E 80 00 20 */	blr 
