lbl_807C4844:
/* 807C4844  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807C4848  7C 08 02 A6 */	mflr r0
/* 807C484C  90 01 00 54 */	stw r0, 0x54(r1)
/* 807C4850  39 61 00 50 */	addi r11, r1, 0x50
/* 807C4854  4B B9 D9 80 */	b _savegpr_27
/* 807C4858  7C 7E 1B 78 */	mr r30, r3
/* 807C485C  7C 87 23 78 */	mr r7, r4
/* 807C4860  3C 60 80 7D */	lis r3, lit_3909@ha
/* 807C4864  C0 23 EC B0 */	lfs f1, lit_3909@l(r3)
/* 807C4868  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807C486C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807C4870  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807C4874  1C A7 00 03 */	mulli r5, r7, 3
/* 807C4878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C487C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 807C4880  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807C4884  38 00 00 FF */	li r0, 0xff
/* 807C4888  90 01 00 08 */	stw r0, 8(r1)
/* 807C488C  38 80 00 00 */	li r4, 0
/* 807C4890  90 81 00 0C */	stw r4, 0xc(r1)
/* 807C4894  38 00 FF FF */	li r0, -1
/* 807C4898  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C489C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C48A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C48A4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807C48A8  3C 1E 00 01 */	addis r0, r30, 1
/* 807C48AC  54 BF 10 3A */	slwi r31, r5, 2
/* 807C48B0  7F 80 FA 14 */	add r28, r0, r31
/* 807C48B4  80 9C 0F 80 */	lwz r4, 0xf80(r28)
/* 807C48B8  38 A0 00 00 */	li r5, 0
/* 807C48BC  38 C0 03 AD */	li r6, 0x3ad
/* 807C48C0  1C E7 00 0C */	mulli r7, r7, 0xc
/* 807C48C4  3B 67 11 40 */	addi r27, r7, 0x1140
/* 807C48C8  7F 7E DA 14 */	add r27, r30, r27
/* 807C48CC  7F 67 DB 78 */	mr r7, r27
/* 807C48D0  39 00 00 00 */	li r8, 0
/* 807C48D4  39 20 00 00 */	li r9, 0
/* 807C48D8  39 41 00 20 */	addi r10, r1, 0x20
/* 807C48DC  4B 88 8B F0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C48E0  90 7C 0F 80 */	stw r3, 0xf80(r28)
/* 807C48E4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807C48E8  38 00 00 FF */	li r0, 0xff
/* 807C48EC  90 01 00 08 */	stw r0, 8(r1)
/* 807C48F0  38 80 00 00 */	li r4, 0
/* 807C48F4  90 81 00 0C */	stw r4, 0xc(r1)
/* 807C48F8  38 00 FF FF */	li r0, -1
/* 807C48FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C4900  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C4904  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C4908  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807C490C  3C 1E 00 01 */	addis r0, r30, 1
/* 807C4910  7F 80 FA 14 */	add r28, r0, r31
/* 807C4914  80 9C 0F 84 */	lwz r4, 0xf84(r28)
/* 807C4918  38 A0 00 00 */	li r5, 0
/* 807C491C  38 C0 03 AF */	li r6, 0x3af
/* 807C4920  7F 67 DB 78 */	mr r7, r27
/* 807C4924  39 00 00 00 */	li r8, 0
/* 807C4928  39 20 00 00 */	li r9, 0
/* 807C492C  39 41 00 20 */	addi r10, r1, 0x20
/* 807C4930  3D 60 80 7D */	lis r11, lit_3909@ha
/* 807C4934  C0 2B EC B0 */	lfs f1, lit_3909@l(r11)
/* 807C4938  4B 88 8B 94 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C493C  90 7C 0F 84 */	stw r3, 0xf84(r28)
/* 807C4940  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807C4944  38 00 00 FF */	li r0, 0xff
/* 807C4948  90 01 00 08 */	stw r0, 8(r1)
/* 807C494C  38 80 00 00 */	li r4, 0
/* 807C4950  90 81 00 0C */	stw r4, 0xc(r1)
/* 807C4954  38 00 FF FF */	li r0, -1
/* 807C4958  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C495C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C4960  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C4964  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807C4968  3C 1E 00 01 */	addis r0, r30, 1
/* 807C496C  7F 80 FA 14 */	add r28, r0, r31
/* 807C4970  80 9C 0F 88 */	lwz r4, 0xf88(r28)
/* 807C4974  38 A0 00 00 */	li r5, 0
/* 807C4978  38 C0 03 AE */	li r6, 0x3ae
/* 807C497C  7F 67 DB 78 */	mr r7, r27
/* 807C4980  39 00 00 00 */	li r8, 0
/* 807C4984  39 20 00 00 */	li r9, 0
/* 807C4988  39 41 00 20 */	addi r10, r1, 0x20
/* 807C498C  3D 60 80 7D */	lis r11, lit_3909@ha
/* 807C4990  C0 2B EC B0 */	lfs f1, lit_3909@l(r11)
/* 807C4994  4B 88 8B 38 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C4998  90 7C 0F 88 */	stw r3, 0xf88(r28)
/* 807C499C  39 61 00 50 */	addi r11, r1, 0x50
/* 807C49A0  4B B9 D8 80 */	b _restgpr_27
/* 807C49A4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807C49A8  7C 08 03 A6 */	mtlr r0
/* 807C49AC  38 21 00 50 */	addi r1, r1, 0x50
/* 807C49B0  4E 80 00 20 */	blr 
