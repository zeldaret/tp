lbl_80A842C8:
/* 80A842C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A842CC  7C 08 02 A6 */	mflr r0
/* 80A842D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A842D4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A842D8  4B 8D DE F0 */	b _savegpr_24
/* 80A842DC  7C 7E 1B 78 */	mr r30, r3
/* 80A842E0  3C 80 80 A9 */	lis r4, m__19daNpc_myna2_Param_c@ha
/* 80A842E4  3B E4 84 34 */	addi r31, r4, m__19daNpc_myna2_Param_c@l
/* 80A842E8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A842EC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A842F0  40 82 00 1C */	bne lbl_80A8430C
/* 80A842F4  28 1E 00 00 */	cmplwi r30, 0
/* 80A842F8  41 82 00 08 */	beq lbl_80A84300
/* 80A842FC  4B FF FB 91 */	bl __ct__13daNpc_myna2_cFv
lbl_80A84300:
/* 80A84300  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80A84304  60 00 00 08 */	ori r0, r0, 8
/* 80A84308  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80A8430C:
/* 80A8430C  7F C3 F3 78 */	mr r3, r30
/* 80A84310  48 00 0D 2D */	bl getTypeFromParam__13daNpc_myna2_cFv
/* 80A84314  98 7E 0E 0C */	stb r3, 0xe0c(r30)
/* 80A84318  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A8431C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80A84320  98 1E 0E 0D */	stb r0, 0xe0d(r30)
/* 80A84324  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 80A84328  3C 03 00 00 */	addis r0, r3, 0
/* 80A8432C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A84330  41 82 00 0C */	beq lbl_80A8433C
/* 80A84334  90 7E 0E 04 */	stw r3, 0xe04(r30)
/* 80A84338  48 00 00 0C */	b lbl_80A84344
lbl_80A8433C:
/* 80A8433C  38 00 FF FF */	li r0, -1
/* 80A84340  90 1E 0E 04 */	stw r0, 0xe04(r30)
lbl_80A84344:
/* 80A84344  7F C3 F3 78 */	mr r3, r30
/* 80A84348  48 00 0D 4D */	bl isDelete__13daNpc_myna2_cFv
/* 80A8434C  2C 03 00 00 */	cmpwi r3, 0
/* 80A84350  41 82 00 0C */	beq lbl_80A8435C
/* 80A84354  38 60 00 05 */	li r3, 5
/* 80A84358  48 00 02 3C */	b lbl_80A84594
lbl_80A8435C:
/* 80A8435C  3B 20 00 00 */	li r25, 0
/* 80A84360  3B 00 00 00 */	li r24, 0
/* 80A84364  3B A0 00 00 */	li r29, 0
/* 80A84368  3B 80 00 00 */	li r28, 0
/* 80A8436C  3C 60 80 A9 */	lis r3, l_resNames@ha
/* 80A84370  3B 43 87 DC */	addi r26, r3, l_resNames@l
/* 80A84374  3C 60 80 A9 */	lis r3, l_loadRes_list@ha
/* 80A84378  3B 63 87 C8 */	addi r27, r3, l_loadRes_list@l
/* 80A8437C  48 00 00 48 */	b lbl_80A843C4
lbl_80A84380:
/* 80A84380  38 7C 0D D8 */	addi r3, r28, 0xdd8
/* 80A84384  7C 7E 1A 14 */	add r3, r30, r3
/* 80A84388  54 00 10 3A */	slwi r0, r0, 2
/* 80A8438C  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80A84390  4B 5A 8B 2C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80A84394  2C 03 00 05 */	cmpwi r3, 5
/* 80A84398  41 82 00 0C */	beq lbl_80A843A4
/* 80A8439C  2C 03 00 03 */	cmpwi r3, 3
/* 80A843A0  40 82 00 0C */	bne lbl_80A843AC
lbl_80A843A4:
/* 80A843A4  38 60 00 05 */	li r3, 5
/* 80A843A8  48 00 01 EC */	b lbl_80A84594
lbl_80A843AC:
/* 80A843AC  2C 03 00 04 */	cmpwi r3, 4
/* 80A843B0  40 82 00 08 */	bne lbl_80A843B8
/* 80A843B4  3B 39 00 01 */	addi r25, r25, 1
lbl_80A843B8:
/* 80A843B8  3B 18 00 01 */	addi r24, r24, 1
/* 80A843BC  3B BD 00 04 */	addi r29, r29, 4
/* 80A843C0  3B 9C 00 08 */	addi r28, r28, 8
lbl_80A843C4:
/* 80A843C4  88 1E 0E 0C */	lbz r0, 0xe0c(r30)
/* 80A843C8  54 06 10 3A */	slwi r6, r0, 2
/* 80A843CC  7C 7B 30 2E */	lwzx r3, r27, r6
/* 80A843D0  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80A843D4  2C 00 00 00 */	cmpwi r0, 0
/* 80A843D8  40 80 FF A8 */	bge lbl_80A84380
/* 80A843DC  7C 19 C0 00 */	cmpw r25, r24
/* 80A843E0  40 82 01 B0 */	bne lbl_80A84590
/* 80A843E4  7F C3 F3 78 */	mr r3, r30
/* 80A843E8  3C 80 80 A8 */	lis r4, createHeapCallBack__13daNpc_myna2_cFP10fopAc_ac_c@ha
/* 80A843EC  38 84 47 A8 */	addi r4, r4, createHeapCallBack__13daNpc_myna2_cFP10fopAc_ac_c@l
/* 80A843F0  38 BF 00 74 */	addi r5, r31, 0x74
/* 80A843F4  7C A5 30 2E */	lwzx r5, r5, r6
/* 80A843F8  4B 59 60 B8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A843FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A84400  40 82 00 0C */	bne lbl_80A8440C
/* 80A84404  38 60 00 05 */	li r3, 5
/* 80A84408  48 00 01 8C */	b lbl_80A84594
lbl_80A8440C:
/* 80A8440C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A84410  80 63 00 04 */	lwz r3, 4(r3)
/* 80A84414  38 03 00 24 */	addi r0, r3, 0x24
/* 80A84418  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80A8441C  7F C3 F3 78 */	mr r3, r30
/* 80A84420  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80A84424  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80A84428  FC 60 08 90 */	fmr f3, f1
/* 80A8442C  C0 9F 00 90 */	lfs f4, 0x90(r31)
/* 80A84430  C0 BF 00 94 */	lfs f5, 0x94(r31)
/* 80A84434  FC C0 20 90 */	fmr f6, f4
/* 80A84438  4B 59 61 10 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A8443C  38 7E 0B E8 */	addi r3, r30, 0xbe8
/* 80A84440  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A84444  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A84448  38 C0 00 03 */	li r6, 3
/* 80A8444C  38 E0 00 01 */	li r7, 1
/* 80A84450  4B 83 C0 E0 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80A84454  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80A84458  38 9F 00 00 */	addi r4, r31, 0
/* 80A8445C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A84460  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80A84464  4B 5F 1A F4 */	b SetWall__12dBgS_AcchCirFff
/* 80A84468  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80A8446C  90 01 00 08 */	stw r0, 8(r1)
/* 80A84470  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80A84474  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A84478  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80A8447C  7F C6 F3 78 */	mr r6, r30
/* 80A84480  38 E0 00 01 */	li r7, 1
/* 80A84484  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 80A84488  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80A8448C  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80A84490  4B 5F 1D B8 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A84494  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80A84498  38 9F 00 00 */	addi r4, r31, 0
/* 80A8449C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A844A0  FC 00 00 1E */	fctiwz f0, f0
/* 80A844A4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A844A8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A844AC  38 A0 00 00 */	li r5, 0
/* 80A844B0  7F C6 F3 78 */	mr r6, r30
/* 80A844B4  4B 5F F3 AC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A844B8  38 7E 0C 84 */	addi r3, r30, 0xc84
/* 80A844BC  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 80A844C0  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 80A844C4  4B 60 03 F0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A844C8  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 80A844CC  90 1E 0C C8 */	stw r0, 0xcc8(r30)
/* 80A844D0  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80A844D4  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80A844D8  90 1E 0D 28 */	stw r0, 0xd28(r30)
/* 80A844DC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80A844E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A844E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A844E8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A844EC  4B 5F 25 C0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A844F0  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 80A844F4  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 80A844F8  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80A844FC  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 80A84500  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 80A84504  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 80A84508  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 80A8450C  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 80A84510  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 80A84514  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 80A84518  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 80A8451C  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 80A84520  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 80A84524  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A84528  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 80A8452C  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 80A84530  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 80A84534  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 80A84538  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 80A8453C  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 80A84540  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 80A84544  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 80A84548  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 80A8454C  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 80A84550  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80A84554  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 80A84558  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 80A8455C  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80A84560  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 80A84564  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 80A84568  7F C3 F3 78 */	mr r3, r30
/* 80A8456C  4B 6C E8 18 */	b setEnvTevColor__8daNpcF_cFv
/* 80A84570  7F C3 F3 78 */	mr r3, r30
/* 80A84574  4B 6C E8 6C */	b setRoomNo__8daNpcF_cFv
/* 80A84578  7F C3 F3 78 */	mr r3, r30
/* 80A8457C  48 00 0B E5 */	bl reset__13daNpc_myna2_cFv
/* 80A84580  7F C3 F3 78 */	mr r3, r30
/* 80A84584  48 00 01 91 */	bl Execute__13daNpc_myna2_cFv
/* 80A84588  38 60 00 04 */	li r3, 4
/* 80A8458C  48 00 00 08 */	b lbl_80A84594
lbl_80A84590:
/* 80A84590  38 60 00 00 */	li r3, 0
lbl_80A84594:
/* 80A84594  39 61 00 40 */	addi r11, r1, 0x40
/* 80A84598  4B 8D DC 7C */	b _restgpr_24
/* 80A8459C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A845A0  7C 08 03 A6 */	mtlr r0
/* 80A845A4  38 21 00 40 */	addi r1, r1, 0x40
/* 80A845A8  4E 80 00 20 */	blr 
