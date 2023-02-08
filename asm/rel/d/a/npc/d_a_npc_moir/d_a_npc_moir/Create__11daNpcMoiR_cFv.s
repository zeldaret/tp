lbl_80A7C580:
/* 80A7C580  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A7C584  7C 08 02 A6 */	mflr r0
/* 80A7C588  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A7C58C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A7C590  4B 8E 5C 39 */	bl _savegpr_24
/* 80A7C594  7C 7C 1B 78 */	mr r28, r3
/* 80A7C598  3C 80 80 A8 */	lis r4, m__17daNpcMoiR_Param_c@ha /* 0x80A832AC@ha */
/* 80A7C59C  3B E4 32 AC */	addi r31, r4, m__17daNpcMoiR_Param_c@l /* 0x80A832AC@l */
/* 80A7C5A0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A7C5A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A7C5A8  40 82 00 1C */	bne lbl_80A7C5C4
/* 80A7C5AC  28 1C 00 00 */	cmplwi r28, 0
/* 80A7C5B0  41 82 00 08 */	beq lbl_80A7C5B8
/* 80A7C5B4  4B FF FB B9 */	bl __ct__11daNpcMoiR_cFv
lbl_80A7C5B8:
/* 80A7C5B8  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80A7C5BC  60 00 00 08 */	ori r0, r0, 8
/* 80A7C5C0  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80A7C5C4:
/* 80A7C5C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7C5C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7C5CC  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80A7C5D0  3B 1E 3E C8 */	addi r24, r30, 0x3ec8
/* 80A7C5D4  7F 03 C3 78 */	mr r3, r24
/* 80A7C5D8  3C 80 80 A8 */	lis r4, d_a_npc_moir__stringBase0@ha /* 0x80A83840@ha */
/* 80A7C5DC  38 84 38 40 */	addi r4, r4, d_a_npc_moir__stringBase0@l /* 0x80A83840@l */
/* 80A7C5E0  38 84 00 42 */	addi r4, r4, 0x42
/* 80A7C5E4  4B 8E C3 B1 */	bl strcmp
/* 80A7C5E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A7C5EC  40 82 00 74 */	bne lbl_80A7C660
/* 80A7C5F0  38 60 00 00 */	li r3, 0
/* 80A7C5F4  4B 5B 03 89 */	bl getLayerNo__14dComIfG_play_cFi
/* 80A7C5F8  2C 03 00 04 */	cmpwi r3, 4
/* 80A7C5FC  40 82 00 64 */	bne lbl_80A7C660
/* 80A7C600  38 60 01 69 */	li r3, 0x169
/* 80A7C604  4B 6D 90 31 */	bl daNpcF_chkEvtBit__FUl
/* 80A7C608  2C 03 00 00 */	cmpwi r3, 0
/* 80A7C60C  41 82 00 2C */	beq lbl_80A7C638
/* 80A7C610  38 60 01 0A */	li r3, 0x10a
/* 80A7C614  4B 6D 90 21 */	bl daNpcF_chkEvtBit__FUl
/* 80A7C618  2C 03 00 00 */	cmpwi r3, 0
/* 80A7C61C  41 82 00 1C */	beq lbl_80A7C638
/* 80A7C620  38 60 01 0B */	li r3, 0x10b
/* 80A7C624  4B 6D 90 11 */	bl daNpcF_chkEvtBit__FUl
/* 80A7C628  2C 03 00 00 */	cmpwi r3, 0
/* 80A7C62C  40 82 00 0C */	bne lbl_80A7C638
/* 80A7C630  38 60 00 05 */	li r3, 5
/* 80A7C634  48 00 03 2C */	b lbl_80A7C960
lbl_80A7C638:
/* 80A7C638  38 60 00 18 */	li r3, 0x18
/* 80A7C63C  38 80 00 4B */	li r4, 0x4b
/* 80A7C640  4B 5B 11 01 */	bl dComIfGs_isStageSwitch__Fii
/* 80A7C644  2C 03 00 00 */	cmpwi r3, 0
/* 80A7C648  41 82 00 0C */	beq lbl_80A7C654
/* 80A7C64C  38 60 00 05 */	li r3, 5
/* 80A7C650  48 00 03 10 */	b lbl_80A7C960
lbl_80A7C654:
/* 80A7C654  38 00 00 00 */	li r0, 0
/* 80A7C658  98 1C 0E 0B */	stb r0, 0xe0b(r28)
/* 80A7C65C  48 00 00 98 */	b lbl_80A7C6F4
lbl_80A7C660:
/* 80A7C660  7F 03 C3 78 */	mr r3, r24
/* 80A7C664  3C 80 80 A8 */	lis r4, d_a_npc_moir__stringBase0@ha /* 0x80A83840@ha */
/* 80A7C668  38 84 38 40 */	addi r4, r4, d_a_npc_moir__stringBase0@l /* 0x80A83840@l */
/* 80A7C66C  38 84 00 4A */	addi r4, r4, 0x4a
/* 80A7C670  4B 8E C3 25 */	bl strcmp
/* 80A7C674  2C 03 00 00 */	cmpwi r3, 0
/* 80A7C678  40 82 00 28 */	bne lbl_80A7C6A0
/* 80A7C67C  38 60 01 0B */	li r3, 0x10b
/* 80A7C680  4B 6D 8F B5 */	bl daNpcF_chkEvtBit__FUl
/* 80A7C684  2C 03 00 00 */	cmpwi r3, 0
/* 80A7C688  41 82 00 0C */	beq lbl_80A7C694
/* 80A7C68C  38 60 00 05 */	li r3, 5
/* 80A7C690  48 00 02 D0 */	b lbl_80A7C960
lbl_80A7C694:
/* 80A7C694  38 00 00 01 */	li r0, 1
/* 80A7C698  98 1C 0E 0B */	stb r0, 0xe0b(r28)
/* 80A7C69C  48 00 00 58 */	b lbl_80A7C6F4
lbl_80A7C6A0:
/* 80A7C6A0  7F 03 C3 78 */	mr r3, r24
/* 80A7C6A4  3C 80 80 A8 */	lis r4, d_a_npc_moir__stringBase0@ha /* 0x80A83840@ha */
/* 80A7C6A8  38 84 38 40 */	addi r4, r4, d_a_npc_moir__stringBase0@l /* 0x80A83840@l */
/* 80A7C6AC  38 84 00 52 */	addi r4, r4, 0x52
/* 80A7C6B0  4B 8E C2 E5 */	bl strcmp
/* 80A7C6B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A7C6B8  40 82 00 3C */	bne lbl_80A7C6F4
/* 80A7C6BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7C6C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7C6C4  38 63 09 58 */	addi r3, r3, 0x958
/* 80A7C6C8  38 80 00 14 */	li r4, 0x14
/* 80A7C6CC  4B 5B 81 95 */	bl isSwitch__12dSv_memBit_cCFi
/* 80A7C6D0  2C 03 00 00 */	cmpwi r3, 0
/* 80A7C6D4  41 82 00 0C */	beq lbl_80A7C6E0
/* 80A7C6D8  38 60 00 05 */	li r3, 5
/* 80A7C6DC  48 00 02 84 */	b lbl_80A7C960
lbl_80A7C6E0:
/* 80A7C6E0  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80A7C6E4  60 00 40 00 */	ori r0, r0, 0x4000
/* 80A7C6E8  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80A7C6EC  38 00 00 02 */	li r0, 2
/* 80A7C6F0  98 1C 0E 0B */	stb r0, 0xe0b(r28)
lbl_80A7C6F4:
/* 80A7C6F4  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80A7C6F8  54 00 C4 3E */	rlwinm r0, r0, 0x18, 0x10, 0x1f
/* 80A7C6FC  B0 1C 0E 04 */	sth r0, 0xe04(r28)
/* 80A7C700  3B A0 00 05 */	li r29, 5
/* 80A7C704  3B 60 00 00 */	li r27, 0
/* 80A7C708  3B 40 00 00 */	li r26, 0
/* 80A7C70C  3C 60 80 A8 */	lis r3, l_arcNames@ha /* 0x80A83AF8@ha */
/* 80A7C710  3B 03 3A F8 */	addi r24, r3, l_arcNames@l /* 0x80A83AF8@l */
/* 80A7C714  3C 60 80 A8 */	lis r3, l_loadRes_list@ha /* 0x80A83AEC@ha */
/* 80A7C718  3B 23 3A EC */	addi r25, r3, l_loadRes_list@l /* 0x80A83AEC@l */
/* 80A7C71C  48 00 00 30 */	b lbl_80A7C74C
lbl_80A7C720:
/* 80A7C720  38 7A 0D E8 */	addi r3, r26, 0xde8
/* 80A7C724  7C 7C 1A 14 */	add r3, r28, r3
/* 80A7C728  54 00 10 3A */	slwi r0, r0, 2
/* 80A7C72C  7C 98 00 2E */	lwzx r4, r24, r0
/* 80A7C730  4B 5B 07 8D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80A7C734  7C 7D 1B 78 */	mr r29, r3
/* 80A7C738  2C 1D 00 04 */	cmpwi r29, 4
/* 80A7C73C  41 82 00 08 */	beq lbl_80A7C744
/* 80A7C740  48 00 02 20 */	b lbl_80A7C960
lbl_80A7C744:
/* 80A7C744  3B 7B 00 04 */	addi r27, r27, 4
/* 80A7C748  3B 5A 00 08 */	addi r26, r26, 8
lbl_80A7C74C:
/* 80A7C74C  88 9C 0E 0B */	lbz r4, 0xe0b(r28)
/* 80A7C750  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 80A7C754  7C 79 00 2E */	lwzx r3, r25, r0
/* 80A7C758  7C 03 D8 2E */	lwzx r0, r3, r27
/* 80A7C75C  2C 00 00 00 */	cmpwi r0, 0
/* 80A7C760  40 80 FF C0 */	bge lbl_80A7C720
/* 80A7C764  2C 1D 00 04 */	cmpwi r29, 4
/* 80A7C768  40 82 01 F4 */	bne lbl_80A7C95C
/* 80A7C76C  38 A0 00 00 */	li r5, 0
/* 80A7C770  2C 04 00 01 */	cmpwi r4, 1
/* 80A7C774  41 82 00 28 */	beq lbl_80A7C79C
/* 80A7C778  40 80 00 10 */	bge lbl_80A7C788
/* 80A7C77C  2C 04 00 00 */	cmpwi r4, 0
/* 80A7C780  40 80 00 14 */	bge lbl_80A7C794
/* 80A7C784  48 00 00 24 */	b lbl_80A7C7A8
lbl_80A7C788:
/* 80A7C788  2C 04 00 03 */	cmpwi r4, 3
/* 80A7C78C  40 80 00 1C */	bge lbl_80A7C7A8
/* 80A7C790  48 00 00 14 */	b lbl_80A7C7A4
lbl_80A7C794:
/* 80A7C794  38 A0 48 50 */	li r5, 0x4850
/* 80A7C798  48 00 00 10 */	b lbl_80A7C7A8
lbl_80A7C79C:
/* 80A7C79C  38 A0 48 60 */	li r5, 0x4860
/* 80A7C7A0  48 00 00 08 */	b lbl_80A7C7A8
lbl_80A7C7A4:
/* 80A7C7A4  38 A0 48 50 */	li r5, 0x4850
lbl_80A7C7A8:
/* 80A7C7A8  7F 83 E3 78 */	mr r3, r28
/* 80A7C7AC  3C 80 80 A8 */	lis r4, createHeapCallBack__11daNpcMoiR_cFP10fopAc_ac_c@ha /* 0x80A7D0CC@ha */
/* 80A7C7B0  38 84 D0 CC */	addi r4, r4, createHeapCallBack__11daNpcMoiR_cFP10fopAc_ac_c@l /* 0x80A7D0CC@l */
/* 80A7C7B4  4B 59 DC FD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A7C7B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A7C7BC  40 82 00 0C */	bne lbl_80A7C7C8
/* 80A7C7C0  38 60 00 05 */	li r3, 5
/* 80A7C7C4  48 00 01 9C */	b lbl_80A7C960
lbl_80A7C7C8:
/* 80A7C7C8  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A7C7CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80A7C7D0  38 03 00 24 */	addi r0, r3, 0x24
/* 80A7C7D4  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80A7C7D8  7F 83 E3 78 */	mr r3, r28
/* 80A7C7DC  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A7C7E0  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80A7C7E4  FC 60 08 90 */	fmr f3, f1
/* 80A7C7E8  C0 9F 00 7C */	lfs f4, 0x7c(r31)
/* 80A7C7EC  C0 BF 00 80 */	lfs f5, 0x80(r31)
/* 80A7C7F0  FC C0 20 90 */	fmr f6, f4
/* 80A7C7F4  4B 59 DD 55 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A7C7F8  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 80A7C7FC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A7C800  38 BC 05 38 */	addi r5, r28, 0x538
/* 80A7C804  38 C0 00 03 */	li r6, 3
/* 80A7C808  38 E0 00 01 */	li r7, 1
/* 80A7C80C  4B 84 3D 25 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80A7C810  38 7C 07 E4 */	addi r3, r28, 0x7e4
/* 80A7C814  38 9F 00 00 */	addi r4, r31, 0
/* 80A7C818  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A7C81C  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80A7C820  4B 5F 97 39 */	bl SetWall__12dBgS_AcchCirFff
/* 80A7C824  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 80A7C828  90 01 00 08 */	stw r0, 8(r1)
/* 80A7C82C  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80A7C830  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A7C834  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80A7C838  7F 86 E3 78 */	mr r6, r28
/* 80A7C83C  38 E0 00 01 */	li r7, 1
/* 80A7C840  39 1C 07 E4 */	addi r8, r28, 0x7e4
/* 80A7C844  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80A7C848  39 5C 04 DC */	addi r10, r28, 0x4dc
/* 80A7C84C  4B 5F 99 FD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A7C850  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80A7C854  60 00 00 08 */	ori r0, r0, 8
/* 80A7C858  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80A7C85C  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80A7C860  60 00 04 00 */	ori r0, r0, 0x400
/* 80A7C864  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80A7C868  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80A7C86C  7F C4 F3 78 */	mr r4, r30
/* 80A7C870  4B 5F A2 3D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A7C874  38 7C 07 A8 */	addi r3, r28, 0x7a8
/* 80A7C878  38 9F 00 00 */	addi r4, r31, 0
/* 80A7C87C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A7C880  FC 00 00 1E */	fctiwz f0, f0
/* 80A7C884  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A7C888  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A7C88C  38 A0 00 00 */	li r5, 0
/* 80A7C890  7F 86 E3 78 */	mr r6, r28
/* 80A7C894  4B 60 6F CD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A7C898  38 7C 0C A0 */	addi r3, r28, 0xca0
/* 80A7C89C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80A7C8A0  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80A7C8A4  4B 60 80 11 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A7C8A8  38 1C 07 A8 */	addi r0, r28, 0x7a8
/* 80A7C8AC  90 1C 0C E4 */	stw r0, 0xce4(r28)
/* 80A7C8B0  38 00 00 00 */	li r0, 0
/* 80A7C8B4  90 1C 0C C8 */	stw r0, 0xcc8(r28)
/* 80A7C8B8  90 1C 0C B8 */	stw r0, 0xcb8(r28)
/* 80A7C8BC  80 1C 06 AC */	lwz r0, 0x6ac(r28)
/* 80A7C8C0  90 1C 0A 44 */	stw r0, 0xa44(r28)
/* 80A7C8C4  80 1C 06 B0 */	lwz r0, 0x6b0(r28)
/* 80A7C8C8  90 1C 0A 48 */	stw r0, 0xa48(r28)
/* 80A7C8CC  80 1C 06 B4 */	lwz r0, 0x6b4(r28)
/* 80A7C8D0  90 1C 0A 4C */	stw r0, 0xa4c(r28)
/* 80A7C8D4  88 1C 06 B8 */	lbz r0, 0x6b8(r28)
/* 80A7C8D8  98 1C 0A 50 */	stb r0, 0xa50(r28)
/* 80A7C8DC  A0 1C 06 C0 */	lhz r0, 0x6c0(r28)
/* 80A7C8E0  B0 1C 0A 58 */	sth r0, 0xa58(r28)
/* 80A7C8E4  A0 1C 06 C2 */	lhz r0, 0x6c2(r28)
/* 80A7C8E8  B0 1C 0A 5A */	sth r0, 0xa5a(r28)
/* 80A7C8EC  80 1C 06 C4 */	lwz r0, 0x6c4(r28)
/* 80A7C8F0  90 1C 0A 5C */	stw r0, 0xa5c(r28)
/* 80A7C8F4  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 80A7C8F8  90 1C 0A 60 */	stw r0, 0xa60(r28)
/* 80A7C8FC  C0 1C 06 D0 */	lfs f0, 0x6d0(r28)
/* 80A7C900  D0 1C 0A 68 */	stfs f0, 0xa68(r28)
/* 80A7C904  C0 1C 06 D4 */	lfs f0, 0x6d4(r28)
/* 80A7C908  D0 1C 0A 6C */	stfs f0, 0xa6c(r28)
/* 80A7C90C  C0 1C 06 D8 */	lfs f0, 0x6d8(r28)
/* 80A7C910  D0 1C 0A 70 */	stfs f0, 0xa70(r28)
/* 80A7C914  80 1C 06 DC */	lwz r0, 0x6dc(r28)
/* 80A7C918  90 1C 0A 74 */	stw r0, 0xa74(r28)
/* 80A7C91C  C0 1C 06 E0 */	lfs f0, 0x6e0(r28)
/* 80A7C920  D0 1C 0A 78 */	stfs f0, 0xa78(r28)
/* 80A7C924  80 1C 06 E4 */	lwz r0, 0x6e4(r28)
/* 80A7C928  90 1C 0A 7C */	stw r0, 0xa7c(r28)
/* 80A7C92C  C0 1C 06 68 */	lfs f0, 0x668(r28)
/* 80A7C930  D0 1C 09 80 */	stfs f0, 0x980(r28)
/* 80A7C934  7F 83 E3 78 */	mr r3, r28
/* 80A7C938  4B 6D 64 4D */	bl setEnvTevColor__8daNpcF_cFv
/* 80A7C93C  7F 83 E3 78 */	mr r3, r28
/* 80A7C940  4B 6D 64 A1 */	bl setRoomNo__8daNpcF_cFv
/* 80A7C944  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A7C948  4B 59 48 A5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80A7C94C  7F 83 E3 78 */	mr r3, r28
/* 80A7C950  48 00 0C 75 */	bl reset__11daNpcMoiR_cFv
/* 80A7C954  7F 83 E3 78 */	mr r3, r28
/* 80A7C958  48 00 05 25 */	bl Execute__11daNpcMoiR_cFv
lbl_80A7C95C:
/* 80A7C95C  7F A3 EB 78 */	mr r3, r29
lbl_80A7C960:
/* 80A7C960  39 61 00 40 */	addi r11, r1, 0x40
/* 80A7C964  4B 8E 58 B1 */	bl _restgpr_24
/* 80A7C968  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A7C96C  7C 08 03 A6 */	mtlr r0
/* 80A7C970  38 21 00 40 */	addi r1, r1, 0x40
/* 80A7C974  4E 80 00 20 */	blr 
