lbl_80D394CC:
/* 80D394CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D394D0  7C 08 02 A6 */	mflr r0
/* 80D394D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D394D8  39 61 00 30 */	addi r11, r1, 0x30
/* 80D394DC  4B 62 8C F5 */	bl _savegpr_26
/* 80D394E0  7C 7A 1B 78 */	mr r26, r3
/* 80D394E4  3C 80 80 D4 */	lis r4, l_sph_src@ha /* 0x80D39C88@ha */
/* 80D394E8  3B A4 9C 88 */	addi r29, r4, l_sph_src@l /* 0x80D39C88@l */
/* 80D394EC  4B FF FF 2D */	bl initBaseMtx__13daObjWPndlm_cFv
/* 80D394F0  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 80D394F4  38 03 00 24 */	addi r0, r3, 0x24
/* 80D394F8  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80D394FC  38 7A 05 74 */	addi r3, r26, 0x574
/* 80D39500  38 80 00 FF */	li r4, 0xff
/* 80D39504  38 A0 00 FF */	li r5, 0xff
/* 80D39508  7F 46 D3 78 */	mr r6, r26
/* 80D3950C  4B 34 A3 55 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D39510  38 7A 05 B0 */	addi r3, r26, 0x5b0
/* 80D39514  38 9D 00 00 */	addi r4, r29, 0
/* 80D39518  4B 34 B5 1D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80D3951C  3B DA 05 74 */	addi r30, r26, 0x574
/* 80D39520  93 DA 05 F4 */	stw r30, 0x5f4(r26)
/* 80D39524  3B 60 00 00 */	li r27, 0
/* 80D39528  3B E0 00 00 */	li r31, 0
lbl_80D3952C:
/* 80D3952C  7F 9A FA 14 */	add r28, r26, r31
/* 80D39530  38 7C 06 E8 */	addi r3, r28, 0x6e8
/* 80D39534  38 9D 00 40 */	addi r4, r29, 0x40
/* 80D39538  4B 34 B4 FD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80D3953C  93 DC 07 2C */	stw r30, 0x72c(r28)
/* 80D39540  3B 7B 00 01 */	addi r27, r27, 1
/* 80D39544  2C 1B 00 02 */	cmpwi r27, 2
/* 80D39548  3B FF 01 38 */	addi r31, r31, 0x138
/* 80D3954C  41 80 FF E0 */	blt lbl_80D3952C
/* 80D39550  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 80D39554  80 83 00 04 */	lwz r4, 4(r3)
/* 80D39558  7F 43 D3 78 */	mr r3, r26
/* 80D3955C  4B 2E 10 1D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D39560  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80D39564  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D39568  41 82 00 0C */	beq lbl_80D39574
/* 80D3956C  28 00 00 FF */	cmplwi r0, 0xff
/* 80D39570  40 82 00 08 */	bne lbl_80D39578
lbl_80D39574:
/* 80D39574  38 00 00 00 */	li r0, 0
lbl_80D39578:
/* 80D39578  C0 5D 00 80 */	lfs f2, 0x80(r29)
/* 80D3957C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D39580  C8 3D 00 88 */	lfd f1, 0x88(r29)
/* 80D39584  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D39588  3C 00 43 30 */	lis r0, 0x4330
/* 80D3958C  90 01 00 08 */	stw r0, 8(r1)
/* 80D39590  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D39594  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D39598  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D3959C  FC 00 00 1E */	fctiwz f0, f0
/* 80D395A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D395A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D395A8  B0 1A 09 58 */	sth r0, 0x958(r26)
/* 80D395AC  38 60 00 01 */	li r3, 1
/* 80D395B0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D395B4  4B 62 8C 69 */	bl _restgpr_26
/* 80D395B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D395BC  7C 08 03 A6 */	mtlr r0
/* 80D395C0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D395C4  4E 80 00 20 */	blr 
