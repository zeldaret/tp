lbl_80B2F688:
/* 80B2F688  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B2F68C  7C 08 02 A6 */	mflr r0
/* 80B2F690  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B2F694  39 61 00 30 */	addi r11, r1, 0x30
/* 80B2F698  4B 83 2B 41 */	bl _savegpr_28
/* 80B2F69C  7C 7C 1B 78 */	mr r28, r3
/* 80B2F6A0  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B2F6A4  3B C4 16 DC */	addi r30, r4, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B2F6A8  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B2F6AC  3B E4 1D F8 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B2F6B0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B2F6B4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B2F6B8  40 82 00 1C */	bne lbl_80B2F6D4
/* 80B2F6BC  28 1C 00 00 */	cmplwi r28, 0
/* 80B2F6C0  41 82 00 08 */	beq lbl_80B2F6C8
/* 80B2F6C4  4B FF FB C9 */	bl __ct__15daNpcWrestler_cFv
lbl_80B2F6C8:
/* 80B2F6C8  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80B2F6CC  60 00 00 08 */	ori r0, r0, 8
/* 80B2F6D0  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80B2F6D4:
/* 80B2F6D4  88 1C 04 99 */	lbz r0, 0x499(r28)
/* 80B2F6D8  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 80B2F6DC  98 1C 0E 9B */	stb r0, 0xe9b(r28)
/* 80B2F6E0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80B2F6E4  54 00 C4 3E */	rlwinm r0, r0, 0x18, 0x10, 0x1f
/* 80B2F6E8  7C 00 07 34 */	extsh r0, r0
/* 80B2F6EC  90 1C 0E 88 */	stw r0, 0xe88(r28)
/* 80B2F6F0  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B2F6F4  54 00 10 3A */	slwi r0, r0, 2
/* 80B2F6F8  38 7F 08 04 */	addi r3, r31, 0x804
/* 80B2F6FC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B2F700  90 1C 0E 04 */	stw r0, 0xe04(r28)
/* 80B2F704  38 7C 0E 64 */	addi r3, r28, 0xe64
/* 80B2F708  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B2F70C  4B 4F D7 B1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B2F710  7C 7D 1B 78 */	mr r29, r3
/* 80B2F714  2C 1D 00 04 */	cmpwi r29, 4
/* 80B2F718  40 82 00 20 */	bne lbl_80B2F738
/* 80B2F71C  38 7C 0E 6C */	addi r3, r28, 0xe6c
/* 80B2F720  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B2F724  54 00 10 3A */	slwi r0, r0, 2
/* 80B2F728  38 9F 00 24 */	addi r4, r31, 0x24
/* 80B2F72C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B2F730  4B 4F D7 8D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B2F734  7C 7D 1B 78 */	mr r29, r3
lbl_80B2F738:
/* 80B2F738  2C 1D 00 04 */	cmpwi r29, 4
/* 80B2F73C  40 82 02 1C */	bne lbl_80B2F958
/* 80B2F740  7F 83 E3 78 */	mr r3, r28
/* 80B2F744  3C 80 80 B3 */	lis r4, createHeapCallBack__15daNpcWrestler_cFP10fopAc_ac_c@ha /* 0x80B30150@ha */
/* 80B2F748  38 84 01 50 */	addi r4, r4, createHeapCallBack__15daNpcWrestler_cFP10fopAc_ac_c@l /* 0x80B30150@l */
/* 80B2F74C  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B2F750  28 00 00 00 */	cmplwi r0, 0
/* 80B2F754  38 A0 3A 40 */	li r5, 0x3a40
/* 80B2F758  40 82 00 08 */	bne lbl_80B2F760
/* 80B2F75C  38 A0 49 B0 */	li r5, 0x49b0
lbl_80B2F760:
/* 80B2F760  4B 4E AD 51 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B2F764  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B2F768  40 82 00 0C */	bne lbl_80B2F774
/* 80B2F76C  38 60 00 05 */	li r3, 5
/* 80B2F770  48 00 01 EC */	b lbl_80B2F95C
lbl_80B2F774:
/* 80B2F774  38 1E 00 00 */	addi r0, r30, 0
/* 80B2F778  90 1C 0B D8 */	stw r0, 0xbd8(r28)
/* 80B2F77C  80 9C 0B D8 */	lwz r4, 0xbd8(r28)
/* 80B2F780  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B2F784  1C 60 00 4C */	mulli r3, r0, 0x4c
/* 80B2F788  38 03 00 FC */	addi r0, r3, 0xfc
/* 80B2F78C  7C 04 02 14 */	add r0, r4, r0
/* 80B2F790  90 1C 0B DC */	stw r0, 0xbdc(r28)
/* 80B2F794  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B2F798  80 63 00 04 */	lwz r3, 4(r3)
/* 80B2F79C  38 03 00 24 */	addi r0, r3, 0x24
/* 80B2F7A0  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80B2F7A4  7F 83 E3 78 */	mr r3, r28
/* 80B2F7A8  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 80B2F7AC  C0 5E 01 98 */	lfs f2, 0x198(r30)
/* 80B2F7B0  FC 60 08 90 */	fmr f3, f1
/* 80B2F7B4  C0 9E 01 9C */	lfs f4, 0x19c(r30)
/* 80B2F7B8  C0 BE 01 A0 */	lfs f5, 0x1a0(r30)
/* 80B2F7BC  FC C0 20 90 */	fmr f6, f4
/* 80B2F7C0  4B 4E AD 89 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B2F7C4  7F 83 E3 78 */	mr r3, r28
/* 80B2F7C8  48 00 10 E9 */	bl reset__15daNpcWrestler_cFv
/* 80B2F7CC  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 80B2F7D0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B2F7D4  38 BC 05 38 */	addi r5, r28, 0x538
/* 80B2F7D8  38 C0 00 03 */	li r6, 3
/* 80B2F7DC  38 E0 00 01 */	li r7, 1
/* 80B2F7E0  4B 79 0D 51 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80B2F7E4  80 9C 0B DC */	lwz r4, 0xbdc(r28)
/* 80B2F7E8  38 7C 07 E4 */	addi r3, r28, 0x7e4
/* 80B2F7EC  C0 24 00 08 */	lfs f1, 8(r4)
/* 80B2F7F0  C0 44 00 04 */	lfs f2, 4(r4)
/* 80B2F7F4  4B 54 67 65 */	bl SetWall__12dBgS_AcchCirFff
/* 80B2F7F8  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 80B2F7FC  90 01 00 08 */	stw r0, 8(r1)
/* 80B2F800  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80B2F804  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B2F808  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80B2F80C  7F 86 E3 78 */	mr r6, r28
/* 80B2F810  38 E0 00 01 */	li r7, 1
/* 80B2F814  39 1C 07 E4 */	addi r8, r28, 0x7e4
/* 80B2F818  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80B2F81C  39 5C 04 DC */	addi r10, r28, 0x4dc
/* 80B2F820  4B 54 6A 29 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B2F824  38 7C 07 A8 */	addi r3, r28, 0x7a8
/* 80B2F828  80 9C 0B D8 */	lwz r4, 0xbd8(r28)
/* 80B2F82C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B2F830  FC 00 00 1E */	fctiwz f0, f0
/* 80B2F834  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B2F838  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B2F83C  38 A0 00 00 */	li r5, 0
/* 80B2F840  7F 86 E3 78 */	mr r6, r28
/* 80B2F844  4B 55 40 1D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B2F848  38 7C 0C 90 */	addi r3, r28, 0xc90
/* 80B2F84C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80B2F850  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80B2F854  4B 55 50 61 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B2F858  38 1C 07 A8 */	addi r0, r28, 0x7a8
/* 80B2F85C  90 1C 0C D4 */	stw r0, 0xcd4(r28)
/* 80B2F860  38 00 00 00 */	li r0, 0
/* 80B2F864  90 1C 0C B8 */	stw r0, 0xcb8(r28)
/* 80B2F868  90 1C 0C A8 */	stw r0, 0xca8(r28)
/* 80B2F86C  38 7C 0D B4 */	addi r3, r28, 0xdb4
/* 80B2F870  80 9C 0B DC */	lwz r4, 0xbdc(r28)
/* 80B2F874  C0 24 00 00 */	lfs f1, 0(r4)
/* 80B2F878  4B 73 F9 81 */	bl SetH__8cM3dGCylFf
/* 80B2F87C  38 7C 0D B4 */	addi r3, r28, 0xdb4
/* 80B2F880  80 9C 0B DC */	lwz r4, 0xbdc(r28)
/* 80B2F884  C0 24 00 08 */	lfs f1, 8(r4)
/* 80B2F888  4B 73 F9 79 */	bl SetR__8cM3dGCylFf
/* 80B2F88C  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80B2F890  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2F894  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B2F898  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B2F89C  4B 54 72 11 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80B2F8A0  80 1C 06 AC */	lwz r0, 0x6ac(r28)
/* 80B2F8A4  90 1C 0A 44 */	stw r0, 0xa44(r28)
/* 80B2F8A8  80 1C 06 B0 */	lwz r0, 0x6b0(r28)
/* 80B2F8AC  90 1C 0A 48 */	stw r0, 0xa48(r28)
/* 80B2F8B0  80 1C 06 B4 */	lwz r0, 0x6b4(r28)
/* 80B2F8B4  90 1C 0A 4C */	stw r0, 0xa4c(r28)
/* 80B2F8B8  88 1C 06 B8 */	lbz r0, 0x6b8(r28)
/* 80B2F8BC  98 1C 0A 50 */	stb r0, 0xa50(r28)
/* 80B2F8C0  A0 1C 06 C0 */	lhz r0, 0x6c0(r28)
/* 80B2F8C4  B0 1C 0A 58 */	sth r0, 0xa58(r28)
/* 80B2F8C8  A0 1C 06 C2 */	lhz r0, 0x6c2(r28)
/* 80B2F8CC  B0 1C 0A 5A */	sth r0, 0xa5a(r28)
/* 80B2F8D0  80 1C 06 C4 */	lwz r0, 0x6c4(r28)
/* 80B2F8D4  90 1C 0A 5C */	stw r0, 0xa5c(r28)
/* 80B2F8D8  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 80B2F8DC  90 1C 0A 60 */	stw r0, 0xa60(r28)
/* 80B2F8E0  C0 1C 06 D0 */	lfs f0, 0x6d0(r28)
/* 80B2F8E4  D0 1C 0A 68 */	stfs f0, 0xa68(r28)
/* 80B2F8E8  C0 1C 06 D4 */	lfs f0, 0x6d4(r28)
/* 80B2F8EC  D0 1C 0A 6C */	stfs f0, 0xa6c(r28)
/* 80B2F8F0  C0 1C 06 D8 */	lfs f0, 0x6d8(r28)
/* 80B2F8F4  D0 1C 0A 70 */	stfs f0, 0xa70(r28)
/* 80B2F8F8  80 1C 06 DC */	lwz r0, 0x6dc(r28)
/* 80B2F8FC  90 1C 0A 74 */	stw r0, 0xa74(r28)
/* 80B2F900  C0 1C 06 E0 */	lfs f0, 0x6e0(r28)
/* 80B2F904  D0 1C 0A 78 */	stfs f0, 0xa78(r28)
/* 80B2F908  80 1C 06 E4 */	lwz r0, 0x6e4(r28)
/* 80B2F90C  90 1C 0A 7C */	stw r0, 0xa7c(r28)
/* 80B2F910  C0 1C 06 68 */	lfs f0, 0x668(r28)
/* 80B2F914  D0 1C 09 80 */	stfs f0, 0x980(r28)
/* 80B2F918  7F 83 E3 78 */	mr r3, r28
/* 80B2F91C  4B 62 34 69 */	bl setEnvTevColor__8daNpcF_cFv
/* 80B2F920  7F 83 E3 78 */	mr r3, r28
/* 80B2F924  4B 62 34 BD */	bl setRoomNo__8daNpcF_cFv
/* 80B2F928  7F 83 E3 78 */	mr r3, r28
/* 80B2F92C  48 00 04 B9 */	bl Execute__15daNpcWrestler_cFv
/* 80B2F930  38 60 00 09 */	li r3, 9
/* 80B2F934  3C 80 00 99 */	lis r4, 0x0099 /* 0x00989298@ha */
/* 80B2F938  38 84 92 98 */	addi r4, r4, 0x9298 /* 0x00989298@l */
/* 80B2F93C  38 A0 00 00 */	li r5, 0
/* 80B2F940  38 C0 00 00 */	li r6, 0
/* 80B2F944  C0 3E 01 A4 */	lfs f1, 0x1a4(r30)
/* 80B2F948  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
/* 80B2F94C  C0 7E 01 AC */	lfs f3, 0x1ac(r30)
/* 80B2F950  C0 9E 01 B0 */	lfs f4, 0x1b0(r30)
/* 80B2F954  4B 73 16 39 */	bl dTimer_createTimer__FlUlUcUcffff
lbl_80B2F958:
/* 80B2F958  7F A3 EB 78 */	mr r3, r29
lbl_80B2F95C:
/* 80B2F95C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B2F960  4B 83 28 C5 */	bl _restgpr_28
/* 80B2F964  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B2F968  7C 08 03 A6 */	mtlr r0
/* 80B2F96C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B2F970  4E 80 00 20 */	blr 
