lbl_80AB3C2C:
/* 80AB3C2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AB3C30  7C 08 02 A6 */	mflr r0
/* 80AB3C34  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB3C38  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB3C3C  4B 8A E5 A1 */	bl _savegpr_29
/* 80AB3C40  7C 7F 1B 78 */	mr r31, r3
/* 80AB3C44  4B 69 EC 85 */	bl initialize__8daNpcF_cFv
/* 80AB3C48  38 7F 0B F0 */	addi r3, r31, 0xbf0
/* 80AB3C4C  4B 69 D3 ED */	bl initialize__15daNpcF_Lookat_cFv
/* 80AB3C50  3B A0 00 00 */	li r29, 0
/* 80AB3C54  3B C0 00 00 */	li r30, 0
lbl_80AB3C58:
/* 80AB3C58  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AB3C5C  7C 7F 1A 14 */	add r3, r31, r3
/* 80AB3C60  4B 69 CA 51 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AB3C64  3B BD 00 01 */	addi r29, r29, 1
/* 80AB3C68  2C 1D 00 02 */	cmpwi r29, 2
/* 80AB3C6C  3B DE 00 08 */	addi r30, r30, 8
/* 80AB3C70  41 80 FF E8 */	blt lbl_80AB3C58
/* 80AB3C74  38 A0 00 00 */	li r5, 0
/* 80AB3C78  90 BF 0D FC */	stw r5, 0xdfc(r31)
/* 80AB3C7C  90 BF 0E 00 */	stw r5, 0xe00(r31)
/* 80AB3C80  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AB3C84  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AB3C88  80 64 00 00 */	lwz r3, 0(r4)
/* 80AB3C8C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB3C90  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80AB3C94  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80AB3C98  80 04 00 08 */	lwz r0, 8(r4)
/* 80AB3C9C  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80AB3CA0  38 80 FF FF */	li r4, -1
/* 80AB3CA4  B0 9F 0E 08 */	sth r4, 0xe08(r31)
/* 80AB3CA8  B0 BF 0E 0C */	sth r5, 0xe0c(r31)
/* 80AB3CAC  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80AB3CB0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80AB3CB4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80AB3CB8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80AB3CBC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80AB3CC0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80AB3CC4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AB3CC8  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80AB3CCC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AB3CD0  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80AB3CD4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AB3CD8  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80AB3CDC  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80AB3CE0  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 80AB3CE4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80AB3CE8  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 80AB3CEC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AB3CF0  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80AB3CF4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AB3CF8  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80AB3CFC  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AB3D00  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80AB3D04  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AB3D08  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80AB3D0C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AB3D10  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80AB3D14  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AB3D18  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80AB3D1C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AB3D20  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80AB3D24  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AB3D28  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80AB3D2C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AB3D30  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80AB3D34  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80AB3D38  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80AB3D3C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AB3D40  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80AB3D44  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80AB3D48  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80AB3D4C  3C 60 80 AB */	lis r3, lit_4393@ha /* 0x80AB58A4@ha */
/* 80AB3D50  C0 03 58 A4 */	lfs f0, lit_4393@l(r3)  /* 0x80AB58A4@l */
/* 80AB3D54  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AB3D58  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AB3D5C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AB3D60  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AB3D64  90 9F 0D F8 */	stw r4, 0xdf8(r31)
/* 80AB3D68  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 80AB3D6C  3C 60 80 AB */	lis r3, lit_4425@ha /* 0x80AB5A24@ha */
/* 80AB3D70  38 83 5A 24 */	addi r4, r3, lit_4425@l /* 0x80AB5A24@l */
/* 80AB3D74  80 64 00 00 */	lwz r3, 0(r4)
/* 80AB3D78  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB3D7C  90 61 00 08 */	stw r3, 8(r1)
/* 80AB3D80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AB3D84  80 04 00 08 */	lwz r0, 8(r4)
/* 80AB3D88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AB3D8C  7F E3 FB 78 */	mr r3, r31
/* 80AB3D90  38 81 00 08 */	addi r4, r1, 8
/* 80AB3D94  48 00 01 C1 */	bl setAction__11daNpcPray_cFM11daNpcPray_cFPCvPvPv_b
/* 80AB3D98  3C 60 80 AB */	lis r3, lit_4393@ha /* 0x80AB58A4@ha */
/* 80AB3D9C  C0 03 58 A4 */	lfs f0, lit_4393@l(r3)  /* 0x80AB58A4@l */
/* 80AB3DA0  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80AB3DA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB3DA8  4B 8A E4 81 */	bl _restgpr_29
/* 80AB3DAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AB3DB0  7C 08 03 A6 */	mtlr r0
/* 80AB3DB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80AB3DB8  4E 80 00 20 */	blr 
