lbl_807CF8BC:
/* 807CF8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CF8C0  7C 08 02 A6 */	mflr r0
/* 807CF8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CF8C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CF8CC  93 C1 00 08 */	stw r30, 8(r1)
/* 807CF8D0  7C 7E 1B 78 */	mr r30, r3
/* 807CF8D4  3C 80 80 7D */	lis r4, lit_3864@ha /* 0x807D2088@ha */
/* 807CF8D8  3B E4 20 88 */	addi r31, r4, lit_3864@l /* 0x807D2088@l */
/* 807CF8DC  4B 84 94 05 */	bl fopAc_IsActor__FPv
/* 807CF8E0  2C 03 00 00 */	cmpwi r3, 0
/* 807CF8E4  41 82 00 D0 */	beq lbl_807CF9B4
/* 807CF8E8  A8 1E 00 08 */	lha r0, 8(r30)
/* 807CF8EC  2C 00 01 B4 */	cmpwi r0, 0x1b4
/* 807CF8F0  40 82 00 C4 */	bne lbl_807CF9B4
/* 807CF8F4  38 00 00 14 */	li r0, 0x14
/* 807CF8F8  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 807CF8FC  38 00 00 00 */	li r0, 0
/* 807CF900  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807CF904  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807CF908  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807CF90C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807CF910  EC 21 00 28 */	fsubs f1, f1, f0
/* 807CF914  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807CF918  EC 42 00 28 */	fsubs f2, f2, f0
/* 807CF91C  EC 21 00 72 */	fmuls f1, f1, f1
/* 807CF920  EC 02 00 B2 */	fmuls f0, f2, f2
/* 807CF924  EC 21 00 2A */	fadds f1, f1, f0
/* 807CF928  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807CF92C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CF930  40 80 00 0C */	bge lbl_807CF93C
/* 807CF934  3C 60 80 7D */	lis r3, master_ns@ha /* 0x807D2378@ha */
/* 807CF938  93 C3 23 78 */	stw r30, master_ns@l(r3)  /* 0x807D2378@l */
lbl_807CF93C:
/* 807CF93C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 807CF940  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 807CF944  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807CF948  EC 21 00 28 */	fsubs f1, f1, f0
/* 807CF94C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807CF950  EC 42 00 28 */	fsubs f2, f2, f0
/* 807CF954  EC 21 00 72 */	fmuls f1, f1, f1
/* 807CF958  EC 02 00 B2 */	fmuls f0, f2, f2
/* 807CF95C  EC 21 00 2A */	fadds f1, f1, f0
/* 807CF960  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807CF964  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CF968  40 80 00 10 */	bge lbl_807CF978
/* 807CF96C  3C 60 80 7D */	lis r3, master_ns@ha /* 0x807D2378@ha */
/* 807CF970  38 63 23 78 */	addi r3, r3, master_ns@l /* 0x807D2378@l */
/* 807CF974  93 C3 00 04 */	stw r30, 4(r3)
lbl_807CF978:
/* 807CF978  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 807CF97C  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 807CF980  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807CF984  EC 21 00 28 */	fsubs f1, f1, f0
/* 807CF988  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807CF98C  EC 42 00 28 */	fsubs f2, f2, f0
/* 807CF990  EC 21 00 72 */	fmuls f1, f1, f1
/* 807CF994  EC 02 00 B2 */	fmuls f0, f2, f2
/* 807CF998  EC 21 00 2A */	fadds f1, f1, f0
/* 807CF99C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807CF9A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CF9A4  40 80 00 10 */	bge lbl_807CF9B4
/* 807CF9A8  3C 60 80 7D */	lis r3, master_ns@ha /* 0x807D2378@ha */
/* 807CF9AC  38 63 23 78 */	addi r3, r3, master_ns@l /* 0x807D2378@l */
/* 807CF9B0  93 C3 00 08 */	stw r30, 8(r3)
lbl_807CF9B4:
/* 807CF9B4  38 60 00 00 */	li r3, 0
/* 807CF9B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CF9BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807CF9C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CF9C4  7C 08 03 A6 */	mtlr r0
/* 807CF9C8  38 21 00 10 */	addi r1, r1, 0x10
/* 807CF9CC  4E 80 00 20 */	blr 
