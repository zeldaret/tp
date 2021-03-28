lbl_80B7C71C:
/* 80B7C71C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B7C720  7C 08 02 A6 */	mflr r0
/* 80B7C724  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B7C728  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7C72C  4B 7E 5A AC */	b _savegpr_28
/* 80B7C730  7C 7E 1B 78 */	mr r30, r3
/* 80B7C734  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B7C738  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l
/* 80B7C73C  4B 5D 61 8C */	b initialize__8daNpcF_cFv
/* 80B7C740  80 7E 0B E4 */	lwz r3, 0xbe4(r30)
/* 80B7C744  4B 5D 3F F4 */	b initialize__15daNpcF_MatAnm_cFv
/* 80B7C748  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 80B7C74C  4B 5D 41 B4 */	b initialize__13daNpcF_Path_cFv
/* 80B7C750  88 1E 14 E8 */	lbz r0, 0x14e8(r30)
/* 80B7C754  28 00 00 04 */	cmplwi r0, 4
/* 80B7C758  41 82 00 30 */	beq lbl_80B7C788
/* 80B7C75C  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 80B7C760  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B7C764  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B7C768  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B7C76C  7C 05 07 74 */	extsb r5, r0
/* 80B7C770  38 C0 00 00 */	li r6, 0
/* 80B7C774  4B 5D 41 E8 */	b setPathInfo__13daNpcF_Path_cFUcScUc
/* 80B7C778  2C 03 00 00 */	cmpwi r3, 0
/* 80B7C77C  41 82 00 0C */	beq lbl_80B7C788
/* 80B7C780  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80B7C784  D0 1E 0C 20 */	stfs f0, 0xc20(r30)
lbl_80B7C788:
/* 80B7C788  38 7E 12 48 */	addi r3, r30, 0x1248
/* 80B7C78C  4B 5D 48 AC */	b initialize__15daNpcF_Lookat_cFv
/* 80B7C790  3B 80 00 00 */	li r28, 0
/* 80B7C794  3B A0 00 00 */	li r29, 0
lbl_80B7C798:
/* 80B7C798  38 7D 13 1C */	addi r3, r29, 0x131c
/* 80B7C79C  7C 7E 1A 14 */	add r3, r30, r3
/* 80B7C7A0  4B 5D 3F 10 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80B7C7A4  3B 9C 00 01 */	addi r28, r28, 1
/* 80B7C7A8  2C 1C 00 03 */	cmpwi r28, 3
/* 80B7C7AC  3B BD 00 08 */	addi r29, r29, 8
/* 80B7C7B0  41 80 FF E8 */	blt lbl_80B7C798
/* 80B7C7B4  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B7C7B8  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B7C7BC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B7C7C0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7C7C4  90 7E 14 74 */	stw r3, 0x1474(r30)
/* 80B7C7C8  90 1E 14 78 */	stw r0, 0x1478(r30)
/* 80B7C7CC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B7C7D0  90 1E 14 7C */	stw r0, 0x147c(r30)
/* 80B7C7D4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B7C7D8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7C7DC  90 7E 14 80 */	stw r3, 0x1480(r30)
/* 80B7C7E0  90 1E 14 84 */	stw r0, 0x1484(r30)
/* 80B7C7E4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B7C7E8  90 1E 14 88 */	stw r0, 0x1488(r30)
/* 80B7C7EC  38 60 00 00 */	li r3, 0
/* 80B7C7F0  90 7E 14 D0 */	stw r3, 0x14d0(r30)
/* 80B7C7F4  90 7E 14 D4 */	stw r3, 0x14d4(r30)
/* 80B7C7F8  90 7E 14 D8 */	stw r3, 0x14d8(r30)
/* 80B7C7FC  90 7E 14 DC */	stw r3, 0x14dc(r30)
/* 80B7C800  38 00 FF FF */	li r0, -1
/* 80B7C804  B0 1E 14 E4 */	sth r0, 0x14e4(r30)
/* 80B7C808  B0 7E 14 E6 */	sth r3, 0x14e6(r30)
/* 80B7C80C  98 7E 09 F2 */	stb r3, 0x9f2(r30)
/* 80B7C810  90 1E 14 CC */	stw r0, 0x14cc(r30)
/* 80B7C814  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80B7C818  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B7C81C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80B7C820  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B7C824  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80B7C828  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B7C82C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B7C830  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80B7C834  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B7C838  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80B7C83C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B7C840  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80B7C844  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80B7C848  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 80B7C84C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B7C850  B0 7E 04 E0 */	sth r3, 0x4e0(r30)
/* 80B7C854  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80B7C858  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80B7C85C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B7C860  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80B7C864  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80B7C868  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80B7C86C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80B7C870  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80B7C874  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B7C878  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B7C87C  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80B7C880  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80B7C884  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80B7C888  B0 1E 08 F0 */	sth r0, 0x8f0(r30)
/* 80B7C88C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B7C890  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80B7C894  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80B7C898  B0 1E 08 F4 */	sth r0, 0x8f4(r30)
/* 80B7C89C  A8 1E 08 F0 */	lha r0, 0x8f0(r30)
/* 80B7C8A0  B0 1E 08 F6 */	sth r0, 0x8f6(r30)
/* 80B7C8A4  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80B7C8A8  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 80B7C8AC  A8 1E 08 F4 */	lha r0, 0x8f4(r30)
/* 80B7C8B0  B0 1E 08 FA */	sth r0, 0x8fa(r30)
/* 80B7C8B4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B7C8B8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B7C8BC  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80B7C8C0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B7C8C4  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80B7C8C8  88 7E 14 E8 */	lbz r3, 0x14e8(r30)
/* 80B7C8CC  28 03 00 01 */	cmplwi r3, 1
/* 80B7C8D0  40 82 00 10 */	bne lbl_80B7C8E0
/* 80B7C8D4  80 1E 0C 1C */	lwz r0, 0xc1c(r30)
/* 80B7C8D8  28 00 00 00 */	cmplwi r0, 0
/* 80B7C8DC  40 82 00 0C */	bne lbl_80B7C8E8
lbl_80B7C8E0:
/* 80B7C8E0  28 03 00 02 */	cmplwi r3, 2
/* 80B7C8E4  40 82 00 10 */	bne lbl_80B7C8F4
lbl_80B7C8E8:
/* 80B7C8E8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B7C8EC  64 00 08 00 */	oris r0, r0, 0x800
/* 80B7C8F0  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80B7C8F4:
/* 80B7C8F4  38 00 00 00 */	li r0, 0
/* 80B7C8F8  90 1E 14 F0 */	stw r0, 0x14f0(r30)
/* 80B7C8FC  90 1E 15 10 */	stw r0, 0x1510(r30)
/* 80B7C900  88 1E 14 E8 */	lbz r0, 0x14e8(r30)
/* 80B7C904  28 00 00 03 */	cmplwi r0, 3
/* 80B7C908  40 82 00 18 */	bne lbl_80B7C920
/* 80B7C90C  3C 60 80 B9 */	lis r3, l_myName@ha
/* 80B7C910  38 63 D3 2C */	addi r3, r3, l_myName@l
/* 80B7C914  80 03 00 08 */	lwz r0, 8(r3)
/* 80B7C918  90 1E 14 FC */	stw r0, 0x14fc(r30)
/* 80B7C91C  48 00 00 2C */	b lbl_80B7C948
lbl_80B7C920:
/* 80B7C920  28 00 00 02 */	cmplwi r0, 2
/* 80B7C924  40 82 00 18 */	bne lbl_80B7C93C
/* 80B7C928  3C 60 80 B9 */	lis r3, l_myName@ha
/* 80B7C92C  38 63 D3 2C */	addi r3, r3, l_myName@l
/* 80B7C930  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B7C934  90 1E 14 FC */	stw r0, 0x14fc(r30)
/* 80B7C938  48 00 00 10 */	b lbl_80B7C948
lbl_80B7C93C:
/* 80B7C93C  3C 60 80 B9 */	lis r3, l_myName@ha
/* 80B7C940  80 03 D3 2C */	lwz r0, l_myName@l(r3)
/* 80B7C944  90 1E 14 FC */	stw r0, 0x14fc(r30)
lbl_80B7C948:
/* 80B7C948  38 80 00 00 */	li r4, 0
/* 80B7C94C  90 9E 15 14 */	stw r4, 0x1514(r30)
/* 80B7C950  90 9E 15 1C */	stw r4, 0x151c(r30)
/* 80B7C954  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B7C958  D0 1E 15 28 */	stfs f0, 0x1528(r30)
/* 80B7C95C  C0 3E 15 28 */	lfs f1, 0x1528(r30)
/* 80B7C960  38 7F 00 00 */	addi r3, r31, 0
/* 80B7C964  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B7C968  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B7C96C  D0 1E 15 24 */	stfs f0, 0x1524(r30)
/* 80B7C970  98 9E 15 20 */	stb r4, 0x1520(r30)
/* 80B7C974  98 9E 15 21 */	stb r4, 0x1521(r30)
/* 80B7C978  B0 9E 15 30 */	sth r4, 0x1530(r30)
/* 80B7C97C  B0 9E 15 32 */	sth r4, 0x1532(r30)
/* 80B7C980  B0 9E 15 34 */	sth r4, 0x1534(r30)
/* 80B7C984  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80B7C988  B0 1E 15 36 */	sth r0, 0x1536(r30)
/* 80B7C98C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B7C990  B0 1E 15 38 */	sth r0, 0x1538(r30)
/* 80B7C994  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80B7C998  B0 1E 15 3A */	sth r0, 0x153a(r30)
/* 80B7C99C  98 9E 15 3C */	stb r4, 0x153c(r30)
/* 80B7C9A0  98 9E 15 3D */	stb r4, 0x153d(r30)
/* 80B7C9A4  98 9E 15 3E */	stb r4, 0x153e(r30)
/* 80B7C9A8  90 9E 15 40 */	stw r4, 0x1540(r30)
/* 80B7C9AC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B7C9B0  D0 1E 15 44 */	stfs f0, 0x1544(r30)
/* 80B7C9B4  D0 1E 15 48 */	stfs f0, 0x1548(r30)
/* 80B7C9B8  D0 1E 15 4C */	stfs f0, 0x154c(r30)
/* 80B7C9BC  90 9E 15 70 */	stw r4, 0x1570(r30)
/* 80B7C9C0  98 9E 15 92 */	stb r4, 0x1592(r30)
/* 80B7C9C4  98 9E 15 93 */	stb r4, 0x1593(r30)
/* 80B7C9C8  98 9E 15 90 */	stb r4, 0x1590(r30)
/* 80B7C9CC  98 9E 15 50 */	stb r4, 0x1550(r30)
/* 80B7C9D0  90 9E 15 54 */	stw r4, 0x1554(r30)
/* 80B7C9D4  D0 1E 15 60 */	stfs f0, 0x1560(r30)
/* 80B7C9D8  D0 1E 15 64 */	stfs f0, 0x1564(r30)
/* 80B7C9DC  D0 1E 15 68 */	stfs f0, 0x1568(r30)
/* 80B7C9E0  38 00 00 D2 */	li r0, 0xd2
/* 80B7C9E4  90 1E 15 5C */	stw r0, 0x155c(r30)
/* 80B7C9E8  7F C3 F3 78 */	mr r3, r30
/* 80B7C9EC  4B FF FB 39 */	bl getActionTypeFromParam__11daNpc_zrA_cFv
/* 80B7C9F0  98 7E 15 76 */	stb r3, 0x1576(r30)
/* 80B7C9F4  38 00 00 00 */	li r0, 0
/* 80B7C9F8  98 1E 15 77 */	stb r0, 0x1577(r30)
/* 80B7C9FC  98 1E 15 91 */	stb r0, 0x1591(r30)
/* 80B7CA00  98 1E 15 94 */	stb r0, 0x1594(r30)
/* 80B7CA04  98 1E 15 0C */	stb r0, 0x150c(r30)
/* 80B7CA08  90 1E 15 98 */	stw r0, 0x1598(r30)
/* 80B7CA0C  98 1E 15 C0 */	stb r0, 0x15c0(r30)
/* 80B7CA10  98 1E 15 C1 */	stb r0, 0x15c1(r30)
/* 80B7CA14  90 1E 14 F8 */	stw r0, 0x14f8(r30)
/* 80B7CA18  88 1E 14 E8 */	lbz r0, 0x14e8(r30)
/* 80B7CA1C  28 00 00 05 */	cmplwi r0, 5
/* 80B7CA20  40 82 00 28 */	bne lbl_80B7CA48
/* 80B7CA24  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B7CA28  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B7CA2C  40 82 00 10 */	bne lbl_80B7CA3C
/* 80B7CA30  38 00 00 01 */	li r0, 1
/* 80B7CA34  98 1E 00 FF */	stb r0, 0xff(r30)
/* 80B7CA38  48 00 00 34 */	b lbl_80B7CA6C
lbl_80B7CA3C:
/* 80B7CA3C  38 00 00 02 */	li r0, 2
/* 80B7CA40  98 1E 00 FF */	stb r0, 0xff(r30)
/* 80B7CA44  48 00 00 28 */	b lbl_80B7CA6C
lbl_80B7CA48:
/* 80B7CA48  28 00 00 00 */	cmplwi r0, 0
/* 80B7CA4C  40 82 00 20 */	bne lbl_80B7CA6C
/* 80B7CA50  7F C3 F3 78 */	mr r3, r30
/* 80B7CA54  4B FF FB 91 */	bl getMultiModeFromParam__11daNpc_zrA_cFv
/* 80B7CA58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B7CA5C  41 82 00 10 */	beq lbl_80B7CA6C
/* 80B7CA60  7F C3 F3 78 */	mr r3, r30
/* 80B7CA64  4B FF FB B1 */	bl getMultiNoFromParam__11daNpc_zrA_cFv
/* 80B7CA68  98 7E 00 FF */	stb r3, 0xff(r30)
lbl_80B7CA6C:
/* 80B7CA6C  38 00 00 01 */	li r0, 1
/* 80B7CA70  98 1E 09 EE */	stb r0, 0x9ee(r30)
/* 80B7CA74  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7CA78  4B 7E 57 AC */	b _restgpr_28
/* 80B7CA7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B7CA80  7C 08 03 A6 */	mtlr r0
/* 80B7CA84  38 21 00 20 */	addi r1, r1, 0x20
/* 80B7CA88  4E 80 00 20 */	blr 
