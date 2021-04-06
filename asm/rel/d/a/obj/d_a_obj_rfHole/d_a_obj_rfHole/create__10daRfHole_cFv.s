lbl_80CB8FF8:
/* 80CB8FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8FFC  7C 08 02 A6 */	mflr r0
/* 80CB9000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB9008  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB900C  7C 7E 1B 78 */	mr r30, r3
/* 80CB9010  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CB9014  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CB9018  40 82 00 28 */	bne lbl_80CB9040
/* 80CB901C  28 1E 00 00 */	cmplwi r30, 0
/* 80CB9020  41 82 00 14 */	beq lbl_80CB9034
/* 80CB9024  4B 3B F6 01 */	bl __ct__16dBgS_MoveBgActorFv
/* 80CB9028  3C 60 80 CC */	lis r3, __vt__10daRfHole_c@ha /* 0x80CB9B9C@ha */
/* 80CB902C  38 03 9B 9C */	addi r0, r3, __vt__10daRfHole_c@l /* 0x80CB9B9C@l */
/* 80CB9030  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80CB9034:
/* 80CB9034  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CB9038  60 00 00 08 */	ori r0, r0, 8
/* 80CB903C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CB9040:
/* 80CB9040  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80CB9044  3C 80 80 CC */	lis r4, d_a_obj_rfHole__stringBase0@ha /* 0x80CB9AC0@ha */
/* 80CB9048  38 84 9A C0 */	addi r4, r4, d_a_obj_rfHole__stringBase0@l /* 0x80CB9AC0@l */
/* 80CB904C  4B 37 3E 71 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CB9050  7C 7F 1B 78 */	mr r31, r3
/* 80CB9054  2C 1F 00 04 */	cmpwi r31, 4
/* 80CB9058  40 82 00 D4 */	bne lbl_80CB912C
/* 80CB905C  7F C3 F3 78 */	mr r3, r30
/* 80CB9060  3C 80 80 CC */	lis r4, d_a_obj_rfHole__stringBase0@ha /* 0x80CB9AC0@ha */
/* 80CB9064  38 84 9A C0 */	addi r4, r4, d_a_obj_rfHole__stringBase0@l /* 0x80CB9AC0@l */
/* 80CB9068  38 A0 00 07 */	li r5, 7
/* 80CB906C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80CB9070  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80CB9074  38 E0 0B 40 */	li r7, 0xb40
/* 80CB9078  39 00 00 00 */	li r8, 0
/* 80CB907C  4B 3B F7 41 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CB9080  2C 03 00 05 */	cmpwi r3, 5
/* 80CB9084  40 82 00 0C */	bne lbl_80CB9090
/* 80CB9088  38 60 00 05 */	li r3, 5
/* 80CB908C  48 00 00 A4 */	b lbl_80CB9130
lbl_80CB9090:
/* 80CB9090  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CB9094  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB9098  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CB909C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CB90A0  80 83 00 04 */	lwz r4, 4(r3)
/* 80CB90A4  7F C3 F3 78 */	mr r3, r30
/* 80CB90A8  4B 36 14 D1 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CB90AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB90B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB90B4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CB90B8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CB90BC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CB90C0  7C 05 07 74 */	extsb r5, r0
/* 80CB90C4  4B 37 C2 9D */	bl isSwitch__10dSv_info_cCFii
/* 80CB90C8  2C 03 00 00 */	cmpwi r3, 0
/* 80CB90CC  41 82 00 10 */	beq lbl_80CB90DC
/* 80CB90D0  7F C3 F3 78 */	mr r3, r30
/* 80CB90D4  48 00 06 69 */	bl init_modeEnd__10daRfHole_cFv
/* 80CB90D8  48 00 00 40 */	b lbl_80CB9118
lbl_80CB90DC:
/* 80CB90DC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CB90E0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80CB90E4  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80CB90E8  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80CB90EC  28 00 00 01 */	cmplwi r0, 1
/* 80CB90F0  41 82 00 20 */	beq lbl_80CB9110
/* 80CB90F4  3C 60 80 CC */	lis r3, rideCallBack__10daRfHole_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80CB9148@ha */
/* 80CB90F8  38 03 91 48 */	addi r0, r3, rideCallBack__10daRfHole_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80CB9148@l */
/* 80CB90FC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80CB9100  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80CB9104  7F C3 F3 78 */	mr r3, r30
/* 80CB9108  48 00 04 19 */	bl init_modeWait__10daRfHole_cFv
/* 80CB910C  48 00 00 0C */	b lbl_80CB9118
lbl_80CB9110:
/* 80CB9110  7F C3 F3 78 */	mr r3, r30
/* 80CB9114  48 00 05 B9 */	bl init_modeBreakEff__10daRfHole_cFv
lbl_80CB9118:
/* 80CB9118  38 00 00 00 */	li r0, 0
/* 80CB911C  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 80CB9120  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80CB9124  7F C3 F3 78 */	mr r3, r30
/* 80CB9128  4B FF FD DD */	bl setBaseMtx__10daRfHole_cFv
lbl_80CB912C:
/* 80CB912C  7F E3 FB 78 */	mr r3, r31
lbl_80CB9130:
/* 80CB9130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB9134  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB9138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB913C  7C 08 03 A6 */	mtlr r0
/* 80CB9140  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9144  4E 80 00 20 */	blr 
