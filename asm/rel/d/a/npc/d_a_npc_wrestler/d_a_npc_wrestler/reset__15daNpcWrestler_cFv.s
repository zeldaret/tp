lbl_80B308B0:
/* 80B308B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B308B4  7C 08 02 A6 */	mflr r0
/* 80B308B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B308BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B308C0  4B 83 19 19 */	bl _savegpr_28
/* 80B308C4  7C 7E 1B 78 */	mr r30, r3
/* 80B308C8  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B308CC  3B E4 16 DC */	addi r31, r4, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B308D0  4B 62 1F F9 */	bl initialize__8daNpcF_cFv
/* 80B308D4  80 7E 0B E0 */	lwz r3, 0xbe0(r30)
/* 80B308D8  4B 61 FE 61 */	bl initialize__15daNpcF_MatAnm_cFv
/* 80B308DC  38 7E 0B E4 */	addi r3, r30, 0xbe4
/* 80B308E0  4B 62 07 59 */	bl initialize__15daNpcF_Lookat_cFv
/* 80B308E4  3B 80 00 00 */	li r28, 0
/* 80B308E8  3B A0 00 00 */	li r29, 0
lbl_80B308EC:
/* 80B308EC  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B308F0  7C 7E 1A 14 */	add r3, r30, r3
/* 80B308F4  4B 61 FD BD */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B308F8  3B 9C 00 01 */	addi r28, r28, 1
/* 80B308FC  2C 1C 00 02 */	cmpwi r28, 2
/* 80B30900  3B BD 00 08 */	addi r29, r29, 8
/* 80B30904  41 80 FF E8 */	blt lbl_80B308EC
/* 80B30908  38 A0 00 00 */	li r5, 0
/* 80B3090C  90 BE 0E 80 */	stw r5, 0xe80(r30)
/* 80B30910  90 BE 0E 84 */	stw r5, 0xe84(r30)
/* 80B30914  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B30918  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B3091C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B30920  80 04 00 04 */	lwz r0, 4(r4)
/* 80B30924  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B30928  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B3092C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B30930  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B30934  38 00 FF FF */	li r0, -1
/* 80B30938  B0 1E 0E 90 */	sth r0, 0xe90(r30)
/* 80B3093C  B0 BE 0E 96 */	sth r5, 0xe96(r30)
/* 80B30940  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 80B30944  D0 1E 0E 8C */	stfs f0, 0xe8c(r30)
/* 80B30948  B0 BE 09 E6 */	sth r5, 0x9e6(r30)
/* 80B3094C  88 1E 0E 9B */	lbz r0, 0xe9b(r30)
/* 80B30950  28 00 00 01 */	cmplwi r0, 1
/* 80B30954  40 82 00 A8 */	bne lbl_80B309FC
/* 80B30958  38 60 00 3F */	li r3, 0x3f
/* 80B3095C  4B 62 4C D9 */	bl daNpcF_chkEvtBit__FUl
/* 80B30960  2C 03 00 00 */	cmpwi r3, 0
/* 80B30964  41 82 00 98 */	beq lbl_80B309FC
/* 80B30968  38 60 00 3E */	li r3, 0x3e
/* 80B3096C  4B 62 4C C9 */	bl daNpcF_chkEvtBit__FUl
/* 80B30970  2C 03 00 00 */	cmpwi r3, 0
/* 80B30974  41 82 00 4C */	beq lbl_80B309C0
/* 80B30978  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80B3097C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B30980  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 80B30984  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B30988  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 80B3098C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B30990  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B30994  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80B30998  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B3099C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80B309A0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B309A4  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80B309A8  7F C3 F3 78 */	mr r3, r30
/* 80B309AC  38 80 2C D3 */	li r4, 0x2cd3
/* 80B309B0  4B 62 38 A1 */	bl setAngle__8daNpcF_cFs
/* 80B309B4  38 00 2C D3 */	li r0, 0x2cd3
/* 80B309B8  B0 1E 04 B6 */	sth r0, 0x4b6(r30)
/* 80B309BC  48 00 00 40 */	b lbl_80B309FC
lbl_80B309C0:
/* 80B309C0  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B309C4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B309C8  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 80B309CC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B309D0  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 80B309D4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B309D8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B309DC  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80B309E0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B309E4  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80B309E8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B309EC  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80B309F0  7F C3 F3 78 */	mr r3, r30
/* 80B309F4  38 80 00 00 */	li r4, 0
/* 80B309F8  4B 62 38 59 */	bl setAngle__8daNpcF_cFs
lbl_80B309FC:
/* 80B309FC  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B30A00  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B30A04  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80B30A08  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B30A0C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80B30A10  38 00 00 00 */	li r0, 0
/* 80B30A14  98 1E 0E 02 */	stb r0, 0xe02(r30)
/* 80B30A18  38 00 FF FF */	li r0, -1
/* 80B30A1C  90 1E 0E 78 */	stw r0, 0xe78(r30)
/* 80B30A20  80 7E 0B D8 */	lwz r3, 0xbd8(r30)
/* 80B30A24  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B30A28  D0 1E 0E 8C */	stfs f0, 0xe8c(r30)
/* 80B30A2C  88 1E 0E 9B */	lbz r0, 0xe9b(r30)
/* 80B30A30  28 00 00 00 */	cmplwi r0, 0
/* 80B30A34  40 82 00 54 */	bne lbl_80B30A88
/* 80B30A38  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B30A3C  54 00 46 3F */	rlwinm. r0, r0, 8, 0x18, 0x1f
/* 80B30A40  41 82 00 48 */	beq lbl_80B30A88
/* 80B30A44  7F C3 F3 78 */	mr r3, r30
/* 80B30A48  48 00 01 A5 */	bl checkArenaInfo__15daNpcWrestler_cFv
/* 80B30A4C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B30A50  54 00 46 3E */	srwi r0, r0, 0x18
/* 80B30A54  90 1E 0E 7C */	stw r0, 0xe7c(r30)
/* 80B30A58  3C 60 80 B4 */	lis r3, lit_4776@ha /* 0x80B42768@ha */
/* 80B30A5C  38 83 27 68 */	addi r4, r3, lit_4776@l /* 0x80B42768@l */
/* 80B30A60  80 64 00 00 */	lwz r3, 0(r4)
/* 80B30A64  80 04 00 04 */	lwz r0, 4(r4)
/* 80B30A68  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B30A6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B30A70  80 04 00 08 */	lwz r0, 8(r4)
/* 80B30A74  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B30A78  7F C3 F3 78 */	mr r3, r30
/* 80B30A7C  38 81 00 14 */	addi r4, r1, 0x14
/* 80B30A80  48 00 00 59 */	bl setAction__15daNpcWrestler_cFM15daNpcWrestler_cFPCvPvPv_b
/* 80B30A84  48 00 00 30 */	b lbl_80B30AB4
lbl_80B30A88:
/* 80B30A88  3C 60 80 B4 */	lis r3, lit_4779@ha /* 0x80B42774@ha */
/* 80B30A8C  38 83 27 74 */	addi r4, r3, lit_4779@l /* 0x80B42774@l */
/* 80B30A90  80 64 00 00 */	lwz r3, 0(r4)
/* 80B30A94  80 04 00 04 */	lwz r0, 4(r4)
/* 80B30A98  90 61 00 08 */	stw r3, 8(r1)
/* 80B30A9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B30AA0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B30AA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B30AA8  7F C3 F3 78 */	mr r3, r30
/* 80B30AAC  38 81 00 08 */	addi r4, r1, 8
/* 80B30AB0  48 00 00 29 */	bl setAction__15daNpcWrestler_cFM15daNpcWrestler_cFPCvPvPv_b
lbl_80B30AB4:
/* 80B30AB4  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B30AB8  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 80B30ABC  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 80B30AC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B30AC4  4B 83 17 61 */	bl _restgpr_28
/* 80B30AC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B30ACC  7C 08 03 A6 */	mtlr r0
/* 80B30AD0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B30AD4  4E 80 00 20 */	blr 
