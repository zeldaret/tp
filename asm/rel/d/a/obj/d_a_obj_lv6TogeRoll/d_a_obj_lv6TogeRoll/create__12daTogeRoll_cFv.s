lbl_80C77DBC:
/* 80C77DBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C77DC0  7C 08 02 A6 */	mflr r0
/* 80C77DC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C77DC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C77DCC  4B 6E A4 00 */	b _savegpr_25
/* 80C77DD0  7C 7E 1B 78 */	mr r30, r3
/* 80C77DD4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C77DD8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C77DDC  40 82 00 D8 */	bne lbl_80C77EB4
/* 80C77DE0  7F C0 F3 79 */	or. r0, r30, r30
/* 80C77DE4  41 82 00 C4 */	beq lbl_80C77EA8
/* 80C77DE8  7C 1F 03 78 */	mr r31, r0
/* 80C77DEC  4B 40 08 38 */	b __ct__16dBgS_MoveBgActorFv
/* 80C77DF0  3C 60 80 C8 */	lis r3, __vt__12daTogeRoll_c@ha
/* 80C77DF4  38 03 9C F0 */	addi r0, r3, __vt__12daTogeRoll_c@l
/* 80C77DF8  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80C77DFC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C77E00  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C77E04  90 1F 06 14 */	stw r0, 0x614(r31)
/* 80C77E08  38 7F 06 18 */	addi r3, r31, 0x618
/* 80C77E0C  4B 40 B9 54 */	b __ct__10dCcD_GSttsFv
/* 80C77E10  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C77E14  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C77E18  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80C77E1C  38 03 00 20 */	addi r0, r3, 0x20
/* 80C77E20  90 1F 06 18 */	stw r0, 0x618(r31)
/* 80C77E24  38 7F 06 38 */	addi r3, r31, 0x638
/* 80C77E28  3C 80 80 C8 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80C77E2C  38 84 81 6C */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80C77E30  3C A0 80 C8 */	lis r5, __dt__8dCcD_SphFv@ha
/* 80C77E34  38 A5 80 A0 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80C77E38  38 C0 01 38 */	li r6, 0x138
/* 80C77E3C  38 E0 00 08 */	li r7, 8
/* 80C77E40  4B 6E 9F 20 */	b __construct_array
/* 80C77E44  3B 3F 0F F8 */	addi r25, r31, 0xff8
/* 80C77E48  7F 23 CB 78 */	mr r3, r25
/* 80C77E4C  4B 40 BB DC */	b __ct__12dCcD_GObjInfFv
/* 80C77E50  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C77E54  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C77E58  90 19 01 20 */	stw r0, 0x120(r25)
/* 80C77E5C  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha
/* 80C77E60  38 03 9C E4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C77E64  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80C77E68  38 79 01 24 */	addi r3, r25, 0x124
/* 80C77E6C  4B 5F 71 1C */	b __ct__8cM3dGCpsFv
/* 80C77E70  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80C77E74  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 80C77E78  90 79 01 20 */	stw r3, 0x120(r25)
/* 80C77E7C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C77E80  90 19 01 3C */	stw r0, 0x13c(r25)
/* 80C77E84  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 80C77E88  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 80C77E8C  90 79 00 3C */	stw r3, 0x3c(r25)
/* 80C77E90  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C77E94  90 19 01 20 */	stw r0, 0x120(r25)
/* 80C77E98  38 03 00 84 */	addi r0, r3, 0x84
/* 80C77E9C  90 19 01 3C */	stw r0, 0x13c(r25)
/* 80C77EA0  38 7F 11 5C */	addi r3, r31, 0x115c
/* 80C77EA4  4B 64 69 A0 */	b __ct__16Z2SoundObjSimpleFv
lbl_80C77EA8:
/* 80C77EA8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C77EAC  60 00 00 08 */	ori r0, r0, 8
/* 80C77EB0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C77EB4:
/* 80C77EB4  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C77EB8  3C 80 80 C8 */	lis r4, stringBase0@ha
/* 80C77EBC  38 84 9A E4 */	addi r4, r4, stringBase0@l
/* 80C77EC0  4B 3B 4F FC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C77EC4  7C 7F 1B 78 */	mr r31, r3
/* 80C77EC8  2C 1F 00 04 */	cmpwi r31, 4
/* 80C77ECC  40 82 01 70 */	bne lbl_80C7803C
/* 80C77ED0  7F C3 F3 78 */	mr r3, r30
/* 80C77ED4  3C 80 80 C8 */	lis r4, stringBase0@ha
/* 80C77ED8  38 84 9A E4 */	addi r4, r4, stringBase0@l
/* 80C77EDC  38 A0 FF FF */	li r5, -1
/* 80C77EE0  38 C0 00 00 */	li r6, 0
/* 80C77EE4  38 E0 09 00 */	li r7, 0x900
/* 80C77EE8  39 00 00 00 */	li r8, 0
/* 80C77EEC  4B 40 08 D0 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C77EF0  2C 03 00 05 */	cmpwi r3, 5
/* 80C77EF4  40 82 00 0C */	bne lbl_80C77F00
/* 80C77EF8  38 60 00 05 */	li r3, 5
/* 80C77EFC  48 00 01 44 */	b lbl_80C78040
lbl_80C77F00:
/* 80C77F00  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C77F04  98 1E 05 AC */	stb r0, 0x5ac(r30)
/* 80C77F08  88 7E 05 AC */	lbz r3, 0x5ac(r30)
/* 80C77F0C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C77F10  7C 04 07 74 */	extsb r4, r0
/* 80C77F14  4B 3D 98 D8 */	b dPath_GetRoomPath__Fii
/* 80C77F18  28 03 00 00 */	cmplwi r3, 0
/* 80C77F1C  40 82 00 0C */	bne lbl_80C77F28
/* 80C77F20  38 60 00 00 */	li r3, 0
/* 80C77F24  48 00 01 1C */	b lbl_80C78040
lbl_80C77F28:
/* 80C77F28  80 83 00 08 */	lwz r4, 8(r3)
/* 80C77F2C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C77F30  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C77F34  3C 60 80 C8 */	lis r3, lit_3653@ha
/* 80C77F38  C0 23 99 EC */	lfs f1, lit_3653@l(r3)
/* 80C77F3C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C77F40  EC 01 00 2A */	fadds f0, f1, f0
/* 80C77F44  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C77F48  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80C77F4C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C77F50  38 00 FF FF */	li r0, -1
/* 80C77F54  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C77F58  38 00 00 00 */	li r0, 0
/* 80C77F5C  B0 1E 05 AE */	sth r0, 0x5ae(r30)
/* 80C77F60  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C77F64  54 00 D6 BA */	rlwinm r0, r0, 0x1a, 0x1a, 0x1d
/* 80C77F68  3C 60 80 C8 */	lis r3, mSpeed__12daTogeRoll_c@ha
/* 80C77F6C  38 63 9A 50 */	addi r3, r3, mSpeed__12daTogeRoll_c@l
/* 80C77F70  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C77F74  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 80C77F78  7F C3 F3 78 */	mr r3, r30
/* 80C77F7C  48 00 13 51 */	bl init_modeWaitInit__12daTogeRoll_cFv
/* 80C77F80  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C77F84  38 03 00 24 */	addi r0, r3, 0x24
/* 80C77F88  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C77F8C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C77F90  80 83 00 04 */	lwz r4, 4(r3)
/* 80C77F94  7F C3 F3 78 */	mr r3, r30
/* 80C77F98  4B 3A 25 E0 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C77F9C  7F C3 F3 78 */	mr r3, r30
/* 80C77FA0  4B FF FD 29 */	bl setBaseMtx__12daTogeRoll_cFv
/* 80C77FA4  38 7E 05 FC */	addi r3, r30, 0x5fc
/* 80C77FA8  38 80 00 FE */	li r4, 0xfe
/* 80C77FAC  38 A0 00 FF */	li r5, 0xff
/* 80C77FB0  7F C6 F3 78 */	mr r6, r30
/* 80C77FB4  4B 40 B8 AC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C77FB8  3B 20 00 00 */	li r25, 0
/* 80C77FBC  3B A0 00 00 */	li r29, 0
/* 80C77FC0  3C 60 80 C8 */	lis r3, mCcDSph__12daTogeRoll_c@ha
/* 80C77FC4  3B 63 9B 0C */	addi r27, r3, mCcDSph__12daTogeRoll_c@l
/* 80C77FC8  3B 9E 05 FC */	addi r28, r30, 0x5fc
lbl_80C77FCC:
/* 80C77FCC  7F 5E EA 14 */	add r26, r30, r29
/* 80C77FD0  38 7A 06 38 */	addi r3, r26, 0x638
/* 80C77FD4  7F 64 DB 78 */	mr r4, r27
/* 80C77FD8  4B 40 CA 5C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C77FDC  93 9A 06 7C */	stw r28, 0x67c(r26)
/* 80C77FE0  3B 39 00 01 */	addi r25, r25, 1
/* 80C77FE4  2C 19 00 08 */	cmpwi r25, 8
/* 80C77FE8  3B BD 01 38 */	addi r29, r29, 0x138
/* 80C77FEC  41 80 FF E0 */	blt lbl_80C77FCC
/* 80C77FF0  38 7E 0F F8 */	addi r3, r30, 0xff8
/* 80C77FF4  3C 80 80 C8 */	lis r4, mCcDCps__12daTogeRoll_c@ha
/* 80C77FF8  38 84 9B 4C */	addi r4, r4, mCcDCps__12daTogeRoll_c@l
/* 80C77FFC  4B 40 C7 D4 */	b Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80C78000  38 1E 05 FC */	addi r0, r30, 0x5fc
/* 80C78004  90 1E 10 3C */	stw r0, 0x103c(r30)
/* 80C78008  38 00 00 01 */	li r0, 1
/* 80C7800C  98 1E 05 DA */	stb r0, 0x5da(r30)
/* 80C78010  38 00 00 00 */	li r0, 0
/* 80C78014  98 1E 05 DC */	stb r0, 0x5dc(r30)
/* 80C78018  38 7E 11 5C */	addi r3, r30, 0x115c
/* 80C7801C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C78020  38 A0 00 01 */	li r5, 1
/* 80C78024  81 9E 11 6C */	lwz r12, 0x116c(r30)
/* 80C78028  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C7802C  7D 89 03 A6 */	mtctr r12
/* 80C78030  4E 80 04 21 */	bctrl 
/* 80C78034  38 00 00 00 */	li r0, 0
/* 80C78038  98 1E 11 58 */	stb r0, 0x1158(r30)
lbl_80C7803C:
/* 80C7803C  7F E3 FB 78 */	mr r3, r31
lbl_80C78040:
/* 80C78040  39 61 00 30 */	addi r11, r1, 0x30
/* 80C78044  4B 6E A1 D4 */	b _restgpr_25
/* 80C78048  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C7804C  7C 08 03 A6 */	mtlr r0
/* 80C78050  38 21 00 30 */	addi r1, r1, 0x30
/* 80C78054  4E 80 00 20 */	blr 
