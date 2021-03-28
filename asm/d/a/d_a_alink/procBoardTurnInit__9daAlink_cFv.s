lbl_80107060:
/* 80107060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80107064  7C 08 02 A6 */	mflr r0
/* 80107068  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010706C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80107070  7C 7F 1B 78 */	mr r31, r3
/* 80107074  38 80 00 A9 */	li r4, 0xa9
/* 80107078  4B FB AE F5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010707C  7F E3 FB 78 */	mr r3, r31
/* 80107080  38 80 00 F7 */	li r4, 0xf7
/* 80107084  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80107088  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 8010708C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha
/* 80107090  38 A5 E8 70 */	addi r5, r5, m__19daAlinkHIO_board_c0@l
/* 80107094  A8 A5 00 14 */	lha r5, 0x14(r5)
/* 80107098  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 8010709C  4B FA 5F 71 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 801070A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801070A4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 801070A8  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 801070AC  3C 63 00 01 */	addis r3, r3, 1
/* 801070B0  38 03 80 00 */	addi r0, r3, -32768
/* 801070B4  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 801070B8  38 00 00 00 */	li r0, 0
/* 801070BC  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 801070C0  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 801070C4  38 60 00 01 */	li r3, 1
/* 801070C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801070CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801070D0  7C 08 03 A6 */	mtlr r0
/* 801070D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801070D8  4E 80 00 20 */	blr 
