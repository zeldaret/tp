lbl_8010CF6C:
/* 8010CF6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010CF70  7C 08 02 A6 */	mflr r0
/* 8010CF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010CF78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010CF7C  93 C1 00 08 */	stw r30, 8(r1)
/* 8010CF80  7C 7E 1B 78 */	mr r30, r3
/* 8010CF84  7C 9F 23 78 */	mr r31, r4
/* 8010CF88  38 80 00 C9 */	li r4, 0xc9
/* 8010CF8C  4B FB 4F E1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010CF90  7F C3 F3 78 */	mr r3, r30
/* 8010CF94  A8 1E 30 20 */	lha r0, 0x3020(r30)
/* 8010CF98  2C 00 00 00 */	cmpwi r0, 0
/* 8010CF9C  38 80 01 34 */	li r4, 0x134
/* 8010CFA0  40 82 00 08 */	bne lbl_8010CFA8
/* 8010CFA4  38 80 01 35 */	li r4, 0x135
lbl_8010CFA8:
/* 8010CFA8  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 8010CFAC  4B FA 00 05 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 8010CFB0  7F C3 F3 78 */	mr r3, r30
/* 8010CFB4  4B FF B7 29 */	bl resetHookshotMode__9daAlink_cFv
/* 8010CFB8  38 00 00 01 */	li r0, 1
/* 8010CFBC  B0 1E 30 24 */	sth r0, 0x3024(r30)
/* 8010CFC0  7F C3 F3 78 */	mr r3, r30
/* 8010CFC4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010CFC8  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 8010CFCC  38 80 00 00 */	li r4, 0
/* 8010CFD0  4B FA E7 A1 */	bl setSpecialGravity__9daAlink_cFffi
/* 8010CFD4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010CFD8  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8010CFDC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8010CFE0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010CFE4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8010CFE8  7F C3 F3 78 */	mr r3, r30
/* 8010CFEC  7F E4 FB 78 */	mr r4, r31
/* 8010CFF0  4B FF E6 55 */	bl initHookshotRoofWaitActor__9daAlink_cFP10fopAc_ac_c
/* 8010CFF4  C0 02 96 00 */	lfs f0, lit_30895(r2)
/* 8010CFF8  D0 1E 2B 98 */	stfs f0, 0x2b98(r30)
/* 8010CFFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010D000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010D004  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8010D008  64 00 00 01 */	oris r0, r0, 1
/* 8010D00C  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8010D010  38 00 00 FF */	li r0, 0xff
/* 8010D014  98 1E 08 28 */	stb r0, 0x828(r30)
/* 8010D018  38 60 00 01 */	li r3, 1
/* 8010D01C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010D020  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010D024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010D028  7C 08 03 A6 */	mtlr r0
/* 8010D02C  38 21 00 10 */	addi r1, r1, 0x10
/* 8010D030  4E 80 00 20 */	blr 
