lbl_8076C54C:
/* 8076C54C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8076C550  7C 08 02 A6 */	mflr r0
/* 8076C554  90 01 00 64 */	stw r0, 0x64(r1)
/* 8076C558  39 61 00 60 */	addi r11, r1, 0x60
/* 8076C55C  4B BF 5C 60 */	b _savegpr_21
/* 8076C560  7C 78 1B 78 */	mr r24, r3
/* 8076C564  3C 60 80 78 */	lis r3, lit_4018@ha
/* 8076C568  3B A3 9D FC */	addi r29, r3, lit_4018@l
/* 8076C56C  88 18 05 B8 */	lbz r0, 0x5b8(r24)
/* 8076C570  28 00 00 0C */	cmplwi r0, 0xc
/* 8076C574  40 82 00 30 */	bne lbl_8076C5A4
/* 8076C578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076C57C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8076C580  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8076C584  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8076C588  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8076C58C  A0 84 01 DE */	lhz r4, 0x1de(r4)
/* 8076C590  4B 8C 84 2C */	b isEventBit__11dSv_event_cCFUs
/* 8076C594  2C 03 00 00 */	cmpwi r3, 0
/* 8076C598  40 82 00 0C */	bne lbl_8076C5A4
/* 8076C59C  38 60 00 01 */	li r3, 1
/* 8076C5A0  48 00 04 18 */	b lbl_8076C9B8
lbl_8076C5A4:
/* 8076C5A4  88 18 0B CB */	lbz r0, 0xbcb(r24)
/* 8076C5A8  7C 00 07 75 */	extsb. r0, r0
/* 8076C5AC  41 82 00 0C */	beq lbl_8076C5B8
/* 8076C5B0  38 60 00 01 */	li r3, 1
/* 8076C5B4  48 00 04 04 */	b lbl_8076C9B8
lbl_8076C5B8:
/* 8076C5B8  80 78 05 CC */	lwz r3, 0x5cc(r24)
/* 8076C5BC  83 83 00 04 */	lwz r28, 4(r3)
/* 8076C5C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8076C5C4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8076C5C8  38 80 00 02 */	li r4, 2
/* 8076C5CC  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 8076C5D0  38 D8 01 0C */	addi r6, r24, 0x10c
/* 8076C5D4  4B A3 71 F0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8076C5D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076C5DC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8076C5E0  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 8076C5E4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8076C5E8  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 8076C5EC  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8076C5F0  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 8076C5F4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8076C5F8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8076C5FC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8076C600  80 9C 00 04 */	lwz r4, 4(r28)
/* 8076C604  38 B8 01 0C */	addi r5, r24, 0x10c
/* 8076C608  4B A3 87 98 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8076C60C  88 18 0A 38 */	lbz r0, 0xa38(r24)
/* 8076C610  7C 00 07 75 */	extsb. r0, r0
/* 8076C614  41 82 00 B4 */	beq lbl_8076C6C8
/* 8076C618  82 FC 00 04 */	lwz r23, 4(r28)
/* 8076C61C  3A A0 00 00 */	li r21, 0
/* 8076C620  48 00 00 98 */	b lbl_8076C6B8
lbl_8076C624:
/* 8076C624  80 77 00 60 */	lwz r3, 0x60(r23)
/* 8076C628  56 A0 13 BA */	rlwinm r0, r21, 2, 0xe, 0x1d
/* 8076C62C  7F 23 00 2E */	lwzx r25, r3, r0
/* 8076C630  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 8076C634  38 80 00 00 */	li r4, 0
/* 8076C638  81 83 00 00 */	lwz r12, 0(r3)
/* 8076C63C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8076C640  7D 89 03 A6 */	mtctr r12
/* 8076C644  4E 80 04 21 */	bctrl 
/* 8076C648  C0 18 0A 3C */	lfs f0, 0xa3c(r24)
/* 8076C64C  FC 00 00 1E */	fctiwz f0, f0
/* 8076C650  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8076C654  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8076C658  B0 03 00 00 */	sth r0, 0(r3)
/* 8076C65C  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 8076C660  38 80 00 00 */	li r4, 0
/* 8076C664  81 83 00 00 */	lwz r12, 0(r3)
/* 8076C668  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8076C66C  7D 89 03 A6 */	mtctr r12
/* 8076C670  4E 80 04 21 */	bctrl 
/* 8076C674  C0 18 0A 3C */	lfs f0, 0xa3c(r24)
/* 8076C678  FC 00 00 1E */	fctiwz f0, f0
/* 8076C67C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8076C680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8076C684  B0 03 00 02 */	sth r0, 2(r3)
/* 8076C688  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 8076C68C  38 80 00 00 */	li r4, 0
/* 8076C690  81 83 00 00 */	lwz r12, 0(r3)
/* 8076C694  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8076C698  7D 89 03 A6 */	mtctr r12
/* 8076C69C  4E 80 04 21 */	bctrl 
/* 8076C6A0  C0 18 0A 3C */	lfs f0, 0xa3c(r24)
/* 8076C6A4  FC 00 00 1E */	fctiwz f0, f0
/* 8076C6A8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8076C6AC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8076C6B0  B0 03 00 04 */	sth r0, 4(r3)
/* 8076C6B4  3A B5 00 01 */	addi r21, r21, 1
lbl_8076C6B8:
/* 8076C6B8  56 A3 04 3E */	clrlwi r3, r21, 0x10
/* 8076C6BC  A0 17 00 5C */	lhz r0, 0x5c(r23)
/* 8076C6C0  7C 03 00 40 */	cmplw r3, r0
/* 8076C6C4  41 80 FF 60 */	blt lbl_8076C624
lbl_8076C6C8:
/* 8076C6C8  80 78 05 CC */	lwz r3, 0x5cc(r24)
/* 8076C6CC  4B 8A 4A F4 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8076C6D0  88 18 0A 38 */	lbz r0, 0xa38(r24)
/* 8076C6D4  7C 00 07 75 */	extsb. r0, r0
/* 8076C6D8  41 82 00 90 */	beq lbl_8076C768
/* 8076C6DC  82 FC 00 04 */	lwz r23, 4(r28)
/* 8076C6E0  3A A0 00 00 */	li r21, 0
/* 8076C6E4  48 00 00 74 */	b lbl_8076C758
lbl_8076C6E8:
/* 8076C6E8  80 77 00 60 */	lwz r3, 0x60(r23)
/* 8076C6EC  56 A0 13 BA */	rlwinm r0, r21, 2, 0xe, 0x1d
/* 8076C6F0  7F 23 00 2E */	lwzx r25, r3, r0
/* 8076C6F4  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 8076C6F8  38 80 00 00 */	li r4, 0
/* 8076C6FC  81 83 00 00 */	lwz r12, 0(r3)
/* 8076C700  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8076C704  7D 89 03 A6 */	mtctr r12
/* 8076C708  4E 80 04 21 */	bctrl 
/* 8076C70C  38 00 00 00 */	li r0, 0
/* 8076C710  B0 03 00 00 */	sth r0, 0(r3)
/* 8076C714  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 8076C718  38 80 00 00 */	li r4, 0
/* 8076C71C  81 83 00 00 */	lwz r12, 0(r3)
/* 8076C720  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8076C724  7D 89 03 A6 */	mtctr r12
/* 8076C728  4E 80 04 21 */	bctrl 
/* 8076C72C  38 00 00 00 */	li r0, 0
/* 8076C730  B0 03 00 02 */	sth r0, 2(r3)
/* 8076C734  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 8076C738  38 80 00 00 */	li r4, 0
/* 8076C73C  81 83 00 00 */	lwz r12, 0(r3)
/* 8076C740  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8076C744  7D 89 03 A6 */	mtctr r12
/* 8076C748  4E 80 04 21 */	bctrl 
/* 8076C74C  38 00 00 00 */	li r0, 0
/* 8076C750  B0 03 00 04 */	sth r0, 4(r3)
/* 8076C754  3A B5 00 01 */	addi r21, r21, 1
lbl_8076C758:
/* 8076C758  56 A3 04 3E */	clrlwi r3, r21, 0x10
/* 8076C75C  A0 17 00 5C */	lhz r0, 0x5c(r23)
/* 8076C760  7C 03 00 40 */	cmplw r3, r0
/* 8076C764  41 80 FF 84 */	blt lbl_8076C6E8
lbl_8076C768:
/* 8076C768  88 18 05 BA */	lbz r0, 0x5ba(r24)
/* 8076C76C  28 00 00 01 */	cmplwi r0, 1
/* 8076C770  40 82 00 28 */	bne lbl_8076C798
/* 8076C774  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8076C778  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8076C77C  80 98 06 90 */	lwz r4, 0x690(r24)
/* 8076C780  80 84 00 04 */	lwz r4, 4(r4)
/* 8076C784  38 B8 01 0C */	addi r5, r24, 0x10c
/* 8076C788  4B A3 86 18 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8076C78C  80 78 06 90 */	lwz r3, 0x690(r24)
/* 8076C790  4B 8A 15 34 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8076C794  48 00 00 5C */	b lbl_8076C7F0
lbl_8076C798:
/* 8076C798  28 00 00 02 */	cmplwi r0, 2
/* 8076C79C  41 80 00 54 */	blt lbl_8076C7F0
/* 8076C7A0  80 78 06 94 */	lwz r3, 0x694(r24)
/* 8076C7A4  80 83 00 04 */	lwz r4, 4(r3)
/* 8076C7A8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8076C7AC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8076C7B0  80 84 00 04 */	lwz r4, 4(r4)
/* 8076C7B4  38 B8 01 0C */	addi r5, r24, 0x10c
/* 8076C7B8  4B A3 85 E8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8076C7BC  80 78 06 94 */	lwz r3, 0x694(r24)
/* 8076C7C0  4B 8A 4A 00 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8076C7C4  88 18 0A 72 */	lbz r0, 0xa72(r24)
/* 8076C7C8  7C 00 07 75 */	extsb. r0, r0
/* 8076C7CC  41 82 00 24 */	beq lbl_8076C7F0
/* 8076C7D0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8076C7D4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8076C7D8  80 98 06 90 */	lwz r4, 0x690(r24)
/* 8076C7DC  80 84 00 04 */	lwz r4, 4(r4)
/* 8076C7E0  38 B8 01 0C */	addi r5, r24, 0x10c
/* 8076C7E4  4B A3 85 BC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8076C7E8  80 78 06 90 */	lwz r3, 0x690(r24)
/* 8076C7EC  4B 8A 14 D8 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8076C7F0:
/* 8076C7F0  88 18 13 67 */	lbz r0, 0x1367(r24)
/* 8076C7F4  7C 00 07 75 */	extsb. r0, r0
/* 8076C7F8  41 82 00 D4 */	beq lbl_8076C8CC
/* 8076C7FC  3B 40 00 00 */	li r26, 0
/* 8076C800  3A E0 00 00 */	li r23, 0
/* 8076C804  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8076C808  3B E3 CA 54 */	addi r31, r3, g_env_light@l
lbl_8076C80C:
/* 8076C80C  7F E3 FB 78 */	mr r3, r31
/* 8076C810  3B 77 0A 28 */	addi r27, r23, 0xa28
/* 8076C814  7C 98 D8 2E */	lwzx r4, r24, r27
/* 8076C818  80 84 00 04 */	lwz r4, 4(r4)
/* 8076C81C  38 B8 01 0C */	addi r5, r24, 0x10c
/* 8076C820  4B A3 85 80 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8076C824  7C 78 D8 2E */	lwzx r3, r24, r27
/* 8076C828  82 C3 00 04 */	lwz r22, 4(r3)
/* 8076C82C  3B 20 00 00 */	li r25, 0
/* 8076C830  48 00 00 74 */	b lbl_8076C8A4
lbl_8076C834:
/* 8076C834  80 76 00 60 */	lwz r3, 0x60(r22)
/* 8076C838  57 20 13 BA */	rlwinm r0, r25, 2, 0xe, 0x1d
/* 8076C83C  7E A3 00 2E */	lwzx r21, r3, r0
/* 8076C840  80 75 00 2C */	lwz r3, 0x2c(r21)
/* 8076C844  38 80 00 01 */	li r4, 1
/* 8076C848  81 83 00 00 */	lwz r12, 0(r3)
/* 8076C84C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8076C850  7D 89 03 A6 */	mtctr r12
/* 8076C854  4E 80 04 21 */	bctrl 
/* 8076C858  38 00 00 FF */	li r0, 0xff
/* 8076C85C  B0 03 00 00 */	sth r0, 0(r3)
/* 8076C860  80 75 00 2C */	lwz r3, 0x2c(r21)
/* 8076C864  38 80 00 01 */	li r4, 1
/* 8076C868  81 83 00 00 */	lwz r12, 0(r3)
/* 8076C86C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8076C870  7D 89 03 A6 */	mtctr r12
/* 8076C874  4E 80 04 21 */	bctrl 
/* 8076C878  38 00 00 8A */	li r0, 0x8a
/* 8076C87C  B0 03 00 02 */	sth r0, 2(r3)
/* 8076C880  80 75 00 2C */	lwz r3, 0x2c(r21)
/* 8076C884  38 80 00 01 */	li r4, 1
/* 8076C888  81 83 00 00 */	lwz r12, 0(r3)
/* 8076C88C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8076C890  7D 89 03 A6 */	mtctr r12
/* 8076C894  4E 80 04 21 */	bctrl 
/* 8076C898  38 00 00 18 */	li r0, 0x18
/* 8076C89C  B0 03 00 04 */	sth r0, 4(r3)
/* 8076C8A0  3B 39 00 01 */	addi r25, r25, 1
lbl_8076C8A4:
/* 8076C8A4  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 8076C8A8  A0 16 00 5C */	lhz r0, 0x5c(r22)
/* 8076C8AC  7C 03 00 40 */	cmplw r3, r0
/* 8076C8B0  41 80 FF 84 */	blt lbl_8076C834
/* 8076C8B4  7C 78 D8 2E */	lwzx r3, r24, r27
/* 8076C8B8  4B 8A 14 0C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8076C8BC  3B 5A 00 01 */	addi r26, r26, 1
/* 8076C8C0  2C 1A 00 02 */	cmpwi r26, 2
/* 8076C8C4  3A F7 00 04 */	addi r23, r23, 4
/* 8076C8C8  41 80 FF 44 */	blt lbl_8076C80C
lbl_8076C8CC:
/* 8076C8CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076C8D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8076C8D4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8076C8D8  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8076C8DC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8076C8E0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8076C8E4  88 18 0A 8C */	lbz r0, 0xa8c(r24)
/* 8076C8E8  2C 00 00 02 */	cmpwi r0, 2
/* 8076C8EC  41 82 00 84 */	beq lbl_8076C970
/* 8076C8F0  C0 58 04 D8 */	lfs f2, 0x4d8(r24)
/* 8076C8F4  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8076C8F8  C0 78 04 D4 */	lfs f3, 0x4d4(r24)
/* 8076C8FC  EC 20 18 2A */	fadds f1, f0, f3
/* 8076C900  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 8076C904  D0 01 00 08 */	stfs f0, 8(r1)
/* 8076C908  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8076C90C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8076C910  80 78 0A 58 */	lwz r3, 0xa58(r24)
/* 8076C914  38 80 00 01 */	li r4, 1
/* 8076C918  7F 85 E3 78 */	mr r5, r28
/* 8076C91C  38 C1 00 08 */	addi r6, r1, 8
/* 8076C920  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 8076C924  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8076C928  C0 98 0C AC */	lfs f4, 0xcac(r24)
/* 8076C92C  38 F8 0D 04 */	addi r7, r24, 0xd04
/* 8076C930  39 18 01 0C */	addi r8, r24, 0x10c
/* 8076C934  39 20 00 00 */	li r9, 0
/* 8076C938  C0 BD 00 08 */	lfs f5, 8(r29)
/* 8076C93C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8076C940  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8076C944  4B 8C 1F CC */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8076C948  90 78 0A 58 */	stw r3, 0xa58(r24)
/* 8076C94C  88 18 05 BA */	lbz r0, 0x5ba(r24)
/* 8076C950  28 00 00 01 */	cmplwi r0, 1
/* 8076C954  40 82 00 1C */	bne lbl_8076C970
/* 8076C958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076C95C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8076C960  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 8076C964  80 98 0A 58 */	lwz r4, 0xa58(r24)
/* 8076C968  80 B8 06 90 */	lwz r5, 0x690(r24)
/* 8076C96C  4B 8E 95 B0 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_8076C970:
/* 8076C970  88 18 06 9C */	lbz r0, 0x69c(r24)
/* 8076C974  7C 00 07 75 */	extsb. r0, r0
/* 8076C978  41 82 00 3C */	beq lbl_8076C9B4
/* 8076C97C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8076C980  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8076C984  38 80 00 10 */	li r4, 0x10
/* 8076C988  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 8076C98C  38 D8 06 A0 */	addi r6, r24, 0x6a0
/* 8076C990  4B A3 6E 34 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8076C994  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8076C998  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8076C99C  80 98 06 98 */	lwz r4, 0x698(r24)
/* 8076C9A0  80 84 00 04 */	lwz r4, 4(r4)
/* 8076C9A4  38 B8 06 A0 */	addi r5, r24, 0x6a0
/* 8076C9A8  4B A3 83 F8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8076C9AC  80 78 06 98 */	lwz r3, 0x698(r24)
/* 8076C9B0  4B 8A 13 14 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8076C9B4:
/* 8076C9B4  38 60 00 01 */	li r3, 1
lbl_8076C9B8:
/* 8076C9B8  39 61 00 60 */	addi r11, r1, 0x60
/* 8076C9BC  4B BF 58 4C */	b _restgpr_21
/* 8076C9C0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8076C9C4  7C 08 03 A6 */	mtlr r0
/* 8076C9C8  38 21 00 60 */	addi r1, r1, 0x60
/* 8076C9CC  4E 80 00 20 */	blr 
