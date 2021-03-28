lbl_80A7D5C4:
/* 80A7D5C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A7D5C8  7C 08 02 A6 */	mflr r0
/* 80A7D5CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7D5D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A7D5D4  4B 8E 4C 08 */	b _savegpr_29
/* 80A7D5D8  7C 7F 1B 78 */	mr r31, r3
/* 80A7D5DC  4B 6D 52 EC */	b initialize__8daNpcF_cFv
/* 80A7D5E0  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80A7D5E4  4B 6D 31 54 */	b initialize__15daNpcF_MatAnm_cFv
/* 80A7D5E8  38 7F 0B E0 */	addi r3, r31, 0xbe0
/* 80A7D5EC  4B 6D 3A 4C */	b initialize__15daNpcF_Lookat_cFv
/* 80A7D5F0  3B A0 00 00 */	li r29, 0
/* 80A7D5F4  3B C0 00 00 */	li r30, 0
lbl_80A7D5F8:
/* 80A7D5F8  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7D5FC  7C 7F 1A 14 */	add r3, r31, r3
/* 80A7D600  4B 6D 30 B0 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80A7D604  3B BD 00 01 */	addi r29, r29, 1
/* 80A7D608  2C 1D 00 04 */	cmpwi r29, 4
/* 80A7D60C  3B DE 00 08 */	addi r30, r30, 8
/* 80A7D610  41 80 FF E8 */	blt lbl_80A7D5F8
/* 80A7D614  38 A0 00 00 */	li r5, 0
/* 80A7D618  90 BF 0D FC */	stw r5, 0xdfc(r31)
/* 80A7D61C  90 BF 0E 00 */	stw r5, 0xe00(r31)
/* 80A7D620  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80A7D624  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80A7D628  80 64 00 00 */	lwz r3, 0(r4)
/* 80A7D62C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A7D630  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80A7D634  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80A7D638  80 04 00 08 */	lwz r0, 8(r4)
/* 80A7D63C  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80A7D640  38 80 FF FF */	li r4, -1
/* 80A7D644  B0 9F 0E 06 */	sth r4, 0xe06(r31)
/* 80A7D648  B0 BF 0E 08 */	sth r5, 0xe08(r31)
/* 80A7D64C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80A7D650  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A7D654  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80A7D658  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A7D65C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80A7D660  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A7D664  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A7D668  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80A7D66C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A7D670  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A7D674  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A7D678  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80A7D67C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80A7D680  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 80A7D684  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A7D688  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 80A7D68C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A7D690  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80A7D694  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A7D698  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80A7D69C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A7D6A0  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80A7D6A4  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A7D6A8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80A7D6AC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A7D6B0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A7D6B4  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A7D6B8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80A7D6BC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A7D6C0  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80A7D6C4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A7D6C8  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80A7D6CC  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A7D6D0  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80A7D6D4  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80A7D6D8  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80A7D6DC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A7D6E0  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80A7D6E4  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80A7D6E8  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80A7D6EC  3C 60 80 A8 */	lis r3, lit_4338@ha
/* 80A7D6F0  C0 03 33 34 */	lfs f0, lit_4338@l(r3)
/* 80A7D6F4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A7D6F8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A7D6FC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A7D700  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A7D704  90 9F 0D F8 */	stw r4, 0xdf8(r31)
/* 80A7D708  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 80A7D70C  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 80A7D710  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80A7D714  38 00 00 01 */	li r0, 1
/* 80A7D718  98 1F 0E 0A */	stb r0, 0xe0a(r31)
/* 80A7D71C  7F E3 FB 78 */	mr r3, r31
/* 80A7D720  48 00 00 1D */	bl setWaitAction__11daNpcMoiR_cFv
/* 80A7D724  39 61 00 20 */	addi r11, r1, 0x20
/* 80A7D728  4B 8E 4B 00 */	b _restgpr_29
/* 80A7D72C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7D730  7C 08 03 A6 */	mtlr r0
/* 80A7D734  38 21 00 20 */	addi r1, r1, 0x20
/* 80A7D738  4E 80 00 20 */	blr 
