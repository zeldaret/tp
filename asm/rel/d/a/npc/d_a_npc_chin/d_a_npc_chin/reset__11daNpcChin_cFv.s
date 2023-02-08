lbl_8098DBBC:
/* 8098DBBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8098DBC0  7C 08 02 A6 */	mflr r0
/* 8098DBC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098DBC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8098DBCC  7C 7F 1B 78 */	mr r31, r3
/* 8098DBD0  4B 7C 4C F9 */	bl initialize__8daNpcF_cFv
/* 8098DBD4  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 8098DBD8  4B 7C 2B 61 */	bl initialize__15daNpcF_MatAnm_cFv
/* 8098DBDC  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 8098DBE0  4B 7C 34 59 */	bl initialize__15daNpcF_Lookat_cFv
/* 8098DBE4  38 7F 0E 70 */	addi r3, r31, 0xe70
/* 8098DBE8  4B 7C 2A C9 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 8098DBEC  38 A0 00 00 */	li r5, 0
/* 8098DBF0  90 BF 0D F8 */	stw r5, 0xdf8(r31)
/* 8098DBF4  90 BF 0D FC */	stw r5, 0xdfc(r31)
/* 8098DBF8  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8098DBFC  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8098DC00  80 64 00 00 */	lwz r3, 0(r4)
/* 8098DC04  80 04 00 04 */	lwz r0, 4(r4)
/* 8098DC08  90 7F 0D B8 */	stw r3, 0xdb8(r31)
/* 8098DC0C  90 1F 0D BC */	stw r0, 0xdbc(r31)
/* 8098DC10  80 04 00 08 */	lwz r0, 8(r4)
/* 8098DC14  90 1F 0D C0 */	stw r0, 0xdc0(r31)
/* 8098DC18  38 60 FF FF */	li r3, -1
/* 8098DC1C  B0 7F 0E 02 */	sth r3, 0xe02(r31)
/* 8098DC20  B0 BF 0E 04 */	sth r5, 0xe04(r31)
/* 8098DC24  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8098DC28  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 8098DC2C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8098DC30  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 8098DC34  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 8098DC38  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 8098DC3C  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 8098DC40  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 8098DC44  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 8098DC48  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 8098DC4C  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 8098DC50  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 8098DC54  90 7F 0D F4 */	stw r3, 0xdf4(r31)
/* 8098DC58  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 8098DC5C  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 8098DC60  28 00 00 00 */	cmplwi r0, 0
/* 8098DC64  41 82 00 10 */	beq lbl_8098DC74
/* 8098DC68  38 00 00 01 */	li r0, 1
/* 8098DC6C  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 8098DC70  48 00 00 08 */	b lbl_8098DC78
lbl_8098DC74:
/* 8098DC74  98 BF 0E 25 */	stb r5, 0xe25(r31)
lbl_8098DC78:
/* 8098DC78  38 00 00 00 */	li r0, 0
/* 8098DC7C  98 1F 0E 08 */	stb r0, 0xe08(r31)
/* 8098DC80  3C 60 80 99 */	lis r3, lit_3885@ha /* 0x8099197C@ha */
/* 8098DC84  C0 03 19 7C */	lfs f0, lit_3885@l(r3)  /* 0x8099197C@l */
/* 8098DC88  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 8098DC8C  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 8098DC90  3C 60 80 99 */	lis r3, lit_4844@ha /* 0x80992214@ha */
/* 8098DC94  38 83 22 14 */	addi r4, r3, lit_4844@l /* 0x80992214@l */
/* 8098DC98  80 64 00 00 */	lwz r3, 0(r4)
/* 8098DC9C  80 04 00 04 */	lwz r0, 4(r4)
/* 8098DCA0  90 61 00 08 */	stw r3, 8(r1)
/* 8098DCA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8098DCA8  80 04 00 08 */	lwz r0, 8(r4)
/* 8098DCAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8098DCB0  7F E3 FB 78 */	mr r3, r31
/* 8098DCB4  38 81 00 08 */	addi r4, r1, 8
/* 8098DCB8  48 00 09 0D */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098DCBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8098DCC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8098DCC4  7C 08 03 A6 */	mtlr r0
/* 8098DCC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8098DCCC  4E 80 00 20 */	blr 
