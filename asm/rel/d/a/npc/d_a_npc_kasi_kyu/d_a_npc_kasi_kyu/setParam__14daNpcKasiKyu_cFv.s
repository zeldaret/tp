lbl_80A224C8:
/* 80A224C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A224CC  7C 08 02 A6 */	mflr r0
/* 80A224D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A224D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A224D8  7C 7F 1B 78 */	mr r31, r3
/* 80A224DC  3C 80 80 A2 */	lis r4, m__20daNpcKasiKyu_Param_c@ha
/* 80A224E0  38 A4 58 B8 */	addi r5, r4, m__20daNpcKasiKyu_Param_c@l
/* 80A224E4  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80A224E8  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80A224EC  4B 73 1D 8C */	b getDistTableIdx__8daNpcF_cFii
/* 80A224F0  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A224F4  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A224F8  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A224FC  7F E3 FB 78 */	mr r3, r31
/* 80A22500  3C 80 80 A2 */	lis r4, m__20daNpcKasiKyu_Param_c@ha
/* 80A22504  38 A4 58 B8 */	addi r5, r4, m__20daNpcKasiKyu_Param_c@l
/* 80A22508  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80A2250C  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80A22510  4B 73 1D 68 */	b getDistTableIdx__8daNpcF_cFii
/* 80A22514  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A22518  38 00 00 0A */	li r0, 0xa
/* 80A2251C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A22520  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A22524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A22528  7C 08 03 A6 */	mtlr r0
/* 80A2252C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A22530  4E 80 00 20 */	blr 
