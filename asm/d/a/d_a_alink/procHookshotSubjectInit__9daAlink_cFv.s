lbl_8010BAA8:
/* 8010BAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010BAAC  7C 08 02 A6 */	mflr r0
/* 8010BAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010BAB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010BAB8  7C 7F 1B 78 */	mr r31, r3
/* 8010BABC  38 80 00 C4 */	li r4, 0xc4
/* 8010BAC0  4B FB 72 E5 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010BAC4  2C 03 00 00 */	cmpwi r3, 0
/* 8010BAC8  40 82 00 0C */	bne lbl_8010BAD4
/* 8010BACC  38 60 00 00 */	li r3, 0
/* 8010BAD0  48 00 00 64 */	b lbl_8010BB34
lbl_8010BAD4:
/* 8010BAD4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010BAD8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8010BADC  7F E3 FB 78 */	mr r3, r31
/* 8010BAE0  38 80 00 01 */	li r4, 1
/* 8010BAE4  4B FF D6 09 */	bl initHookshotUpperAnimeSpeed__9daAlink_cFi
/* 8010BAE8  2C 03 00 00 */	cmpwi r3, 0
/* 8010BAEC  41 82 00 20 */	beq lbl_8010BB0C
/* 8010BAF0  7F E3 FB 78 */	mr r3, r31
/* 8010BAF4  38 80 00 10 */	li r4, 0x10
/* 8010BAF8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010BAFC  3C A0 80 39 */	lis r5, m__22daAlinkHIO_hookshot_c0@ha
/* 8010BB00  38 A5 E9 C0 */	addi r5, r5, m__22daAlinkHIO_hookshot_c0@l
/* 8010BB04  C0 45 00 44 */	lfs f2, 0x44(r5)
/* 8010BB08  4B FA 14 D9 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_8010BB0C:
/* 8010BB0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010BB10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010BB14  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010BB18  60 00 40 00 */	ori r0, r0, 0x4000
/* 8010BB1C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8010BB20  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8010BB24  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8010BB28  7F E3 FB 78 */	mr r3, r31
/* 8010BB2C  4B FF D5 45 */	bl setHookshotReadyMaterial__9daAlink_cFv
/* 8010BB30  38 60 00 01 */	li r3, 1
lbl_8010BB34:
/* 8010BB34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010BB38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010BB3C  7C 08 03 A6 */	mtlr r0
/* 8010BB40  38 21 00 10 */	addi r1, r1, 0x10
/* 8010BB44  4E 80 00 20 */	blr 
