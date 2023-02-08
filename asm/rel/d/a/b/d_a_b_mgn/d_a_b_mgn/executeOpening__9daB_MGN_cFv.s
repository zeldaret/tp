lbl_8060C068:
/* 8060C068  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8060C06C  7C 08 02 A6 */	mflr r0
/* 8060C070  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8060C074  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8060C078  4B D5 61 5D */	bl _savegpr_27
/* 8060C07C  7C 7F 1B 78 */	mr r31, r3
/* 8060C080  3C 80 80 61 */	lis r4, lit_3928@ha /* 0x8060FDE0@ha */
/* 8060C084  3B C4 FD E0 */	addi r30, r4, lit_3928@l /* 0x8060FDE0@l */
/* 8060C088  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060C08C  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060C090  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 8060C094  7C 00 07 74 */	extsb r0, r0
/* 8060C098  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8060C09C  7C 85 02 14 */	add r4, r5, r0
/* 8060C0A0  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 8060C0A4  83 85 5D AC */	lwz r28, 0x5dac(r5)
/* 8060C0A8  80 83 05 BC */	lwz r4, 0x5bc(r3)
/* 8060C0AC  80 A4 00 04 */	lwz r5, 4(r4)
/* 8060C0B0  83 65 00 04 */	lwz r27, 4(r5)
/* 8060C0B4  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 8060C0B8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8060C0BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060C0C0  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 8060C0C4  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 8060C0C8  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8060C0CC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8060C0D0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8060C0D4  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8060C0D8  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 8060C0DC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8060C0E0  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8060C0E4  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 8060C0E8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8060C0EC  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 8060C0F0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8060C0F4  88 03 0A FA */	lbz r0, 0xafa(r3)
/* 8060C0F8  28 00 00 0B */	cmplwi r0, 0xb
/* 8060C0FC  41 81 0E C8 */	bgt lbl_8060CFC4
/* 8060C100  3C 80 80 61 */	lis r4, lit_7376@ha /* 0x80610308@ha */
/* 8060C104  38 84 03 08 */	addi r4, r4, lit_7376@l /* 0x80610308@l */
/* 8060C108  54 00 10 3A */	slwi r0, r0, 2
/* 8060C10C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8060C110  7C 09 03 A6 */	mtctr r0
/* 8060C114  4E 80 04 20 */	bctr 
lbl_8060C118:
/* 8060C118  38 80 00 00 */	li r4, 0
/* 8060C11C  90 9F 05 5C */	stw r4, 0x55c(r31)
/* 8060C120  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8060C124  28 00 00 02 */	cmplwi r0, 2
/* 8060C128  41 82 00 28 */	beq lbl_8060C150
/* 8060C12C  38 80 00 02 */	li r4, 2
/* 8060C130  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8060C134  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8060C138  38 C0 00 04 */	li r6, 4
/* 8060C13C  4B A0 F7 CD */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8060C140  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8060C144  60 00 00 02 */	ori r0, r0, 2
/* 8060C148  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8060C14C  48 00 0F 14 */	b lbl_8060D060
lbl_8060C150:
/* 8060C150  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8060C154  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8060C158  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8060C15C  38 00 00 03 */	li r0, 3
/* 8060C160  B0 1C 06 04 */	sth r0, 0x604(r28)
/* 8060C164  90 9C 06 0C */	stw r4, 0x60c(r28)
/* 8060C168  7F 83 E3 78 */	mr r3, r28
/* 8060C16C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8060C170  38 A0 00 00 */	li r5, 0
/* 8060C174  38 C0 00 00 */	li r6, 0
/* 8060C178  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8060C17C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8060C180  7D 89 03 A6 */	mtctr r12
/* 8060C184  4E 80 04 21 */	bctrl 
/* 8060C188  38 60 00 00 */	li r3, 0
/* 8060C18C  B0 7C 06 06 */	sth r3, 0x606(r28)
/* 8060C190  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8060C194  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 8060C198  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8060C19C  D0 1C 06 20 */	stfs f0, 0x620(r28)
/* 8060C1A0  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8060C1A4  D0 1C 06 24 */	stfs f0, 0x624(r28)
/* 8060C1A8  38 00 00 04 */	li r0, 4
/* 8060C1AC  90 1C 06 14 */	stw r0, 0x614(r28)
/* 8060C1B0  38 00 00 01 */	li r0, 1
/* 8060C1B4  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 8060C1B8  90 7C 06 10 */	stw r3, 0x610(r28)
/* 8060C1BC  B0 7C 06 0A */	sth r3, 0x60a(r28)
/* 8060C1C0  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8060C1C4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8060C1C8  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8060C1CC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8060C1D0  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8060C1D4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8060C1D8  38 00 80 00 */	li r0, -32768
/* 8060C1DC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8060C1E0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8060C1E4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8060C1E8  B0 1F 0B 14 */	sth r0, 0xb14(r31)
/* 8060C1EC  B0 1F 0B 16 */	sth r0, 0xb16(r31)
/* 8060C1F0  7F E3 FB 78 */	mr r3, r31
/* 8060C1F4  38 80 00 21 */	li r4, 0x21
/* 8060C1F8  38 A0 00 00 */	li r5, 0
/* 8060C1FC  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060C200  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060C204  4B FF B7 21 */	bl setBck__9daB_MGN_cFiUcff
/* 8060C208  38 7B 00 58 */	addi r3, r27, 0x58
/* 8060C20C  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 8060C210  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8060C214  4B D2 36 6D */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 8060C218  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060C21C  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060C220  38 63 00 07 */	addi r3, r3, 7
/* 8060C224  38 80 00 36 */	li r4, 0x36
/* 8060C228  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060C22C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060C230  3C A5 00 02 */	addis r5, r5, 2
/* 8060C234  38 C0 00 80 */	li r6, 0x80
/* 8060C238  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8060C23C  4B A3 00 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060C240  7C 65 1B 78 */	mr r5, r3
/* 8060C244  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8060C248  38 9B 00 58 */	addi r4, r27, 0x58
/* 8060C24C  38 C0 00 01 */	li r6, 1
/* 8060C250  38 E0 00 00 */	li r7, 0
/* 8060C254  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8060C258  39 00 00 00 */	li r8, 0
/* 8060C25C  39 20 FF FF */	li r9, -1
/* 8060C260  4B A0 14 AD */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8060C264  38 00 00 01 */	li r0, 1
/* 8060C268  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060C26C  38 7D 02 48 */	addi r3, r29, 0x248
/* 8060C270  4B B5 52 61 */	bl Stop__9dCamera_cFv
/* 8060C274  38 7D 02 48 */	addi r3, r29, 0x248
/* 8060C278  38 80 00 03 */	li r4, 3
/* 8060C27C  4B B5 6D 91 */	bl SetTrimSize__9dCamera_cFl
/* 8060C280  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 8060C284  D0 1F 0A DC */	stfs f0, 0xadc(r31)
/* 8060C288  38 00 B8 00 */	li r0, -18432
/* 8060C28C  B0 1F 0A E0 */	sth r0, 0xae0(r31)
/* 8060C290  38 00 00 00 */	li r0, 0
/* 8060C294  B0 1F 0A E2 */	sth r0, 0xae2(r31)
/* 8060C298  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 8060C29C  C0 1F 0A DC */	lfs f0, 0xadc(r31)
/* 8060C2A0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8060C2A4  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 8060C2A8  D0 1F 0A C8 */	stfs f0, 0xac8(r31)
/* 8060C2AC  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 8060C2B0  D0 1F 0A CC */	stfs f0, 0xacc(r31)
/* 8060C2B4  D0 3F 0A D0 */	stfs f1, 0xad0(r31)
/* 8060C2B8  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 8060C2BC  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8060C2C0  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8060C2C4  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8060C2C8  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 8060C2CC  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8060C2D0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8060C2D4  D0 1F 0A D4 */	stfs f0, 0xad4(r31)
/* 8060C2D8  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 8060C2DC  D0 1F 0A D8 */	stfs f0, 0xad8(r31)
/* 8060C2E0  7F E3 FB 78 */	mr r3, r31
/* 8060C2E4  4B FF BA 25 */	bl onBodyCo__9daB_MGN_cFv
/* 8060C2E8  38 00 00 01 */	li r0, 1
/* 8060C2EC  98 1F 0A F8 */	stb r0, 0xaf8(r31)
/* 8060C2F0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060C2F4  D0 3F 0A F4 */	stfs f1, 0xaf4(r31)
/* 8060C2F8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8060C2FC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8060C300  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8060C304  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8060C308  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8060C30C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8060C310  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 8060C314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060C318  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060C31C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8060C320  38 80 00 00 */	li r4, 0
/* 8060C324  90 81 00 08 */	stw r4, 8(r1)
/* 8060C328  38 00 FF FF */	li r0, -1
/* 8060C32C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060C330  90 81 00 10 */	stw r4, 0x10(r1)
/* 8060C334  90 81 00 14 */	stw r4, 0x14(r1)
/* 8060C338  90 81 00 18 */	stw r4, 0x18(r1)
/* 8060C33C  38 80 00 00 */	li r4, 0
/* 8060C340  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C32@ha */
/* 8060C344  38 A5 8C 32 */	addi r5, r5, 0x8C32 /* 0x00008C32@l */
/* 8060C348  38 C1 00 8C */	addi r6, r1, 0x8c
/* 8060C34C  38 E0 00 00 */	li r7, 0
/* 8060C350  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8060C354  39 20 00 00 */	li r9, 0
/* 8060C358  39 40 00 FF */	li r10, 0xff
/* 8060C35C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8060C360  4B A4 07 31 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8060C364  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8060C368  38 80 00 00 */	li r4, 0
/* 8060C36C  90 81 00 08 */	stw r4, 8(r1)
/* 8060C370  38 00 FF FF */	li r0, -1
/* 8060C374  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060C378  90 81 00 10 */	stw r4, 0x10(r1)
/* 8060C37C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8060C380  90 81 00 18 */	stw r4, 0x18(r1)
/* 8060C384  38 80 00 00 */	li r4, 0
/* 8060C388  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C33@ha */
/* 8060C38C  38 A5 8C 33 */	addi r5, r5, 0x8C33 /* 0x00008C33@l */
/* 8060C390  38 C1 00 8C */	addi r6, r1, 0x8c
/* 8060C394  38 E0 00 00 */	li r7, 0
/* 8060C398  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8060C39C  39 20 00 00 */	li r9, 0
/* 8060C3A0  39 40 00 FF */	li r10, 0xff
/* 8060C3A4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8060C3A8  4B A4 06 E9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8060C3AC  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8060C3B0  38 80 00 00 */	li r4, 0
/* 8060C3B4  90 81 00 08 */	stw r4, 8(r1)
/* 8060C3B8  38 00 FF FF */	li r0, -1
/* 8060C3BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060C3C0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8060C3C4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8060C3C8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8060C3CC  38 80 00 00 */	li r4, 0
/* 8060C3D0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C34@ha */
/* 8060C3D4  38 A5 8C 34 */	addi r5, r5, 0x8C34 /* 0x00008C34@l */
/* 8060C3D8  38 C1 00 8C */	addi r6, r1, 0x8c
/* 8060C3DC  38 E0 00 00 */	li r7, 0
/* 8060C3E0  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8060C3E4  39 20 00 00 */	li r9, 0
/* 8060C3E8  39 40 00 FF */	li r10, 0xff
/* 8060C3EC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8060C3F0  4B A4 06 A1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8060C3F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8060C3F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8060C3FC  80 63 00 00 */	lwz r3, 0(r3)
/* 8060C400  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8060C404  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000062@ha */
/* 8060C408  38 84 00 62 */	addi r4, r4, 0x0062 /* 0x02000062@l */
/* 8060C40C  4B CA 37 89 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 8060C410  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8060C414  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8060C418  80 63 00 00 */	lwz r3, 0(r3)
/* 8060C41C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8060C420  4B CA 39 F9 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 8060C424  48 00 0C 3C */	b lbl_8060D060
lbl_8060C428:
/* 8060C428  38 7F 0A DC */	addi r3, r31, 0xadc
/* 8060C42C  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
/* 8060C430  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 8060C434  4B C6 36 09 */	bl cLib_addCalc2__FPffff
/* 8060C438  38 7F 0A E2 */	addi r3, r31, 0xae2
/* 8060C43C  38 80 00 50 */	li r4, 0x50
/* 8060C440  38 A0 00 08 */	li r5, 8
/* 8060C444  38 C0 00 08 */	li r6, 8
/* 8060C448  4B C6 41 C1 */	bl cLib_addCalcAngleS2__FPssss
/* 8060C44C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 8060C450  38 80 83 80 */	li r4, -31872
/* 8060C454  38 A0 00 20 */	li r5, 0x20
/* 8060C458  A8 DF 0A E2 */	lha r6, 0xae2(r31)
/* 8060C45C  4B C6 41 AD */	bl cLib_addCalcAngleS2__FPssss
/* 8060C460  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8060C464  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8060C468  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8060C46C  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8060C470  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8060C474  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8060C478  A8 1F 0A E0 */	lha r0, 0xae0(r31)
/* 8060C47C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8060C480  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8060C484  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8060C488  7C 03 04 2E */	lfsx f0, r3, r0
/* 8060C48C  C0 3F 0A BC */	lfs f1, 0xabc(r31)
/* 8060C490  C0 5E 01 AC */	lfs f2, 0x1ac(r30)
/* 8060C494  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060C498  EC 01 00 2A */	fadds f0, f1, f0
/* 8060C49C  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8060C4A0  A8 1F 0A E0 */	lha r0, 0xae0(r31)
/* 8060C4A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8060C4A8  7C 63 02 14 */	add r3, r3, r0
/* 8060C4AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8060C4B0  C0 3F 0A C4 */	lfs f1, 0xac4(r31)
/* 8060C4B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060C4B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8060C4BC  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8060C4C0  38 7F 0A D8 */	addi r3, r31, 0xad8
/* 8060C4C4  C0 3E 01 A4 */	lfs f1, 0x1a4(r30)
/* 8060C4C8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060C4CC  4B C6 42 75 */	bl cLib_chaseF__FPfff
/* 8060C4D0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C4D4  80 63 00 04 */	lwz r3, 4(r3)
/* 8060C4D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8060C4DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060C4E0  38 63 05 10 */	addi r3, r3, 0x510
/* 8060C4E4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060C4E8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060C4EC  4B D3 9F C5 */	bl PSMTXCopy
/* 8060C4F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060C4F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060C4F8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8060C4FC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8060C500  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8060C504  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 8060C508  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8060C50C  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 8060C510  C0 1F 0A D8 */	lfs f0, 0xad8(r31)
/* 8060C514  EC 02 00 2A */	fadds f0, f2, f0
/* 8060C518  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8060C51C  C0 1F 0A DC */	lfs f0, 0xadc(r31)
/* 8060C520  EC 01 00 28 */	fsubs f0, f1, f0
/* 8060C524  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8060C528  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060C52C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060C530  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 8060C534  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8060C538  4B C6 3C 41 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060C53C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C540  38 63 00 0C */	addi r3, r3, 0xc
/* 8060C544  C0 3E 01 B0 */	lfs f1, 0x1b0(r30)
/* 8060C548  4B D1 BE E5 */	bl checkPass__12J3DFrameCtrlFf
/* 8060C54C  2C 03 00 00 */	cmpwi r3, 0
/* 8060C550  41 82 0A 74 */	beq lbl_8060CFC4
/* 8060C554  38 00 00 02 */	li r0, 2
/* 8060C558  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060C55C  7F 83 E3 78 */	mr r3, r28
/* 8060C560  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8060C564  38 A0 00 00 */	li r5, 0
/* 8060C568  38 C0 00 00 */	li r6, 0
/* 8060C56C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8060C570  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8060C574  7D 89 03 A6 */	mtctr r12
/* 8060C578  4E 80 04 21 */	bctrl 
/* 8060C57C  38 00 00 17 */	li r0, 0x17
/* 8060C580  90 1C 06 14 */	stw r0, 0x614(r28)
/* 8060C584  38 00 00 01 */	li r0, 1
/* 8060C588  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 8060C58C  38 00 00 00 */	li r0, 0
/* 8060C590  90 1C 06 10 */	stw r0, 0x610(r28)
/* 8060C594  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 8060C598  48 00 0A 2C */	b lbl_8060CFC4
lbl_8060C59C:
/* 8060C59C  38 7F 0A DC */	addi r3, r31, 0xadc
/* 8060C5A0  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
/* 8060C5A4  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8060C5A8  4B C6 34 95 */	bl cLib_addCalc2__FPffff
/* 8060C5AC  38 7F 0A E2 */	addi r3, r31, 0xae2
/* 8060C5B0  38 80 00 60 */	li r4, 0x60
/* 8060C5B4  38 A0 00 08 */	li r5, 8
/* 8060C5B8  38 C0 00 08 */	li r6, 8
/* 8060C5BC  4B C6 40 4D */	bl cLib_addCalcAngleS2__FPssss
/* 8060C5C0  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 8060C5C4  38 80 83 80 */	li r4, -31872
/* 8060C5C8  38 A0 00 20 */	li r5, 0x20
/* 8060C5CC  A8 DF 0A E2 */	lha r6, 0xae2(r31)
/* 8060C5D0  4B C6 40 39 */	bl cLib_addCalcAngleS2__FPssss
/* 8060C5D4  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8060C5D8  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8060C5DC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8060C5E0  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8060C5E4  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8060C5E8  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8060C5EC  A8 1F 0A E0 */	lha r0, 0xae0(r31)
/* 8060C5F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8060C5F4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8060C5F8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8060C5FC  7C 03 04 2E */	lfsx f0, r3, r0
/* 8060C600  C0 3F 0A BC */	lfs f1, 0xabc(r31)
/* 8060C604  C0 5E 01 AC */	lfs f2, 0x1ac(r30)
/* 8060C608  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060C60C  EC 01 00 2A */	fadds f0, f1, f0
/* 8060C610  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8060C614  A8 1F 0A E0 */	lha r0, 0xae0(r31)
/* 8060C618  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8060C61C  7C 63 02 14 */	add r3, r3, r0
/* 8060C620  C0 03 00 04 */	lfs f0, 4(r3)
/* 8060C624  C0 3F 0A C4 */	lfs f1, 0xac4(r31)
/* 8060C628  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060C62C  EC 01 00 2A */	fadds f0, f1, f0
/* 8060C630  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8060C634  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C638  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060C63C  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 8060C640  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060C644  40 80 00 1C */	bge lbl_8060C660
/* 8060C648  38 7F 0A F0 */	addi r3, r31, 0xaf0
/* 8060C64C  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8060C650  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
/* 8060C654  C0 7E 01 B8 */	lfs f3, 0x1b8(r30)
/* 8060C658  4B C6 33 E5 */	bl cLib_addCalc2__FPffff
/* 8060C65C  48 00 00 18 */	b lbl_8060C674
lbl_8060C660:
/* 8060C660  38 7F 0A F0 */	addi r3, r31, 0xaf0
/* 8060C664  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060C668  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
/* 8060C66C  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 8060C670  4B C6 33 CD */	bl cLib_addCalc2__FPffff
lbl_8060C674:
/* 8060C674  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C678  80 63 00 04 */	lwz r3, 4(r3)
/* 8060C67C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8060C680  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060C684  38 63 05 10 */	addi r3, r3, 0x510
/* 8060C688  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060C68C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060C690  4B D3 9E 21 */	bl PSMTXCopy
/* 8060C694  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060C698  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060C69C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8060C6A0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8060C6A4  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8060C6A8  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 8060C6AC  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8060C6B0  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 8060C6B4  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 8060C6B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060C6BC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8060C6C0  C0 1F 0A DC */	lfs f0, 0xadc(r31)
/* 8060C6C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8060C6C8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8060C6CC  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060C6D0  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060C6D4  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8060C6D8  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8060C6DC  4B C6 3A 9D */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060C6E0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C6E4  38 63 00 0C */	addi r3, r3, 0xc
/* 8060C6E8  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 8060C6EC  4B D1 BD 41 */	bl checkPass__12J3DFrameCtrlFf
/* 8060C6F0  2C 03 00 00 */	cmpwi r3, 0
/* 8060C6F4  41 82 08 D0 */	beq lbl_8060CFC4
/* 8060C6F8  38 00 00 03 */	li r0, 3
/* 8060C6FC  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060C700  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8060C704  D0 1F 0A DC */	stfs f0, 0xadc(r31)
/* 8060C708  48 00 08 BC */	b lbl_8060CFC4
lbl_8060C70C:
/* 8060C70C  38 7F 0A F0 */	addi r3, r31, 0xaf0
/* 8060C710  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
/* 8060C714  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 8060C718  4B C6 33 25 */	bl cLib_addCalc2__FPffff
/* 8060C71C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C720  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060C724  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 8060C728  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060C72C  4C 41 13 82 */	cror 2, 1, 2
/* 8060C730  40 82 00 0C */	bne lbl_8060C73C
/* 8060C734  7F E3 FB 78 */	mr r3, r31
/* 8060C738  4B FF 9E 9D */	bl setOpeningEffect__9daB_MGN_cFv
lbl_8060C73C:
/* 8060C73C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C740  80 63 00 04 */	lwz r3, 4(r3)
/* 8060C744  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8060C748  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060C74C  38 63 05 10 */	addi r3, r3, 0x510
/* 8060C750  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060C754  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060C758  4B D3 9D 59 */	bl PSMTXCopy
/* 8060C75C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060C760  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060C764  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8060C768  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8060C76C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060C770  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 8060C774  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8060C778  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8060C77C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C780  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8060C784  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 8060C788  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8060C78C  40 80 00 10 */	bge lbl_8060C79C
/* 8060C790  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 8060C794  EC 01 00 32 */	fmuls f0, f1, f0
/* 8060C798  D0 01 00 B4 */	stfs f0, 0xb4(r1)
lbl_8060C79C:
/* 8060C79C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C7A0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060C7A4  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 8060C7A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060C7AC  40 81 00 28 */	ble lbl_8060C7D4
/* 8060C7B0  38 7F 0A DC */	addi r3, r31, 0xadc
/* 8060C7B4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8060C7B8  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
/* 8060C7BC  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8060C7C0  4B C6 32 7D */	bl cLib_addCalc2__FPffff
/* 8060C7C4  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 8060C7C8  C0 1F 0A DC */	lfs f0, 0xadc(r31)
/* 8060C7CC  EC 01 00 2A */	fadds f0, f1, f0
/* 8060C7D0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
lbl_8060C7D4:
/* 8060C7D4  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060C7D8  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060C7DC  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8060C7E0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8060C7E4  4B C6 39 95 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060C7E8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C7EC  38 63 00 0C */	addi r3, r3, 0xc
/* 8060C7F0  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 8060C7F4  4B D1 BC 39 */	bl checkPass__12J3DFrameCtrlFf
/* 8060C7F8  2C 03 00 00 */	cmpwi r3, 0
/* 8060C7FC  41 82 00 0C */	beq lbl_8060C808
/* 8060C800  38 60 04 91 */	li r3, 0x491
/* 8060C804  4B A1 37 C1 */	bl fopMsgM_messageSetDemo__FUl
lbl_8060C808:
/* 8060C808  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C80C  38 63 00 0C */	addi r3, r3, 0xc
/* 8060C810  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 8060C814  4B D1 BC 19 */	bl checkPass__12J3DFrameCtrlFf
/* 8060C818  2C 03 00 00 */	cmpwi r3, 0
/* 8060C81C  41 82 00 64 */	beq lbl_8060C880
/* 8060C820  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060C824  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8060C828  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8060C82C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8060C830  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8060C834  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060C838  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060C83C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060C840  38 80 00 08 */	li r4, 8
/* 8060C844  38 A0 00 1F */	li r5, 0x1f
/* 8060C848  38 C1 00 80 */	addi r6, r1, 0x80
/* 8060C84C  4B A6 31 D9 */	bl StartShock__12dVibration_cFii4cXyz
/* 8060C850  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F6@ha */
/* 8060C854  38 03 04 F6 */	addi r0, r3, 0x04F6 /* 0x000704F6@l */
/* 8060C858  90 01 00 28 */	stw r0, 0x28(r1)
/* 8060C85C  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8060C860  38 81 00 28 */	addi r4, r1, 0x28
/* 8060C864  38 A0 00 00 */	li r5, 0
/* 8060C868  38 C0 FF FF */	li r6, -1
/* 8060C86C  81 9F 09 E0 */	lwz r12, 0x9e0(r31)
/* 8060C870  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8060C874  7D 89 03 A6 */	mtctr r12
/* 8060C878  4E 80 04 21 */	bctrl 
/* 8060C87C  48 00 01 08 */	b lbl_8060C984
lbl_8060C880:
/* 8060C880  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C884  38 63 00 0C */	addi r3, r3, 0xc
/* 8060C888  C0 3E 01 CC */	lfs f1, 0x1cc(r30)
/* 8060C88C  4B D1 BB A1 */	bl checkPass__12J3DFrameCtrlFf
/* 8060C890  2C 03 00 00 */	cmpwi r3, 0
/* 8060C894  41 82 00 80 */	beq lbl_8060C914
/* 8060C898  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060C89C  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8060C8A0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8060C8A4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8060C8A8  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8060C8AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060C8B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060C8B4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060C8B8  38 80 00 04 */	li r4, 4
/* 8060C8BC  38 A0 00 1F */	li r5, 0x1f
/* 8060C8C0  38 C1 00 74 */	addi r6, r1, 0x74
/* 8060C8C4  4B A6 32 4D */	bl StartQuake__12dVibration_cFii4cXyz
/* 8060C8C8  48 00 34 ED */	bl checkNowWolf__9daPy_py_cFv
/* 8060C8CC  28 03 00 00 */	cmplwi r3, 0
/* 8060C8D0  40 82 00 24 */	bne lbl_8060C8F4
/* 8060C8D4  38 00 00 22 */	li r0, 0x22
/* 8060C8D8  90 1C 06 14 */	stw r0, 0x614(r28)
/* 8060C8DC  38 00 00 01 */	li r0, 1
/* 8060C8E0  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 8060C8E4  38 00 00 00 */	li r0, 0
/* 8060C8E8  90 1C 06 10 */	stw r0, 0x610(r28)
/* 8060C8EC  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 8060C8F0  48 00 00 94 */	b lbl_8060C984
lbl_8060C8F4:
/* 8060C8F4  38 00 00 17 */	li r0, 0x17
/* 8060C8F8  90 1C 06 14 */	stw r0, 0x614(r28)
/* 8060C8FC  38 00 00 01 */	li r0, 1
/* 8060C900  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 8060C904  38 00 00 00 */	li r0, 0
/* 8060C908  90 1C 06 10 */	stw r0, 0x610(r28)
/* 8060C90C  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 8060C910  48 00 00 74 */	b lbl_8060C984
lbl_8060C914:
/* 8060C914  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C918  38 63 00 0C */	addi r3, r3, 0xc
/* 8060C91C  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 8060C920  4B D1 BB 0D */	bl checkPass__12J3DFrameCtrlFf
/* 8060C924  2C 03 00 00 */	cmpwi r3, 0
/* 8060C928  41 82 00 1C */	beq lbl_8060C944
/* 8060C92C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060C930  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060C934  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060C938  38 80 00 1F */	li r4, 0x1f
/* 8060C93C  4B A6 34 59 */	bl StopQuake__12dVibration_cFi
/* 8060C940  48 00 00 44 */	b lbl_8060C984
lbl_8060C944:
/* 8060C944  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C948  38 63 00 0C */	addi r3, r3, 0xc
/* 8060C94C  C0 3E 01 D4 */	lfs f1, 0x1d4(r30)
/* 8060C950  4B D1 BA DD */	bl checkPass__12J3DFrameCtrlFf
/* 8060C954  2C 03 00 00 */	cmpwi r3, 0
/* 8060C958  41 82 00 2C */	beq lbl_8060C984
/* 8060C95C  48 00 34 59 */	bl checkNowWolf__9daPy_py_cFv
/* 8060C960  28 03 00 00 */	cmplwi r3, 0
/* 8060C964  40 82 00 20 */	bne lbl_8060C984
/* 8060C968  38 00 00 17 */	li r0, 0x17
/* 8060C96C  90 1C 06 14 */	stw r0, 0x614(r28)
/* 8060C970  38 00 00 01 */	li r0, 1
/* 8060C974  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 8060C978  38 00 00 00 */	li r0, 0
/* 8060C97C  90 1C 06 10 */	stw r0, 0x610(r28)
/* 8060C980  B0 1C 06 0A */	sth r0, 0x60a(r28)
lbl_8060C984:
/* 8060C984  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 8060C988  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8060C98C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8060C990  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8060C994  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 8060C998  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8060C99C  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8060C9A0  38 81 00 68 */	addi r4, r1, 0x68
/* 8060C9A4  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 8060C9A8  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 8060C9AC  4B C6 37 CD */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060C9B0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060C9B4  38 80 00 01 */	li r4, 1
/* 8060C9B8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060C9BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060C9C0  40 82 00 18 */	bne lbl_8060C9D8
/* 8060C9C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060C9C8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060C9CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060C9D0  41 82 00 08 */	beq lbl_8060C9D8
/* 8060C9D4  38 80 00 00 */	li r4, 0
lbl_8060C9D8:
/* 8060C9D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060C9DC  41 82 00 4C */	beq lbl_8060CA28
/* 8060C9E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FD@ha */
/* 8060C9E4  38 03 04 FD */	addi r0, r3, 0x04FD /* 0x000704FD@l */
/* 8060C9E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060C9EC  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8060C9F0  38 81 00 24 */	addi r4, r1, 0x24
/* 8060C9F4  38 A0 FF FF */	li r5, -1
/* 8060C9F8  81 9F 09 E0 */	lwz r12, 0x9e0(r31)
/* 8060C9FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060CA00  7D 89 03 A6 */	mtctr r12
/* 8060CA04  4E 80 04 21 */	bctrl 
/* 8060CA08  7F E3 FB 78 */	mr r3, r31
/* 8060CA0C  38 80 00 07 */	li r4, 7
/* 8060CA10  38 A0 00 00 */	li r5, 0
/* 8060CA14  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060CA18  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060CA1C  4B FF AF 09 */	bl setBck__9daB_MGN_cFiUcff
/* 8060CA20  38 00 00 05 */	li r0, 5
/* 8060CA24  98 1F 0A FA */	stb r0, 0xafa(r31)
lbl_8060CA28:
/* 8060CA28  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 8060CA2C  38 60 00 01 */	li r3, 1
/* 8060CA30  88 04 00 05 */	lbz r0, 5(r4)
/* 8060CA34  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060CA38  40 82 00 18 */	bne lbl_8060CA50
/* 8060CA3C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060CA40  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8060CA44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060CA48  41 82 00 08 */	beq lbl_8060CA50
/* 8060CA4C  38 60 00 00 */	li r3, 0
lbl_8060CA50:
/* 8060CA50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8060CA54  41 82 05 70 */	beq lbl_8060CFC4
/* 8060CA58  38 7B 00 58 */	addi r3, r27, 0x58
/* 8060CA5C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8060CA60  4B D2 2E 21 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 8060CA64  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060CA68  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060CA6C  38 63 00 07 */	addi r3, r3, 7
/* 8060CA70  38 80 00 33 */	li r4, 0x33
/* 8060CA74  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060CA78  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060CA7C  3C A5 00 02 */	addis r5, r5, 2
/* 8060CA80  38 C0 00 80 */	li r6, 0x80
/* 8060CA84  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8060CA88  4B A2 F8 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060CA8C  7C 65 1B 78 */	mr r5, r3
/* 8060CA90  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8060CA94  38 9B 00 58 */	addi r4, r27, 0x58
/* 8060CA98  38 C0 00 01 */	li r6, 1
/* 8060CA9C  38 E0 00 02 */	li r7, 2
/* 8060CAA0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8060CAA4  39 00 00 00 */	li r8, 0
/* 8060CAA8  39 20 FF FF */	li r9, -1
/* 8060CAAC  4B A0 0C 61 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8060CAB0  48 00 05 14 */	b lbl_8060CFC4
lbl_8060CAB4:
/* 8060CAB4  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8060CAB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060CABC  38 63 05 10 */	addi r3, r3, 0x510
/* 8060CAC0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CAC4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CAC8  4B D3 99 E9 */	bl PSMTXCopy
/* 8060CACC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CAD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CAD4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8060CAD8  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 8060CADC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8060CAE0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8060CAE4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8060CAE8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8060CAEC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8060CAF0  EC 01 00 2A */	fadds f0, f1, f0
/* 8060CAF4  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8060CAF8  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060CAFC  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060CB00  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8060CB04  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8060CB08  4B C6 36 71 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060CB0C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060CB10  38 63 00 0C */	addi r3, r3, 0xc
/* 8060CB14  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 8060CB18  4B D1 B9 15 */	bl checkPass__12J3DFrameCtrlFf
/* 8060CB1C  2C 03 00 00 */	cmpwi r3, 0
/* 8060CB20  41 82 04 A4 */	beq lbl_8060CFC4
/* 8060CB24  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 8060CB28  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8060CB2C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8060CB30  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8060CB34  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8060CB38  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8060CB3C  38 00 00 06 */	li r0, 6
/* 8060CB40  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060CB44  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8060CB48  3C 63 00 01 */	addis r3, r3, 1
/* 8060CB4C  38 03 80 00 */	addi r0, r3, -32768
/* 8060CB50  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8060CB54  48 00 04 70 */	b lbl_8060CFC4
lbl_8060CB58:
/* 8060CB58  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8060CB5C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060CB60  38 63 05 10 */	addi r3, r3, 0x510
/* 8060CB64  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CB68  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CB6C  4B D3 99 45 */	bl PSMTXCopy
/* 8060CB70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CB74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CB78  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8060CB7C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8060CB80  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8060CB84  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8060CB88  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8060CB8C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8060CB90  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060CB94  38 63 00 0C */	addi r3, r3, 0xc
/* 8060CB98  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 8060CB9C  4B D1 B8 91 */	bl checkPass__12J3DFrameCtrlFf
/* 8060CBA0  2C 03 00 00 */	cmpwi r3, 0
/* 8060CBA4  41 82 00 1C */	beq lbl_8060CBC0
/* 8060CBA8  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060CBAC  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060CBB0  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8060CBB4  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8060CBB8  4B C6 35 C1 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060CBBC  48 00 00 18 */	b lbl_8060CBD4
lbl_8060CBC0:
/* 8060CBC0  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060CBC4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060CBC8  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8060CBCC  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8060CBD0  4B C6 35 A9 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
lbl_8060CBD4:
/* 8060CBD4  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060CBD8  38 63 00 0C */	addi r3, r3, 0xc
/* 8060CBDC  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 8060CBE0  4B D1 B8 4D */	bl checkPass__12J3DFrameCtrlFf
/* 8060CBE4  2C 03 00 00 */	cmpwi r3, 0
/* 8060CBE8  41 82 00 10 */	beq lbl_8060CBF8
/* 8060CBEC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8060CBF0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060CBF4  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8060CBF8:
/* 8060CBF8  80 1F 0B 88 */	lwz r0, 0xb88(r31)
/* 8060CBFC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8060CC00  41 82 03 C4 */	beq lbl_8060CFC4
/* 8060CC04  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060CC08  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 8060CC0C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8060CC10  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8060CC14  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8060CC18  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8060CC1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060CC20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060CC24  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060CC28  38 80 00 04 */	li r4, 4
/* 8060CC2C  38 A0 00 1F */	li r5, 0x1f
/* 8060CC30  38 C1 00 5C */	addi r6, r1, 0x5c
/* 8060CC34  4B A6 2D F1 */	bl StartShock__12dVibration_cFii4cXyz
/* 8060CC38  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8060CC3C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060CC40  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8060CC44  38 00 00 07 */	li r0, 7
/* 8060CC48  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060CC4C  48 00 03 78 */	b lbl_8060CFC4
lbl_8060CC50:
/* 8060CC50  4B FF 93 CD */	bl setBackJumpEffect__9daB_MGN_cFv
/* 8060CC54  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060CC58  80 63 00 04 */	lwz r3, 4(r3)
/* 8060CC5C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8060CC60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060CC64  38 63 05 10 */	addi r3, r3, 0x510
/* 8060CC68  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CC6C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CC70  4B D3 98 41 */	bl PSMTXCopy
/* 8060CC74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CC78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CC7C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8060CC80  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8060CC84  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8060CC88  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8060CC8C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8060CC90  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8060CC94  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060CC98  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060CC9C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8060CCA0  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8060CCA4  4B C6 34 D5 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060CCA8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060CCAC  38 80 00 01 */	li r4, 1
/* 8060CCB0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060CCB4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060CCB8  40 82 00 18 */	bne lbl_8060CCD0
/* 8060CCBC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060CCC0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060CCC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060CCC8  41 82 00 08 */	beq lbl_8060CCD0
/* 8060CCCC  38 80 00 00 */	li r4, 0
lbl_8060CCD0:
/* 8060CCD0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060CCD4  41 82 02 F0 */	beq lbl_8060CFC4
/* 8060CCD8  7F E3 FB 78 */	mr r3, r31
/* 8060CCDC  38 80 00 25 */	li r4, 0x25
/* 8060CCE0  38 A0 00 02 */	li r5, 2
/* 8060CCE4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060CCE8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060CCEC  4B FF AC 39 */	bl setBck__9daB_MGN_cFiUcff
/* 8060CCF0  38 00 00 1E */	li r0, 0x1e
/* 8060CCF4  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8060CCF8  38 00 00 08 */	li r0, 8
/* 8060CCFC  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060CD00  48 00 02 C4 */	b lbl_8060CFC4
lbl_8060CD04:
/* 8060CD04  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8060CD08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060CD0C  38 63 05 10 */	addi r3, r3, 0x510
/* 8060CD10  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CD14  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CD18  4B D3 97 99 */	bl PSMTXCopy
/* 8060CD1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CD20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CD24  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8060CD28  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8060CD2C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8060CD30  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8060CD34  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8060CD38  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8060CD3C  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060CD40  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060CD44  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8060CD48  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8060CD4C  4B C6 34 2D */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060CD50  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 8060CD54  2C 00 00 00 */	cmpwi r0, 0
/* 8060CD58  40 82 02 6C */	bne lbl_8060CFC4
/* 8060CD5C  7F E3 FB 78 */	mr r3, r31
/* 8060CD60  38 80 00 26 */	li r4, 0x26
/* 8060CD64  38 A0 00 00 */	li r5, 0
/* 8060CD68  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060CD6C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060CD70  4B FF AB B5 */	bl setBck__9daB_MGN_cFiUcff
/* 8060CD74  38 00 00 0A */	li r0, 0xa
/* 8060CD78  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060CD7C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8060CD80  D0 1F 0A D8 */	stfs f0, 0xad8(r31)
/* 8060CD84  48 00 02 40 */	b lbl_8060CFC4
lbl_8060CD88:
/* 8060CD88  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8060CD8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060CD90  38 63 05 10 */	addi r3, r3, 0x510
/* 8060CD94  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CD98  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CD9C  4B D3 97 15 */	bl PSMTXCopy
/* 8060CDA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CDA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CDA8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8060CDAC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8060CDB0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8060CDB4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8060CDB8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8060CDBC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8060CDC0  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060CDC4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060CDC8  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8060CDCC  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8060CDD0  4B C6 33 A9 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060CDD4  38 7F 0A D8 */	addi r3, r31, 0xad8
/* 8060CDD8  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 8060CDDC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060CDE0  4B C6 39 61 */	bl cLib_chaseF__FPfff
/* 8060CDE4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8060CDE8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8060CDEC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8060CDF0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8060CDF4  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 8060CDF8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8060CDFC  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8060CE00  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060CE04  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 8060CE08  C0 5F 0A D8 */	lfs f2, 0xad8(r31)
/* 8060CE0C  4B C6 33 6D */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060CE10  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060CE14  38 80 00 01 */	li r4, 1
/* 8060CE18  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060CE1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060CE20  40 82 00 18 */	bne lbl_8060CE38
/* 8060CE24  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060CE28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060CE2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060CE30  41 82 00 08 */	beq lbl_8060CE38
/* 8060CE34  38 80 00 00 */	li r4, 0
lbl_8060CE38:
/* 8060CE38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060CE3C  41 82 01 88 */	beq lbl_8060CFC4
/* 8060CE40  7F E3 FB 78 */	mr r3, r31
/* 8060CE44  38 80 00 25 */	li r4, 0x25
/* 8060CE48  38 A0 00 02 */	li r5, 2
/* 8060CE4C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060CE50  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060CE54  4B FF AA D1 */	bl setBck__9daB_MGN_cFiUcff
/* 8060CE58  38 00 00 1E */	li r0, 0x1e
/* 8060CE5C  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8060CE60  38 00 00 0B */	li r0, 0xb
/* 8060CE64  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060CE68  48 00 01 5C */	b lbl_8060CFC4
lbl_8060CE6C:
/* 8060CE6C  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8060CE70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060CE74  38 63 05 10 */	addi r3, r3, 0x510
/* 8060CE78  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CE7C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CE80  4B D3 96 31 */	bl PSMTXCopy
/* 8060CE84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060CE88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060CE8C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8060CE90  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8060CE94  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8060CE98  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8060CE9C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8060CEA0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8060CEA4  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060CEA8  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060CEAC  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8060CEB0  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8060CEB4  4B C6 32 C5 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060CEB8  38 7F 0A D8 */	addi r3, r31, 0xad8
/* 8060CEBC  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 8060CEC0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060CEC4  4B C6 38 7D */	bl cLib_chaseF__FPfff
/* 8060CEC8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8060CECC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8060CED0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8060CED4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8060CED8  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 8060CEDC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8060CEE0  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8060CEE4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8060CEE8  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 8060CEEC  C0 5F 0A D8 */	lfs f2, 0xad8(r31)
/* 8060CEF0  4B C6 32 89 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060CEF4  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 8060CEF8  2C 00 00 00 */	cmpwi r0, 0
/* 8060CEFC  40 82 00 C8 */	bne lbl_8060CFC4
/* 8060CF00  7F E3 FB 78 */	mr r3, r31
/* 8060CF04  38 80 00 02 */	li r4, 2
/* 8060CF08  38 A0 00 00 */	li r5, 0
/* 8060CF0C  4B FF AB 21 */	bl setActionMode__9daB_MGN_cFii
/* 8060CF10  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8060CF14  D0 3F 0A C8 */	stfs f1, 0xac8(r31)
/* 8060CF18  D0 3F 0A CC */	stfs f1, 0xacc(r31)
/* 8060CF1C  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 8060CF20  D0 1F 0A D0 */	stfs f0, 0xad0(r31)
/* 8060CF24  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8060CF28  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8060CF2C  D0 3F 0A C0 */	stfs f1, 0xac0(r31)
/* 8060CF30  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 8060CF34  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8060CF38  C0 1F 0A C8 */	lfs f0, 0xac8(r31)
/* 8060CF3C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8060CF40  C0 1F 0A CC */	lfs f0, 0xacc(r31)
/* 8060CF44  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8060CF48  C0 1F 0A D0 */	lfs f0, 0xad0(r31)
/* 8060CF4C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8060CF50  C0 1F 0A BC */	lfs f0, 0xabc(r31)
/* 8060CF54  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8060CF58  C0 1F 0A C0 */	lfs f0, 0xac0(r31)
/* 8060CF5C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8060CF60  C0 1F 0A C4 */	lfs f0, 0xac4(r31)
/* 8060CF64  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8060CF68  38 7D 02 48 */	addi r3, r29, 0x248
/* 8060CF6C  38 81 00 50 */	addi r4, r1, 0x50
/* 8060CF70  38 A1 00 44 */	addi r5, r1, 0x44
/* 8060CF74  4B B7 3C A5 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 8060CF78  38 7D 02 48 */	addi r3, r29, 0x248
/* 8060CF7C  4B B5 45 31 */	bl Start__9dCamera_cFv
/* 8060CF80  38 7D 02 48 */	addi r3, r29, 0x248
/* 8060CF84  38 80 00 00 */	li r4, 0
/* 8060CF88  4B B5 60 85 */	bl SetTrimSize__9dCamera_cFl
/* 8060CF8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060CF90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060CF94  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8060CF98  4B A3 54 D1 */	bl reset__14dEvt_control_cFv
/* 8060CF9C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8060CFA0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8060CFA4  80 63 00 00 */	lwz r3, 0(r3)
/* 8060CFA8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8060CFAC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000087@ha */
/* 8060CFB0  38 84 00 87 */	addi r4, r4, 0x0087 /* 0x01000087@l */
/* 8060CFB4  38 A0 00 00 */	li r5, 0
/* 8060CFB8  38 C0 00 00 */	li r6, 0
/* 8060CFBC  4B CA 20 55 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 8060CFC0  48 00 00 A0 */	b lbl_8060D060
lbl_8060CFC4:
/* 8060CFC4  C0 1F 0A C8 */	lfs f0, 0xac8(r31)
/* 8060CFC8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8060CFCC  C0 1F 0A CC */	lfs f0, 0xacc(r31)
/* 8060CFD0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8060CFD4  C0 1F 0A D0 */	lfs f0, 0xad0(r31)
/* 8060CFD8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8060CFDC  C0 1F 0A BC */	lfs f0, 0xabc(r31)
/* 8060CFE0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8060CFE4  C0 1F 0A C0 */	lfs f0, 0xac0(r31)
/* 8060CFE8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8060CFEC  C0 1F 0A C4 */	lfs f0, 0xac4(r31)
/* 8060CFF0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8060CFF4  38 7D 02 48 */	addi r3, r29, 0x248
/* 8060CFF8  38 81 00 38 */	addi r4, r1, 0x38
/* 8060CFFC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8060D000  C0 3F 0A D4 */	lfs f1, 0xad4(r31)
/* 8060D004  38 C0 00 00 */	li r6, 0
/* 8060D008  4B B7 3A D9 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 8060D00C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060D010  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060D014  3B 63 4E C8 */	addi r27, r3, 0x4ec8
/* 8060D018  7F 63 DB 78 */	mr r3, r27
/* 8060D01C  4B A3 59 8D */	bl onSkipFade__14dEvt_control_cFv
/* 8060D020  7F 63 DB 78 */	mr r3, r27
/* 8060D024  7F E4 FB 78 */	mr r4, r31
/* 8060D028  3C A0 80 61 */	lis r5, DemoSkipCallBack__9daB_MGN_cFPvi@ha /* 0x8060C034@ha */
/* 8060D02C  38 A5 C0 34 */	addi r5, r5, DemoSkipCallBack__9daB_MGN_cFPvi@l /* 0x8060C034@l */
/* 8060D030  38 C0 00 00 */	li r6, 0
/* 8060D034  4B A3 58 E1 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8060D038  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F4@ha */
/* 8060D03C  38 03 04 F4 */	addi r0, r3, 0x04F4 /* 0x000704F4@l */
/* 8060D040  90 01 00 20 */	stw r0, 0x20(r1)
/* 8060D044  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8060D048  38 81 00 20 */	addi r4, r1, 0x20
/* 8060D04C  38 A0 FF FF */	li r5, -1
/* 8060D050  81 9F 09 E0 */	lwz r12, 0x9e0(r31)
/* 8060D054  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8060D058  7D 89 03 A6 */	mtctr r12
/* 8060D05C  4E 80 04 21 */	bctrl 
lbl_8060D060:
/* 8060D060  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8060D064  4B D5 51 BD */	bl _restgpr_27
/* 8060D068  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8060D06C  7C 08 03 A6 */	mtlr r0
/* 8060D070  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8060D074  4E 80 00 20 */	blr 
