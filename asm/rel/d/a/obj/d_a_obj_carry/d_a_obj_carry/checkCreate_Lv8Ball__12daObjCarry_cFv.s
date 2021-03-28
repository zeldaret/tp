lbl_804715A8:
/* 804715A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804715AC  7C 08 02 A6 */	mflr r0
/* 804715B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804715B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804715B8  7C 7F 1B 78 */	mr r31, r3
/* 804715BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804715C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804715C4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804715C8  54 04 D6 3E */	rlwinm r4, r0, 0x1a, 0x18, 0x1f
/* 804715CC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 804715D0  7C 05 07 74 */	extsb r5, r0
/* 804715D4  4B BC 3D 8C */	b isSwitch__10dSv_info_cCFii
/* 804715D8  2C 03 00 00 */	cmpwi r3, 0
/* 804715DC  40 82 00 0C */	bne lbl_804715E8
/* 804715E0  38 60 00 02 */	li r3, 2
/* 804715E4  48 00 00 88 */	b lbl_8047166C
lbl_804715E8:
/* 804715E8  3C 60 80 47 */	lis r3, s_swA_sub__FPvPv@ha
/* 804715EC  38 63 F4 AC */	addi r3, r3, s_swA_sub__FPvPv@l
/* 804715F0  7F E4 FB 78 */	mr r4, r31
/* 804715F4  4B BA FD 44 */	b fpcEx_Search__FPFPvPv_PvPv
/* 804715F8  28 03 00 00 */	cmplwi r3, 0
/* 804715FC  40 82 00 0C */	bne lbl_80471608
/* 80471600  38 60 00 00 */	li r3, 0
/* 80471604  48 00 00 68 */	b lbl_8047166C
lbl_80471608:
/* 80471608  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 8047160C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80471610  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80471614  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80471618  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 8047161C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80471620  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80471624  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80471628  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8047162C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80471630  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80471634  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80471638  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8047163C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80471640  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80471644  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80471648  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8047164C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80471650  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80471654  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80471658  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8047165C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80471660  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80471664  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80471668  38 60 00 02 */	li r3, 2
lbl_8047166C:
/* 8047166C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80471670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80471674  7C 08 03 A6 */	mtlr r0
/* 80471678  38 21 00 10 */	addi r1, r1, 0x10
/* 8047167C  4E 80 00 20 */	blr 
