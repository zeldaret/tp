lbl_80249700:
/* 80249700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249704  7C 08 02 A6 */	mflr r0
/* 80249708  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024970C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80249710  7C 7F 1B 78 */	mr r31, r3
/* 80249714  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80249718  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8024971C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80249720  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80249724  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80249728  28 00 00 00 */	cmplwi r0, 0
/* 8024972C  40 82 00 28 */	bne lbl_80249754
/* 80249730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80249734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80249738  80 A3 5C F4 */	lwz r5, 0x5cf4(r3)
/* 8024973C  3C 60 52 4F */	lis r3, 0x524F /* 0x524F4F54@ha */
/* 80249740  38 63 4F 54 */	addi r3, r3, 0x4F54 /* 0x524F4F54@l */
/* 80249744  3C 80 80 3A */	lis r4, d_msg_d_msg_string_base__stringBase0@ha /* 0x80399C98@ha */
/* 80249748  38 84 9C 98 */	addi r4, r4, d_msg_d_msg_string_base__stringBase0@l /* 0x80399C98@l */
/* 8024974C  48 08 C3 ED */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 80249750  90 7F 00 1C */	stw r3, 0x1c(r31)
lbl_80249754:
/* 80249754  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80249758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024975C  7C 08 03 A6 */	mtlr r0
/* 80249760  38 21 00 10 */	addi r1, r1, 0x10
/* 80249764  4E 80 00 20 */	blr 
