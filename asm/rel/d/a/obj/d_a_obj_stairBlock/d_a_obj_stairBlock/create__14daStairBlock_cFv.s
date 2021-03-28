lbl_80CE83F0:
/* 80CE83F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE83F4  7C 08 02 A6 */	mflr r0
/* 80CE83F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE83FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE8400  4B 67 9D C8 */	b _savegpr_24
/* 80CE8404  7C 7E 1B 78 */	mr r30, r3
/* 80CE8408  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CE840C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CE8410  40 82 00 94 */	bne lbl_80CE84A4
/* 80CE8414  7F C0 F3 79 */	or. r0, r30, r30
/* 80CE8418  41 82 00 80 */	beq lbl_80CE8498
/* 80CE841C  7C 18 03 78 */	mr r24, r0
/* 80CE8420  4B 33 07 44 */	b __ct__10fopAc_ac_cFv
/* 80CE8424  3C 60 80 CF */	lis r3, __vt__14daStairBlock_c@ha
/* 80CE8428  38 03 8F 8C */	addi r0, r3, __vt__14daStairBlock_c@l
/* 80CE842C  90 18 05 68 */	stw r0, 0x568(r24)
/* 80CE8430  38 78 05 9C */	addi r3, r24, 0x59c
/* 80CE8434  3C 80 80 CF */	lis r4, __ct__13mDoExt_bckAnmFv@ha
/* 80CE8438  38 84 87 E4 */	addi r4, r4, __ct__13mDoExt_bckAnmFv@l
/* 80CE843C  3C A0 80 CF */	lis r5, __dt__13mDoExt_bckAnmFv@ha
/* 80CE8440  38 A5 87 90 */	addi r5, r5, __dt__13mDoExt_bckAnmFv@l
/* 80CE8444  38 C0 00 1C */	li r6, 0x1c
/* 80CE8448  38 E0 00 0A */	li r7, 0xa
/* 80CE844C  4B 67 99 14 */	b __construct_array
/* 80CE8450  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CE8454  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CE8458  90 18 06 D8 */	stw r0, 0x6d8(r24)
/* 80CE845C  38 78 06 DC */	addi r3, r24, 0x6dc
/* 80CE8460  4B 39 B3 00 */	b __ct__10dCcD_GSttsFv
/* 80CE8464  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CE8468  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CE846C  90 78 06 D8 */	stw r3, 0x6d8(r24)
/* 80CE8470  38 03 00 20 */	addi r0, r3, 0x20
/* 80CE8474  90 18 06 DC */	stw r0, 0x6dc(r24)
/* 80CE8478  38 78 06 FC */	addi r3, r24, 0x6fc
/* 80CE847C  3C 80 80 CF */	lis r4, __ct__8dCcD_SphFv@ha
/* 80CE8480  38 84 86 7C */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80CE8484  3C A0 80 CF */	lis r5, __dt__8dCcD_SphFv@ha
/* 80CE8488  38 A5 85 B0 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80CE848C  38 C0 01 38 */	li r6, 0x138
/* 80CE8490  38 E0 00 0A */	li r7, 0xa
/* 80CE8494  4B 67 98 CC */	b __construct_array
lbl_80CE8498:
/* 80CE8498  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CE849C  60 00 00 08 */	ori r0, r0, 8
/* 80CE84A0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CE84A4:
/* 80CE84A4  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80CE84A8  3C 80 80 CF */	lis r4, stringBase0@ha
/* 80CE84AC  38 84 8E CC */	addi r4, r4, stringBase0@l
/* 80CE84B0  4B 34 4A 0C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CE84B4  7C 7F 1B 78 */	mr r31, r3
/* 80CE84B8  2C 1F 00 04 */	cmpwi r31, 4
/* 80CE84BC  40 82 00 D8 */	bne lbl_80CE8594
/* 80CE84C0  7F C3 F3 78 */	mr r3, r30
/* 80CE84C4  3C 80 80 CF */	lis r4, createHeapCallBack__14daStairBlock_cFP10fopAc_ac_c@ha
/* 80CE84C8  38 84 88 74 */	addi r4, r4, createHeapCallBack__14daStairBlock_cFP10fopAc_ac_c@l
/* 80CE84CC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00009000@ha */
/* 80CE84D0  38 A5 90 00 */	addi r5, r5, 0x9000 /* 0x00009000@l */
/* 80CE84D4  4B 33 1F DC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CE84D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CE84DC  40 82 00 0C */	bne lbl_80CE84E8
/* 80CE84E0  38 60 00 05 */	li r3, 5
/* 80CE84E4  48 00 00 B4 */	b lbl_80CE8598
lbl_80CE84E8:
/* 80CE84E8  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CE84EC  38 03 00 24 */	addi r0, r3, 0x24
/* 80CE84F0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CE84F4  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CE84F8  80 83 00 04 */	lwz r4, 4(r3)
/* 80CE84FC  7F C3 F3 78 */	mr r3, r30
/* 80CE8500  4B 33 20 78 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CE8504  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 80CE8508  38 80 00 00 */	li r4, 0
/* 80CE850C  38 A0 00 FF */	li r5, 0xff
/* 80CE8510  7F C6 F3 78 */	mr r6, r30
/* 80CE8514  4B 39 B3 4C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CE8518  3B 00 00 00 */	li r24, 0
/* 80CE851C  3B A0 00 00 */	li r29, 0
/* 80CE8520  3C 60 80 CF */	lis r3, mCcDSph__14daStairBlock_c@ha
/* 80CE8524  3B 43 8E D8 */	addi r26, r3, mCcDSph__14daStairBlock_c@l
/* 80CE8528  3B 7E 06 C0 */	addi r27, r30, 0x6c0
/* 80CE852C  7F BC EB 78 */	mr r28, r29
lbl_80CE8530:
/* 80CE8530  7F 3E EA 14 */	add r25, r30, r29
/* 80CE8534  38 79 06 FC */	addi r3, r25, 0x6fc
/* 80CE8538  7F 44 D3 78 */	mr r4, r26
/* 80CE853C  4B 39 C4 F8 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CE8540  93 79 07 40 */	stw r27, 0x740(r25)
/* 80CE8544  38 18 06 B4 */	addi r0, r24, 0x6b4
/* 80CE8548  7F 9E 01 AE */	stbx r28, r30, r0
/* 80CE854C  3B 18 00 01 */	addi r24, r24, 1
/* 80CE8550  2C 18 00 0A */	cmpwi r24, 0xa
/* 80CE8554  3B BD 01 38 */	addi r29, r29, 0x138
/* 80CE8558  41 80 FF D8 */	blt lbl_80CE8530
/* 80CE855C  3B 00 00 01 */	li r24, 1
/* 80CE8560  3B A0 00 04 */	li r29, 4
lbl_80CE8564:
/* 80CE8564  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CE8568  80 83 00 04 */	lwz r4, 4(r3)
/* 80CE856C  38 1D 05 74 */	addi r0, r29, 0x574
/* 80CE8570  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80CE8574  80 63 00 04 */	lwz r3, 4(r3)
/* 80CE8578  4B 32 62 BC */	b mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData
/* 80CE857C  3B 18 00 01 */	addi r24, r24, 1
/* 80CE8580  2C 18 00 0A */	cmpwi r24, 0xa
/* 80CE8584  3B BD 00 04 */	addi r29, r29, 4
/* 80CE8588  41 80 FF DC */	blt lbl_80CE8564
/* 80CE858C  7F C3 F3 78 */	mr r3, r30
/* 80CE8590  4B FF FC 65 */	bl setBaseMtx__14daStairBlock_cFv
lbl_80CE8594:
/* 80CE8594  7F E3 FB 78 */	mr r3, r31
lbl_80CE8598:
/* 80CE8598  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE859C  4B 67 9C 78 */	b _restgpr_24
/* 80CE85A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE85A4  7C 08 03 A6 */	mtlr r0
/* 80CE85A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE85AC  4E 80 00 20 */	blr 
