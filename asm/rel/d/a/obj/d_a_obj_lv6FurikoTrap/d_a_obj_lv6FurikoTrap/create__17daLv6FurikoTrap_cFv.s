lbl_80C72604:
/* 80C72604  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C72608  7C 08 02 A6 */	mflr r0
/* 80C7260C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C72610  39 61 00 30 */	addi r11, r1, 0x30
/* 80C72614  4B 6E FB B8 */	b _savegpr_25
/* 80C72618  7C 7E 1B 78 */	mr r30, r3
/* 80C7261C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C72620  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C72624  40 82 00 94 */	bne lbl_80C726B8
/* 80C72628  7F C0 F3 79 */	or. r0, r30, r30
/* 80C7262C  41 82 00 80 */	beq lbl_80C726AC
/* 80C72630  7C 19 03 78 */	mr r25, r0
/* 80C72634  4B 40 5F F0 */	b __ct__16dBgS_MoveBgActorFv
/* 80C72638  3C 60 80 C7 */	lis r3, __vt__17daLv6FurikoTrap_c@ha
/* 80C7263C  38 03 32 7C */	addi r0, r3, __vt__17daLv6FurikoTrap_c@l
/* 80C72640  90 19 05 9C */	stw r0, 0x59c(r25)
/* 80C72644  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C72648  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C7264C  90 19 05 CC */	stw r0, 0x5cc(r25)
/* 80C72650  38 79 05 D0 */	addi r3, r25, 0x5d0
/* 80C72654  4B 41 11 0C */	b __ct__10dCcD_GSttsFv
/* 80C72658  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C7265C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C72660  90 79 05 CC */	stw r3, 0x5cc(r25)
/* 80C72664  38 03 00 20 */	addi r0, r3, 0x20
/* 80C72668  90 19 05 D0 */	stw r0, 0x5d0(r25)
/* 80C7266C  38 79 05 F0 */	addi r3, r25, 0x5f0
/* 80C72670  3C 80 80 C7 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80C72674  38 84 28 A0 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80C72678  3C A0 80 C7 */	lis r5, __dt__8dCcD_SphFv@ha
/* 80C7267C  38 A5 27 D4 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80C72680  38 C0 01 38 */	li r6, 0x138
/* 80C72684  38 E0 00 0D */	li r7, 0xd
/* 80C72688  4B 6E F6 D8 */	b __construct_array
/* 80C7268C  38 79 15 C8 */	addi r3, r25, 0x15c8
/* 80C72690  3C 80 80 C7 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80C72694  38 84 28 A0 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80C72698  3C A0 80 C7 */	lis r5, __dt__8dCcD_SphFv@ha
/* 80C7269C  38 A5 27 D4 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80C726A0  38 C0 01 38 */	li r6, 0x138
/* 80C726A4  38 E0 00 06 */	li r7, 6
/* 80C726A8  4B 6E F6 B8 */	b __construct_array
lbl_80C726AC:
/* 80C726AC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C726B0  60 00 00 08 */	ori r0, r0, 8
/* 80C726B4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C726B8:
/* 80C726B8  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C726BC  3C 80 80 C7 */	lis r4, stringBase0@ha
/* 80C726C0  38 84 31 98 */	addi r4, r4, stringBase0@l
/* 80C726C4  4B 3B A7 F8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C726C8  7C 7F 1B 78 */	mr r31, r3
/* 80C726CC  2C 1F 00 04 */	cmpwi r31, 4
/* 80C726D0  40 82 00 E8 */	bne lbl_80C727B8
/* 80C726D4  7F C3 F3 78 */	mr r3, r30
/* 80C726D8  3C 80 80 C7 */	lis r4, stringBase0@ha
/* 80C726DC  38 84 31 98 */	addi r4, r4, stringBase0@l
/* 80C726E0  38 A0 00 07 */	li r5, 7
/* 80C726E4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C726E8  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C726EC  38 E0 2E 80 */	li r7, 0x2e80
/* 80C726F0  39 00 00 00 */	li r8, 0
/* 80C726F4  4B 40 60 C8 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C726F8  2C 03 00 05 */	cmpwi r3, 5
/* 80C726FC  40 82 00 0C */	bne lbl_80C72708
/* 80C72700  38 60 00 05 */	li r3, 5
/* 80C72704  48 00 00 B8 */	b lbl_80C727BC
lbl_80C72708:
/* 80C72708  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C7270C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C72710  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C72714  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C72718  80 83 00 04 */	lwz r4, 4(r3)
/* 80C7271C  7F C3 F3 78 */	mr r3, r30
/* 80C72720  4B 3A 7E 58 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C72724  7F C3 F3 78 */	mr r3, r30
/* 80C72728  48 00 05 FD */	bl init_modeMove__17daLv6FurikoTrap_cFv
/* 80C7272C  7F C3 F3 78 */	mr r3, r30
/* 80C72730  4B FF FD E1 */	bl setBaseMtx__17daLv6FurikoTrap_cFv
/* 80C72734  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C72738  38 80 00 FF */	li r4, 0xff
/* 80C7273C  38 A0 00 00 */	li r5, 0
/* 80C72740  7F C6 F3 78 */	mr r6, r30
/* 80C72744  4B 41 11 1C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C72748  3B 20 00 00 */	li r25, 0
/* 80C7274C  3B A0 00 00 */	li r29, 0
/* 80C72750  3C 60 80 C7 */	lis r3, mCcDSph__17daLv6FurikoTrap_c@ha
/* 80C72754  3B 83 31 A4 */	addi r28, r3, mCcDSph__17daLv6FurikoTrap_c@l
/* 80C72758  3B 7E 05 B4 */	addi r27, r30, 0x5b4
lbl_80C7275C:
/* 80C7275C  7F 5E EA 14 */	add r26, r30, r29
/* 80C72760  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80C72764  7F 84 E3 78 */	mr r4, r28
/* 80C72768  4B 41 22 CC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C7276C  93 7A 06 34 */	stw r27, 0x634(r26)
/* 80C72770  3B 39 00 01 */	addi r25, r25, 1
/* 80C72774  2C 19 00 0D */	cmpwi r25, 0xd
/* 80C72778  3B BD 01 38 */	addi r29, r29, 0x138
/* 80C7277C  41 80 FF E0 */	blt lbl_80C7275C
/* 80C72780  3B 20 00 00 */	li r25, 0
/* 80C72784  3B A0 00 00 */	li r29, 0
/* 80C72788  3C 60 80 C7 */	lis r3, mCcDSph__17daLv6FurikoTrap_c@ha
/* 80C7278C  3B 63 31 A4 */	addi r27, r3, mCcDSph__17daLv6FurikoTrap_c@l
/* 80C72790  3B 9E 05 B4 */	addi r28, r30, 0x5b4
lbl_80C72794:
/* 80C72794  7F 5E EA 14 */	add r26, r30, r29
/* 80C72798  38 7A 15 C8 */	addi r3, r26, 0x15c8
/* 80C7279C  7F 64 DB 78 */	mr r4, r27
/* 80C727A0  4B 41 22 94 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C727A4  93 9A 16 0C */	stw r28, 0x160c(r26)
/* 80C727A8  3B 39 00 01 */	addi r25, r25, 1
/* 80C727AC  2C 19 00 06 */	cmpwi r25, 6
/* 80C727B0  3B BD 01 38 */	addi r29, r29, 0x138
/* 80C727B4  41 80 FF E0 */	blt lbl_80C72794
lbl_80C727B8:
/* 80C727B8  7F E3 FB 78 */	mr r3, r31
lbl_80C727BC:
/* 80C727BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C727C0  4B 6E FA 58 */	b _restgpr_25
/* 80C727C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C727C8  7C 08 03 A6 */	mtlr r0
/* 80C727CC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C727D0  4E 80 00 20 */	blr 
