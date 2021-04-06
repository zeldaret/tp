lbl_80CE738C:
/* 80CE738C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE7390  7C 08 02 A6 */	mflr r0
/* 80CE7394  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE7398  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE739C  4B 67 AE 41 */	bl _savegpr_29
/* 80CE73A0  7C 7E 1B 78 */	mr r30, r3
/* 80CE73A4  3C 80 80 CE */	lis r4, mCcDObjInfo__14daObj_SSItem_c@ha /* 0x80CE7EB0@ha */
/* 80CE73A8  3B E4 7E B0 */	addi r31, r4, mCcDObjInfo__14daObj_SSItem_c@l /* 0x80CE7EB0@l */
/* 80CE73AC  88 03 0B 0E */	lbz r0, 0xb0e(r3)
/* 80CE73B0  28 00 00 02 */	cmplwi r0, 2
/* 80CE73B4  40 82 00 0C */	bne lbl_80CE73C0
/* 80CE73B8  38 60 00 01 */	li r3, 1
/* 80CE73BC  48 00 02 3C */	b lbl_80CE75F8
lbl_80CE73C0:
/* 80CE73C0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80CE73C4  54 00 04 A4 */	rlwinm r0, r0, 0, 0x12, 0x12
/* 80CE73C8  90 1E 0A FC */	stw r0, 0xafc(r30)
/* 80CE73CC  48 00 07 E9 */	bl setParam__14daObj_SSItem_cFv
/* 80CE73D0  80 1E 0A FC */	lwz r0, 0xafc(r30)
/* 80CE73D4  2C 00 00 00 */	cmpwi r0, 0
/* 80CE73D8  41 82 00 34 */	beq lbl_80CE740C
/* 80CE73DC  80 1E 05 B0 */	lwz r0, 0x5b0(r30)
/* 80CE73E0  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CE73E4  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80CE73E8  80 1E 05 B0 */	lwz r0, 0x5b0(r30)
/* 80CE73EC  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80CE73F0  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80CE73F4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80CE73F8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CE73FC  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80CE7400  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80CE7404  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80CE7408  48 00 01 00 */	b lbl_80CE7508
lbl_80CE740C:
/* 80CE740C  38 7E 07 78 */	addi r3, r30, 0x778
/* 80CE7410  4B 39 C4 21 */	bl Move__10dCcD_GSttsFv
/* 80CE7414  38 7E 07 D8 */	addi r3, r30, 0x7d8
/* 80CE7418  4B 39 D2 41 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80CE741C  28 03 00 00 */	cmplwi r3, 0
/* 80CE7420  41 82 00 20 */	beq lbl_80CE7440
/* 80CE7424  C0 1E 07 5C */	lfs f0, 0x75c(r30)
/* 80CE7428  D0 1E 0A 8C */	stfs f0, 0xa8c(r30)
/* 80CE742C  C0 1E 07 60 */	lfs f0, 0x760(r30)
/* 80CE7430  D0 1E 0A 90 */	stfs f0, 0xa90(r30)
/* 80CE7434  C0 1E 07 64 */	lfs f0, 0x764(r30)
/* 80CE7438  D0 1E 0A 94 */	stfs f0, 0xa94(r30)
/* 80CE743C  48 00 00 14 */	b lbl_80CE7450
lbl_80CE7440:
/* 80CE7440  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80CE7444  D0 1E 0A 8C */	stfs f0, 0xa8c(r30)
/* 80CE7448  D0 1E 0A 90 */	stfs f0, 0xa90(r30)
/* 80CE744C  D0 1E 0A 94 */	stfs f0, 0xa94(r30)
lbl_80CE7450:
/* 80CE7450  7F C3 F3 78 */	mr r3, r30
/* 80CE7454  38 9E 0A 8C */	addi r4, r30, 0xa8c
/* 80CE7458  4B 33 32 75 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CE745C  38 7E 05 84 */	addi r3, r30, 0x584
/* 80CE7460  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE7464  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE7468  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CE746C  4B 38 F6 41 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80CE7470  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 80CE7474  90 1E 0A 50 */	stw r0, 0xa50(r30)
/* 80CE7478  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 80CE747C  90 1E 0A 54 */	stw r0, 0xa54(r30)
/* 80CE7480  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 80CE7484  90 1E 0A 58 */	stw r0, 0xa58(r30)
/* 80CE7488  88 1E 06 6C */	lbz r0, 0x66c(r30)
/* 80CE748C  98 1E 0A 5C */	stb r0, 0xa5c(r30)
/* 80CE7490  A0 1E 06 74 */	lhz r0, 0x674(r30)
/* 80CE7494  B0 1E 0A 64 */	sth r0, 0xa64(r30)
/* 80CE7498  A0 1E 06 76 */	lhz r0, 0x676(r30)
/* 80CE749C  B0 1E 0A 66 */	sth r0, 0xa66(r30)
/* 80CE74A0  80 1E 06 78 */	lwz r0, 0x678(r30)
/* 80CE74A4  90 1E 0A 68 */	stw r0, 0xa68(r30)
/* 80CE74A8  80 1E 06 7C */	lwz r0, 0x67c(r30)
/* 80CE74AC  90 1E 0A 6C */	stw r0, 0xa6c(r30)
/* 80CE74B0  C0 1E 06 84 */	lfs f0, 0x684(r30)
/* 80CE74B4  D0 1E 0A 74 */	stfs f0, 0xa74(r30)
/* 80CE74B8  C0 1E 06 88 */	lfs f0, 0x688(r30)
/* 80CE74BC  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 80CE74C0  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 80CE74C4  D0 1E 0A 7C */	stfs f0, 0xa7c(r30)
/* 80CE74C8  80 1E 06 90 */	lwz r0, 0x690(r30)
/* 80CE74CC  90 1E 0A 80 */	stw r0, 0xa80(r30)
/* 80CE74D0  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 80CE74D4  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80CE74D8  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 80CE74DC  90 1E 0A 88 */	stw r0, 0xa88(r30)
/* 80CE74E0  C0 1E 06 1C */	lfs f0, 0x61c(r30)
/* 80CE74E4  D0 1E 0B 00 */	stfs f0, 0xb00(r30)
/* 80CE74E8  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CE74EC  C0 1E 0B 00 */	lfs f0, 0xb00(r30)
/* 80CE74F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CE74F4  41 82 00 14 */	beq lbl_80CE7508
/* 80CE74F8  7F C3 F3 78 */	mr r3, r30
/* 80CE74FC  48 00 07 29 */	bl setEnvTevColor__14daObj_SSItem_cFv
/* 80CE7500  7F C3 F3 78 */	mr r3, r30
/* 80CE7504  48 00 07 7D */	bl setRoomNo__14daObj_SSItem_cFv
lbl_80CE7508:
/* 80CE7508  38 7E 0A E4 */	addi r3, r30, 0xae4
/* 80CE750C  4B 67 AB 0D */	bl __ptmf_test
/* 80CE7510  2C 03 00 00 */	cmpwi r3, 0
/* 80CE7514  41 82 00 18 */	beq lbl_80CE752C
/* 80CE7518  7F C3 F3 78 */	mr r3, r30
/* 80CE751C  38 80 00 00 */	li r4, 0
/* 80CE7520  39 9E 0A E4 */	addi r12, r30, 0xae4
/* 80CE7524  4B 67 AB 61 */	bl __ptmf_scall
/* 80CE7528  60 00 00 00 */	nop 
lbl_80CE752C:
/* 80CE752C  7F C3 F3 78 */	mr r3, r30
/* 80CE7530  48 00 07 95 */	bl setMtx__14daObj_SSItem_cFv
/* 80CE7534  80 1E 0A FC */	lwz r0, 0xafc(r30)
/* 80CE7538  2C 00 00 00 */	cmpwi r0, 0
/* 80CE753C  40 82 00 B0 */	bne lbl_80CE75EC
/* 80CE7540  38 00 00 00 */	li r0, 0
/* 80CE7544  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80CE7548  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80CE754C  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80CE7550  90 1E 09 3C */	stw r0, 0x93c(r30)
/* 80CE7554  38 00 00 1F */	li r0, 0x1f
/* 80CE7558  90 1E 09 2C */	stw r0, 0x92c(r30)
/* 80CE755C  38 7E 0A 38 */	addi r3, r30, 0xa38
/* 80CE7560  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CE7564  4B 58 7C 9D */	bl SetR__8cM3dGCylFf
/* 80CE7568  38 7E 0A 38 */	addi r3, r30, 0xa38
/* 80CE756C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CE7570  4B 58 7C 89 */	bl SetH__8cM3dGCylFf
/* 80CE7574  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CE7578  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CE757C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CE7580  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CE7584  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CE7588  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE758C  38 7E 0A 38 */	addi r3, r30, 0xa38
/* 80CE7590  38 81 00 08 */	addi r4, r1, 8
/* 80CE7594  4B 58 7C 49 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CE7598  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE759C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE75A0  3B A3 23 3C */	addi r29, r3, 0x233c
/* 80CE75A4  7F A3 EB 78 */	mr r3, r29
/* 80CE75A8  38 9E 09 14 */	addi r4, r30, 0x914
/* 80CE75AC  4B 57 D5 FD */	bl Set__4cCcSFP8cCcD_Obj
/* 80CE75B0  38 00 00 00 */	li r0, 0
/* 80CE75B4  90 1E 07 E8 */	stw r0, 0x7e8(r30)
/* 80CE75B8  90 1E 07 D8 */	stw r0, 0x7d8(r30)
/* 80CE75BC  38 7E 08 FC */	addi r3, r30, 0x8fc
/* 80CE75C0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CE75C4  4B 58 7C 3D */	bl SetR__8cM3dGCylFf
/* 80CE75C8  38 7E 08 FC */	addi r3, r30, 0x8fc
/* 80CE75CC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CE75D0  4B 58 7C 29 */	bl SetH__8cM3dGCylFf
/* 80CE75D4  38 7E 08 FC */	addi r3, r30, 0x8fc
/* 80CE75D8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CE75DC  4B 58 7C 01 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CE75E0  7F A3 EB 78 */	mr r3, r29
/* 80CE75E4  38 9E 07 D8 */	addi r4, r30, 0x7d8
/* 80CE75E8  4B 57 D5 C1 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80CE75EC:
/* 80CE75EC  7F C3 F3 78 */	mr r3, r30
/* 80CE75F0  48 00 07 39 */	bl setAttnPos__14daObj_SSItem_cFv
/* 80CE75F4  38 60 00 01 */	li r3, 1
lbl_80CE75F8:
/* 80CE75F8  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE75FC  4B 67 AC 2D */	bl _restgpr_29
/* 80CE7600  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE7604  7C 08 03 A6 */	mtlr r0
/* 80CE7608  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE760C  4E 80 00 20 */	blr 
