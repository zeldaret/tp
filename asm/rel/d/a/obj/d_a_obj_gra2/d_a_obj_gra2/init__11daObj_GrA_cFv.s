lbl_80C010D4:
/* 80C010D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C010D8  7C 08 02 A6 */	mflr r0
/* 80C010DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C010E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C010E4  4B 76 10 F4 */	b _savegpr_28
/* 80C010E8  7C 7F 1B 78 */	mr r31, r3
/* 80C010EC  80 63 07 54 */	lwz r3, 0x754(r3)
/* 80C010F0  80 63 00 04 */	lwz r3, 4(r3)
/* 80C010F4  38 03 00 24 */	addi r0, r3, 0x24
/* 80C010F8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C010FC  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C01100  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C01104  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C01108  38 C0 00 03 */	li r6, 3
/* 80C0110C  38 E0 00 01 */	li r7, 1
/* 80C01110  4B 6B F4 20 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80C01114  7F E3 FB 78 */	mr r3, r31
/* 80C01118  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80C0111C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C01120  7D 89 03 A6 */	mtctr r12
/* 80C01124  4E 80 04 21 */	bctrl 
/* 80C01128  90 7F 01 00 */	stw r3, 0x100(r31)
/* 80C0112C  3C 60 80 C1 */	lis r3, l_HIO@ha
/* 80C01130  38 03 09 04 */	addi r0, r3, l_HIO@l
/* 80C01134  90 1F 0A 4C */	stw r0, 0xa4c(r31)
/* 80C01138  38 00 00 28 */	li r0, 0x28
/* 80C0113C  98 1F 05 48 */	stb r0, 0x548(r31)
/* 80C01140  38 00 00 16 */	li r0, 0x16
/* 80C01144  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80C01148  38 7F 08 D8 */	addi r3, r31, 0x8d8
/* 80C0114C  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha
/* 80C01150  38 84 FA 7C */	addi r4, r4, m__17daObj_GrA_Param_c@l
/* 80C01154  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80C01158  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80C0115C  4B 47 4D FC */	b SetWall__12dBgS_AcchCirFff
/* 80C01160  38 1F 04 E4 */	addi r0, r31, 0x4e4
/* 80C01164  90 01 00 08 */	stw r0, 8(r1)
/* 80C01168  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80C0116C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C01170  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80C01174  7F E6 FB 78 */	mr r6, r31
/* 80C01178  38 E0 00 01 */	li r7, 1
/* 80C0117C  39 1F 08 D8 */	addi r8, r31, 0x8d8
/* 80C01180  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80C01184  39 5F 04 DC */	addi r10, r31, 0x4dc
/* 80C01188  4B 47 50 C0 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C0118C  38 7F 08 9C */	addi r3, r31, 0x89c
/* 80C01190  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha
/* 80C01194  38 84 FA 7C */	addi r4, r4, m__17daObj_GrA_Param_c@l
/* 80C01198  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80C0119C  FC 00 00 1E */	fctiwz f0, f0
/* 80C011A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C011A4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C011A8  38 A0 00 00 */	li r5, 0
/* 80C011AC  7F E6 FB 78 */	mr r6, r31
/* 80C011B0  4B 48 26 B0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C011B4  38 7F 0F 50 */	addi r3, r31, 0xf50
/* 80C011B8  3C 80 80 3B */	lis r4, mCcDCyl__11daBaseNpc_c@ha
/* 80C011BC  38 84 37 5C */	addi r4, r4, mCcDCyl__11daBaseNpc_c@l
/* 80C011C0  4B 48 36 F4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C011C4  38 1F 08 9C */	addi r0, r31, 0x89c
/* 80C011C8  90 1F 0F 94 */	stw r0, 0xf94(r31)
/* 80C011CC  38 7F 0C E0 */	addi r3, r31, 0xce0
/* 80C011D0  3C 80 80 3B */	lis r4, mCcDSph__11daBaseNpc_c@ha
/* 80C011D4  38 84 37 A0 */	addi r4, r4, mCcDSph__11daBaseNpc_c@l
/* 80C011D8  4B 48 38 5C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C011DC  38 1F 08 9C */	addi r0, r31, 0x89c
/* 80C011E0  90 1F 0D 24 */	stw r0, 0xd24(r31)
/* 80C011E4  38 00 00 0B */	li r0, 0xb
/* 80C011E8  98 1F 0D 54 */	stb r0, 0xd54(r31)
/* 80C011EC  38 60 00 01 */	li r3, 1
/* 80C011F0  98 7F 0D 57 */	stb r3, 0xd57(r31)
/* 80C011F4  38 00 08 00 */	li r0, 0x800
/* 80C011F8  90 1F 0C F0 */	stw r0, 0xcf0(r31)
/* 80C011FC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80C01200  60 00 00 0C */	ori r0, r0, 0xc
/* 80C01204  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80C01208  98 7F 0C F4 */	stb r3, 0xcf4(r31)
/* 80C0120C  80 1F 0D 7C */	lwz r0, 0xd7c(r31)
/* 80C01210  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80C01214  90 1F 0D 7C */	stw r0, 0xd7c(r31)
/* 80C01218  80 1F 0D 0C */	lwz r0, 0xd0c(r31)
/* 80C0121C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C01220  90 1F 0D 0C */	stw r0, 0xd0c(r31)
/* 80C01224  38 7F 0E 18 */	addi r3, r31, 0xe18
/* 80C01228  3C 80 80 3B */	lis r4, mCcDSph__11daBaseNpc_c@ha
/* 80C0122C  38 84 37 A0 */	addi r4, r4, mCcDSph__11daBaseNpc_c@l
/* 80C01230  4B 48 38 04 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C01234  38 1F 08 9C */	addi r0, r31, 0x89c
/* 80C01238  90 1F 0E 5C */	stw r0, 0xe5c(r31)
/* 80C0123C  38 00 00 0B */	li r0, 0xb
/* 80C01240  98 1F 0E 8C */	stb r0, 0xe8c(r31)
/* 80C01244  38 60 00 01 */	li r3, 1
/* 80C01248  98 7F 0E 8F */	stb r3, 0xe8f(r31)
/* 80C0124C  38 00 08 00 */	li r0, 0x800
/* 80C01250  90 1F 0E 28 */	stw r0, 0xe28(r31)
/* 80C01254  80 1F 0E 18 */	lwz r0, 0xe18(r31)
/* 80C01258  60 00 00 0C */	ori r0, r0, 0xc
/* 80C0125C  90 1F 0E 18 */	stw r0, 0xe18(r31)
/* 80C01260  98 7F 0E 2C */	stb r3, 0xe2c(r31)
/* 80C01264  80 1F 0E B4 */	lwz r0, 0xeb4(r31)
/* 80C01268  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80C0126C  90 1F 0E B4 */	stw r0, 0xeb4(r31)
/* 80C01270  80 1F 0E 44 */	lwz r0, 0xe44(r31)
/* 80C01274  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C01278  90 1F 0E 44 */	stw r0, 0xe44(r31)
/* 80C0127C  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80C01280  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C01284  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C01288  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C0128C  4B 47 58 20 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C01290  80 1F 06 48 */	lwz r0, 0x648(r31)
/* 80C01294  90 1F 09 D4 */	stw r0, 0x9d4(r31)
/* 80C01298  80 1F 06 4C */	lwz r0, 0x64c(r31)
/* 80C0129C  90 1F 09 D8 */	stw r0, 0x9d8(r31)
/* 80C012A0  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 80C012A4  90 1F 09 DC */	stw r0, 0x9dc(r31)
/* 80C012A8  88 1F 06 54 */	lbz r0, 0x654(r31)
/* 80C012AC  98 1F 09 E0 */	stb r0, 0x9e0(r31)
/* 80C012B0  A0 1F 06 5C */	lhz r0, 0x65c(r31)
/* 80C012B4  B0 1F 09 E8 */	sth r0, 0x9e8(r31)
/* 80C012B8  A0 1F 06 5E */	lhz r0, 0x65e(r31)
/* 80C012BC  B0 1F 09 EA */	sth r0, 0x9ea(r31)
/* 80C012C0  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 80C012C4  90 1F 09 EC */	stw r0, 0x9ec(r31)
/* 80C012C8  80 1F 06 64 */	lwz r0, 0x664(r31)
/* 80C012CC  90 1F 09 F0 */	stw r0, 0x9f0(r31)
/* 80C012D0  C0 1F 06 6C */	lfs f0, 0x66c(r31)
/* 80C012D4  D0 1F 09 F8 */	stfs f0, 0x9f8(r31)
/* 80C012D8  C0 1F 06 70 */	lfs f0, 0x670(r31)
/* 80C012DC  D0 1F 09 FC */	stfs f0, 0x9fc(r31)
/* 80C012E0  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 80C012E4  D0 1F 0A 00 */	stfs f0, 0xa00(r31)
/* 80C012E8  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 80C012EC  90 1F 0A 04 */	stw r0, 0xa04(r31)
/* 80C012F0  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 80C012F4  D0 1F 0A 08 */	stfs f0, 0xa08(r31)
/* 80C012F8  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 80C012FC  90 1F 0A 0C */	stw r0, 0xa0c(r31)
/* 80C01300  C0 1F 06 04 */	lfs f0, 0x604(r31)
/* 80C01304  D0 1F 0A 10 */	stfs f0, 0xa10(r31)
/* 80C01308  3B 80 00 00 */	li r28, 0
/* 80C0130C  3B C0 00 00 */	li r30, 0
/* 80C01310  3C 60 80 C1 */	lis r3, lit_4333@ha
/* 80C01314  3B A3 FB 98 */	addi r29, r3, lit_4333@l
lbl_80C01318:
/* 80C01318  38 7E 0A DC */	addi r3, r30, 0xadc
/* 80C0131C  7C 7F 1A 14 */	add r3, r31, r3
/* 80C01320  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C01324  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80C01328  FC 40 08 90 */	fmr f2, f1
/* 80C0132C  4B 44 F9 70 */	b init__7dPaPo_cFP9dBgS_Acchff
/* 80C01330  3B 9C 00 01 */	addi r28, r28, 1
/* 80C01334  2C 1C 00 06 */	cmpwi r28, 6
/* 80C01338  3B DE 00 5C */	addi r30, r30, 0x5c
/* 80C0133C  41 80 FF DC */	blt lbl_80C01318
/* 80C01340  7F E3 FB 78 */	mr r3, r31
/* 80C01344  4B 54 DD 5C */	b setEnvTevColor__11daBaseNpc_cFv
/* 80C01348  7F E3 FB 78 */	mr r3, r31
/* 80C0134C  4B 54 DD B0 */	b setRoomNo__11daBaseNpc_cFv
/* 80C01350  88 1F 0A 7E */	lbz r0, 0xa7e(r31)
/* 80C01354  28 00 00 02 */	cmplwi r0, 2
/* 80C01358  40 82 00 10 */	bne lbl_80C01368
/* 80C0135C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80C01360  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80C01364  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80C01368:
/* 80C01368  7F E3 FB 78 */	mr r3, r31
/* 80C0136C  4B FF FA 8D */	bl getPathNo__11daObj_GrA_cFv
/* 80C01370  7C 64 1B 78 */	mr r4, r3
/* 80C01374  38 7F 15 28 */	addi r3, r31, 0x1528
/* 80C01378  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C0137C  7C 05 07 74 */	extsb r5, r0
/* 80C01380  38 C0 00 01 */	li r6, 1
/* 80C01384  4B 54 C6 38 */	b setPathInfo__16daBaseNpc_path_cFUcScSc
/* 80C01388  7F E3 FB 78 */	mr r3, r31
/* 80C0138C  4B FF FB 71 */	bl restart__11daObj_GrA_cFv
/* 80C01390  7F E3 FB 78 */	mr r3, r31
/* 80C01394  4B 54 E3 DC */	b MoveBGExecute__23daBaseNpc_moveBgActor_cFv
/* 80C01398  39 61 00 30 */	addi r11, r1, 0x30
/* 80C0139C  4B 76 0E 88 */	b _restgpr_28
/* 80C013A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C013A4  7C 08 03 A6 */	mtlr r0
/* 80C013A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C013AC  4E 80 00 20 */	blr 
