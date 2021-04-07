lbl_80AFE3A0:
/* 80AFE3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFE3A4  7C 08 02 A6 */	mflr r0
/* 80AFE3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFE3AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFE3B0  7C 7F 1B 78 */	mr r31, r3
/* 80AFE3B4  4B 65 45 15 */	bl initialize__8daNpcF_cFv
/* 80AFE3B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFE3BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFE3C0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80AFE3C4  3C 80 80 B0 */	lis r4, d_a_npc_theB__stringBase0@ha /* 0x80B00FA0@ha */
/* 80AFE3C8  38 84 0F A0 */	addi r4, r4, d_a_npc_theB__stringBase0@l /* 0x80B00FA0@l */
/* 80AFE3CC  38 84 00 76 */	addi r4, r4, 0x76
/* 80AFE3D0  4B 86 A5 C5 */	bl strcmp
/* 80AFE3D4  2C 03 00 00 */	cmpwi r3, 0
/* 80AFE3D8  40 82 00 10 */	bne lbl_80AFE3E8
/* 80AFE3DC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80AFE3E0  60 00 40 00 */	ori r0, r0, 0x4000
/* 80AFE3E4  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80AFE3E8:
/* 80AFE3E8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AFE3EC  4B 65 23 4D */	bl initialize__15daNpcF_MatAnm_cFv
/* 80AFE3F0  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80AFE3F4  4B 65 2C 45 */	bl initialize__15daNpcF_Lookat_cFv
/* 80AFE3F8  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80AFE3FC  4B 65 22 B5 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AFE400  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AFE404  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AFE408  80 64 00 00 */	lwz r3, 0(r4)
/* 80AFE40C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AFE410  90 7F 0D C0 */	stw r3, 0xdc0(r31)
/* 80AFE414  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80AFE418  80 04 00 08 */	lwz r0, 8(r4)
/* 80AFE41C  90 1F 0D C8 */	stw r0, 0xdc8(r31)
/* 80AFE420  80 64 00 00 */	lwz r3, 0(r4)
/* 80AFE424  80 04 00 04 */	lwz r0, 4(r4)
/* 80AFE428  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80AFE42C  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80AFE430  80 04 00 08 */	lwz r0, 8(r4)
/* 80AFE434  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80AFE438  38 60 00 00 */	li r3, 0
/* 80AFE43C  90 7F 0D E0 */	stw r3, 0xde0(r31)
/* 80AFE440  90 7F 0D E4 */	stw r3, 0xde4(r31)
/* 80AFE444  90 7F 0D E8 */	stw r3, 0xde8(r31)
/* 80AFE448  90 7F 0D EC */	stw r3, 0xdec(r31)
/* 80AFE44C  38 00 FF FF */	li r0, -1
/* 80AFE450  B0 1F 0E 00 */	sth r0, 0xe00(r31)
/* 80AFE454  B0 7F 0E 02 */	sth r3, 0xe02(r31)
/* 80AFE458  98 7F 0E 0E */	stb r3, 0xe0e(r31)
/* 80AFE45C  98 7F 0E 0F */	stb r3, 0xe0f(r31)
/* 80AFE460  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80AFE464  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80AFE468  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80AFE46C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80AFE470  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80AFE474  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80AFE478  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AFE47C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80AFE480  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AFE484  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80AFE488  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AFE48C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80AFE490  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80AFE494  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 80AFE498  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80AFE49C  B0 7F 04 E0 */	sth r3, 0x4e0(r31)
/* 80AFE4A0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AFE4A4  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80AFE4A8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AFE4AC  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80AFE4B0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AFE4B4  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80AFE4B8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AFE4BC  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80AFE4C0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AFE4C4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80AFE4C8  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AFE4CC  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80AFE4D0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AFE4D4  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80AFE4D8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AFE4DC  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80AFE4E0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AFE4E4  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80AFE4E8  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80AFE4EC  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80AFE4F0  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AFE4F4  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80AFE4F8  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80AFE4FC  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80AFE500  3C 60 80 B0 */	lis r3, lit_4248@ha /* 0x80B00DF0@ha */
/* 80AFE504  C0 03 0D F0 */	lfs f0, lit_4248@l(r3)  /* 0x80B00DF0@l */
/* 80AFE508  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AFE50C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AFE510  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AFE514  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AFE518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFE51C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFE520  38 63 09 78 */	addi r3, r3, 0x978
/* 80AFE524  38 80 00 37 */	li r4, 0x37
/* 80AFE528  4B 53 66 C1 */	bl isSwitch__12dSv_danBit_cCFi
/* 80AFE52C  98 7F 0E 11 */	stb r3, 0xe11(r31)
/* 80AFE530  7F E3 FB 78 */	mr r3, r31
/* 80AFE534  4B 65 42 39 */	bl setMtx__8daNpcF_cFv
/* 80AFE538  3C 60 80 B0 */	lis r3, lit_4770@ha /* 0x80B01190@ha */
/* 80AFE53C  38 83 11 90 */	addi r4, r3, lit_4770@l /* 0x80B01190@l */
/* 80AFE540  80 64 00 00 */	lwz r3, 0(r4)
/* 80AFE544  80 04 00 04 */	lwz r0, 4(r4)
/* 80AFE548  90 7F 0D C0 */	stw r3, 0xdc0(r31)
/* 80AFE54C  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80AFE550  80 04 00 08 */	lwz r0, 8(r4)
/* 80AFE554  90 1F 0D C8 */	stw r0, 0xdc8(r31)
/* 80AFE558  38 00 00 01 */	li r0, 1
/* 80AFE55C  98 1F 09 EE */	stb r0, 0x9ee(r31)
/* 80AFE560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFE564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFE568  7C 08 03 A6 */	mtlr r0
/* 80AFE56C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFE570  4E 80 00 20 */	blr 
