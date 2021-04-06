lbl_801FA680:
/* 801FA680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA684  7C 08 02 A6 */	mflr r0
/* 801FA688  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA68C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FA690  7C 7F 1B 78 */	mr r31, r3
/* 801FA694  38 A0 00 0A */	li r5, 0xa
/* 801FA698  98 A3 01 44 */	stb r5, 0x144(r3)
/* 801FA69C  3C 80 80 43 */	lis r4, g_meter2_info@ha /* 0x80430188@ha */
/* 801FA6A0  38 84 01 88 */	addi r4, r4, g_meter2_info@l /* 0x80430188@l */
/* 801FA6A4  88 04 00 B9 */	lbz r0, 0xb9(r4)
/* 801FA6A8  98 04 00 BA */	stb r0, 0xba(r4)
/* 801FA6AC  98 A4 00 B9 */	stb r5, 0xb9(r4)
/* 801FA6B0  38 00 00 00 */	li r0, 0
/* 801FA6B4  98 03 01 52 */	stb r0, 0x152(r3)
/* 801FA6B8  38 80 00 01 */	li r4, 1
/* 801FA6BC  48 00 19 D5 */	bl dMw_collect_delete__5dMw_cFb
/* 801FA6C0  7F E3 FB 78 */	mr r3, r31
/* 801FA6C4  48 00 20 F9 */	bl dMw_letter_create__5dMw_cFv
/* 801FA6C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FA6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA6D0  7C 08 03 A6 */	mtlr r0
/* 801FA6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA6D8  4E 80 00 20 */	blr 
