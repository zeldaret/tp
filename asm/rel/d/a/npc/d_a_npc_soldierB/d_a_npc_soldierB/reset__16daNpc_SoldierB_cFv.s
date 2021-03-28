lbl_80AF426C:
/* 80AF426C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF4270  7C 08 02 A6 */	mflr r0
/* 80AF4274  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF4278  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF427C  4B 86 DF 60 */	b _savegpr_29
/* 80AF4280  7C 7F 1B 78 */	mr r31, r3
/* 80AF4284  4B 65 E6 44 */	b initialize__8daNpcF_cFv
/* 80AF4288  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80AF428C  4B 65 CD AC */	b initialize__15daNpcF_Lookat_cFv
/* 80AF4290  3B A0 00 00 */	li r29, 0
/* 80AF4294  3B C0 00 00 */	li r30, 0
lbl_80AF4298:
/* 80AF4298  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80AF429C  7C 7F 1A 14 */	add r3, r31, r3
/* 80AF42A0  4B 65 C4 10 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80AF42A4  3B BD 00 01 */	addi r29, r29, 1
/* 80AF42A8  2C 1D 00 03 */	cmpwi r29, 3
/* 80AF42AC  3B DE 00 08 */	addi r30, r30, 8
/* 80AF42B0  41 80 FF E8 */	blt lbl_80AF4298
/* 80AF42B4  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80AF42B8  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80AF42BC  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF42C0  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF42C4  90 7F 0D D0 */	stw r3, 0xdd0(r31)
/* 80AF42C8  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80AF42CC  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF42D0  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 80AF42D4  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF42D8  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF42DC  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80AF42E0  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80AF42E4  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF42E8  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80AF42EC  38 60 00 00 */	li r3, 0
/* 80AF42F0  90 7F 0E 00 */	stw r3, 0xe00(r31)
/* 80AF42F4  90 7F 0E 04 */	stw r3, 0xe04(r31)
/* 80AF42F8  90 7F 0E 08 */	stw r3, 0xe08(r31)
/* 80AF42FC  90 7F 0E 0C */	stw r3, 0xe0c(r31)
/* 80AF4300  38 00 FF FF */	li r0, -1
/* 80AF4304  B0 1F 0E 14 */	sth r0, 0xe14(r31)
/* 80AF4308  B0 7F 0E 16 */	sth r3, 0xe16(r31)
/* 80AF430C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80AF4310  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80AF4314  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80AF4318  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80AF431C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80AF4320  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80AF4324  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AF4328  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80AF432C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AF4330  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80AF4334  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AF4338  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80AF433C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80AF4340  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 80AF4344  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80AF4348  B0 7F 04 E0 */	sth r3, 0x4e0(r31)
/* 80AF434C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AF4350  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80AF4354  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AF4358  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80AF435C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AF4360  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80AF4364  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AF4368  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80AF436C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AF4370  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80AF4374  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AF4378  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80AF437C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AF4380  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80AF4384  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AF4388  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80AF438C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AF4390  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80AF4394  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80AF4398  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80AF439C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AF43A0  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80AF43A4  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80AF43A8  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80AF43AC  3C 60 80 AF */	lis r3, lit_4454@ha
/* 80AF43B0  C0 03 5B 54 */	lfs f0, lit_4454@l(r3)
/* 80AF43B4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AF43B8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AF43BC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AF43C0  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AF43C4  38 00 00 01 */	li r0, 1
/* 80AF43C8  98 1F 09 EE */	stb r0, 0x9ee(r31)
/* 80AF43CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF43D0  4B 86 DE 58 */	b _restgpr_29
/* 80AF43D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF43D8  7C 08 03 A6 */	mtlr r0
/* 80AF43DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF43E0  4E 80 00 20 */	blr 
