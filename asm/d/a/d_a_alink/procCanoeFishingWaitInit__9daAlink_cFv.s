lbl_800F6464:
/* 800F6464  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F6468  7C 08 02 A6 */	mflr r0
/* 800F646C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F6470  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800F6474  7C 7F 1B 78 */	mr r31, r3
/* 800F6478  38 80 00 95 */	li r4, 0x95
/* 800F647C  4B FC C9 29 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F6480  2C 03 00 00 */	cmpwi r3, 0
/* 800F6484  40 82 00 14 */	bne lbl_800F6498
/* 800F6488  38 00 00 00 */	li r0, 0
/* 800F648C  B0 1F 31 1A */	sth r0, 0x311a(r31)
/* 800F6490  38 60 00 00 */	li r3, 0
/* 800F6494  48 00 00 F4 */	b lbl_800F6588
lbl_800F6498:
/* 800F6498  7F E3 FB 78 */	mr r3, r31
/* 800F649C  38 80 00 E2 */	li r4, 0xe2
/* 800F64A0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F64A4  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800F64A8  4B FB 6B 39 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800F64AC  7F E3 FB 78 */	mr r3, r31
/* 800F64B0  38 80 00 5D */	li r4, 0x5d
/* 800F64B4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F64B8  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800F64BC  4B FB 6E ED */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800F64C0  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800F64C4  A8 7F 05 9E */	lha r3, 0x59e(r31)
/* 800F64C8  38 03 40 00 */	addi r0, r3, 0x4000
/* 800F64CC  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800F64D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F64D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800F64D8  3C 60 43 30 */	lis r3, 0x4330
/* 800F64DC  90 61 00 08 */	stw r3, 8(r1)
/* 800F64E0  C8 01 00 08 */	lfd f0, 8(r1)
/* 800F64E4  EC 20 10 28 */	fsubs f1, f0, f2
/* 800F64E8  C0 02 95 28 */	lfs f0, lit_21624(r2)
/* 800F64EC  EC 01 00 24 */	fdivs f0, f1, f0
/* 800F64F0  EC 23 00 28 */	fsubs f1, f3, f0
/* 800F64F4  A8 1F 1F D8 */	lha r0, 0x1fd8(r31)
/* 800F64F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F64FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F6500  90 61 00 10 */	stw r3, 0x10(r1)
/* 800F6504  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800F6508  EC 00 10 28 */	fsubs f0, f0, f2
/* 800F650C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F6510  D0 1F 1F E0 */	stfs f0, 0x1fe0(r31)
/* 800F6514  80 7F 1F 2C */	lwz r3, 0x1f2c(r31)
/* 800F6518  D0 03 00 08 */	stfs f0, 8(r3)
/* 800F651C  D0 1F 20 58 */	stfs f0, 0x2058(r31)
/* 800F6520  80 7F 1F 54 */	lwz r3, 0x1f54(r31)
/* 800F6524  D0 03 00 08 */	stfs f0, 8(r3)
/* 800F6528  38 00 00 01 */	li r0, 1
/* 800F652C  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 800F6530  7F E3 FB 78 */	mr r3, r31
/* 800F6534  4B FF E0 69 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F6538  38 00 00 00 */	li r0, 0
/* 800F653C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F6540  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800F6544  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800F6548  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800F654C  A8 1F 31 1A */	lha r0, 0x311a(r31)
/* 800F6550  7C 03 00 50 */	subf r0, r3, r0
/* 800F6554  7C 03 07 34 */	extsh r3, r0
/* 800F6558  2C 03 C8 00 */	cmpwi r3, -14336
/* 800F655C  40 80 00 0C */	bge lbl_800F6568
/* 800F6560  38 00 C8 00 */	li r0, -14336
/* 800F6564  48 00 00 14 */	b lbl_800F6578
lbl_800F6568:
/* 800F6568  2C 03 38 00 */	cmpwi r3, 0x3800
/* 800F656C  38 00 38 00 */	li r0, 0x3800
/* 800F6570  41 81 00 08 */	bgt lbl_800F6578
/* 800F6574  7C 60 1B 78 */	mr r0, r3
lbl_800F6578:
/* 800F6578  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800F657C  38 00 00 00 */	li r0, 0
/* 800F6580  B0 1F 31 1A */	sth r0, 0x311a(r31)
/* 800F6584  38 60 00 01 */	li r3, 1
lbl_800F6588:
/* 800F6588  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800F658C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F6590  7C 08 03 A6 */	mtlr r0
/* 800F6594  38 21 00 20 */	addi r1, r1, 0x20
/* 800F6598  4E 80 00 20 */	blr 
