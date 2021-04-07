lbl_801154E4:
/* 801154E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801154E8  7C 08 02 A6 */	mflr r0
/* 801154EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801154F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801154F4  7C 7F 1B 78 */	mr r31, r3
/* 801154F8  38 80 00 D8 */	li r4, 0xd8
/* 801154FC  4B FA D8 A9 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80115500  2C 03 00 00 */	cmpwi r3, 0
/* 80115504  40 82 00 0C */	bne lbl_80115510
/* 80115508  38 60 00 00 */	li r3, 0
/* 8011550C  48 00 00 44 */	b lbl_80115550
lbl_80115510:
/* 80115510  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80115514  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80115518  7F E3 FB 78 */	mr r3, r31
/* 8011551C  4B FF FB C9 */	bl checkIronBallAnime__9daAlink_cCFv
/* 80115520  2C 03 00 00 */	cmpwi r3, 0
/* 80115524  41 82 00 0C */	beq lbl_80115530
/* 80115528  7F E3 FB 78 */	mr r3, r31
/* 8011552C  4B FF FC B5 */	bl setIronBallBaseAnime__9daAlink_cFv
lbl_80115530:
/* 80115530  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80115534  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80115538  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011553C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80115540  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80115544  60 00 04 00 */	ori r0, r0, 0x400
/* 80115548  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8011554C  38 60 00 01 */	li r3, 1
lbl_80115550:
/* 80115550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80115554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80115558  7C 08 03 A6 */	mtlr r0
/* 8011555C  38 21 00 10 */	addi r1, r1, 0x10
/* 80115560  4E 80 00 20 */	blr 
