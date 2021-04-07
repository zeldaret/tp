lbl_80AD8620:
/* 80AD8620  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AD8624  7C 08 02 A6 */	mflr r0
/* 80AD8628  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AD862C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AD8630  4B 88 9B 99 */	bl _savegpr_24
/* 80AD8634  7C 7C 1B 78 */	mr r28, r3
/* 80AD8638  3C 80 80 AE */	lis r4, m__17daNpcShad_Param_c@ha /* 0x80AE1FDC@ha */
/* 80AD863C  3B E4 1F DC */	addi r31, r4, m__17daNpcShad_Param_c@l /* 0x80AE1FDC@l */
/* 80AD8640  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AD8644  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AD8648  40 82 00 1C */	bne lbl_80AD8664
/* 80AD864C  28 1C 00 00 */	cmplwi r28, 0
/* 80AD8650  41 82 00 08 */	beq lbl_80AD8658
/* 80AD8654  4B FF FB B9 */	bl __ct__11daNpcShad_cFv
lbl_80AD8658:
/* 80AD8658  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80AD865C  60 00 00 08 */	ori r0, r0, 8
/* 80AD8660  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80AD8664:
/* 80AD8664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD8668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD866C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80AD8670  3B 1E 3E C8 */	addi r24, r30, 0x3ec8
/* 80AD8674  7F 03 C3 78 */	mr r3, r24
/* 80AD8678  3C 80 80 AE */	lis r4, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80AD867C  38 84 24 C4 */	addi r4, r4, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80AD8680  38 84 01 1B */	addi r4, r4, 0x11b
/* 80AD8684  4B 89 03 11 */	bl strcmp
/* 80AD8688  2C 03 00 00 */	cmpwi r3, 0
/* 80AD868C  40 82 00 84 */	bne lbl_80AD8710
/* 80AD8690  38 60 00 00 */	li r3, 0
/* 80AD8694  4B 55 42 E9 */	bl getLayerNo__14dComIfG_play_cFi
/* 80AD8698  2C 03 00 04 */	cmpwi r3, 4
/* 80AD869C  40 82 00 74 */	bne lbl_80AD8710
/* 80AD86A0  38 60 01 69 */	li r3, 0x169
/* 80AD86A4  4B 67 CF 91 */	bl daNpcF_chkEvtBit__FUl
/* 80AD86A8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD86AC  41 82 00 3C */	beq lbl_80AD86E8
/* 80AD86B0  38 60 01 0A */	li r3, 0x10a
/* 80AD86B4  4B 67 CF 81 */	bl daNpcF_chkEvtBit__FUl
/* 80AD86B8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD86BC  41 82 00 2C */	beq lbl_80AD86E8
/* 80AD86C0  38 60 01 0B */	li r3, 0x10b
/* 80AD86C4  4B 67 CF 71 */	bl daNpcF_chkEvtBit__FUl
/* 80AD86C8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD86CC  41 82 00 1C */	beq lbl_80AD86E8
/* 80AD86D0  38 60 01 0C */	li r3, 0x10c
/* 80AD86D4  4B 67 CF 61 */	bl daNpcF_chkEvtBit__FUl
/* 80AD86D8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD86DC  40 82 00 0C */	bne lbl_80AD86E8
/* 80AD86E0  38 60 00 05 */	li r3, 5
/* 80AD86E4  48 00 04 64 */	b lbl_80AD8B48
lbl_80AD86E8:
/* 80AD86E8  38 60 00 18 */	li r3, 0x18
/* 80AD86EC  38 80 00 4B */	li r4, 0x4b
/* 80AD86F0  4B 55 50 51 */	bl dComIfGs_isStageSwitch__Fii
/* 80AD86F4  2C 03 00 00 */	cmpwi r3, 0
/* 80AD86F8  41 82 00 0C */	beq lbl_80AD8704
/* 80AD86FC  38 60 00 05 */	li r3, 5
/* 80AD8700  48 00 04 48 */	b lbl_80AD8B48
lbl_80AD8704:
/* 80AD8704  38 00 00 00 */	li r0, 0
/* 80AD8708  98 1C 0E 20 */	stb r0, 0xe20(r28)
/* 80AD870C  48 00 01 98 */	b lbl_80AD88A4
lbl_80AD8710:
/* 80AD8710  7F 03 C3 78 */	mr r3, r24
/* 80AD8714  3C 80 80 AE */	lis r4, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80AD8718  38 84 24 C4 */	addi r4, r4, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80AD871C  38 84 01 23 */	addi r4, r4, 0x123
/* 80AD8720  4B 89 02 75 */	bl strcmp
/* 80AD8724  2C 03 00 00 */	cmpwi r3, 0
/* 80AD8728  40 82 01 28 */	bne lbl_80AD8850
/* 80AD872C  38 60 03 11 */	li r3, 0x311
/* 80AD8730  4B 67 CF 05 */	bl daNpcF_chkEvtBit__FUl
/* 80AD8734  2C 03 00 00 */	cmpwi r3, 0
/* 80AD8738  41 82 00 0C */	beq lbl_80AD8744
/* 80AD873C  38 60 00 05 */	li r3, 5
/* 80AD8740  48 00 04 08 */	b lbl_80AD8B48
lbl_80AD8744:
/* 80AD8744  38 60 01 0B */	li r3, 0x10b
/* 80AD8748  4B 67 CE ED */	bl daNpcF_chkEvtBit__FUl
/* 80AD874C  2C 03 00 00 */	cmpwi r3, 0
/* 80AD8750  41 82 00 24 */	beq lbl_80AD8774
/* 80AD8754  38 60 01 2E */	li r3, 0x12e
/* 80AD8758  4B 67 CE DD */	bl daNpcF_chkEvtBit__FUl
/* 80AD875C  2C 03 00 00 */	cmpwi r3, 0
/* 80AD8760  41 82 00 1C */	beq lbl_80AD877C
/* 80AD8764  38 60 03 1C */	li r3, 0x31c
/* 80AD8768  4B 67 CE CD */	bl daNpcF_chkEvtBit__FUl
/* 80AD876C  2C 03 00 00 */	cmpwi r3, 0
/* 80AD8770  40 82 00 0C */	bne lbl_80AD877C
lbl_80AD8774:
/* 80AD8774  38 60 00 05 */	li r3, 5
/* 80AD8778  48 00 03 D0 */	b lbl_80AD8B48
lbl_80AD877C:
/* 80AD877C  38 60 01 2F */	li r3, 0x12f
/* 80AD8780  4B 67 CE B5 */	bl daNpcF_chkEvtBit__FUl
/* 80AD8784  2C 03 00 00 */	cmpwi r3, 0
/* 80AD8788  41 82 00 BC */	beq lbl_80AD8844
/* 80AD878C  38 60 03 12 */	li r3, 0x312
/* 80AD8790  4B 67 CE A5 */	bl daNpcF_chkEvtBit__FUl
/* 80AD8794  2C 03 00 00 */	cmpwi r3, 0
/* 80AD8798  40 82 00 58 */	bne lbl_80AD87F0
/* 80AD879C  7F 83 E3 78 */	mr r3, r28
/* 80AD87A0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80AD87A4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80AD87A8  38 A0 00 01 */	li r5, 1
/* 80AD87AC  38 DC 04 A8 */	addi r6, r28, 0x4a8
/* 80AD87B0  48 00 16 55 */	bl getPathPoint__11daNpcShad_cFUciP3Vec
/* 80AD87B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD87B8  41 82 00 8C */	beq lbl_80AD8844
/* 80AD87BC  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80AD87C0  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80AD87C4  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80AD87C8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80AD87CC  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80AD87D0  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80AD87D4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80AD87D8  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80AD87DC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80AD87E0  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80AD87E4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80AD87E8  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80AD87EC  48 00 00 58 */	b lbl_80AD8844
lbl_80AD87F0:
/* 80AD87F0  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80AD87F4  D0 1C 04 A8 */	stfs f0, 0x4a8(r28)
/* 80AD87F8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80AD87FC  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
/* 80AD8800  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80AD8804  D0 1C 04 B0 */	stfs f0, 0x4b0(r28)
/* 80AD8808  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80AD880C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80AD8810  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80AD8814  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80AD8818  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80AD881C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80AD8820  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80AD8824  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80AD8828  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80AD882C  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80AD8830  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80AD8834  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80AD8838  7F 83 E3 78 */	mr r3, r28
/* 80AD883C  38 80 DA 7F */	li r4, -9601
/* 80AD8840  4B 67 BA 11 */	bl setAngle__8daNpcF_cFs
lbl_80AD8844:
/* 80AD8844  38 00 00 01 */	li r0, 1
/* 80AD8848  98 1C 0E 20 */	stb r0, 0xe20(r28)
/* 80AD884C  48 00 00 58 */	b lbl_80AD88A4
lbl_80AD8850:
/* 80AD8850  7F 03 C3 78 */	mr r3, r24
/* 80AD8854  3C 80 80 AE */	lis r4, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80AD8858  38 84 24 C4 */	addi r4, r4, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80AD885C  38 84 01 2B */	addi r4, r4, 0x12b
/* 80AD8860  4B 89 01 35 */	bl strcmp
/* 80AD8864  2C 03 00 00 */	cmpwi r3, 0
/* 80AD8868  40 82 00 3C */	bne lbl_80AD88A4
/* 80AD886C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD8870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD8874  38 63 09 58 */	addi r3, r3, 0x958
/* 80AD8878  38 80 00 14 */	li r4, 0x14
/* 80AD887C  4B 55 BF E5 */	bl isSwitch__12dSv_memBit_cCFi
/* 80AD8880  2C 03 00 00 */	cmpwi r3, 0
/* 80AD8884  41 82 00 0C */	beq lbl_80AD8890
/* 80AD8888  38 60 00 05 */	li r3, 5
/* 80AD888C  48 00 02 BC */	b lbl_80AD8B48
lbl_80AD8890:
/* 80AD8890  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80AD8894  60 00 40 00 */	ori r0, r0, 0x4000
/* 80AD8898  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80AD889C  38 00 00 02 */	li r0, 2
/* 80AD88A0  98 1C 0E 20 */	stb r0, 0xe20(r28)
lbl_80AD88A4:
/* 80AD88A4  3B 00 00 00 */	li r24, 0
/* 80AD88A8  88 1C 0E 20 */	lbz r0, 0xe20(r28)
/* 80AD88AC  28 00 00 01 */	cmplwi r0, 1
/* 80AD88B0  40 82 00 18 */	bne lbl_80AD88C8
/* 80AD88B4  38 60 03 1C */	li r3, 0x31c
/* 80AD88B8  4B 67 CD 7D */	bl daNpcF_chkEvtBit__FUl
/* 80AD88BC  2C 03 00 00 */	cmpwi r3, 0
/* 80AD88C0  41 82 00 08 */	beq lbl_80AD88C8
/* 80AD88C4  3B 00 00 01 */	li r24, 1
lbl_80AD88C8:
/* 80AD88C8  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80AD88CC  41 82 00 0C */	beq lbl_80AD88D8
/* 80AD88D0  38 00 00 42 */	li r0, 0x42
/* 80AD88D4  48 00 00 08 */	b lbl_80AD88DC
lbl_80AD88D8:
/* 80AD88D8  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
lbl_80AD88DC:
/* 80AD88DC  B0 1C 0E 14 */	sth r0, 0xe14(r28)
/* 80AD88E0  A8 1C 0E 14 */	lha r0, 0xe14(r28)
/* 80AD88E4  B0 1C 0E 16 */	sth r0, 0xe16(r28)
/* 80AD88E8  3B A0 00 05 */	li r29, 5
/* 80AD88EC  3B 60 00 00 */	li r27, 0
/* 80AD88F0  3B 40 00 00 */	li r26, 0
/* 80AD88F4  3C 60 80 AE */	lis r3, l_arcNames@ha /* 0x80AE28E0@ha */
/* 80AD88F8  3B 03 28 E0 */	addi r24, r3, l_arcNames@l /* 0x80AE28E0@l */
/* 80AD88FC  3C 60 80 AE */	lis r3, l_loadRes_list@ha /* 0x80AE28D4@ha */
/* 80AD8900  3B 23 28 D4 */	addi r25, r3, l_loadRes_list@l /* 0x80AE28D4@l */
/* 80AD8904  48 00 00 30 */	b lbl_80AD8934
lbl_80AD8908:
/* 80AD8908  38 7A 0D F8 */	addi r3, r26, 0xdf8
/* 80AD890C  7C 7C 1A 14 */	add r3, r28, r3
/* 80AD8910  54 00 10 3A */	slwi r0, r0, 2
/* 80AD8914  7C 98 00 2E */	lwzx r4, r24, r0
/* 80AD8918  4B 55 45 A5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80AD891C  7C 7D 1B 78 */	mr r29, r3
/* 80AD8920  2C 1D 00 04 */	cmpwi r29, 4
/* 80AD8924  41 82 00 08 */	beq lbl_80AD892C
/* 80AD8928  48 00 02 20 */	b lbl_80AD8B48
lbl_80AD892C:
/* 80AD892C  3B 7B 00 04 */	addi r27, r27, 4
/* 80AD8930  3B 5A 00 08 */	addi r26, r26, 8
lbl_80AD8934:
/* 80AD8934  88 9C 0E 20 */	lbz r4, 0xe20(r28)
/* 80AD8938  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 80AD893C  7C 79 00 2E */	lwzx r3, r25, r0
/* 80AD8940  7C 03 D8 2E */	lwzx r0, r3, r27
/* 80AD8944  2C 00 00 00 */	cmpwi r0, 0
/* 80AD8948  40 80 FF C0 */	bge lbl_80AD8908
/* 80AD894C  2C 1D 00 04 */	cmpwi r29, 4
/* 80AD8950  40 82 01 F4 */	bne lbl_80AD8B44
/* 80AD8954  38 A0 00 00 */	li r5, 0
/* 80AD8958  2C 04 00 01 */	cmpwi r4, 1
/* 80AD895C  41 82 00 28 */	beq lbl_80AD8984
/* 80AD8960  40 80 00 10 */	bge lbl_80AD8970
/* 80AD8964  2C 04 00 00 */	cmpwi r4, 0
/* 80AD8968  40 80 00 14 */	bge lbl_80AD897C
/* 80AD896C  48 00 00 24 */	b lbl_80AD8990
lbl_80AD8970:
/* 80AD8970  2C 04 00 03 */	cmpwi r4, 3
/* 80AD8974  40 80 00 1C */	bge lbl_80AD8990
/* 80AD8978  48 00 00 14 */	b lbl_80AD898C
lbl_80AD897C:
/* 80AD897C  38 A0 36 10 */	li r5, 0x3610
/* 80AD8980  48 00 00 10 */	b lbl_80AD8990
lbl_80AD8984:
/* 80AD8984  38 A0 4C A0 */	li r5, 0x4ca0
/* 80AD8988  48 00 00 08 */	b lbl_80AD8990
lbl_80AD898C:
/* 80AD898C  38 A0 44 A0 */	li r5, 0x44a0
lbl_80AD8990:
/* 80AD8990  7F 83 E3 78 */	mr r3, r28
/* 80AD8994  3C 80 80 AE */	lis r4, createHeapCallBack__11daNpcShad_cFP10fopAc_ac_c@ha /* 0x80AD944C@ha */
/* 80AD8998  38 84 94 4C */	addi r4, r4, createHeapCallBack__11daNpcShad_cFP10fopAc_ac_c@l /* 0x80AD944C@l */
/* 80AD899C  4B 54 1B 15 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AD89A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD89A4  40 82 00 0C */	bne lbl_80AD89B0
/* 80AD89A8  38 60 00 05 */	li r3, 5
/* 80AD89AC  48 00 01 9C */	b lbl_80AD8B48
lbl_80AD89B0:
/* 80AD89B0  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AD89B4  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD89B8  38 03 00 24 */	addi r0, r3, 0x24
/* 80AD89BC  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80AD89C0  7F 83 E3 78 */	mr r3, r28
/* 80AD89C4  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80AD89C8  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80AD89CC  FC 60 08 90 */	fmr f3, f1
/* 80AD89D0  C0 9F 00 84 */	lfs f4, 0x84(r31)
/* 80AD89D4  C0 BF 00 88 */	lfs f5, 0x88(r31)
/* 80AD89D8  FC C0 20 90 */	fmr f6, f4
/* 80AD89DC  4B 54 1B 6D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AD89E0  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80AD89E4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80AD89E8  38 BC 05 38 */	addi r5, r28, 0x538
/* 80AD89EC  38 C0 00 03 */	li r6, 3
/* 80AD89F0  38 E0 00 01 */	li r7, 1
/* 80AD89F4  4B 7E 7B 3D */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80AD89F8  38 7C 07 E4 */	addi r3, r28, 0x7e4
/* 80AD89FC  38 9F 00 00 */	addi r4, r31, 0
/* 80AD8A00  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AD8A04  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80AD8A08  4B 59 D5 51 */	bl SetWall__12dBgS_AcchCirFff
/* 80AD8A0C  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 80AD8A10  90 01 00 08 */	stw r0, 8(r1)
/* 80AD8A14  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80AD8A18  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80AD8A1C  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80AD8A20  7F 86 E3 78 */	mr r6, r28
/* 80AD8A24  38 E0 00 01 */	li r7, 1
/* 80AD8A28  39 1C 07 E4 */	addi r8, r28, 0x7e4
/* 80AD8A2C  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80AD8A30  39 5C 04 DC */	addi r10, r28, 0x4dc
/* 80AD8A34  4B 59 D8 15 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AD8A38  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80AD8A3C  60 00 00 08 */	ori r0, r0, 8
/* 80AD8A40  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80AD8A44  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80AD8A48  60 00 04 00 */	ori r0, r0, 0x400
/* 80AD8A4C  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80AD8A50  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80AD8A54  7F C4 F3 78 */	mr r4, r30
/* 80AD8A58  4B 59 E0 55 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AD8A5C  38 7C 07 A8 */	addi r3, r28, 0x7a8
/* 80AD8A60  38 9F 00 00 */	addi r4, r31, 0
/* 80AD8A64  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AD8A68  FC 00 00 1E */	fctiwz f0, f0
/* 80AD8A6C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AD8A70  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AD8A74  38 A0 00 00 */	li r5, 0
/* 80AD8A78  7F 86 E3 78 */	mr r6, r28
/* 80AD8A7C  4B 5A AD E5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AD8A80  38 7C 0C B0 */	addi r3, r28, 0xcb0
/* 80AD8A84  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80AD8A88  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80AD8A8C  4B 5A BE 29 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AD8A90  38 1C 07 A8 */	addi r0, r28, 0x7a8
/* 80AD8A94  90 1C 0C F4 */	stw r0, 0xcf4(r28)
/* 80AD8A98  38 00 00 00 */	li r0, 0
/* 80AD8A9C  90 1C 0C D8 */	stw r0, 0xcd8(r28)
/* 80AD8AA0  90 1C 0C C8 */	stw r0, 0xcc8(r28)
/* 80AD8AA4  80 1C 06 AC */	lwz r0, 0x6ac(r28)
/* 80AD8AA8  90 1C 0A 44 */	stw r0, 0xa44(r28)
/* 80AD8AAC  80 1C 06 B0 */	lwz r0, 0x6b0(r28)
/* 80AD8AB0  90 1C 0A 48 */	stw r0, 0xa48(r28)
/* 80AD8AB4  80 1C 06 B4 */	lwz r0, 0x6b4(r28)
/* 80AD8AB8  90 1C 0A 4C */	stw r0, 0xa4c(r28)
/* 80AD8ABC  88 1C 06 B8 */	lbz r0, 0x6b8(r28)
/* 80AD8AC0  98 1C 0A 50 */	stb r0, 0xa50(r28)
/* 80AD8AC4  A0 1C 06 C0 */	lhz r0, 0x6c0(r28)
/* 80AD8AC8  B0 1C 0A 58 */	sth r0, 0xa58(r28)
/* 80AD8ACC  A0 1C 06 C2 */	lhz r0, 0x6c2(r28)
/* 80AD8AD0  B0 1C 0A 5A */	sth r0, 0xa5a(r28)
/* 80AD8AD4  80 1C 06 C4 */	lwz r0, 0x6c4(r28)
/* 80AD8AD8  90 1C 0A 5C */	stw r0, 0xa5c(r28)
/* 80AD8ADC  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 80AD8AE0  90 1C 0A 60 */	stw r0, 0xa60(r28)
/* 80AD8AE4  C0 1C 06 D0 */	lfs f0, 0x6d0(r28)
/* 80AD8AE8  D0 1C 0A 68 */	stfs f0, 0xa68(r28)
/* 80AD8AEC  C0 1C 06 D4 */	lfs f0, 0x6d4(r28)
/* 80AD8AF0  D0 1C 0A 6C */	stfs f0, 0xa6c(r28)
/* 80AD8AF4  C0 1C 06 D8 */	lfs f0, 0x6d8(r28)
/* 80AD8AF8  D0 1C 0A 70 */	stfs f0, 0xa70(r28)
/* 80AD8AFC  80 1C 06 DC */	lwz r0, 0x6dc(r28)
/* 80AD8B00  90 1C 0A 74 */	stw r0, 0xa74(r28)
/* 80AD8B04  C0 1C 06 E0 */	lfs f0, 0x6e0(r28)
/* 80AD8B08  D0 1C 0A 78 */	stfs f0, 0xa78(r28)
/* 80AD8B0C  80 1C 06 E4 */	lwz r0, 0x6e4(r28)
/* 80AD8B10  90 1C 0A 7C */	stw r0, 0xa7c(r28)
/* 80AD8B14  C0 1C 06 68 */	lfs f0, 0x668(r28)
/* 80AD8B18  D0 1C 09 80 */	stfs f0, 0x980(r28)
/* 80AD8B1C  7F 83 E3 78 */	mr r3, r28
/* 80AD8B20  4B 67 A2 65 */	bl setEnvTevColor__8daNpcF_cFv
/* 80AD8B24  7F 83 E3 78 */	mr r3, r28
/* 80AD8B28  4B 67 A2 B9 */	bl setRoomNo__8daNpcF_cFv
/* 80AD8B2C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AD8B30  4B 53 86 BD */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80AD8B34  7F 83 E3 78 */	mr r3, r28
/* 80AD8B38  48 00 0E 7D */	bl reset__11daNpcShad_cFv
/* 80AD8B3C  7F 83 E3 78 */	mr r3, r28
/* 80AD8B40  48 00 05 D5 */	bl Execute__11daNpcShad_cFv
lbl_80AD8B44:
/* 80AD8B44  7F A3 EB 78 */	mr r3, r29
lbl_80AD8B48:
/* 80AD8B48  39 61 00 40 */	addi r11, r1, 0x40
/* 80AD8B4C  4B 88 96 C9 */	bl _restgpr_24
/* 80AD8B50  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AD8B54  7C 08 03 A6 */	mtlr r0
/* 80AD8B58  38 21 00 40 */	addi r1, r1, 0x40
/* 80AD8B5C  4E 80 00 20 */	blr 
