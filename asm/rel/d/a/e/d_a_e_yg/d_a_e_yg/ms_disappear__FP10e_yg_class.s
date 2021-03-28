lbl_807F86F8:
/* 807F86F8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807F86FC  7C 08 02 A6 */	mflr r0
/* 807F8700  90 01 00 94 */	stw r0, 0x94(r1)
/* 807F8704  39 61 00 90 */	addi r11, r1, 0x90
/* 807F8708  4B B6 9A CC */	b _savegpr_27
/* 807F870C  7C 7D 1B 78 */	mr r29, r3
/* 807F8710  3C 60 80 80 */	lis r3, lit_1109@ha
/* 807F8714  3B C3 D0 20 */	addi r30, r3, lit_1109@l
/* 807F8718  3C 60 80 80 */	lis r3, lit_3801@ha
/* 807F871C  3B E3 CC B4 */	addi r31, r3, lit_3801@l
/* 807F8720  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807F8724  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807F8728  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807F872C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807F8730  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807F8734  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807F8738  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807F873C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807F8740  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 807F8744  88 1E 00 74 */	lbz r0, 0x74(r30)
/* 807F8748  7C 00 07 75 */	extsb. r0, r0
/* 807F874C  40 82 00 BC */	bne lbl_807F8808
/* 807F8750  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807F8754  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 807F8758  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807F875C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807F8760  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 807F8764  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807F8768  D0 5E 00 90 */	stfs f2, 0x90(r30)
/* 807F876C  38 7E 00 90 */	addi r3, r30, 0x90
/* 807F8770  D0 23 00 04 */	stfs f1, 4(r3)
/* 807F8774  D0 03 00 08 */	stfs f0, 8(r3)
/* 807F8778  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807F877C  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807F8780  38 BE 00 68 */	addi r5, r30, 0x68
/* 807F8784  4B FF FB 55 */	bl __register_global_object
/* 807F8788  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 807F878C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 807F8790  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807F8794  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807F8798  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807F879C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807F87A0  38 7E 00 90 */	addi r3, r30, 0x90
/* 807F87A4  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 807F87A8  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807F87AC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807F87B0  38 63 00 0C */	addi r3, r3, 0xc
/* 807F87B4  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807F87B8  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807F87BC  38 BE 00 78 */	addi r5, r30, 0x78
/* 807F87C0  4B FF FB 19 */	bl __register_global_object
/* 807F87C4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807F87C8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 807F87CC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807F87D0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807F87D4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807F87D8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807F87DC  38 7E 00 90 */	addi r3, r30, 0x90
/* 807F87E0  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 807F87E4  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 807F87E8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 807F87EC  38 63 00 18 */	addi r3, r3, 0x18
/* 807F87F0  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807F87F4  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807F87F8  38 BE 00 84 */	addi r5, r30, 0x84
/* 807F87FC  4B FF FA DD */	bl __register_global_object
/* 807F8800  38 00 00 01 */	li r0, 1
/* 807F8804  98 1E 00 74 */	stb r0, 0x74(r30)
lbl_807F8808:
/* 807F8808  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F880C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 807F8810  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807F8814  38 80 00 00 */	li r4, 0
/* 807F8818  90 81 00 08 */	stw r4, 8(r1)
/* 807F881C  38 00 FF FF */	li r0, -1
/* 807F8820  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F8824  90 81 00 10 */	stw r4, 0x10(r1)
/* 807F8828  90 81 00 14 */	stw r4, 0x14(r1)
/* 807F882C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807F8830  38 80 00 00 */	li r4, 0
/* 807F8834  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000826C@ha */
/* 807F8838  38 A5 82 6C */	addi r5, r5, 0x826C /* 0x0000826C@l */
/* 807F883C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 807F8840  38 E0 00 00 */	li r7, 0
/* 807F8844  39 00 00 00 */	li r8, 0
/* 807F8848  39 21 00 54 */	addi r9, r1, 0x54
/* 807F884C  39 40 00 FF */	li r10, 0xff
/* 807F8850  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F8854  4B 85 42 3C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807F8858  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 807F885C  2C 00 00 04 */	cmpwi r0, 4
/* 807F8860  40 82 00 0C */	bne lbl_807F886C
/* 807F8864  3B 60 00 00 */	li r27, 0
/* 807F8868  48 00 00 18 */	b lbl_807F8880
lbl_807F886C:
/* 807F886C  2C 00 00 06 */	cmpwi r0, 6
/* 807F8870  40 82 00 0C */	bne lbl_807F887C
/* 807F8874  3B 60 00 01 */	li r27, 1
/* 807F8878  48 00 00 08 */	b lbl_807F8880
lbl_807F887C:
/* 807F887C  3B 60 00 02 */	li r27, 2
lbl_807F8880:
/* 807F8880  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807F8884  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807F8888  80 63 00 00 */	lwz r3, 0(r3)
/* 807F888C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807F8890  4B 81 3B 4C */	b mDoMtx_YrotS__FPA4_fs
/* 807F8894  1C 1B 00 0C */	mulli r0, r27, 0xc
/* 807F8898  38 7E 00 90 */	addi r3, r30, 0x90
/* 807F889C  7C 63 02 14 */	add r3, r3, r0
/* 807F88A0  38 81 00 60 */	addi r4, r1, 0x60
/* 807F88A4  4B A7 86 48 */	b MtxPosition__FP4cXyzP4cXyz
/* 807F88A8  38 61 00 60 */	addi r3, r1, 0x60
/* 807F88AC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807F88B0  7C 65 1B 78 */	mr r5, r3
/* 807F88B4  4B B4 E7 DC */	b PSVECAdd
/* 807F88B8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807F88BC  38 80 00 00 */	li r4, 0
/* 807F88C0  90 81 00 08 */	stw r4, 8(r1)
/* 807F88C4  38 00 FF FF */	li r0, -1
/* 807F88C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F88CC  90 81 00 10 */	stw r4, 0x10(r1)
/* 807F88D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807F88D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807F88D8  38 80 00 00 */	li r4, 0
/* 807F88DC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000826D@ha */
/* 807F88E0  38 A5 82 6D */	addi r5, r5, 0x826D /* 0x0000826D@l */
/* 807F88E4  38 C1 00 60 */	addi r6, r1, 0x60
/* 807F88E8  38 E0 00 00 */	li r7, 0
/* 807F88EC  39 00 00 00 */	li r8, 0
/* 807F88F0  39 21 00 48 */	addi r9, r1, 0x48
/* 807F88F4  39 40 00 FF */	li r10, 0xff
/* 807F88F8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F88FC  4B 85 41 94 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807F8900  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807F8904  7C 03 07 74 */	extsb r3, r0
/* 807F8908  4B 83 47 64 */	b dComIfGp_getReverb__Fi
/* 807F890C  7C 67 1B 78 */	mr r7, r3
/* 807F8910  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060028@ha */
/* 807F8914  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00060028@l */
/* 807F8918  90 01 00 20 */	stw r0, 0x20(r1)
/* 807F891C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807F8920  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807F8924  80 63 00 00 */	lwz r3, 0(r3)
/* 807F8928  38 81 00 20 */	addi r4, r1, 0x20
/* 807F892C  38 BD 05 38 */	addi r5, r29, 0x538
/* 807F8930  38 C0 00 00 */	li r6, 0
/* 807F8934  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F8938  FC 40 08 90 */	fmr f2, f1
/* 807F893C  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 807F8940  FC 80 18 90 */	fmr f4, f3
/* 807F8944  39 00 00 00 */	li r8, 0
/* 807F8948  4B AB 30 3C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 807F894C  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 807F8950  28 00 00 01 */	cmplwi r0, 1
/* 807F8954  40 82 00 AC */	bne lbl_807F8A00
/* 807F8958  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 807F895C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 807F8960  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 807F8964  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807F8968  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 807F896C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 807F8970  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 807F8974  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 807F8978  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 807F897C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807F8980  A8 1D 04 B8 */	lha r0, 0x4b8(r29)
/* 807F8984  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 807F8988  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 807F898C  98 1D 04 E2 */	stb r0, 0x4e2(r29)
/* 807F8990  88 1D 04 BB */	lbz r0, 0x4bb(r29)
/* 807F8994  98 1D 04 E3 */	stb r0, 0x4e3(r29)
/* 807F8998  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807F899C  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 807F89A0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807F89A4  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 807F89A8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807F89AC  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 807F89B0  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 807F89B4  B0 1D 04 C8 */	sth r0, 0x4c8(r29)
/* 807F89B8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807F89BC  B0 1D 04 CA */	sth r0, 0x4ca(r29)
/* 807F89C0  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 807F89C4  B0 1D 04 CC */	sth r0, 0x4cc(r29)
/* 807F89C8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807F89CC  98 1D 04 CE */	stb r0, 0x4ce(r29)
/* 807F89D0  88 1D 04 E3 */	lbz r0, 0x4e3(r29)
/* 807F89D4  98 1D 04 CF */	stb r0, 0x4cf(r29)
/* 807F89D8  38 60 00 01 */	li r3, 1
/* 807F89DC  B0 7D 05 62 */	sth r3, 0x562(r29)
/* 807F89E0  38 00 00 00 */	li r0, 0
/* 807F89E4  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807F89E8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807F89EC  80 1D 05 B8 */	lwz r0, 0x5b8(r29)
/* 807F89F0  2C 00 00 FF */	cmpwi r0, 0xff
/* 807F89F4  41 82 00 14 */	beq lbl_807F8A08
/* 807F89F8  98 7D 0B A6 */	stb r3, 0xba6(r29)
/* 807F89FC  48 00 00 0C */	b lbl_807F8A08
lbl_807F8A00:
/* 807F8A00  7F A3 EB 78 */	mr r3, r29
/* 807F8A04  4B 82 12 78 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807F8A08:
/* 807F8A08  38 60 00 00 */	li r3, 0
/* 807F8A0C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807F8A10  38 A0 FF FF */	li r5, -1
/* 807F8A14  38 C0 FF FF */	li r6, -1
/* 807F8A18  38 E0 00 00 */	li r7, 0
/* 807F8A1C  39 00 00 00 */	li r8, 0
/* 807F8A20  39 20 00 00 */	li r9, 0
/* 807F8A24  39 40 00 00 */	li r10, 0
/* 807F8A28  4B 82 33 EC */	b fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf
/* 807F8A2C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807F8A30  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 807F8A34  2C 04 00 FF */	cmpwi r4, 0xff
/* 807F8A38  41 82 00 18 */	beq lbl_807F8A50
/* 807F8A3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F8A40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807F8A44  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807F8A48  7C 05 07 74 */	extsb r5, r0
/* 807F8A4C  4B 83 C7 B4 */	b onSwitch__10dSv_info_cFii
lbl_807F8A50:
/* 807F8A50  39 61 00 90 */	addi r11, r1, 0x90
/* 807F8A54  4B B6 97 CC */	b _restgpr_27
/* 807F8A58  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807F8A5C  7C 08 03 A6 */	mtlr r0
/* 807F8A60  38 21 00 90 */	addi r1, r1, 0x90
/* 807F8A64  4E 80 00 20 */	blr 
