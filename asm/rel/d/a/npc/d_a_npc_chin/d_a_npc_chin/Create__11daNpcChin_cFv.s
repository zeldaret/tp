lbl_8098C510:
/* 8098C510  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8098C514  7C 08 02 A6 */	mflr r0
/* 8098C518  90 01 00 34 */	stw r0, 0x34(r1)
/* 8098C51C  39 61 00 30 */	addi r11, r1, 0x30
/* 8098C520  4B 9D 5C B1 */	bl _savegpr_26
/* 8098C524  7C 7D 1B 78 */	mr r29, r3
/* 8098C528  3C 80 80 99 */	lis r4, sLoadResPat_Normal@ha /* 0x809918F8@ha */
/* 8098C52C  3B E4 18 F8 */	addi r31, r4, sLoadResPat_Normal@l /* 0x809918F8@l */
/* 8098C530  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8098C534  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8098C538  40 82 00 1C */	bne lbl_8098C554
/* 8098C53C  28 1D 00 00 */	cmplwi r29, 0
/* 8098C540  41 82 00 08 */	beq lbl_8098C548
/* 8098C544  4B FF FB C1 */	bl __ct__11daNpcChin_cFv
lbl_8098C548:
/* 8098C548  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8098C54C  60 00 00 08 */	ori r0, r0, 8
/* 8098C550  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8098C554:
/* 8098C554  4B 82 00 29 */	bl dKy_darkworld_check__Fv
/* 8098C558  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8098C55C  41 82 00 10 */	beq lbl_8098C56C
/* 8098C560  38 00 00 01 */	li r0, 1
/* 8098C564  98 1D 09 F4 */	stb r0, 0x9f4(r29)
/* 8098C568  48 00 00 0C */	b lbl_8098C574
lbl_8098C56C:
/* 8098C56C  38 00 00 00 */	li r0, 0
/* 8098C570  98 1D 09 F4 */	stb r0, 0x9f4(r29)
lbl_8098C574:
/* 8098C574  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 8098C578  54 00 10 3A */	slwi r0, r0, 2
/* 8098C57C  3C 60 80 99 */	lis r3, sLoadResInfo@ha /* 0x809920C0@ha */
/* 8098C580  38 63 20 C0 */	addi r3, r3, sLoadResInfo@l /* 0x809920C0@l */
/* 8098C584  7F 43 00 2E */	lwzx r26, r3, r0
/* 8098C588  3B C0 00 05 */	li r30, 5
/* 8098C58C  3B 80 00 00 */	li r28, 0
/* 8098C590  3C 60 80 99 */	lis r3, l_arcNames@ha /* 0x809920A8@ha */
/* 8098C594  3B 63 20 A8 */	addi r27, r3, l_arcNames@l /* 0x809920A8@l */
/* 8098C598  48 00 00 30 */	b lbl_8098C5C8
lbl_8098C59C:
/* 8098C59C  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 8098C5A0  7C 7D 1A 14 */	add r3, r29, r3
/* 8098C5A4  54 80 10 3A */	slwi r0, r4, 2
/* 8098C5A8  7C 9B 00 2E */	lwzx r4, r27, r0
/* 8098C5AC  4B 6A 09 11 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8098C5B0  7C 7E 1B 78 */	mr r30, r3
/* 8098C5B4  2C 1E 00 04 */	cmpwi r30, 4
/* 8098C5B8  41 82 00 08 */	beq lbl_8098C5C0
/* 8098C5BC  48 00 02 84 */	b lbl_8098C840
lbl_8098C5C0:
/* 8098C5C0  3B 5A 00 02 */	addi r26, r26, 2
/* 8098C5C4  3B 9C 00 08 */	addi r28, r28, 8
lbl_8098C5C8:
/* 8098C5C8  A8 9A 00 00 */	lha r4, 0(r26)
/* 8098C5CC  7C 80 07 35 */	extsh. r0, r4
/* 8098C5D0  40 80 FF CC */	bge lbl_8098C59C
/* 8098C5D4  2C 1E 00 04 */	cmpwi r30, 4
/* 8098C5D8  40 82 02 64 */	bne lbl_8098C83C
/* 8098C5DC  38 00 00 00 */	li r0, 0
/* 8098C5E0  98 1D 0E 24 */	stb r0, 0xe24(r29)
/* 8098C5E4  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 8098C5E8  28 00 00 00 */	cmplwi r0, 0
/* 8098C5EC  40 82 00 44 */	bne lbl_8098C630
/* 8098C5F0  38 60 00 00 */	li r3, 0
/* 8098C5F4  4B 81 C1 F1 */	bl dKy_change_colpat__FUc
/* 8098C5F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8098C5FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8098C600  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8098C604  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8098C608  7C 04 07 74 */	extsb r4, r0
/* 8098C60C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8098C610  7C 05 07 74 */	extsb r5, r0
/* 8098C614  4B 6A 8D 4D */	bl isSwitch__10dSv_info_cCFii
/* 8098C618  2C 03 00 00 */	cmpwi r3, 0
/* 8098C61C  40 82 00 14 */	bne lbl_8098C630
/* 8098C620  38 60 00 01 */	li r3, 1
/* 8098C624  4B 81 C1 C1 */	bl dKy_change_colpat__FUc
/* 8098C628  38 00 00 01 */	li r0, 1
/* 8098C62C  98 1D 0E 24 */	stb r0, 0xe24(r29)
lbl_8098C630:
/* 8098C630  7F A3 EB 78 */	mr r3, r29
/* 8098C634  3C 80 80 99 */	lis r4, createHeapCallBack__11daNpcChin_cFP10fopAc_ac_c@ha /* 0x8098CFB8@ha */
/* 8098C638  38 84 CF B8 */	addi r4, r4, createHeapCallBack__11daNpcChin_cFP10fopAc_ac_c@l /* 0x8098CFB8@l */
/* 8098C63C  38 A0 46 60 */	li r5, 0x4660
/* 8098C640  4B 68 DE 71 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8098C644  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8098C648  40 82 00 0C */	bne lbl_8098C654
/* 8098C64C  38 60 00 05 */	li r3, 5
/* 8098C650  48 00 01 F0 */	b lbl_8098C840
lbl_8098C654:
/* 8098C654  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 8098C658  B0 1D 0E 00 */	sth r0, 0xe00(r29)
/* 8098C65C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8098C660  80 63 00 04 */	lwz r3, 4(r3)
/* 8098C664  38 03 00 24 */	addi r0, r3, 0x24
/* 8098C668  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8098C66C  88 1D 0E 24 */	lbz r0, 0xe24(r29)
/* 8098C670  7C 00 07 75 */	extsb. r0, r0
/* 8098C674  41 82 00 28 */	beq lbl_8098C69C
/* 8098C678  7F A3 EB 78 */	mr r3, r29
/* 8098C67C  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8098C680  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 8098C684  FC 60 08 90 */	fmr f3, f1
/* 8098C688  C0 9F 00 90 */	lfs f4, 0x90(r31)
/* 8098C68C  C0 BF 00 94 */	lfs f5, 0x94(r31)
/* 8098C690  FC C0 20 90 */	fmr f6, f4
/* 8098C694  4B 68 DE B5 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8098C698  48 00 00 24 */	b lbl_8098C6BC
lbl_8098C69C:
/* 8098C69C  7F A3 EB 78 */	mr r3, r29
/* 8098C6A0  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8098C6A4  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 8098C6A8  FC 60 08 90 */	fmr f3, f1
/* 8098C6AC  C0 9F 00 90 */	lfs f4, 0x90(r31)
/* 8098C6B0  C0 BF 00 9C */	lfs f5, 0x9c(r31)
/* 8098C6B4  FC C0 20 90 */	fmr f6, f4
/* 8098C6B8  4B 68 DE 91 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
lbl_8098C6BC:
/* 8098C6BC  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 8098C6C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8098C6C4  38 BD 05 38 */	addi r5, r29, 0x538
/* 8098C6C8  38 C0 00 03 */	li r6, 3
/* 8098C6CC  38 E0 00 01 */	li r7, 1
/* 8098C6D0  4B 93 3E 61 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 8098C6D4  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 8098C6D8  38 9F 00 14 */	addi r4, r31, 0x14
/* 8098C6DC  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8098C6E0  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 8098C6E4  4B 6E 98 75 */	bl SetWall__12dBgS_AcchCirFff
/* 8098C6E8  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 8098C6EC  90 01 00 08 */	stw r0, 8(r1)
/* 8098C6F0  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 8098C6F4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8098C6F8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8098C6FC  7F A6 EB 78 */	mr r6, r29
/* 8098C700  38 E0 00 01 */	li r7, 1
/* 8098C704  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 8098C708  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 8098C70C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 8098C710  4B 6E 9B 39 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8098C714  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 8098C718  60 00 00 08 */	ori r0, r0, 8
/* 8098C71C  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 8098C720  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 8098C724  60 00 04 00 */	ori r0, r0, 0x400
/* 8098C728  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 8098C72C  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 8098C730  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8098C734  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8098C738  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8098C73C  4B 6E A3 71 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8098C740  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 8098C744  38 9F 00 14 */	addi r4, r31, 0x14
/* 8098C748  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8098C74C  FC 00 00 1E */	fctiwz f0, f0
/* 8098C750  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8098C754  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8098C758  38 A0 00 00 */	li r5, 0
/* 8098C75C  7F A6 EB 78 */	mr r6, r29
/* 8098C760  4B 6F 71 01 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8098C764  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8098C768  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 8098C76C  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 8098C770  4B 6F 81 45 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8098C774  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 8098C778  90 1D 0C C0 */	stw r0, 0xcc0(r29)
/* 8098C77C  38 00 00 00 */	li r0, 0
/* 8098C780  90 1D 0C A4 */	stw r0, 0xca4(r29)
/* 8098C784  90 1D 0C 94 */	stw r0, 0xc94(r29)
/* 8098C788  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 8098C78C  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 8098C790  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 8098C794  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 8098C798  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 8098C79C  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 8098C7A0  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 8098C7A4  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 8098C7A8  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 8098C7AC  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 8098C7B0  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 8098C7B4  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 8098C7B8  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 8098C7BC  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 8098C7C0  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 8098C7C4  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 8098C7C8  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 8098C7CC  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 8098C7D0  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 8098C7D4  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 8098C7D8  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 8098C7DC  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 8098C7E0  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 8098C7E4  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 8098C7E8  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 8098C7EC  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 8098C7F0  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 8098C7F4  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 8098C7F8  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 8098C7FC  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 8098C800  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 8098C804  28 00 00 00 */	cmplwi r0, 0
/* 8098C808  40 82 00 0C */	bne lbl_8098C814
/* 8098C80C  48 26 CC 25 */	bl getSphMng__10daGlwSph_cFv
/* 8098C810  90 7D 0E 0C */	stw r3, 0xe0c(r29)
lbl_8098C814:
/* 8098C814  7F A3 EB 78 */	mr r3, r29
/* 8098C818  4B 7C 65 6D */	bl setEnvTevColor__8daNpcF_cFv
/* 8098C81C  7F A3 EB 78 */	mr r3, r29
/* 8098C820  4B 7C 65 C1 */	bl setRoomNo__8daNpcF_cFv
/* 8098C824  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8098C828  4B 68 49 C5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8098C82C  7F A3 EB 78 */	mr r3, r29
/* 8098C830  48 00 13 8D */	bl reset__11daNpcChin_cFv
/* 8098C834  7F A3 EB 78 */	mr r3, r29
/* 8098C838  48 00 04 E1 */	bl Execute__11daNpcChin_cFv
lbl_8098C83C:
/* 8098C83C  7F C3 F3 78 */	mr r3, r30
lbl_8098C840:
/* 8098C840  39 61 00 30 */	addi r11, r1, 0x30
/* 8098C844  4B 9D 59 D9 */	bl _restgpr_26
/* 8098C848  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8098C84C  7C 08 03 A6 */	mtlr r0
/* 8098C850  38 21 00 30 */	addi r1, r1, 0x30
/* 8098C854  4E 80 00 20 */	blr 
