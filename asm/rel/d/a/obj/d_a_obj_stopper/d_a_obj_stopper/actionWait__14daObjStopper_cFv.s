lbl_80CED824:
/* 80CED824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED828  7C 08 02 A6 */	mflr r0
/* 80CED82C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CED834  93 C1 00 08 */	stw r30, 8(r1)
/* 80CED838  7C 7E 1B 78 */	mr r30, r3
/* 80CED83C  3C 60 80 CF */	lis r3, lit_3635@ha /* 0x80CEEFA0@ha */
/* 80CED840  3B E3 EF A0 */	addi r31, r3, lit_3635@l /* 0x80CEEFA0@l */
/* 80CED844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CED848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CED84C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CED850  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CED854  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CED858  7C 05 07 74 */	extsb r5, r0
/* 80CED85C  4B 34 7B 05 */	bl isSwitch__10dSv_info_cCFii
/* 80CED860  88 1E 09 4E */	lbz r0, 0x94e(r30)
/* 80CED864  7C 03 00 00 */	cmpw r3, r0
/* 80CED868  41 82 01 A0 */	beq lbl_80CEDA08
/* 80CED86C  28 00 00 00 */	cmplwi r0, 0
/* 80CED870  40 82 01 98 */	bne lbl_80CEDA08
/* 80CED874  88 9E 09 3D */	lbz r4, 0x93d(r30)
/* 80CED878  38 04 00 01 */	addi r0, r4, 1
/* 80CED87C  98 1E 09 3D */	stb r0, 0x93d(r30)
/* 80CED880  88 1E 09 3D */	lbz r0, 0x93d(r30)
/* 80CED884  2C 00 00 02 */	cmpwi r0, 2
/* 80CED888  41 82 00 98 */	beq lbl_80CED920
/* 80CED88C  40 80 00 10 */	bge lbl_80CED89C
/* 80CED890  2C 00 00 01 */	cmpwi r0, 1
/* 80CED894  40 80 00 14 */	bge lbl_80CED8A8
/* 80CED898  48 00 01 60 */	b lbl_80CED9F8
lbl_80CED89C:
/* 80CED89C  2C 00 00 04 */	cmpwi r0, 4
/* 80CED8A0  40 80 01 58 */	bge lbl_80CED9F8
/* 80CED8A4  48 00 00 F8 */	b lbl_80CED99C
lbl_80CED8A8:
/* 80CED8A8  38 00 00 37 */	li r0, 0x37
/* 80CED8AC  98 1E 09 5D */	stb r0, 0x95d(r30)
/* 80CED8B0  38 00 00 14 */	li r0, 0x14
/* 80CED8B4  98 1E 09 5E */	stb r0, 0x95e(r30)
/* 80CED8B8  38 80 00 00 */	li r4, 0
/* 80CED8BC  B0 9E 09 60 */	sth r4, 0x960(r30)
/* 80CED8C0  38 00 00 2D */	li r0, 0x2d
/* 80CED8C4  B0 1E 09 54 */	sth r0, 0x954(r30)
/* 80CED8C8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CED8CC  D0 1E 09 64 */	stfs f0, 0x964(r30)
/* 80CED8D0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CED8D4  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 80CED8D8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80CED8DC  D0 3E 09 6C */	stfs f1, 0x96c(r30)
/* 80CED8E0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CED8E4  D0 1E 09 70 */	stfs f0, 0x970(r30)
/* 80CED8E8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CED8EC  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 80CED8F0  D0 1E 09 78 */	stfs f0, 0x978(r30)
/* 80CED8F4  D0 3E 09 58 */	stfs f1, 0x958(r30)
/* 80CED8F8  38 00 00 32 */	li r0, 0x32
/* 80CED8FC  B0 1E 09 F6 */	sth r0, 0x9f6(r30)
/* 80CED900  38 00 00 3A */	li r0, 0x3a
/* 80CED904  B0 1E 09 E8 */	sth r0, 0x9e8(r30)
/* 80CED908  98 9E 09 5C */	stb r4, 0x95c(r30)
/* 80CED90C  B0 9E 09 7E */	sth r4, 0x97e(r30)
/* 80CED910  A8 9E 09 7E */	lha r4, 0x97e(r30)
/* 80CED914  38 04 00 0C */	addi r0, r4, 0xc
/* 80CED918  B0 1E 09 7E */	sth r0, 0x97e(r30)
/* 80CED91C  48 00 00 DC */	b lbl_80CED9F8
lbl_80CED920:
/* 80CED920  38 00 00 28 */	li r0, 0x28
/* 80CED924  98 1E 09 5D */	stb r0, 0x95d(r30)
/* 80CED928  38 00 00 14 */	li r0, 0x14
/* 80CED92C  98 1E 09 5E */	stb r0, 0x95e(r30)
/* 80CED930  38 A0 00 00 */	li r5, 0
/* 80CED934  B0 BE 09 60 */	sth r5, 0x960(r30)
/* 80CED938  38 00 00 0F */	li r0, 0xf
/* 80CED93C  B0 1E 09 54 */	sth r0, 0x954(r30)
/* 80CED940  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CED944  D0 1E 09 64 */	stfs f0, 0x964(r30)
/* 80CED948  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 80CED94C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80CED950  D0 1E 09 6C */	stfs f0, 0x96c(r30)
/* 80CED954  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CED958  D0 1E 09 70 */	stfs f0, 0x970(r30)
/* 80CED95C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CED960  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 80CED964  D0 1E 09 78 */	stfs f0, 0x978(r30)
/* 80CED968  38 00 00 37 */	li r0, 0x37
/* 80CED96C  B0 1E 09 F6 */	sth r0, 0x9f6(r30)
/* 80CED970  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CED974  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 80CED978  38 00 00 5A */	li r0, 0x5a
/* 80CED97C  B0 1E 09 EA */	sth r0, 0x9ea(r30)
/* 80CED980  38 00 00 35 */	li r0, 0x35
/* 80CED984  B0 1E 09 80 */	sth r0, 0x980(r30)
/* 80CED988  A8 9E 09 80 */	lha r4, 0x980(r30)
/* 80CED98C  38 04 FF EC */	addi r0, r4, -20
/* 80CED990  B0 1E 09 80 */	sth r0, 0x980(r30)
/* 80CED994  98 BE 09 5C */	stb r5, 0x95c(r30)
/* 80CED998  48 00 00 60 */	b lbl_80CED9F8
lbl_80CED99C:
/* 80CED99C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CED9A0  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 80CED9A4  38 00 00 1E */	li r0, 0x1e
/* 80CED9A8  B0 1E 09 54 */	sth r0, 0x954(r30)
/* 80CED9AC  38 80 00 00 */	li r4, 0
/* 80CED9B0  B0 9E 09 60 */	sth r4, 0x960(r30)
/* 80CED9B4  B0 1E 09 56 */	sth r0, 0x956(r30)
/* 80CED9B8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CED9BC  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 80CED9C0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80CED9C4  D0 1E 09 78 */	stfs f0, 0x978(r30)
/* 80CED9C8  38 00 00 37 */	li r0, 0x37
/* 80CED9CC  B0 1E 09 F6 */	sth r0, 0x9f6(r30)
/* 80CED9D0  38 00 00 27 */	li r0, 0x27
/* 80CED9D4  B0 1E 09 EC */	sth r0, 0x9ec(r30)
/* 80CED9D8  38 00 00 6D */	li r0, 0x6d
/* 80CED9DC  B0 1E 09 EE */	sth r0, 0x9ee(r30)
/* 80CED9E0  98 9E 09 5C */	stb r4, 0x95c(r30)
/* 80CED9E4  38 00 00 3A */	li r0, 0x3a
/* 80CED9E8  B0 1E 09 82 */	sth r0, 0x982(r30)
/* 80CED9EC  A8 9E 09 82 */	lha r4, 0x982(r30)
/* 80CED9F0  38 04 FF EC */	addi r0, r4, -20
/* 80CED9F4  B0 1E 09 82 */	sth r0, 0x982(r30)
lbl_80CED9F8:
/* 80CED9F8  38 00 00 0A */	li r0, 0xa
/* 80CED9FC  98 1E 09 5F */	stb r0, 0x95f(r30)
/* 80CEDA00  38 00 00 01 */	li r0, 1
/* 80CEDA04  98 1E 09 3C */	stb r0, 0x93c(r30)
lbl_80CEDA08:
/* 80CEDA08  98 7E 09 4E */	stb r3, 0x94e(r30)
/* 80CEDA0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEDA10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CEDA14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEDA18  7C 08 03 A6 */	mtlr r0
/* 80CEDA1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEDA20  4E 80 00 20 */	blr 
