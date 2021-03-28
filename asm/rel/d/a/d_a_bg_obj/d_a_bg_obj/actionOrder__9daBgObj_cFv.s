lbl_8045BBE0:
/* 8045BBE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045BBE4  7C 08 02 A6 */	mflr r0
/* 8045BBE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045BBEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045BBF0  7C 7F 1B 78 */	mr r31, r3
/* 8045BBF4  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8045BBF8  28 00 00 02 */	cmplwi r0, 2
/* 8045BBFC  40 82 00 54 */	bne lbl_8045BC50
/* 8045BC00  38 00 00 02 */	li r0, 2
/* 8045BC04  98 1F 0C C5 */	stb r0, 0xcc5(r31)
/* 8045BC08  88 1F 0D 01 */	lbz r0, 0xd01(r31)
/* 8045BC0C  28 00 00 05 */	cmplwi r0, 5
/* 8045BC10  40 80 01 28 */	bge lbl_8045BD38
/* 8045BC14  3C 60 80 46 */	lis r3, lit_3873@ha
/* 8045BC18  C0 23 CA 00 */	lfs f1, lit_3873@l(r3)
/* 8045BC1C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8045BC20  3C 60 80 46 */	lis r3, lit_4076@ha
/* 8045BC24  C0 03 CA 0C */	lfs f0, lit_4076@l(r3)
/* 8045BC28  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045BC2C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8045BC30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045BC34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045BC38  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8045BC3C  38 80 00 04 */	li r4, 4
/* 8045BC40  38 A0 00 1F */	li r5, 0x1f
/* 8045BC44  38 C1 00 0C */	addi r6, r1, 0xc
/* 8045BC48  4B C1 3D DC */	b StartShock__12dVibration_cFii4cXyz
/* 8045BC4C  48 00 00 EC */	b lbl_8045BD38
lbl_8045BC50:
/* 8045BC50  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8045BC54  54 05 5E 3E */	rlwinm r5, r0, 0xb, 0x18, 0x1f
/* 8045BC58  28 05 00 FF */	cmplwi r5, 0xff
/* 8045BC5C  41 82 00 20 */	beq lbl_8045BC7C
/* 8045BC60  A8 9F 0C C6 */	lha r4, 0xcc6(r31)
/* 8045BC64  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8045BC68  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8045BC6C  38 E0 00 00 */	li r7, 0
/* 8045BC70  39 00 00 01 */	li r8, 1
/* 8045BC74  4B BB FA 08 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8045BC78  48 00 00 0C */	b lbl_8045BC84
lbl_8045BC7C:
/* 8045BC7C  38 00 00 03 */	li r0, 3
/* 8045BC80  98 1F 0C C5 */	stb r0, 0xcc5(r31)
lbl_8045BC84:
/* 8045BC84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045BC88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045BC8C  A0 1F 0C CC */	lhz r0, 0xccc(r31)
/* 8045BC90  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8045BC94  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8045BC98  7C 05 07 74 */	extsb r5, r0
/* 8045BC9C  4B BD 96 C4 */	b isSwitch__10dSv_info_cCFii
/* 8045BCA0  2C 03 00 00 */	cmpwi r3, 0
/* 8045BCA4  41 82 00 1C */	beq lbl_8045BCC0
/* 8045BCA8  88 1F 0D 00 */	lbz r0, 0xd00(r31)
/* 8045BCAC  28 00 00 00 */	cmplwi r0, 0
/* 8045BCB0  40 82 00 10 */	bne lbl_8045BCC0
/* 8045BCB4  88 1F 0C C8 */	lbz r0, 0xcc8(r31)
/* 8045BCB8  28 00 00 00 */	cmplwi r0, 0
/* 8045BCBC  40 82 00 7C */	bne lbl_8045BD38
lbl_8045BCC0:
/* 8045BCC0  7F E3 FB 78 */	mr r3, r31
/* 8045BCC4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8045BCC8  4B FF DE 9D */	bl release__9daBgObj_cFP4dBgW
/* 8045BCCC  7F E3 FB 78 */	mr r3, r31
/* 8045BCD0  80 9F 05 D8 */	lwz r4, 0x5d8(r31)
/* 8045BCD4  4B FF DE E1 */	bl regist__9daBgObj_cFP4dBgW
/* 8045BCD8  38 00 00 01 */	li r0, 1
/* 8045BCDC  98 1F 0C C8 */	stb r0, 0xcc8(r31)
/* 8045BCE0  7F E3 FB 78 */	mr r3, r31
/* 8045BCE4  88 9F 0C C8 */	lbz r4, 0xcc8(r31)
/* 8045BCE8  4B FF E2 2D */	bl settingCullSizeBoxForCull__9daBgObj_cFi
/* 8045BCEC  80 1F 0C FC */	lwz r0, 0xcfc(r31)
/* 8045BCF0  90 01 00 08 */	stw r0, 8(r1)
/* 8045BCF4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8045BCF8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8045BCFC  38 81 00 08 */	addi r4, r1, 8
/* 8045BD00  4B BB DA F8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8045BD04  7C 64 1B 79 */	or. r4, r3, r3
/* 8045BD08  41 82 00 0C */	beq lbl_8045BD14
/* 8045BD0C  7F E3 FB 78 */	mr r3, r31
/* 8045BD10  4B FF DF FD */	bl setAttentionInfo__9daBgObj_cFP10fopAc_ac_c
lbl_8045BD14:
/* 8045BD14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045BD18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045BD1C  A0 1F 0C CC */	lhz r0, 0xccc(r31)
/* 8045BD20  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8045BD24  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8045BD28  7C 05 07 74 */	extsb r5, r0
/* 8045BD2C  4B BD 94 D4 */	b onSwitch__10dSv_info_cFii
/* 8045BD30  38 00 00 00 */	li r0, 0
/* 8045BD34  98 1F 0D 00 */	stb r0, 0xd00(r31)
lbl_8045BD38:
/* 8045BD38  38 60 00 01 */	li r3, 1
/* 8045BD3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045BD40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045BD44  7C 08 03 A6 */	mtlr r0
/* 8045BD48  38 21 00 20 */	addi r1, r1, 0x20
/* 8045BD4C  4E 80 00 20 */	blr 
