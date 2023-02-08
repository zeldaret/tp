lbl_80690224:
/* 80690224  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80690228  7C 08 02 A6 */	mflr r0
/* 8069022C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80690230  39 61 00 40 */	addi r11, r1, 0x40
/* 80690234  4B CD 1F 95 */	bl _savegpr_24
/* 80690238  7C 7E 1B 78 */	mr r30, r3
/* 8069023C  3C 80 80 69 */	lis r4, lit_3788@ha /* 0x80690DD8@ha */
/* 80690240  3B E4 0D D8 */	addi r31, r4, lit_3788@l /* 0x80690DD8@l */
/* 80690244  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80690248  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8069024C  40 82 01 08 */	bne lbl_80690354
/* 80690250  7F C0 F3 79 */	or. r0, r30, r30
/* 80690254  41 82 00 F4 */	beq lbl_80690348
/* 80690258  7C 18 03 78 */	mr r24, r0
/* 8069025C  4B 98 89 09 */	bl __ct__10fopAc_ac_cFv
/* 80690260  38 78 05 D8 */	addi r3, r24, 0x5d8
/* 80690264  4B C3 0D 01 */	bl __ct__15Z2CreatureEnemyFv
/* 80690268  38 78 06 D8 */	addi r3, r24, 0x6d8
/* 8069026C  4B 9E 5C 41 */	bl __ct__12dBgS_AcchCirFv
/* 80690270  3B 38 07 18 */	addi r25, r24, 0x718
/* 80690274  7F 23 CB 78 */	mr r3, r25
/* 80690278  4B 9E 5E 29 */	bl __ct__9dBgS_AcchFv
/* 8069027C  3C 60 80 69 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80691054@ha */
/* 80690280  38 63 10 54 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80691054@l */
/* 80690284  90 79 00 10 */	stw r3, 0x10(r25)
/* 80690288  38 03 00 0C */	addi r0, r3, 0xc
/* 8069028C  90 19 00 14 */	stw r0, 0x14(r25)
/* 80690290  38 03 00 18 */	addi r0, r3, 0x18
/* 80690294  90 19 00 24 */	stw r0, 0x24(r25)
/* 80690298  38 79 00 14 */	addi r3, r25, 0x14
/* 8069029C  4B 9E 8B CD */	bl SetObj__16dBgS_PolyPassChkFv
/* 806902A0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806902A4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806902A8  90 18 09 08 */	stw r0, 0x908(r24)
/* 806902AC  38 78 09 0C */	addi r3, r24, 0x90c
/* 806902B0  4B 9F 34 B1 */	bl __ct__10dCcD_GSttsFv
/* 806902B4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806902B8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806902BC  90 78 09 08 */	stw r3, 0x908(r24)
/* 806902C0  38 03 00 20 */	addi r0, r3, 0x20
/* 806902C4  90 18 09 0C */	stw r0, 0x90c(r24)
/* 806902C8  38 78 09 2C */	addi r3, r24, 0x92c
/* 806902CC  3C 80 80 69 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80690714@ha */
/* 806902D0  38 84 07 14 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80690714@l */
/* 806902D4  3C A0 80 69 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80690648@ha */
/* 806902D8  38 A5 06 48 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80690648@l */
/* 806902DC  38 C0 01 38 */	li r6, 0x138
/* 806902E0  38 E0 00 02 */	li r7, 2
/* 806902E4  4B CD 1A 7D */	bl __construct_array
/* 806902E8  3B 18 0B 9C */	addi r24, r24, 0xb9c
/* 806902EC  7F 03 C3 78 */	mr r3, r24
/* 806902F0  4B 9F 37 39 */	bl __ct__12dCcD_GObjInfFv
/* 806902F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806902F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806902FC  90 18 01 20 */	stw r0, 0x120(r24)
/* 80690300  3C 60 80 69 */	lis r3, __vt__8cM3dGAab@ha /* 0x80691048@ha */
/* 80690304  38 03 10 48 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80691048@l */
/* 80690308  90 18 01 1C */	stw r0, 0x11c(r24)
/* 8069030C  3C 60 80 69 */	lis r3, __vt__8cM3dGSph@ha /* 0x8069103C@ha */
/* 80690310  38 03 10 3C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8069103C@l */
/* 80690314  90 18 01 34 */	stw r0, 0x134(r24)
/* 80690318  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8069031C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80690320  90 78 01 20 */	stw r3, 0x120(r24)
/* 80690324  38 03 00 58 */	addi r0, r3, 0x58
/* 80690328  90 18 01 34 */	stw r0, 0x134(r24)
/* 8069032C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80690330  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80690334  90 78 00 3C */	stw r3, 0x3c(r24)
/* 80690338  38 03 00 2C */	addi r0, r3, 0x2c
/* 8069033C  90 18 01 20 */	stw r0, 0x120(r24)
/* 80690340  38 03 00 84 */	addi r0, r3, 0x84
/* 80690344  90 18 01 34 */	stw r0, 0x134(r24)
lbl_80690348:
/* 80690348  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8069034C  60 00 00 08 */	ori r0, r0, 8
/* 80690350  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80690354:
/* 80690354  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80690358  3C 80 80 69 */	lis r4, d_a_e_bs__stringBase0@ha /* 0x80690EB8@ha */
/* 8069035C  38 84 0E B8 */	addi r4, r4, d_a_e_bs__stringBase0@l /* 0x80690EB8@l */
/* 80690360  4B 99 CB 5D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80690364  7C 7D 1B 78 */	mr r29, r3
/* 80690368  2C 1D 00 04 */	cmpwi r29, 4
/* 8069036C  40 82 02 30 */	bne lbl_8069059C
/* 80690370  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80690374  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80690378  2C 04 00 FF */	cmpwi r4, 0xff
/* 8069037C  41 82 00 28 */	beq lbl_806903A4
/* 80690380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80690384  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80690388  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8069038C  7C 05 07 74 */	extsb r5, r0
/* 80690390  4B 9A 4F D1 */	bl isSwitch__10dSv_info_cCFii
/* 80690394  2C 03 00 00 */	cmpwi r3, 0
/* 80690398  41 82 00 0C */	beq lbl_806903A4
/* 8069039C  38 60 00 05 */	li r3, 5
/* 806903A0  48 00 02 00 */	b lbl_806905A0
lbl_806903A4:
/* 806903A4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806903A8  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 806903AC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806903B0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806903B4  98 1E 05 B7 */	stb r0, 0x5b7(r30)
/* 806903B8  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 806903BC  28 00 00 FF */	cmplwi r0, 0xff
/* 806903C0  40 82 00 10 */	bne lbl_806903D0
/* 806903C4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 806903C8  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 806903CC  48 00 00 28 */	b lbl_806903F4
lbl_806903D0:
/* 806903D0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806903D4  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 806903D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806903DC  3C 00 43 30 */	lis r0, 0x4330
/* 806903E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806903E4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806903E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 806903EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 806903F0  D0 1E 06 8C */	stfs f0, 0x68c(r30)
lbl_806903F4:
/* 806903F4  7F C3 F3 78 */	mr r3, r30
/* 806903F8  3C 80 80 69 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80690018@ha */
/* 806903FC  38 84 00 18 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80690018@l */
/* 80690400  38 A0 18 C0 */	li r5, 0x18c0
/* 80690404  4B 98 A0 AD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80690408  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8069040C  40 82 00 0C */	bne lbl_80690418
/* 80690410  38 60 00 05 */	li r3, 5
/* 80690414  48 00 01 8C */	b lbl_806905A0
lbl_80690418:
/* 80690418  3C 60 80 69 */	lis r3, data_80691090@ha /* 0x80691090@ha */
/* 8069041C  8C 03 10 90 */	lbzu r0, data_80691090@l(r3)  /* 0x80691090@l */
/* 80690420  28 00 00 00 */	cmplwi r0, 0
/* 80690424  40 82 00 20 */	bne lbl_80690444
/* 80690428  38 00 00 01 */	li r0, 1
/* 8069042C  98 1E 0C F8 */	stb r0, 0xcf8(r30)
/* 80690430  98 03 00 00 */	stb r0, 0(r3)
/* 80690434  38 00 FF FF */	li r0, -1
/* 80690438  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x806910A0@ha */
/* 8069043C  38 63 10 A0 */	addi r3, r3, l_HIO@l /* 0x806910A0@l */
/* 80690440  98 03 00 04 */	stb r0, 4(r3)
lbl_80690444:
/* 80690444  38 00 00 04 */	li r0, 4
/* 80690448  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8069044C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80690450  80 63 00 04 */	lwz r3, 4(r3)
/* 80690454  38 03 00 24 */	addi r0, r3, 0x24
/* 80690458  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8069045C  38 00 00 00 */	li r0, 0
/* 80690460  90 01 00 08 */	stw r0, 8(r1)
/* 80690464  38 7E 07 18 */	addi r3, r30, 0x718
/* 80690468  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8069046C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80690470  7F C6 F3 78 */	mr r6, r30
/* 80690474  38 E0 00 01 */	li r7, 1
/* 80690478  39 1E 06 D8 */	addi r8, r30, 0x6d8
/* 8069047C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80690480  39 40 00 00 */	li r10, 0
/* 80690484  4B 9E 5D C5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80690488  38 7E 06 D8 */	addi r3, r30, 0x6d8
/* 8069048C  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80690490  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80690494  4B 9E 5A C5 */	bl SetWall__12dBgS_AcchCirFff
/* 80690498  38 00 00 28 */	li r0, 0x28
/* 8069049C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806904A0  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 806904A4  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 806904A8  38 80 00 96 */	li r4, 0x96
/* 806904AC  38 A0 00 00 */	li r5, 0
/* 806904B0  7F C6 F3 78 */	mr r6, r30
/* 806904B4  4B 9F 33 AD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806904B8  3B 00 00 00 */	li r24, 0
/* 806904BC  3B 80 00 00 */	li r28, 0
/* 806904C0  3C 60 80 69 */	lis r3, cc_sph_src@ha /* 0x80690F48@ha */
/* 806904C4  3B 43 0F 48 */	addi r26, r3, cc_sph_src@l /* 0x80690F48@l */
/* 806904C8  3B 7E 08 F0 */	addi r27, r30, 0x8f0
lbl_806904CC:
/* 806904CC  7F 3E E2 14 */	add r25, r30, r28
/* 806904D0  38 79 09 2C */	addi r3, r25, 0x92c
/* 806904D4  7F 44 D3 78 */	mr r4, r26
/* 806904D8  4B 9F 45 5D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806904DC  93 79 09 70 */	stw r27, 0x970(r25)
/* 806904E0  3B 18 00 01 */	addi r24, r24, 1
/* 806904E4  2C 18 00 02 */	cmpwi r24, 2
/* 806904E8  3B 9C 01 38 */	addi r28, r28, 0x138
/* 806904EC  41 80 FF E0 */	blt lbl_806904CC
/* 806904F0  38 7E 0B 9C */	addi r3, r30, 0xb9c
/* 806904F4  3C 80 80 69 */	lis r4, at_sph_src@ha /* 0x80690F88@ha */
/* 806904F8  38 84 0F 88 */	addi r4, r4, at_sph_src@l /* 0x80690F88@l */
/* 806904FC  4B 9F 45 39 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80690500  38 1E 08 F0 */	addi r0, r30, 0x8f0
/* 80690504  90 1E 0B E0 */	stw r0, 0xbe0(r30)
/* 80690508  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8069050C  4B BD 74 49 */	bl cM_rndF__Ff
/* 80690510  FC 00 08 1E */	fctiwz f0, f1
/* 80690514  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80690518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069051C  54 00 04 2E */	rlwinm r0, r0, 0, 0x10, 0x17
/* 80690520  B0 1E 06 7C */	sth r0, 0x67c(r30)
/* 80690524  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 80690528  28 00 00 00 */	cmplwi r0, 0
/* 8069052C  40 82 00 14 */	bne lbl_80690540
/* 80690530  38 00 00 01 */	li r0, 1
/* 80690534  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 80690538  98 1E 06 94 */	stb r0, 0x694(r30)
/* 8069053C  48 00 00 0C */	b lbl_80690548
lbl_80690540:
/* 80690540  38 00 00 00 */	li r0, 0
/* 80690544  B0 1E 06 7E */	sth r0, 0x67e(r30)
lbl_80690548:
/* 80690548  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8069054C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80690550  38 BE 05 38 */	addi r5, r30, 0x538
/* 80690554  38 C0 00 03 */	li r6, 3
/* 80690558  38 E0 00 01 */	li r7, 1
/* 8069055C  4B C3 0B 39 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80690560  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80690564  3C 80 80 69 */	lis r4, d_a_e_bs__stringBase0@ha /* 0x80690EB8@ha */
/* 80690568  38 84 0E B8 */	addi r4, r4, d_a_e_bs__stringBase0@l /* 0x80690EB8@l */
/* 8069056C  38 84 00 05 */	addi r4, r4, 5
/* 80690570  4B C3 16 21 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80690574  38 1E 05 D8 */	addi r0, r30, 0x5d8
/* 80690578  90 1E 0C DC */	stw r0, 0xcdc(r30)
/* 8069057C  38 00 00 22 */	li r0, 0x22
/* 80690580  90 1E 0C EC */	stw r0, 0xcec(r30)
/* 80690584  38 00 00 04 */	li r0, 4
/* 80690588  98 1E 0C F2 */	stb r0, 0xcf2(r30)
/* 8069058C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80690590  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 80690594  7F C3 F3 78 */	mr r3, r30
/* 80690598  4B FF F6 45 */	bl daE_BS_Execute__FP10e_bs_class
lbl_8069059C:
/* 8069059C  7F A3 EB 78 */	mr r3, r29
lbl_806905A0:
/* 806905A0  39 61 00 40 */	addi r11, r1, 0x40
/* 806905A4  4B CD 1C 71 */	bl _restgpr_24
/* 806905A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806905AC  7C 08 03 A6 */	mtlr r0
/* 806905B0  38 21 00 40 */	addi r1, r1, 0x40
/* 806905B4  4E 80 00 20 */	blr 
