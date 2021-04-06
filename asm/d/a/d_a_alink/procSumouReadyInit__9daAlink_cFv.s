lbl_800EA950:
/* 800EA950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA954  7C 08 02 A6 */	mflr r0
/* 800EA958  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA95C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EA960  7C 7F 1B 78 */	mr r31, r3
/* 800EA964  38 80 00 CE */	li r4, 0xce
/* 800EA968  4B FD 84 3D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800EA96C  2C 03 00 00 */	cmpwi r3, 0
/* 800EA970  40 82 00 0C */	bne lbl_800EA97C
/* 800EA974  38 60 00 00 */	li r3, 0
/* 800EA978  48 00 00 9C */	b lbl_800EAA14
lbl_800EA97C:
/* 800EA97C  7F E3 FB 78 */	mr r3, r31
/* 800EA980  38 80 01 3F */	li r4, 0x13f
/* 800EA984  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800EA988  4B FC 26 29 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 800EA98C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EA990  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800EA994  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800EA998  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EA99C  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 800EA9A0  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)  /* 0x80425514@l */
/* 800EA9A4  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800EA9A8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800EA9AC  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800EA9B0  C0 03 00 08 */	lfs f0, 8(r3)
/* 800EA9B4  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800EA9B8  C0 1F 35 88 */	lfs f0, 0x3588(r31)
/* 800EA9BC  D0 1F 34 D4 */	stfs f0, 0x34d4(r31)
/* 800EA9C0  C0 1F 35 8C */	lfs f0, 0x358c(r31)
/* 800EA9C4  D0 1F 34 D8 */	stfs f0, 0x34d8(r31)
/* 800EA9C8  C0 1F 35 90 */	lfs f0, 0x3590(r31)
/* 800EA9CC  D0 1F 34 DC */	stfs f0, 0x34dc(r31)
/* 800EA9D0  38 00 00 04 */	li r0, 4
/* 800EA9D4  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800EA9D8  38 00 00 01 */	li r0, 1
/* 800EA9DC  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 800EA9E0  38 00 00 00 */	li r0, 0
/* 800EA9E4  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800EA9E8  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800EA9EC  7F E3 FB 78 */	mr r3, r31
/* 800EA9F0  38 80 00 00 */	li r4, 0
/* 800EA9F4  38 A0 00 01 */	li r5, 1
/* 800EA9F8  4B FD 68 E5 */	bl deleteEquipItem__9daAlink_cFii
/* 800EA9FC  80 7F 28 38 */	lwz r3, 0x2838(r31)
/* 800EAA00  28 03 00 00 */	cmplwi r3, 0
/* 800EAA04  41 82 00 0C */	beq lbl_800EAA10
/* 800EAA08  38 00 00 01 */	li r0, 1
/* 800EAA0C  98 03 09 56 */	stb r0, 0x956(r3)
lbl_800EAA10:
/* 800EAA10  38 60 00 01 */	li r3, 1
lbl_800EAA14:
/* 800EAA14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EAA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EAA1C  7C 08 03 A6 */	mtlr r0
/* 800EAA20  38 21 00 10 */	addi r1, r1, 0x10
/* 800EAA24  4E 80 00 20 */	blr 
