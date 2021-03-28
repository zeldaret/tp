lbl_809DC4F4:
/* 809DC4F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809DC4F8  7C 08 02 A6 */	mflr r0
/* 809DC4FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809DC500  39 61 00 20 */	addi r11, r1, 0x20
/* 809DC504  4B 98 5C D8 */	b _savegpr_29
/* 809DC508  7C 7F 1B 78 */	mr r31, r3
/* 809DC50C  4B 77 63 BC */	b initialize__8daNpcF_cFv
/* 809DC510  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 809DC514  4B 77 42 24 */	b initialize__15daNpcF_MatAnm_cFv
/* 809DC518  38 7F 0B E0 */	addi r3, r31, 0xbe0
/* 809DC51C  4B 77 4B 1C */	b initialize__15daNpcF_Lookat_cFv
/* 809DC520  3B A0 00 00 */	li r29, 0
/* 809DC524  3B C0 00 00 */	li r30, 0
lbl_809DC528:
/* 809DC528  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 809DC52C  7C 7F 1A 14 */	add r3, r31, r3
/* 809DC530  4B 77 41 80 */	b initialize__18daNpcF_ActorMngr_cFv
/* 809DC534  3B BD 00 01 */	addi r29, r29, 1
/* 809DC538  2C 1D 00 03 */	cmpwi r29, 3
/* 809DC53C  3B DE 00 08 */	addi r30, r30, 8
/* 809DC540  41 80 FF E8 */	blt lbl_809DC528
/* 809DC544  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809DC548  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809DC54C  80 64 00 00 */	lwz r3, 0(r4)
/* 809DC550  80 04 00 04 */	lwz r0, 4(r4)
/* 809DC554  90 7F 0D D4 */	stw r3, 0xdd4(r31)
/* 809DC558  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 809DC55C  80 04 00 08 */	lwz r0, 8(r4)
/* 809DC560  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 809DC564  80 64 00 00 */	lwz r3, 0(r4)
/* 809DC568  80 04 00 04 */	lwz r0, 4(r4)
/* 809DC56C  90 7F 0D E0 */	stw r3, 0xde0(r31)
/* 809DC570  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 809DC574  80 04 00 08 */	lwz r0, 8(r4)
/* 809DC578  90 1F 0D E8 */	stw r0, 0xde8(r31)
/* 809DC57C  38 80 00 00 */	li r4, 0
/* 809DC580  90 9F 0E 0C */	stw r4, 0xe0c(r31)
/* 809DC584  90 9F 0E 10 */	stw r4, 0xe10(r31)
/* 809DC588  90 9F 0E 14 */	stw r4, 0xe14(r31)
/* 809DC58C  90 9F 0E 18 */	stw r4, 0xe18(r31)
/* 809DC590  38 00 FF FF */	li r0, -1
/* 809DC594  B0 1F 0E 20 */	sth r0, 0xe20(r31)
/* 809DC598  B0 9F 0E 22 */	sth r4, 0xe22(r31)
/* 809DC59C  90 1F 0E 28 */	stw r0, 0xe28(r31)
/* 809DC5A0  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 809DC5A4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809DC5A8  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 809DC5AC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809DC5B0  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 809DC5B4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809DC5B8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809DC5BC  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809DC5C0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809DC5C4  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809DC5C8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809DC5CC  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809DC5D0  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809DC5D4  B0 9F 04 DC */	sth r4, 0x4dc(r31)
/* 809DC5D8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 809DC5DC  B0 9F 04 E0 */	sth r4, 0x4e0(r31)
/* 809DC5E0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809DC5E4  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 809DC5E8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809DC5EC  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 809DC5F0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809DC5F4  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 809DC5F8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809DC5FC  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 809DC600  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809DC604  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809DC608  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809DC60C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 809DC610  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809DC614  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 809DC618  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809DC61C  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 809DC620  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809DC624  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 809DC628  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809DC62C  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 809DC630  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809DC634  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 809DC638  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809DC63C  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 809DC640  3C 60 80 9E */	lis r3, lit_4553@ha
/* 809DC644  C0 03 F0 0C */	lfs f0, lit_4553@l(r3)
/* 809DC648  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809DC64C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809DC650  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809DC654  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809DC658  98 9F 0E 2C */	stb r4, 0xe2c(r31)
/* 809DC65C  38 00 00 01 */	li r0, 1
/* 809DC660  98 1F 09 EE */	stb r0, 0x9ee(r31)
/* 809DC664  39 61 00 20 */	addi r11, r1, 0x20
/* 809DC668  4B 98 5B C0 */	b _restgpr_29
/* 809DC66C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809DC670  7C 08 03 A6 */	mtlr r0
/* 809DC674  38 21 00 20 */	addi r1, r1, 0x20
/* 809DC678  4E 80 00 20 */	blr 
