lbl_8076A5FC:
/* 8076A5FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8076A600  7C 08 02 A6 */	mflr r0
/* 8076A604  90 01 00 44 */	stw r0, 0x44(r1)
/* 8076A608  39 61 00 40 */	addi r11, r1, 0x40
/* 8076A60C  4B BF 7B B9 */	bl _savegpr_23
/* 8076A610  7C 7C 1B 78 */	mr r28, r3
/* 8076A614  3C 80 80 77 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8076B6F8@ha */
/* 8076A618  3B C4 B6 F8 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x8076B6F8@l */
/* 8076A61C  3C 80 80 77 */	lis r4, lit_4007@ha /* 0x8076B45C@ha */
/* 8076A620  3B E4 B4 5C */	addi r31, r4, lit_4007@l /* 0x8076B45C@l */
/* 8076A624  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8076A628  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8076A62C  40 82 00 1C */	bne lbl_8076A648
/* 8076A630  28 1C 00 00 */	cmplwi r28, 0
/* 8076A634  41 82 00 08 */	beq lbl_8076A63C
/* 8076A638  48 00 03 D5 */	bl __ct__11e_rdb_classFv
lbl_8076A63C:
/* 8076A63C  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 8076A640  60 00 00 08 */	ori r0, r0, 8
/* 8076A644  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_8076A648:
/* 8076A648  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 8076A64C  3C 80 80 77 */	lis r4, d_a_e_rdb__stringBase0@ha /* 0x8076B6C4@ha */
/* 8076A650  38 84 B6 C4 */	addi r4, r4, d_a_e_rdb__stringBase0@l /* 0x8076B6C4@l */
/* 8076A654  4B 8C 28 69 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8076A658  7C 7B 1B 78 */	mr r27, r3
/* 8076A65C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8076A660  98 1C 05 B6 */	stb r0, 0x5b6(r28)
/* 8076A664  2C 1B 00 04 */	cmpwi r27, 4
/* 8076A668  40 82 03 88 */	bne lbl_8076A9F0
/* 8076A66C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076A670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076A674  3B A3 4E 00 */	addi r29, r3, 0x4e00
/* 8076A678  7F A3 EB 78 */	mr r3, r29
/* 8076A67C  3C 80 80 77 */	lis r4, d_a_e_rdb__stringBase0@ha /* 0x8076B6C4@ha */
/* 8076A680  38 84 B6 C4 */	addi r4, r4, d_a_e_rdb__stringBase0@l /* 0x8076B6C4@l */
/* 8076A684  38 84 00 06 */	addi r4, r4, 6
/* 8076A688  4B BF E3 0D */	bl strcmp
/* 8076A68C  2C 03 00 00 */	cmpwi r3, 0
/* 8076A690  40 82 00 28 */	bne lbl_8076A6B8
/* 8076A694  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076A698  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076A69C  38 63 09 58 */	addi r3, r3, 0x958
/* 8076A6A0  38 80 00 07 */	li r4, 7
/* 8076A6A4  4B 8C A2 91 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8076A6A8  2C 03 00 00 */	cmpwi r3, 0
/* 8076A6AC  41 82 00 0C */	beq lbl_8076A6B8
/* 8076A6B0  38 60 00 05 */	li r3, 5
/* 8076A6B4  48 00 03 40 */	b lbl_8076A9F4
lbl_8076A6B8:
/* 8076A6B8  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8076A6BC  54 04 46 3E */	srwi r4, r0, 0x18
/* 8076A6C0  2C 04 00 FF */	cmpwi r4, 0xff
/* 8076A6C4  41 82 00 28 */	beq lbl_8076A6EC
/* 8076A6C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076A6CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076A6D0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8076A6D4  7C 05 07 74 */	extsb r5, r0
/* 8076A6D8  4B 8C AC 89 */	bl isSwitch__10dSv_info_cCFii
/* 8076A6DC  2C 03 00 00 */	cmpwi r3, 0
/* 8076A6E0  41 82 00 0C */	beq lbl_8076A6EC
/* 8076A6E4  38 60 00 05 */	li r3, 5
/* 8076A6E8  48 00 03 0C */	b lbl_8076A9F4
lbl_8076A6EC:
/* 8076A6EC  7F 83 E3 78 */	mr r3, r28
/* 8076A6F0  3C 80 80 77 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8076A488@ha */
/* 8076A6F4  38 84 A4 88 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8076A488@l */
/* 8076A6F8  38 A0 3C 00 */	li r5, 0x3c00
/* 8076A6FC  4B 8A FD B5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8076A700  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8076A704  40 82 00 0C */	bne lbl_8076A710
/* 8076A708  38 60 00 05 */	li r3, 5
/* 8076A70C  48 00 02 E8 */	b lbl_8076A9F4
lbl_8076A710:
/* 8076A710  38 80 00 01 */	li r4, 1
/* 8076A714  B0 9C 06 7E */	sth r4, 0x67e(r28)
/* 8076A718  38 00 00 00 */	li r0, 0
/* 8076A71C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8076A720  3C 60 80 77 */	lis r3, struct_8076BA04+0x1@ha /* 0x8076BA05@ha */
/* 8076A724  8C 03 BA 05 */	lbzu r0, struct_8076BA04+0x1@l(r3)  /* 0x8076BA05@l */
/* 8076A728  28 00 00 00 */	cmplwi r0, 0
/* 8076A72C  40 82 00 1C */	bne lbl_8076A748
/* 8076A730  98 9C 0F CE */	stb r4, 0xfce(r28)
/* 8076A734  98 83 00 00 */	stb r4, 0(r3)
/* 8076A738  38 00 FF FF */	li r0, -1
/* 8076A73C  3C 60 80 77 */	lis r3, l_HIO@ha /* 0x8076BA14@ha */
/* 8076A740  38 63 BA 14 */	addi r3, r3, l_HIO@l /* 0x8076BA14@l */
/* 8076A744  98 03 00 04 */	stb r0, 4(r3)
lbl_8076A748:
/* 8076A748  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 8076A74C  80 63 00 04 */	lwz r3, 4(r3)
/* 8076A750  38 03 00 24 */	addi r0, r3, 0x24
/* 8076A754  90 1C 05 04 */	stw r0, 0x504(r28)
/* 8076A758  7F 83 E3 78 */	mr r3, r28
/* 8076A75C  C0 3F 02 58 */	lfs f1, 0x258(r31)
/* 8076A760  FC 40 08 90 */	fmr f2, f1
/* 8076A764  FC 60 08 90 */	fmr f3, f1
/* 8076A768  4B 8A FD C1 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8076A76C  7F 83 E3 78 */	mr r3, r28
/* 8076A770  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8076A774  FC 40 08 90 */	fmr f2, f1
/* 8076A778  FC 60 08 90 */	fmr f3, f1
/* 8076A77C  4B 8A FD BD */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8076A780  38 00 00 00 */	li r0, 0
/* 8076A784  90 01 00 08 */	stw r0, 8(r1)
/* 8076A788  38 7C 07 30 */	addi r3, r28, 0x730
/* 8076A78C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8076A790  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 8076A794  7F 86 E3 78 */	mr r6, r28
/* 8076A798  38 E0 00 01 */	li r7, 1
/* 8076A79C  39 1C 06 F0 */	addi r8, r28, 0x6f0
/* 8076A7A0  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 8076A7A4  39 40 00 00 */	li r10, 0
/* 8076A7A8  4B 90 BA A1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8076A7AC  38 7C 06 F0 */	addi r3, r28, 0x6f0
/* 8076A7B0  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8076A7B4  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 8076A7B8  4B 90 B7 A1 */	bl SetWall__12dBgS_AcchCirFff
/* 8076A7BC  7F A3 EB 78 */	mr r3, r29
/* 8076A7C0  3C 80 80 77 */	lis r4, d_a_e_rdb__stringBase0@ha /* 0x8076B6C4@ha */
/* 8076A7C4  38 84 B6 C4 */	addi r4, r4, d_a_e_rdb__stringBase0@l /* 0x8076B6C4@l */
/* 8076A7C8  38 84 00 06 */	addi r4, r4, 6
/* 8076A7CC  4B BF E1 C9 */	bl strcmp
/* 8076A7D0  2C 03 00 00 */	cmpwi r3, 0
/* 8076A7D4  40 82 00 14 */	bne lbl_8076A7E8
/* 8076A7D8  38 00 03 84 */	li r0, 0x384
/* 8076A7DC  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 8076A7E0  B0 1C 05 60 */	sth r0, 0x560(r28)
/* 8076A7E4  48 00 00 10 */	b lbl_8076A7F4
lbl_8076A7E8:
/* 8076A7E8  38 00 02 58 */	li r0, 0x258
/* 8076A7EC  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 8076A7F0  B0 1C 05 60 */	sth r0, 0x560(r28)
lbl_8076A7F4:
/* 8076A7F4  38 7C 09 08 */	addi r3, r28, 0x908
/* 8076A7F8  38 80 00 C8 */	li r4, 0xc8
/* 8076A7FC  38 A0 00 00 */	li r5, 0
/* 8076A800  7F 86 E3 78 */	mr r6, r28
/* 8076A804  4B 91 90 5D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8076A808  3A E0 00 00 */	li r23, 0
/* 8076A80C  3B 40 00 00 */	li r26, 0
/* 8076A810  3B 3C 09 08 */	addi r25, r28, 0x908
lbl_8076A814:
/* 8076A814  7F 1C D2 14 */	add r24, r28, r26
/* 8076A818  38 78 09 44 */	addi r3, r24, 0x944
/* 8076A81C  38 9E 01 38 */	addi r4, r30, 0x138
/* 8076A820  4B 91 A2 15 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8076A824  93 38 09 88 */	stw r25, 0x988(r24)
/* 8076A828  80 18 09 E0 */	lwz r0, 0x9e0(r24)
/* 8076A82C  60 00 00 04 */	ori r0, r0, 4
/* 8076A830  90 18 09 E0 */	stw r0, 0x9e0(r24)
/* 8076A834  3A F7 00 01 */	addi r23, r23, 1
/* 8076A838  2C 17 00 02 */	cmpwi r23, 2
/* 8076A83C  3B 5A 01 38 */	addi r26, r26, 0x138
/* 8076A840  40 81 FF D4 */	ble lbl_8076A814
/* 8076A844  38 7C 0E 28 */	addi r3, r28, 0xe28
/* 8076A848  38 80 00 FF */	li r4, 0xff
/* 8076A84C  38 A0 00 00 */	li r5, 0
/* 8076A850  7F 86 E3 78 */	mr r6, r28
/* 8076A854  4B 91 90 0D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8076A858  38 7C 0E 64 */	addi r3, r28, 0xe64
/* 8076A85C  38 9E 01 78 */	addi r4, r30, 0x178
/* 8076A860  4B 91 A1 D5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8076A864  38 1C 0E 28 */	addi r0, r28, 0xe28
/* 8076A868  90 1C 0E A8 */	stw r0, 0xea8(r28)
/* 8076A86C  80 1C 0F 00 */	lwz r0, 0xf00(r28)
/* 8076A870  60 00 00 01 */	ori r0, r0, 1
/* 8076A874  90 1C 0F 00 */	stw r0, 0xf00(r28)
/* 8076A878  38 00 00 02 */	li r0, 2
/* 8076A87C  98 1C 0F 1E */	stb r0, 0xf1e(r28)
/* 8076A880  38 00 00 0B */	li r0, 0xb
/* 8076A884  98 1C 0E DB */	stb r0, 0xedb(r28)
/* 8076A888  38 7C 0C EC */	addi r3, r28, 0xcec
/* 8076A88C  38 9E 01 B8 */	addi r4, r30, 0x1b8
/* 8076A890  4B 91 A0 25 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8076A894  38 1C 0E 28 */	addi r0, r28, 0xe28
/* 8076A898  90 1C 0D 30 */	stw r0, 0xd30(r28)
/* 8076A89C  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 8076A8A0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8076A8A4  38 BC 05 38 */	addi r5, r28, 0x538
/* 8076A8A8  38 DC 0F C0 */	addi r6, r28, 0xfc0
/* 8076A8AC  38 E0 00 03 */	li r7, 3
/* 8076A8B0  39 00 00 01 */	li r8, 1
/* 8076A8B4  39 20 00 01 */	li r9, 1
/* 8076A8B8  4B B5 67 FD */	bl init__15Z2CreatureEnemyFP3VecP3VecP3VecUcUcUc
/* 8076A8BC  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 8076A8C0  3C 80 80 77 */	lis r4, d_a_e_rdb__stringBase0@ha /* 0x8076B6C4@ha */
/* 8076A8C4  38 84 B6 C4 */	addi r4, r4, d_a_e_rdb__stringBase0@l /* 0x8076B6C4@l */
/* 8076A8C8  4B B5 72 C9 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 8076A8CC  38 1C 05 D0 */	addi r0, r28, 0x5d0
/* 8076A8D0  90 1C 0F A4 */	stw r0, 0xfa4(r28)
/* 8076A8D4  38 00 00 06 */	li r0, 6
/* 8076A8D8  98 1C 0F BA */	stb r0, 0xfba(r28)
/* 8076A8DC  7F A3 EB 78 */	mr r3, r29
/* 8076A8E0  3C 80 80 77 */	lis r4, d_a_e_rdb__stringBase0@ha /* 0x8076B6C4@ha */
/* 8076A8E4  38 84 B6 C4 */	addi r4, r4, d_a_e_rdb__stringBase0@l /* 0x8076B6C4@l */
/* 8076A8E8  38 84 00 06 */	addi r4, r4, 6
/* 8076A8EC  4B BF E0 A9 */	bl strcmp
/* 8076A8F0  2C 03 00 00 */	cmpwi r3, 0
/* 8076A8F4  40 82 00 B4 */	bne lbl_8076A9A8
/* 8076A8F8  38 60 00 00 */	li r3, 0
/* 8076A8FC  B0 7C 06 7E */	sth r3, 0x67e(r28)
/* 8076A900  38 00 00 0A */	li r0, 0xa
/* 8076A904  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8076A908  C0 1F 02 5C */	lfs f0, 0x25c(r31)
/* 8076A90C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8076A910  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8076A914  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8076A918  C0 1F 02 60 */	lfs f0, 0x260(r31)
/* 8076A91C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 8076A920  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 8076A924  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8076A928  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 8076A92C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8076A930  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 8076A934  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8076A938  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 8076A93C  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8076A940  B0 1C 04 C8 */	sth r0, 0x4c8(r28)
/* 8076A944  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8076A948  B0 1C 04 CA */	sth r0, 0x4ca(r28)
/* 8076A94C  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 8076A950  B0 1C 04 CC */	sth r0, 0x4cc(r28)
/* 8076A954  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8076A958  98 1C 04 CE */	stb r0, 0x4ce(r28)
/* 8076A95C  88 1C 04 E3 */	lbz r0, 0x4e3(r28)
/* 8076A960  98 1C 04 CF */	stb r0, 0x4cf(r28)
/* 8076A964  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8076A968  D0 1C 04 A8 */	stfs f0, 0x4a8(r28)
/* 8076A96C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8076A970  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
/* 8076A974  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8076A978  D0 1C 04 B0 */	stfs f0, 0x4b0(r28)
/* 8076A97C  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8076A980  B0 1C 04 B4 */	sth r0, 0x4b4(r28)
/* 8076A984  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8076A988  B0 1C 04 B6 */	sth r0, 0x4b6(r28)
/* 8076A98C  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 8076A990  B0 1C 04 B8 */	sth r0, 0x4b8(r28)
/* 8076A994  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8076A998  98 1C 04 BA */	stb r0, 0x4ba(r28)
/* 8076A99C  88 1C 04 E3 */	lbz r0, 0x4e3(r28)
/* 8076A9A0  98 1C 04 BB */	stb r0, 0x4bb(r28)
/* 8076A9A4  48 00 00 3C */	b lbl_8076A9E0
lbl_8076A9A8:
/* 8076A9A8  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 8076A9AC  28 00 00 FF */	cmplwi r0, 0xff
/* 8076A9B0  40 82 00 28 */	bne lbl_8076A9D8
/* 8076A9B4  38 00 00 01 */	li r0, 1
/* 8076A9B8  98 1C 0F CF */	stb r0, 0xfcf(r28)
/* 8076A9BC  38 00 00 00 */	li r0, 0
/* 8076A9C0  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 8076A9C4  38 00 65 90 */	li r0, 0x6590
/* 8076A9C8  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 8076A9CC  C0 1F 02 64 */	lfs f0, 0x264(r31)
/* 8076A9D0  D0 1C 06 E0 */	stfs f0, 0x6e0(r28)
/* 8076A9D4  48 00 00 0C */	b lbl_8076A9E0
lbl_8076A9D8:
/* 8076A9D8  38 00 00 01 */	li r0, 1
/* 8076A9DC  B0 1C 06 7E */	sth r0, 0x67e(r28)
lbl_8076A9E0:
/* 8076A9E0  38 00 00 01 */	li r0, 1
/* 8076A9E4  98 1C 06 80 */	stb r0, 0x680(r28)
/* 8076A9E8  7F 83 E3 78 */	mr r3, r28
/* 8076A9EC  4B FF E9 39 */	bl daE_RDB_Execute__FP11e_rdb_class
lbl_8076A9F0:
/* 8076A9F0  7F 63 DB 78 */	mr r3, r27
lbl_8076A9F4:
/* 8076A9F4  39 61 00 40 */	addi r11, r1, 0x40
/* 8076A9F8  4B BF 78 19 */	bl _restgpr_23
/* 8076A9FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8076AA00  7C 08 03 A6 */	mtlr r0
/* 8076AA04  38 21 00 40 */	addi r1, r1, 0x40
/* 8076AA08  4E 80 00 20 */	blr 
