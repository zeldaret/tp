lbl_80B96268:
/* 80B96268  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9626C  7C 08 02 A6 */	mflr r0
/* 80B96270  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B96274  39 61 00 20 */	addi r11, r1, 0x20
/* 80B96278  4B 7C BF 61 */	bl _savegpr_28
/* 80B9627C  7C 7E 1B 78 */	mr r30, r3
/* 80B96280  3C 80 80 BA */	lis r4, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B96284  3B E4 AF EC */	addi r31, r4, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B96288  4B 5B C6 41 */	bl initialize__8daNpcF_cFv
/* 80B9628C  80 7E 0B D8 */	lwz r3, 0xbd8(r30)
/* 80B96290  4B 5B A4 A9 */	bl initialize__15daNpcF_MatAnm_cFv
/* 80B96294  38 7E 0C 90 */	addi r3, r30, 0xc90
/* 80B96298  4B 5B A6 69 */	bl initialize__13daNpcF_Path_cFv
/* 80B9629C  38 7E 0C 90 */	addi r3, r30, 0xc90
/* 80B962A0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B962A4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B962A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B962AC  7C 05 07 74 */	extsb r5, r0
/* 80B962B0  38 C0 00 00 */	li r6, 0
/* 80B962B4  4B 5B A6 A9 */	bl setPathInfo__13daNpcF_Path_cFUcScUc
/* 80B962B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B962BC  41 82 00 0C */	beq lbl_80B962C8
/* 80B962C0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80B962C4  D0 1E 0C 98 */	stfs f0, 0xc98(r30)
lbl_80B962C8:
/* 80B962C8  38 7E 0B E4 */	addi r3, r30, 0xbe4
/* 80B962CC  4B 5B AD 6D */	bl initialize__15daNpcF_Lookat_cFv
/* 80B962D0  3B 80 00 00 */	li r28, 0
/* 80B962D4  3B A0 00 00 */	li r29, 0
lbl_80B962D8:
/* 80B962D8  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B962DC  7C 7E 1A 14 */	add r3, r30, r3
/* 80B962E0  4B 5B A3 D1 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B962E4  3B 9C 00 01 */	addi r28, r28, 1
/* 80B962E8  2C 1C 00 02 */	cmpwi r28, 2
/* 80B962EC  3B BD 00 08 */	addi r29, r29, 8
/* 80B962F0  41 80 FF E8 */	blt lbl_80B962D8
/* 80B962F4  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B962F8  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B962FC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B96300  80 04 00 04 */	lwz r0, 4(r4)
/* 80B96304  90 7E 14 00 */	stw r3, 0x1400(r30)
/* 80B96308  90 1E 14 04 */	stw r0, 0x1404(r30)
/* 80B9630C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B96310  90 1E 14 08 */	stw r0, 0x1408(r30)
/* 80B96314  80 64 00 00 */	lwz r3, 0(r4)
/* 80B96318  80 04 00 04 */	lwz r0, 4(r4)
/* 80B9631C  90 7E 14 0C */	stw r3, 0x140c(r30)
/* 80B96320  90 1E 14 10 */	stw r0, 0x1410(r30)
/* 80B96324  80 04 00 08 */	lwz r0, 8(r4)
/* 80B96328  90 1E 14 14 */	stw r0, 0x1414(r30)
/* 80B9632C  38 60 00 00 */	li r3, 0
/* 80B96330  90 7E 14 34 */	stw r3, 0x1434(r30)
/* 80B96334  90 7E 14 38 */	stw r3, 0x1438(r30)
/* 80B96338  90 7E 14 3C */	stw r3, 0x143c(r30)
/* 80B9633C  90 7E 14 40 */	stw r3, 0x1440(r30)
/* 80B96340  38 00 FF FF */	li r0, -1
/* 80B96344  B0 1E 14 48 */	sth r0, 0x1448(r30)
/* 80B96348  B0 7E 14 4A */	sth r3, 0x144a(r30)
/* 80B9634C  98 7E 09 F2 */	stb r3, 0x9f2(r30)
/* 80B96350  88 1E 14 4E */	lbz r0, 0x144e(r30)
/* 80B96354  28 00 00 01 */	cmplwi r0, 1
/* 80B96358  40 82 00 30 */	bne lbl_80B96388
/* 80B9635C  98 7E 14 4D */	stb r3, 0x144d(r30)
/* 80B96360  B0 7E 04 6A */	sth r3, 0x46a(r30)
/* 80B96364  3C 60 80 BA */	lis r3, lit_5325@ha /* 0x80B9B524@ha */
/* 80B96368  38 83 B5 24 */	addi r4, r3, lit_5325@l /* 0x80B9B524@l */
/* 80B9636C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B96370  80 04 00 04 */	lwz r0, 4(r4)
/* 80B96374  90 7E 14 00 */	stw r3, 0x1400(r30)
/* 80B96378  90 1E 14 04 */	stw r0, 0x1404(r30)
/* 80B9637C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B96380  90 1E 14 08 */	stw r0, 0x1408(r30)
/* 80B96384  48 00 00 38 */	b lbl_80B963BC
lbl_80B96388:
/* 80B96388  28 00 00 02 */	cmplwi r0, 2
/* 80B9638C  41 82 00 0C */	beq lbl_80B96398
/* 80B96390  28 00 00 03 */	cmplwi r0, 3
/* 80B96394  40 82 00 18 */	bne lbl_80B963AC
lbl_80B96398:
/* 80B96398  38 00 00 00 */	li r0, 0
/* 80B9639C  98 1E 14 4D */	stb r0, 0x144d(r30)
/* 80B963A0  38 00 00 FF */	li r0, 0xff
/* 80B963A4  B0 1E 04 6A */	sth r0, 0x46a(r30)
/* 80B963A8  48 00 00 14 */	b lbl_80B963BC
lbl_80B963AC:
/* 80B963AC  38 00 00 01 */	li r0, 1
/* 80B963B0  98 1E 14 4D */	stb r0, 0x144d(r30)
/* 80B963B4  38 00 00 FF */	li r0, 0xff
/* 80B963B8  B0 1E 04 6A */	sth r0, 0x46a(r30)
lbl_80B963BC:
/* 80B963BC  7F C3 F3 78 */	mr r3, r30
/* 80B963C0  38 80 00 00 */	li r4, 0
/* 80B963C4  48 00 0A B9 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B963C8  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80B963CC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B963D0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80B963D4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B963D8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80B963DC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B963E0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B963E4  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80B963E8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B963EC  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80B963F0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B963F4  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80B963F8  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80B963FC  38 80 00 00 */	li r4, 0
/* 80B96400  B0 9E 04 DC */	sth r4, 0x4dc(r30)
/* 80B96404  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B96408  B0 9E 04 E0 */	sth r4, 0x4e0(r30)
/* 80B9640C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80B96410  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80B96414  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B96418  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80B9641C  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80B96420  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80B96424  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80B96428  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80B9642C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B96430  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B96434  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80B96438  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80B9643C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80B96440  B0 1E 08 F0 */	sth r0, 0x8f0(r30)
/* 80B96444  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B96448  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80B9644C  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80B96450  B0 1E 08 F4 */	sth r0, 0x8f4(r30)
/* 80B96454  A8 1E 08 F0 */	lha r0, 0x8f0(r30)
/* 80B96458  B0 1E 08 F6 */	sth r0, 0x8f6(r30)
/* 80B9645C  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80B96460  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 80B96464  A8 1E 08 F4 */	lha r0, 0x8f4(r30)
/* 80B96468  B0 1E 08 FA */	sth r0, 0x8fa(r30)
/* 80B9646C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B96470  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B96474  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80B96478  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B9647C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80B96480  38 00 FF FF */	li r0, -1
/* 80B96484  90 1E 14 30 */	stw r0, 0x1430(r30)
/* 80B96488  38 00 00 5A */	li r0, 0x5a
/* 80B9648C  90 1E 14 60 */	stw r0, 0x1460(r30)
/* 80B96490  D0 1E 14 64 */	stfs f0, 0x1464(r30)
/* 80B96494  98 9E 14 4F */	stb r4, 0x144f(r30)
/* 80B96498  D0 1E 14 50 */	stfs f0, 0x1450(r30)
/* 80B9649C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80B964A0  B0 1E 14 58 */	sth r0, 0x1458(r30)
/* 80B964A4  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80B964A8  3C 63 00 01 */	addis r3, r3, 1
/* 80B964AC  38 03 80 00 */	addi r0, r3, -32768
/* 80B964B0  B0 1E 14 5A */	sth r0, 0x145a(r30)
/* 80B964B4  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80B964B8  B0 1E 14 5C */	sth r0, 0x145c(r30)
/* 80B964BC  90 9E 14 94 */	stw r4, 0x1494(r30)
/* 80B964C0  90 9E 14 98 */	stw r4, 0x1498(r30)
/* 80B964C4  90 9E 14 9C */	stw r4, 0x149c(r30)
/* 80B964C8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B964CC  D0 1E 14 A0 */	stfs f0, 0x14a0(r30)
/* 80B964D0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B964D4  D0 1E 14 A4 */	stfs f0, 0x14a4(r30)
/* 80B964D8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B964DC  D0 1E 14 A8 */	stfs f0, 0x14a8(r30)
/* 80B964E0  C0 3E 14 A4 */	lfs f1, 0x14a4(r30)
/* 80B964E4  38 7F 00 00 */	addi r3, r31, 0
/* 80B964E8  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 80B964EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B964F0  D0 1E 14 A4 */	stfs f0, 0x14a4(r30)
/* 80B964F4  B0 9E 14 B8 */	sth r4, 0x14b8(r30)
/* 80B964F8  B0 9E 14 BA */	sth r4, 0x14ba(r30)
/* 80B964FC  B0 9E 14 BC */	sth r4, 0x14bc(r30)
/* 80B96500  98 9E 14 91 */	stb r4, 0x1491(r30)
/* 80B96504  90 9E 14 C0 */	stw r4, 0x14c0(r30)
/* 80B96508  98 9E 14 C4 */	stb r4, 0x14c4(r30)
/* 80B9650C  38 00 00 01 */	li r0, 1
/* 80B96510  98 1E 09 EE */	stb r0, 0x9ee(r30)
/* 80B96514  39 61 00 20 */	addi r11, r1, 0x20
/* 80B96518  4B 7C BD 0D */	bl _restgpr_28
/* 80B9651C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B96520  7C 08 03 A6 */	mtlr r0
/* 80B96524  38 21 00 20 */	addi r1, r1, 0x20
/* 80B96528  4E 80 00 20 */	blr 
