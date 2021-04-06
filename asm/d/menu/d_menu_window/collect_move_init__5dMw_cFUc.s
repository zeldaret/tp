lbl_801FA2D0:
/* 801FA2D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA2D4  7C 08 02 A6 */	mflr r0
/* 801FA2D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA2DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FA2E0  7C 7F 1B 78 */	mr r31, r3
/* 801FA2E4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 801FA2E8  38 03 FF FC */	addi r0, r3, -4
/* 801FA2EC  28 00 00 1A */	cmplwi r0, 0x1a
/* 801FA2F0  41 81 01 68 */	bgt lbl_801FA458
/* 801FA2F4  3C 60 80 3C */	lis r3, lit_4418@ha /* 0x803BF014@ha */
/* 801FA2F8  38 63 F0 14 */	addi r3, r3, lit_4418@l /* 0x803BF014@l */
/* 801FA2FC  54 00 10 3A */	slwi r0, r0, 2
/* 801FA300  7C 03 00 2E */	lwzx r0, r3, r0
/* 801FA304  7C 09 03 A6 */	mtctr r0
/* 801FA308  4E 80 04 20 */	bctr 
/* 801FA30C  48 00 2B 6D */	bl dMw_fade_in__5dMw_cFv
/* 801FA310  38 60 00 01 */	li r3, 1
/* 801FA314  4B E3 3D CD */	bl dComIfGp_setHeapLockFlag__FUc
/* 801FA318  7F E3 FB 78 */	mr r3, r31
/* 801FA31C  48 00 1C DD */	bl dMw_collect_create__5dMw_cFv
/* 801FA320  48 00 01 38 */	b lbl_801FA458
/* 801FA324  48 00 2B 55 */	bl dMw_fade_in__5dMw_cFv
/* 801FA328  7F E3 FB 78 */	mr r3, r31
/* 801FA32C  48 00 22 A5 */	bl dMw_save_delete__5dMw_cFv
/* 801FA330  38 80 00 03 */	li r4, 3
/* 801FA334  98 9F 01 44 */	stb r4, 0x144(r31)
/* 801FA338  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FA33C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FA340  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 801FA344  98 03 00 BA */	stb r0, 0xba(r3)
/* 801FA348  98 83 00 B9 */	stb r4, 0xb9(r3)
/* 801FA34C  7F E3 FB 78 */	mr r3, r31
/* 801FA350  48 00 1C A9 */	bl dMw_collect_create__5dMw_cFv
/* 801FA354  48 00 01 04 */	b lbl_801FA458
/* 801FA358  48 00 2B 21 */	bl dMw_fade_in__5dMw_cFv
/* 801FA35C  7F E3 FB 78 */	mr r3, r31
/* 801FA360  48 00 23 AD */	bl dMw_option_delete__5dMw_cFv
/* 801FA364  38 80 00 03 */	li r4, 3
/* 801FA368  98 9F 01 44 */	stb r4, 0x144(r31)
/* 801FA36C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FA370  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FA374  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 801FA378  98 03 00 BA */	stb r0, 0xba(r3)
/* 801FA37C  98 83 00 B9 */	stb r4, 0xb9(r3)
/* 801FA380  7F E3 FB 78 */	mr r3, r31
/* 801FA384  48 00 1C 75 */	bl dMw_collect_create__5dMw_cFv
/* 801FA388  48 00 00 D0 */	b lbl_801FA458
/* 801FA38C  48 00 2A ED */	bl dMw_fade_in__5dMw_cFv
/* 801FA390  7F E3 FB 78 */	mr r3, r31
/* 801FA394  48 00 24 C9 */	bl dMw_letter_delete__5dMw_cFv
/* 801FA398  38 80 00 03 */	li r4, 3
/* 801FA39C  98 9F 01 44 */	stb r4, 0x144(r31)
/* 801FA3A0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FA3A4  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FA3A8  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 801FA3AC  98 03 00 BA */	stb r0, 0xba(r3)
/* 801FA3B0  98 83 00 B9 */	stb r4, 0xb9(r3)
/* 801FA3B4  7F E3 FB 78 */	mr r3, r31
/* 801FA3B8  48 00 1C 41 */	bl dMw_collect_create__5dMw_cFv
/* 801FA3BC  48 00 00 9C */	b lbl_801FA458
/* 801FA3C0  48 00 2A B9 */	bl dMw_fade_in__5dMw_cFv
/* 801FA3C4  7F E3 FB 78 */	mr r3, r31
/* 801FA3C8  48 00 25 DD */	bl dMw_fishing_delete__5dMw_cFv
/* 801FA3CC  38 80 00 03 */	li r4, 3
/* 801FA3D0  98 9F 01 44 */	stb r4, 0x144(r31)
/* 801FA3D4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FA3D8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FA3DC  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 801FA3E0  98 03 00 BA */	stb r0, 0xba(r3)
/* 801FA3E4  98 83 00 B9 */	stb r4, 0xb9(r3)
/* 801FA3E8  7F E3 FB 78 */	mr r3, r31
/* 801FA3EC  48 00 1C 0D */	bl dMw_collect_create__5dMw_cFv
/* 801FA3F0  48 00 00 68 */	b lbl_801FA458
/* 801FA3F4  48 00 2A 85 */	bl dMw_fade_in__5dMw_cFv
/* 801FA3F8  7F E3 FB 78 */	mr r3, r31
/* 801FA3FC  48 00 26 F1 */	bl dMw_skill_delete__5dMw_cFv
/* 801FA400  38 80 00 03 */	li r4, 3
/* 801FA404  98 9F 01 44 */	stb r4, 0x144(r31)
/* 801FA408  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FA40C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FA410  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 801FA414  98 03 00 BA */	stb r0, 0xba(r3)
/* 801FA418  98 83 00 B9 */	stb r4, 0xb9(r3)
/* 801FA41C  7F E3 FB 78 */	mr r3, r31
/* 801FA420  48 00 1B D9 */	bl dMw_collect_create__5dMw_cFv
/* 801FA424  48 00 00 34 */	b lbl_801FA458
/* 801FA428  48 00 2A 51 */	bl dMw_fade_in__5dMw_cFv
/* 801FA42C  7F E3 FB 78 */	mr r3, r31
/* 801FA430  48 00 28 15 */	bl dMw_insect_delete__5dMw_cFv
/* 801FA434  38 80 00 03 */	li r4, 3
/* 801FA438  98 9F 01 44 */	stb r4, 0x144(r31)
/* 801FA43C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FA440  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FA444  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 801FA448  98 03 00 BA */	stb r0, 0xba(r3)
/* 801FA44C  98 83 00 B9 */	stb r4, 0xb9(r3)
/* 801FA450  7F E3 FB 78 */	mr r3, r31
/* 801FA454  48 00 1B A5 */	bl dMw_collect_create__5dMw_cFv
lbl_801FA458:
/* 801FA458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FA45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA460  7C 08 03 A6 */	mtlr r0
/* 801FA464  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA468  4E 80 00 20 */	blr 
