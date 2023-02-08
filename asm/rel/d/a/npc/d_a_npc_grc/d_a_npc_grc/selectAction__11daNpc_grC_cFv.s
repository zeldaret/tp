lbl_809CD868:
/* 809CD868  3C 80 80 9D */	lis r4, cNullVec__6Z2Calc@ha /* 0x809CF81C@ha */
/* 809CD86C  38 C4 F8 1C */	addi r6, r4, cNullVec__6Z2Calc@l /* 0x809CF81C@l */
/* 809CD870  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 809CD874  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 809CD878  80 85 00 00 */	lwz r4, 0(r5)
/* 809CD87C  80 05 00 04 */	lwz r0, 4(r5)
/* 809CD880  90 83 0E 00 */	stw r4, 0xe00(r3)
/* 809CD884  90 03 0E 04 */	stw r0, 0xe04(r3)
/* 809CD888  80 05 00 08 */	lwz r0, 8(r5)
/* 809CD88C  90 03 0E 08 */	stw r0, 0xe08(r3)
/* 809CD890  3C 80 80 9D */	lis r4, m__17daNpc_grC_Param_c@ha /* 0x809CF51C@ha */
/* 809CD894  38 84 F5 1C */	addi r4, r4, m__17daNpc_grC_Param_c@l /* 0x809CF51C@l */
/* 809CD898  88 04 00 6A */	lbz r0, 0x6a(r4)
/* 809CD89C  28 00 00 00 */	cmplwi r0, 0
/* 809CD8A0  41 82 00 20 */	beq lbl_809CD8C0
/* 809CD8A4  80 86 01 C4 */	lwz r4, 0x1c4(r6)
/* 809CD8A8  80 06 01 C8 */	lwz r0, 0x1c8(r6)
/* 809CD8AC  90 83 0E 00 */	stw r4, 0xe00(r3)
/* 809CD8B0  90 03 0E 04 */	stw r0, 0xe04(r3)
/* 809CD8B4  80 06 01 CC */	lwz r0, 0x1cc(r6)
/* 809CD8B8  90 03 0E 08 */	stw r0, 0xe08(r3)
/* 809CD8BC  48 00 00 9C */	b lbl_809CD958
lbl_809CD8C0:
/* 809CD8C0  88 03 0E 48 */	lbz r0, 0xe48(r3)
/* 809CD8C4  2C 00 00 03 */	cmpwi r0, 3
/* 809CD8C8  41 82 00 78 */	beq lbl_809CD940
/* 809CD8CC  40 80 00 14 */	bge lbl_809CD8E0
/* 809CD8D0  2C 00 00 01 */	cmpwi r0, 1
/* 809CD8D4  41 82 00 18 */	beq lbl_809CD8EC
/* 809CD8D8  40 80 00 30 */	bge lbl_809CD908
/* 809CD8DC  48 00 00 64 */	b lbl_809CD940
lbl_809CD8E0:
/* 809CD8E0  2C 00 00 05 */	cmpwi r0, 5
/* 809CD8E4  40 80 00 5C */	bge lbl_809CD940
/* 809CD8E8  48 00 00 3C */	b lbl_809CD924
lbl_809CD8EC:
/* 809CD8EC  80 86 01 D0 */	lwz r4, 0x1d0(r6)
/* 809CD8F0  80 06 01 D4 */	lwz r0, 0x1d4(r6)
/* 809CD8F4  90 83 0E 00 */	stw r4, 0xe00(r3)
/* 809CD8F8  90 03 0E 04 */	stw r0, 0xe04(r3)
/* 809CD8FC  80 06 01 D8 */	lwz r0, 0x1d8(r6)
/* 809CD900  90 03 0E 08 */	stw r0, 0xe08(r3)
/* 809CD904  48 00 00 54 */	b lbl_809CD958
lbl_809CD908:
/* 809CD908  80 86 01 DC */	lwz r4, 0x1dc(r6)
/* 809CD90C  80 06 01 E0 */	lwz r0, 0x1e0(r6)
/* 809CD910  90 83 0E 00 */	stw r4, 0xe00(r3)
/* 809CD914  90 03 0E 04 */	stw r0, 0xe04(r3)
/* 809CD918  80 06 01 E4 */	lwz r0, 0x1e4(r6)
/* 809CD91C  90 03 0E 08 */	stw r0, 0xe08(r3)
/* 809CD920  48 00 00 38 */	b lbl_809CD958
lbl_809CD924:
/* 809CD924  80 86 01 E8 */	lwz r4, 0x1e8(r6)
/* 809CD928  80 06 01 EC */	lwz r0, 0x1ec(r6)
/* 809CD92C  90 83 0E 00 */	stw r4, 0xe00(r3)
/* 809CD930  90 03 0E 04 */	stw r0, 0xe04(r3)
/* 809CD934  80 06 01 F0 */	lwz r0, 0x1f0(r6)
/* 809CD938  90 03 0E 08 */	stw r0, 0xe08(r3)
/* 809CD93C  48 00 00 1C */	b lbl_809CD958
lbl_809CD940:
/* 809CD940  80 86 01 F4 */	lwz r4, 0x1f4(r6)
/* 809CD944  80 06 01 F8 */	lwz r0, 0x1f8(r6)
/* 809CD948  90 83 0E 00 */	stw r4, 0xe00(r3)
/* 809CD94C  90 03 0E 04 */	stw r0, 0xe04(r3)
/* 809CD950  80 06 01 FC */	lwz r0, 0x1fc(r6)
/* 809CD954  90 03 0E 08 */	stw r0, 0xe08(r3)
lbl_809CD958:
/* 809CD958  38 60 00 01 */	li r3, 1
/* 809CD95C  4E 80 00 20 */	blr 
