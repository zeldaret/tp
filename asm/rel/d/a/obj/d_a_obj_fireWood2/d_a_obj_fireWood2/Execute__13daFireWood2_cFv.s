lbl_80BE87DC:
/* 80BE87DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BE87E0  7C 08 02 A6 */	mflr r0
/* 80BE87E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BE87E8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BE87EC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BE87F0  7C 7F 1B 78 */	mr r31, r3
/* 80BE87F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE87F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE87FC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE8800  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE8804  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BE8808  7C 05 07 74 */	extsb r5, r0
/* 80BE880C  4B 44 CB 54 */	b isSwitch__10dSv_info_cCFii
/* 80BE8810  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80BE8814  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 80BE8818  7C 00 F0 40 */	cmplw r0, r30
/* 80BE881C  41 82 00 64 */	beq lbl_80BE8880
/* 80BE8820  38 00 00 00 */	li r0, 0
/* 80BE8824  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80BE8828  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80BE882C  7F E3 FB 78 */	mr r3, r31
/* 80BE8830  4B FF FE CD */	bl cutLight__13daFireWood2_cFv
/* 80BE8834  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 80BE8838  28 00 00 00 */	cmplwi r0, 0
/* 80BE883C  40 82 00 24 */	bne lbl_80BE8860
/* 80BE8840  28 1E 00 00 */	cmplwi r30, 0
/* 80BE8844  41 82 00 38 */	beq lbl_80BE887C
/* 80BE8848  38 00 00 01 */	li r0, 1
/* 80BE884C  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80BE8850  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80BE8854  7F E3 FB 78 */	mr r3, r31
/* 80BE8858  4B FF FE 75 */	bl setLight__13daFireWood2_cFv
/* 80BE885C  48 00 00 20 */	b lbl_80BE887C
lbl_80BE8860:
/* 80BE8860  28 1E 00 00 */	cmplwi r30, 0
/* 80BE8864  40 82 00 18 */	bne lbl_80BE887C
/* 80BE8868  38 00 00 01 */	li r0, 1
/* 80BE886C  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80BE8870  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80BE8874  7F E3 FB 78 */	mr r3, r31
/* 80BE8878  4B FF FE 55 */	bl setLight__13daFireWood2_cFv
lbl_80BE887C:
/* 80BE887C  9B DF 06 F9 */	stb r30, 0x6f9(r31)
lbl_80BE8880:
/* 80BE8880  88 1F 06 F8 */	lbz r0, 0x6f8(r31)
/* 80BE8884  28 00 00 00 */	cmplwi r0, 0
/* 80BE8888  41 82 02 D4 */	beq lbl_80BE8B5C
/* 80BE888C  88 1F 06 FB */	lbz r0, 0x6fb(r31)
/* 80BE8890  28 00 00 01 */	cmplwi r0, 1
/* 80BE8894  40 82 01 70 */	bne lbl_80BE8A04
/* 80BE8898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE889C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80BE88A0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BE88A4  38 00 00 FF */	li r0, 0xff
/* 80BE88A8  90 01 00 08 */	stw r0, 8(r1)
/* 80BE88AC  38 80 00 00 */	li r4, 0
/* 80BE88B0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE88B4  38 00 FF FF */	li r0, -1
/* 80BE88B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE88BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE88C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE88C4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE88C8  80 9F 06 FC */	lwz r4, 0x6fc(r31)
/* 80BE88CC  38 A0 00 00 */	li r5, 0
/* 80BE88D0  3C C0 00 01 */	lis r6, 0x0001 /* 0x000085A7@ha */
/* 80BE88D4  38 C6 85 A7 */	addi r6, r6, 0x85A7 /* 0x000085A7@l */
/* 80BE88D8  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE88DC  39 00 00 00 */	li r8, 0
/* 80BE88E0  39 20 00 00 */	li r9, 0
/* 80BE88E4  39 40 00 00 */	li r10, 0
/* 80BE88E8  3D 60 80 BF */	lis r11, lit_3836@ha
/* 80BE88EC  C0 2B 8F 78 */	lfs f1, lit_3836@l(r11)
/* 80BE88F0  4B 46 4B DC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE88F4  90 7F 06 FC */	stw r3, 0x6fc(r31)
/* 80BE88F8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BE88FC  38 00 00 FF */	li r0, 0xff
/* 80BE8900  90 01 00 08 */	stw r0, 8(r1)
/* 80BE8904  38 80 00 00 */	li r4, 0
/* 80BE8908  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE890C  38 00 FF FF */	li r0, -1
/* 80BE8910  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE8914  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE8918  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE891C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE8920  80 9F 07 00 */	lwz r4, 0x700(r31)
/* 80BE8924  38 A0 00 00 */	li r5, 0
/* 80BE8928  3C C0 00 01 */	lis r6, 0x0001 /* 0x000085BB@ha */
/* 80BE892C  38 C6 85 BB */	addi r6, r6, 0x85BB /* 0x000085BB@l */
/* 80BE8930  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE8934  39 00 00 00 */	li r8, 0
/* 80BE8938  39 20 00 00 */	li r9, 0
/* 80BE893C  39 40 00 00 */	li r10, 0
/* 80BE8940  3D 60 80 BF */	lis r11, lit_3836@ha
/* 80BE8944  C0 2B 8F 78 */	lfs f1, lit_3836@l(r11)
/* 80BE8948  4B 46 4B 84 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE894C  90 7F 07 00 */	stw r3, 0x700(r31)
/* 80BE8950  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BE8954  38 00 00 FF */	li r0, 0xff
/* 80BE8958  90 01 00 08 */	stw r0, 8(r1)
/* 80BE895C  38 80 00 00 */	li r4, 0
/* 80BE8960  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE8964  38 00 FF FF */	li r0, -1
/* 80BE8968  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE896C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE8970  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE8974  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE8978  80 9F 07 04 */	lwz r4, 0x704(r31)
/* 80BE897C  38 A0 00 00 */	li r5, 0
/* 80BE8980  3C C0 00 01 */	lis r6, 0x0001 /* 0x000085BC@ha */
/* 80BE8984  38 C6 85 BC */	addi r6, r6, 0x85BC /* 0x000085BC@l */
/* 80BE8988  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE898C  39 00 00 00 */	li r8, 0
/* 80BE8990  39 20 00 00 */	li r9, 0
/* 80BE8994  39 40 00 00 */	li r10, 0
/* 80BE8998  3D 60 80 BF */	lis r11, lit_3836@ha
/* 80BE899C  C0 2B 8F 78 */	lfs f1, lit_3836@l(r11)
/* 80BE89A0  4B 46 4B 2C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE89A4  90 7F 07 04 */	stw r3, 0x704(r31)
/* 80BE89A8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BE89AC  38 00 00 FF */	li r0, 0xff
/* 80BE89B0  90 01 00 08 */	stw r0, 8(r1)
/* 80BE89B4  38 80 00 00 */	li r4, 0
/* 80BE89B8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE89BC  38 00 FF FF */	li r0, -1
/* 80BE89C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE89C4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE89C8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE89CC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE89D0  80 9F 07 08 */	lwz r4, 0x708(r31)
/* 80BE89D4  38 A0 00 00 */	li r5, 0
/* 80BE89D8  3C C0 00 01 */	lis r6, 0x0001 /* 0x000085BD@ha */
/* 80BE89DC  38 C6 85 BD */	addi r6, r6, 0x85BD /* 0x000085BD@l */
/* 80BE89E0  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE89E4  39 00 00 00 */	li r8, 0
/* 80BE89E8  39 20 00 00 */	li r9, 0
/* 80BE89EC  39 40 00 00 */	li r10, 0
/* 80BE89F0  3D 60 80 BF */	lis r11, lit_3836@ha
/* 80BE89F4  C0 2B 8F 78 */	lfs f1, lit_3836@l(r11)
/* 80BE89F8  4B 46 4A D4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE89FC  90 7F 07 08 */	stw r3, 0x708(r31)
/* 80BE8A00  48 00 01 08 */	b lbl_80BE8B08
lbl_80BE8A04:
/* 80BE8A04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE8A08  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80BE8A0C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BE8A10  38 00 00 FF */	li r0, 0xff
/* 80BE8A14  90 01 00 08 */	stw r0, 8(r1)
/* 80BE8A18  38 80 00 00 */	li r4, 0
/* 80BE8A1C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE8A20  38 00 FF FF */	li r0, -1
/* 80BE8A24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE8A28  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE8A2C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE8A30  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE8A34  80 9F 06 FC */	lwz r4, 0x6fc(r31)
/* 80BE8A38  38 A0 00 00 */	li r5, 0
/* 80BE8A3C  38 C0 03 AD */	li r6, 0x3ad
/* 80BE8A40  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE8A44  39 00 00 00 */	li r8, 0
/* 80BE8A48  39 20 00 00 */	li r9, 0
/* 80BE8A4C  39 40 00 00 */	li r10, 0
/* 80BE8A50  3D 60 80 BF */	lis r11, lit_3836@ha
/* 80BE8A54  C0 2B 8F 78 */	lfs f1, lit_3836@l(r11)
/* 80BE8A58  4B 46 4A 74 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE8A5C  90 7F 06 FC */	stw r3, 0x6fc(r31)
/* 80BE8A60  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BE8A64  38 00 00 FF */	li r0, 0xff
/* 80BE8A68  90 01 00 08 */	stw r0, 8(r1)
/* 80BE8A6C  38 80 00 00 */	li r4, 0
/* 80BE8A70  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE8A74  38 00 FF FF */	li r0, -1
/* 80BE8A78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE8A7C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE8A80  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE8A84  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE8A88  80 9F 07 00 */	lwz r4, 0x700(r31)
/* 80BE8A8C  38 A0 00 00 */	li r5, 0
/* 80BE8A90  38 C0 03 AF */	li r6, 0x3af
/* 80BE8A94  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE8A98  39 00 00 00 */	li r8, 0
/* 80BE8A9C  39 20 00 00 */	li r9, 0
/* 80BE8AA0  39 40 00 00 */	li r10, 0
/* 80BE8AA4  3D 60 80 BF */	lis r11, lit_3836@ha
/* 80BE8AA8  C0 2B 8F 78 */	lfs f1, lit_3836@l(r11)
/* 80BE8AAC  4B 46 4A 20 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE8AB0  90 7F 07 00 */	stw r3, 0x700(r31)
/* 80BE8AB4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BE8AB8  38 00 00 FF */	li r0, 0xff
/* 80BE8ABC  90 01 00 08 */	stw r0, 8(r1)
/* 80BE8AC0  38 80 00 00 */	li r4, 0
/* 80BE8AC4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE8AC8  38 00 FF FF */	li r0, -1
/* 80BE8ACC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE8AD0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE8AD4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE8AD8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE8ADC  80 9F 07 04 */	lwz r4, 0x704(r31)
/* 80BE8AE0  38 A0 00 00 */	li r5, 0
/* 80BE8AE4  38 C0 03 AE */	li r6, 0x3ae
/* 80BE8AE8  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE8AEC  39 00 00 00 */	li r8, 0
/* 80BE8AF0  39 20 00 00 */	li r9, 0
/* 80BE8AF4  39 40 00 00 */	li r10, 0
/* 80BE8AF8  3D 60 80 BF */	lis r11, lit_3836@ha
/* 80BE8AFC  C0 2B 8F 78 */	lfs f1, lit_3836@l(r11)
/* 80BE8B00  4B 46 49 CC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE8B04  90 7F 07 04 */	stw r3, 0x704(r31)
lbl_80BE8B08:
/* 80BE8B08  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BE8B0C  7C 03 07 74 */	extsb r3, r0
/* 80BE8B10  4B 44 45 5C */	b dComIfGp_getReverb__Fi
/* 80BE8B14  7C 67 1B 78 */	mr r7, r3
/* 80BE8B18  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 80BE8B1C  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 80BE8B20  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BE8B24  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BE8B28  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BE8B2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE8B30  38 81 00 28 */	addi r4, r1, 0x28
/* 80BE8B34  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80BE8B38  38 C0 00 00 */	li r6, 0
/* 80BE8B3C  3D 00 80 BF */	lis r8, lit_3836@ha
/* 80BE8B40  C0 28 8F 78 */	lfs f1, lit_3836@l(r8)
/* 80BE8B44  FC 40 08 90 */	fmr f2, f1
/* 80BE8B48  3D 00 80 BF */	lis r8, lit_4018@ha
/* 80BE8B4C  C0 68 8F 94 */	lfs f3, lit_4018@l(r8)
/* 80BE8B50  FC 80 18 90 */	fmr f4, f3
/* 80BE8B54  39 00 00 00 */	li r8, 0
/* 80BE8B58  4B 6C 39 B4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BE8B5C:
/* 80BE8B5C  7F E3 FB 78 */	mr r3, r31
/* 80BE8B60  4B FF F7 71 */	bl setBaseMtx__13daFireWood2_cFv
/* 80BE8B64  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80BE8B68  4B 49 B8 F8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80BE8B6C  28 03 00 00 */	cmplwi r3, 0
/* 80BE8B70  41 82 01 BC */	beq lbl_80BE8D2C
/* 80BE8B74  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80BE8B78  4B 49 B9 D0 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80BE8B7C  7C 7E 1B 78 */	mr r30, r3
/* 80BE8B80  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BE8B84  28 00 02 00 */	cmplwi r0, 0x200
/* 80BE8B88  40 82 00 CC */	bne lbl_80BE8C54
/* 80BE8B8C  88 1E 00 75 */	lbz r0, 0x75(r30)
/* 80BE8B90  28 00 00 01 */	cmplwi r0, 1
/* 80BE8B94  40 82 00 C0 */	bne lbl_80BE8C54
/* 80BE8B98  88 1F 06 F8 */	lbz r0, 0x6f8(r31)
/* 80BE8B9C  28 00 00 00 */	cmplwi r0, 0
/* 80BE8BA0  40 82 00 B4 */	bne lbl_80BE8C54
/* 80BE8BA4  38 00 00 01 */	li r0, 1
/* 80BE8BA8  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80BE8BAC  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80BE8BB0  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 80BE8BB4  28 00 00 00 */	cmplwi r0, 0
/* 80BE8BB8  40 82 00 24 */	bne lbl_80BE8BDC
/* 80BE8BBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE8BC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE8BC4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE8BC8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE8BCC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BE8BD0  7C 05 07 74 */	extsb r5, r0
/* 80BE8BD4  4B 44 C6 2C */	b onSwitch__10dSv_info_cFii
/* 80BE8BD8  48 00 00 20 */	b lbl_80BE8BF8
lbl_80BE8BDC:
/* 80BE8BDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE8BE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE8BE4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE8BE8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE8BEC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BE8BF0  7C 05 07 74 */	extsb r5, r0
/* 80BE8BF4  4B 44 C6 BC */	b offSwitch__10dSv_info_cFii
lbl_80BE8BF8:
/* 80BE8BF8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BE8BFC  7C 03 07 74 */	extsb r3, r0
/* 80BE8C00  4B 44 44 6C */	b dComIfGp_getReverb__Fi
/* 80BE8C04  7C 67 1B 78 */	mr r7, r3
/* 80BE8C08  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 80BE8C0C  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 80BE8C10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE8C14  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BE8C18  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BE8C1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE8C20  38 81 00 24 */	addi r4, r1, 0x24
/* 80BE8C24  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80BE8C28  38 C0 00 00 */	li r6, 0
/* 80BE8C2C  3D 00 80 BF */	lis r8, lit_3836@ha
/* 80BE8C30  C0 28 8F 78 */	lfs f1, lit_3836@l(r8)
/* 80BE8C34  FC 40 08 90 */	fmr f2, f1
/* 80BE8C38  3D 00 80 BF */	lis r8, lit_4018@ha
/* 80BE8C3C  C0 68 8F 94 */	lfs f3, lit_4018@l(r8)
/* 80BE8C40  FC 80 18 90 */	fmr f4, f3
/* 80BE8C44  39 00 00 00 */	li r8, 0
/* 80BE8C48  4B 6C 2D 3C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BE8C4C  7F E3 FB 78 */	mr r3, r31
/* 80BE8C50  4B FF FA 7D */	bl setLight__13daFireWood2_cFv
lbl_80BE8C54:
/* 80BE8C54  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80BE8C58  3C 03 FF FF */	addis r0, r3, 0xffff
/* 80BE8C5C  28 00 00 00 */	cmplwi r0, 0
/* 80BE8C60  40 82 00 CC */	bne lbl_80BE8D2C
/* 80BE8C64  88 1E 00 75 */	lbz r0, 0x75(r30)
/* 80BE8C68  28 00 00 03 */	cmplwi r0, 3
/* 80BE8C6C  40 82 00 C0 */	bne lbl_80BE8D2C
/* 80BE8C70  88 1F 06 F8 */	lbz r0, 0x6f8(r31)
/* 80BE8C74  28 00 00 01 */	cmplwi r0, 1
/* 80BE8C78  40 82 00 B4 */	bne lbl_80BE8D2C
/* 80BE8C7C  38 00 00 00 */	li r0, 0
/* 80BE8C80  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80BE8C84  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80BE8C88  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 80BE8C8C  28 00 00 00 */	cmplwi r0, 0
/* 80BE8C90  40 82 00 24 */	bne lbl_80BE8CB4
/* 80BE8C94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE8C98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE8C9C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE8CA0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE8CA4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BE8CA8  7C 05 07 74 */	extsb r5, r0
/* 80BE8CAC  4B 44 C6 04 */	b offSwitch__10dSv_info_cFii
/* 80BE8CB0  48 00 00 20 */	b lbl_80BE8CD0
lbl_80BE8CB4:
/* 80BE8CB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE8CB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE8CBC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE8CC0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE8CC4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BE8CC8  7C 05 07 74 */	extsb r5, r0
/* 80BE8CCC  4B 44 C5 34 */	b onSwitch__10dSv_info_cFii
lbl_80BE8CD0:
/* 80BE8CD0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BE8CD4  7C 03 07 74 */	extsb r3, r0
/* 80BE8CD8  4B 44 43 94 */	b dComIfGp_getReverb__Fi
/* 80BE8CDC  7C 67 1B 78 */	mr r7, r3
/* 80BE8CE0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080019@ha */
/* 80BE8CE4  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00080019@l */
/* 80BE8CE8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BE8CEC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BE8CF0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BE8CF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE8CF8  38 81 00 20 */	addi r4, r1, 0x20
/* 80BE8CFC  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80BE8D00  38 C0 00 00 */	li r6, 0
/* 80BE8D04  3D 00 80 BF */	lis r8, lit_3836@ha
/* 80BE8D08  C0 28 8F 78 */	lfs f1, lit_3836@l(r8)
/* 80BE8D0C  FC 40 08 90 */	fmr f2, f1
/* 80BE8D10  3D 00 80 BF */	lis r8, lit_4018@ha
/* 80BE8D14  C0 68 8F 94 */	lfs f3, lit_4018@l(r8)
/* 80BE8D18  FC 80 18 90 */	fmr f4, f3
/* 80BE8D1C  39 00 00 00 */	li r8, 0
/* 80BE8D20  4B 6C 2C 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BE8D24  7F E3 FB 78 */	mr r3, r31
/* 80BE8D28  4B FF F9 D5 */	bl cutLight__13daFireWood2_cFv
lbl_80BE8D2C:
/* 80BE8D2C  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80BE8D30  3C 80 80 BF */	lis r4, l_HIO@ha
/* 80BE8D34  38 84 90 8C */	addi r4, r4, l_HIO@l
/* 80BE8D38  C0 24 00 08 */	lfs f1, 8(r4)
/* 80BE8D3C  4B 68 64 C4 */	b SetR__8cM3dGCylFf
/* 80BE8D40  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80BE8D44  3C 80 80 BF */	lis r4, l_HIO@ha
/* 80BE8D48  38 84 90 8C */	addi r4, r4, l_HIO@l
/* 80BE8D4C  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80BE8D50  4B 68 64 A8 */	b SetH__8cM3dGCylFf
/* 80BE8D54  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80BE8D58  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BE8D5C  4B 68 64 80 */	b SetC__8cM3dGCylFRC4cXyz
/* 80BE8D60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE8D64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE8D68  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BE8D6C  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80BE8D70  4B 67 BE 38 */	b Set__4cCcSFP8cCcD_Obj
/* 80BE8D74  7F E3 FB 78 */	mr r3, r31
/* 80BE8D78  4B FF F9 B5 */	bl pointLightProc__13daFireWood2_cFv
/* 80BE8D7C  38 60 00 01 */	li r3, 1
/* 80BE8D80  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BE8D84  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BE8D88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BE8D8C  7C 08 03 A6 */	mtlr r0
/* 80BE8D90  38 21 00 40 */	addi r1, r1, 0x40
/* 80BE8D94  4E 80 00 20 */	blr 
