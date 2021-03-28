lbl_80D14384:
/* 80D14384  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D14388  7C 08 02 A6 */	mflr r0
/* 80D1438C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D14390  39 61 00 50 */	addi r11, r1, 0x50
/* 80D14394  4B 64 DE 38 */	b _savegpr_25
/* 80D14398  7C 7A 1B 78 */	mr r26, r3
/* 80D1439C  3C 60 80 D1 */	lis r3, lit_1109@ha
/* 80D143A0  3B C3 58 B8 */	addi r30, r3, lit_1109@l
/* 80D143A4  3B 9A 05 8C */	addi r28, r26, 0x58c
/* 80D143A8  3B 60 00 00 */	li r27, 0
/* 80D143AC  3B BE 00 8C */	addi r29, r30, 0x8c
/* 80D143B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D143B4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D143B8  48 00 01 A8 */	b lbl_80D14560
lbl_80D143BC:
/* 80D143BC  88 1C 00 34 */	lbz r0, 0x34(r28)
/* 80D143C0  7C 00 07 75 */	extsb. r0, r0
/* 80D143C4  41 82 01 94 */	beq lbl_80D14558
/* 80D143C8  88 7C 00 38 */	lbz r3, 0x38(r28)
/* 80D143CC  28 03 00 00 */	cmplwi r3, 0
/* 80D143D0  41 82 00 0C */	beq lbl_80D143DC
/* 80D143D4  38 03 FF FF */	addi r0, r3, -1
/* 80D143D8  98 1C 00 38 */	stb r0, 0x38(r28)
lbl_80D143DC:
/* 80D143DC  88 1C 00 34 */	lbz r0, 0x34(r28)
/* 80D143E0  2C 00 00 01 */	cmpwi r0, 1
/* 80D143E4  40 82 00 14 */	bne lbl_80D143F8
/* 80D143E8  7F 43 D3 78 */	mr r3, r26
/* 80D143EC  7F 84 E3 78 */	mr r4, r28
/* 80D143F0  4B FF F7 69 */	bl yuka_ground__FP14obj_toby_classP6yuka_s
/* 80D143F4  48 00 00 10 */	b lbl_80D14404
lbl_80D143F8:
/* 80D143F8  7F 43 D3 78 */	mr r3, r26
/* 80D143FC  7F 84 E3 78 */	mr r4, r28
/* 80D14400  4B FF FD 7D */	bl yuka_fly__FP14obj_toby_classP6yuka_s
lbl_80D14404:
/* 80D14404  7F 43 D3 78 */	mr r3, r26
/* 80D14408  7F 84 E3 78 */	mr r4, r28
/* 80D1440C  4B FF FE 59 */	bl yuka_mtxset__FP14obj_toby_classP6yuka_s
/* 80D14410  88 1C 00 39 */	lbz r0, 0x39(r28)
/* 80D14414  7C 00 07 75 */	extsb. r0, r0
/* 80D14418  41 82 01 40 */	beq lbl_80D14558
/* 80D1441C  38 00 00 00 */	li r0, 0
/* 80D14420  98 1C 00 34 */	stb r0, 0x34(r28)
/* 80D14424  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80D14428  88 1E 00 88 */	lbz r0, 0x88(r30)
/* 80D1442C  7C 00 07 75 */	extsb. r0, r0
/* 80D14430  40 82 00 2C */	bne lbl_80D1445C
/* 80D14434  D0 1E 00 8C */	stfs f0, 0x8c(r30)
/* 80D14438  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80D1443C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80D14440  38 7E 00 8C */	addi r3, r30, 0x8c
/* 80D14444  3C 80 80 D1 */	lis r4, __dt__4cXyzFv@ha
/* 80D14448  38 84 39 FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80D1444C  38 BE 00 7C */	addi r5, r30, 0x7c
/* 80D14450  4B FF F2 C9 */	bl __register_global_object
/* 80D14454  38 00 00 01 */	li r0, 1
/* 80D14458  98 1E 00 88 */	stb r0, 0x88(r30)
lbl_80D1445C:
/* 80D1445C  88 1C 00 39 */	lbz r0, 0x39(r28)
/* 80D14460  2C 00 00 01 */	cmpwi r0, 1
/* 80D14464  40 82 00 54 */	bne lbl_80D144B8
/* 80D14468  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D1446C  38 80 00 00 */	li r4, 0
/* 80D14470  90 81 00 08 */	stw r4, 8(r1)
/* 80D14474  38 00 FF FF */	li r0, -1
/* 80D14478  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D1447C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D14480  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D14484  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D14488  38 80 00 00 */	li r4, 0
/* 80D1448C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008254@ha */
/* 80D14490  38 A5 82 54 */	addi r5, r5, 0x8254 /* 0x00008254@l */
/* 80D14494  38 DC 00 08 */	addi r6, r28, 8
/* 80D14498  38 FA 01 0C */	addi r7, r26, 0x10c
/* 80D1449C  39 1C 00 20 */	addi r8, r28, 0x20
/* 80D144A0  39 3E 00 8C */	addi r9, r30, 0x8c
/* 80D144A4  39 40 00 FF */	li r10, 0xff
/* 80D144A8  3D 60 80 D1 */	lis r11, lit_3806@ha
/* 80D144AC  C0 2B 55 E8 */	lfs f1, lit_3806@l(r11)
/* 80D144B0  4B 33 85 E0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D144B4  48 00 00 50 */	b lbl_80D14504
lbl_80D144B8:
/* 80D144B8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D144BC  38 80 00 00 */	li r4, 0
/* 80D144C0  90 81 00 08 */	stw r4, 8(r1)
/* 80D144C4  38 00 FF FF */	li r0, -1
/* 80D144C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D144CC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D144D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D144D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D144D8  38 80 00 00 */	li r4, 0
/* 80D144DC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008255@ha */
/* 80D144E0  38 A5 82 55 */	addi r5, r5, 0x8255 /* 0x00008255@l */
/* 80D144E4  38 DC 00 08 */	addi r6, r28, 8
/* 80D144E8  38 FA 01 0C */	addi r7, r26, 0x10c
/* 80D144EC  39 1C 00 20 */	addi r8, r28, 0x20
/* 80D144F0  39 3E 00 8C */	addi r9, r30, 0x8c
/* 80D144F4  39 40 00 FF */	li r10, 0xff
/* 80D144F8  3D 60 80 D1 */	lis r11, lit_3806@ha
/* 80D144FC  C0 2B 55 E8 */	lfs f1, lit_3806@l(r11)
/* 80D14500  4B 33 85 90 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80D14504:
/* 80D14504  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80D14508  7C 03 07 74 */	extsb r3, r0
/* 80D1450C  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800BA@ha */
/* 80D14510  38 04 00 BA */	addi r0, r4, 0x00BA /* 0x000800BA@l */
/* 80D14514  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D14518  3C 80 80 45 */	lis r4, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D1451C  83 24 13 68 */	lwz r25, mAudioMgrPtr__10Z2AudioMgr@l(r4)
/* 80D14520  4B 31 8B 4C */	b dComIfGp_getReverb__Fi
/* 80D14524  7C 67 1B 78 */	mr r7, r3
/* 80D14528  7F 23 CB 78 */	mr r3, r25
/* 80D1452C  38 81 00 20 */	addi r4, r1, 0x20
/* 80D14530  38 BC 00 08 */	addi r5, r28, 8
/* 80D14534  38 C0 00 00 */	li r6, 0
/* 80D14538  3D 00 80 D1 */	lis r8, lit_3806@ha
/* 80D1453C  C0 28 55 E8 */	lfs f1, lit_3806@l(r8)
/* 80D14540  FC 40 08 90 */	fmr f2, f1
/* 80D14544  3D 00 80 D1 */	lis r8, lit_4081@ha
/* 80D14548  C0 68 56 20 */	lfs f3, lit_4081@l(r8)
/* 80D1454C  FC 80 18 90 */	fmr f4, f3
/* 80D14550  39 00 00 00 */	li r8, 0
/* 80D14554  4B 59 74 30 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D14558:
/* 80D14558  3B 7B 00 01 */	addi r27, r27, 1
/* 80D1455C  3B 9C 00 78 */	addi r28, r28, 0x78
lbl_80D14560:
/* 80D14560  80 1A 63 4C */	lwz r0, 0x634c(r26)
/* 80D14564  7C 1B 00 00 */	cmpw r27, r0
/* 80D14568  41 80 FE 54 */	blt lbl_80D143BC
/* 80D1456C  39 61 00 50 */	addi r11, r1, 0x50
/* 80D14570  4B 64 DC A8 */	b _restgpr_25
/* 80D14574  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D14578  7C 08 03 A6 */	mtlr r0
/* 80D1457C  38 21 00 50 */	addi r1, r1, 0x50
/* 80D14580  4E 80 00 20 */	blr 
