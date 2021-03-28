lbl_80A0F78C:
/* 80A0F78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0F790  7C 08 02 A6 */	mflr r0
/* 80A0F794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0F798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0F79C  7C 7F 1B 78 */	mr r31, r3
/* 80A0F7A0  4B 74 31 28 */	b initialize__8daNpcF_cFv
/* 80A0F7A4  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80A0F7A8  4B 74 0F 90 */	b initialize__15daNpcF_MatAnm_cFv
/* 80A0F7AC  38 7F 0B E4 */	addi r3, r31, 0xbe4
/* 80A0F7B0  4B 74 18 88 */	b initialize__15daNpcF_Lookat_cFv
/* 80A0F7B4  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80A0F7B8  4B 74 0E F8 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80A0F7BC  38 A0 00 00 */	li r5, 0
/* 80A0F7C0  90 BF 0D FC */	stw r5, 0xdfc(r31)
/* 80A0F7C4  90 BF 0E 00 */	stw r5, 0xe00(r31)
/* 80A0F7C8  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80A0F7CC  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80A0F7D0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A0F7D4  80 04 00 04 */	lwz r0, 4(r4)
/* 80A0F7D8  90 7F 0D C8 */	stw r3, 0xdc8(r31)
/* 80A0F7DC  90 1F 0D CC */	stw r0, 0xdcc(r31)
/* 80A0F7E0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A0F7E4  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80A0F7E8  38 00 FF FF */	li r0, -1
/* 80A0F7EC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A0F7F0  B0 BF 0E 1E */	sth r5, 0xe1e(r31)
/* 80A0F7F4  90 1F 0D F8 */	stw r0, 0xdf8(r31)
/* 80A0F7F8  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 80A0F7FC  3C 60 80 A1 */	lis r3, lit_4415@ha
/* 80A0F800  C0 03 3E F0 */	lfs f0, lit_4415@l(r3)
/* 80A0F804  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 80A0F808  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80A0F80C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A0F810  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A0F814  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A0F818  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A0F81C  88 1F 0E 21 */	lbz r0, 0xe21(r31)
/* 80A0F820  2C 00 00 01 */	cmpwi r0, 1
/* 80A0F824  41 82 00 3C */	beq lbl_80A0F860
/* 80A0F828  40 80 00 10 */	bge lbl_80A0F838
/* 80A0F82C  2C 00 00 00 */	cmpwi r0, 0
/* 80A0F830  40 80 00 14 */	bge lbl_80A0F844
/* 80A0F834  48 00 00 A0 */	b lbl_80A0F8D4
lbl_80A0F838:
/* 80A0F838  2C 00 00 03 */	cmpwi r0, 3
/* 80A0F83C  40 80 00 98 */	bge lbl_80A0F8D4
/* 80A0F840  48 00 00 5C */	b lbl_80A0F89C
lbl_80A0F844:
/* 80A0F844  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80A0F848  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A0F84C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80A0F850  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A0F854  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80A0F858  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A0F85C  48 00 00 78 */	b lbl_80A0F8D4
lbl_80A0F860:
/* 80A0F860  7F E3 FB 78 */	mr r3, r31
/* 80A0F864  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A0F868  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A0F86C  48 00 27 19 */	bl setPath__10daNpcIns_cFi
/* 80A0F870  7F E3 FB 78 */	mr r3, r31
/* 80A0F874  38 80 00 00 */	li r4, 0
/* 80A0F878  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 80A0F87C  48 00 2C 05 */	bl getTargetPoint__10daNpcIns_cFiP3Vec
/* 80A0F880  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80A0F884  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A0F888  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80A0F88C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A0F890  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80A0F894  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A0F898  48 00 00 3C */	b lbl_80A0F8D4
lbl_80A0F89C:
/* 80A0F89C  7F E3 FB 78 */	mr r3, r31
/* 80A0F8A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A0F8A4  54 04 46 3E */	srwi r4, r0, 0x18
/* 80A0F8A8  48 00 26 DD */	bl setPath__10daNpcIns_cFi
/* 80A0F8AC  7F E3 FB 78 */	mr r3, r31
/* 80A0F8B0  38 80 00 00 */	li r4, 0
/* 80A0F8B4  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 80A0F8B8  48 00 2B C9 */	bl getTargetPoint__10daNpcIns_cFiP3Vec
/* 80A0F8BC  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80A0F8C0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A0F8C4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80A0F8C8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A0F8CC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80A0F8D0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80A0F8D4:
/* 80A0F8D4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A0F8D8  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80A0F8DC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A0F8E0  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A0F8E4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A0F8E8  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80A0F8EC  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80A0F8F0  38 00 00 00 */	li r0, 0
/* 80A0F8F4  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80A0F8F8  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80A0F8FC  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80A0F900  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A0F904  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80A0F908  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A0F90C  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80A0F910  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A0F914  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80A0F918  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A0F91C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80A0F920  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A0F924  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A0F928  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A0F92C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80A0F930  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A0F934  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80A0F938  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A0F93C  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80A0F940  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A0F944  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80A0F948  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80A0F94C  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80A0F950  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A0F954  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80A0F958  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80A0F95C  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80A0F960  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A0F964  D0 1F 0E 10 */	stfs f0, 0xe10(r31)
/* 80A0F968  7F E3 FB 78 */	mr r3, r31
/* 80A0F96C  48 00 23 D9 */	bl setWaitAction__10daNpcIns_cFv
/* 80A0F970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0F974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0F978  7C 08 03 A6 */	mtlr r0
/* 80A0F97C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0F980  4E 80 00 20 */	blr 
