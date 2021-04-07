lbl_809AE6BC:
/* 809AE6BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809AE6C0  7C 08 02 A6 */	mflr r0
/* 809AE6C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809AE6C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809AE6CC  7C 7F 1B 78 */	mr r31, r3
/* 809AE6D0  4B 7A 41 F9 */	bl initialize__8daNpcF_cFv
/* 809AE6D4  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809AE6D8  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809AE6DC  80 64 00 00 */	lwz r3, 0(r4)
/* 809AE6E0  80 04 00 04 */	lwz r0, 4(r4)
/* 809AE6E4  90 7F 0D 1C */	stw r3, 0xd1c(r31)
/* 809AE6E8  90 1F 0D 20 */	stw r0, 0xd20(r31)
/* 809AE6EC  80 04 00 08 */	lwz r0, 8(r4)
/* 809AE6F0  90 1F 0D 24 */	stw r0, 0xd24(r31)
/* 809AE6F4  38 00 00 00 */	li r0, 0
/* 809AE6F8  B0 1F 0D 36 */	sth r0, 0xd36(r31)
/* 809AE6FC  3C 60 80 9B */	lis r3, lit_4309@ha /* 0x809AFAA0@ha */
/* 809AE700  C0 23 FA A0 */	lfs f1, lit_4309@l(r3)  /* 0x809AFAA0@l */
/* 809AE704  D0 3F 05 30 */	stfs f1, 0x530(r31)
/* 809AE708  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 809AE70C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809AE710  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 809AE714  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809AE718  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 809AE71C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809AE720  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809AE724  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809AE728  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809AE72C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809AE730  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809AE734  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809AE738  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809AE73C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 809AE740  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 809AE744  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 809AE748  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809AE74C  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 809AE750  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AE754  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 809AE758  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809AE75C  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 809AE760  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809AE764  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 809AE768  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AE76C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809AE770  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809AE774  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 809AE778  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809AE77C  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 809AE780  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AE784  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 809AE788  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809AE78C  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 809AE790  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809AE794  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 809AE798  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809AE79C  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 809AE7A0  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809AE7A4  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 809AE7A8  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 809AE7AC  D0 3F 04 F8 */	stfs f1, 0x4f8(r31)
/* 809AE7B0  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 809AE7B4  D0 3F 05 00 */	stfs f1, 0x500(r31)
/* 809AE7B8  D0 3F 09 7C */	stfs f1, 0x97c(r31)
/* 809AE7BC  4B 7F DD C1 */	bl dKy_darkworld_check__Fv
/* 809AE7C0  98 7F 09 F4 */	stb r3, 0x9f4(r31)
/* 809AE7C4  7F E3 FB 78 */	mr r3, r31
/* 809AE7C8  3C 80 80 9B */	lis r4, m__18daNpcDrSol_Param_c@ha /* 0x809AF9A4@ha */
/* 809AE7CC  38 A4 F9 A4 */	addi r5, r4, m__18daNpcDrSol_Param_c@l /* 0x809AF9A4@l */
/* 809AE7D0  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 809AE7D4  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 809AE7D8  4B 7A 5A A1 */	bl getDistTableIdx__8daNpcF_cFii
/* 809AE7DC  98 7F 05 44 */	stb r3, 0x544(r31)
/* 809AE7E0  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 809AE7E4  98 1F 05 45 */	stb r0, 0x545(r31)
/* 809AE7E8  7F E3 FB 78 */	mr r3, r31
/* 809AE7EC  3C 80 80 9B */	lis r4, m__18daNpcDrSol_Param_c@ha /* 0x809AF9A4@ha */
/* 809AE7F0  38 A4 F9 A4 */	addi r5, r4, m__18daNpcDrSol_Param_c@l /* 0x809AF9A4@l */
/* 809AE7F4  A8 85 00 48 */	lha r4, 0x48(r5)
/* 809AE7F8  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 809AE7FC  4B 7A 5A 7D */	bl getDistTableIdx__8daNpcF_cFii
/* 809AE800  98 7F 05 47 */	stb r3, 0x547(r31)
/* 809AE804  3C 60 80 9B */	lis r3, lit_4286@ha /* 0x809AFAF4@ha */
/* 809AE808  38 83 FA F4 */	addi r4, r3, lit_4286@l /* 0x809AFAF4@l */
/* 809AE80C  80 64 00 00 */	lwz r3, 0(r4)
/* 809AE810  80 04 00 04 */	lwz r0, 4(r4)
/* 809AE814  90 61 00 08 */	stw r3, 8(r1)
/* 809AE818  90 01 00 0C */	stw r0, 0xc(r1)
/* 809AE81C  80 04 00 08 */	lwz r0, 8(r4)
/* 809AE820  90 01 00 10 */	stw r0, 0x10(r1)
/* 809AE824  7F E3 FB 78 */	mr r3, r31
/* 809AE828  38 81 00 08 */	addi r4, r1, 8
/* 809AE82C  48 00 00 19 */	bl setAction__12daNpcDrSol_cFM12daNpcDrSol_cFPCvPvPv_b
/* 809AE830  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809AE834  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809AE838  7C 08 03 A6 */	mtlr r0
/* 809AE83C  38 21 00 20 */	addi r1, r1, 0x20
/* 809AE840  4E 80 00 20 */	blr 
