lbl_80979A34:
/* 80979A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80979A38  7C 08 02 A6 */	mflr r0
/* 80979A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80979A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80979A44  7C 7F 1B 78 */	mr r31, r3
/* 80979A48  38 00 00 00 */	li r0, 0
/* 80979A4C  90 03 0B 68 */	stw r0, 0xb68(r3)
/* 80979A50  38 7F 0A F8 */	addi r3, r31, 0xaf8
/* 80979A54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80979A58  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80979A5C  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80979A60  4B 7C BC 81 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80979A64  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80979A68  B0 1F 0B 92 */	sth r0, 0xb92(r31)
/* 80979A6C  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80979A70  80 03 00 08 */	lwz r0, 8(r3)
/* 80979A74  90 1F 0B 80 */	stw r0, 0xb80(r31)
/* 80979A78  80 1F 0B 78 */	lwz r0, 0xb78(r31)
/* 80979A7C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80979A80  7F E3 FB 78 */	mr r3, r31
/* 80979A84  48 00 1B 25 */	bl isInShop__11daNpcCdn3_cFv
/* 80979A88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80979A8C  40 82 00 84 */	bne lbl_80979B10
/* 80979A90  7F E3 FB 78 */	mr r3, r31
/* 80979A94  48 00 1B F1 */	bl isNoTurnTalk__11daNpcCdn3_cFv
/* 80979A98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80979A9C  40 82 00 74 */	bne lbl_80979B10
/* 80979AA0  7F E3 FB 78 */	mr r3, r31
/* 80979AA4  48 00 1B 69 */	bl isChairStyle__11daNpcCdn3_cFv
/* 80979AA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80979AAC  38 00 00 02 */	li r0, 2
/* 80979AB0  41 82 00 08 */	beq lbl_80979AB8
/* 80979AB4  38 00 00 0F */	li r0, 0xf
lbl_80979AB8:
/* 80979AB8  90 1F 0B 78 */	stw r0, 0xb78(r31)
/* 80979ABC  38 00 00 00 */	li r0, 0
/* 80979AC0  98 1F 0B 97 */	stb r0, 0xb97(r31)
/* 80979AC4  7F E3 FB 78 */	mr r3, r31
/* 80979AC8  48 00 1B 45 */	bl isChairStyle__11daNpcCdn3_cFv
/* 80979ACC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80979AD0  38 80 00 00 */	li r4, 0
/* 80979AD4  41 82 00 08 */	beq lbl_80979ADC
/* 80979AD8  38 80 00 0E */	li r4, 0xe
lbl_80979ADC:
/* 80979ADC  7F E3 FB 78 */	mr r3, r31
/* 80979AE0  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 80979AE4  4B 7D E6 0D */	bl getAnmP__10daNpcCd2_cFii
/* 80979AE8  7C 64 1B 78 */	mr r4, r3
/* 80979AEC  7F E3 FB 78 */	mr r3, r31
/* 80979AF0  3C A0 80 98 */	lis r5, lit_4091@ha /* 0x8097F544@ha */
/* 80979AF4  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)  /* 0x8097F544@l */
/* 80979AF8  3C A0 80 98 */	lis r5, lit_4092@ha /* 0x8097F548@ha */
/* 80979AFC  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)  /* 0x8097F548@l */
/* 80979B00  38 A0 00 02 */	li r5, 2
/* 80979B04  38 C0 00 00 */	li r6, 0
/* 80979B08  38 E0 FF FF */	li r7, -1
/* 80979B0C  4B 7D F3 F5 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_80979B10:
/* 80979B10  38 00 00 00 */	li r0, 0
/* 80979B14  98 1F 0B 98 */	stb r0, 0xb98(r31)
/* 80979B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80979B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80979B20  7C 08 03 A6 */	mtlr r0
/* 80979B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80979B28  4E 80 00 20 */	blr 
