lbl_80D050A8:
/* 80D050A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D050AC  7C 08 02 A6 */	mflr r0
/* 80D050B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D050B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D050B8  4B 65 D1 15 */	bl _savegpr_25
/* 80D050BC  7C 7E 1B 78 */	mr r30, r3
/* 80D050C0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D050C4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D050C8  40 82 00 74 */	bne lbl_80D0513C
/* 80D050CC  7F C0 F3 79 */	or. r0, r30, r30
/* 80D050D0  41 82 00 60 */	beq lbl_80D05130
/* 80D050D4  7C 19 03 78 */	mr r25, r0
/* 80D050D8  4B 37 35 4D */	bl __ct__16dBgS_MoveBgActorFv
/* 80D050DC  3C 60 80 D0 */	lis r3, __vt__11daTaFence_c@ha /* 0x80D062E8@ha */
/* 80D050E0  38 03 62 E8 */	addi r0, r3, __vt__11daTaFence_c@l /* 0x80D062E8@l */
/* 80D050E4  90 19 05 9C */	stw r0, 0x59c(r25)
/* 80D050E8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D050EC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D050F0  90 19 05 C8 */	stw r0, 0x5c8(r25)
/* 80D050F4  38 79 05 CC */	addi r3, r25, 0x5cc
/* 80D050F8  4B 37 E6 69 */	bl __ct__10dCcD_GSttsFv
/* 80D050FC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D05100  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D05104  90 79 05 C8 */	stw r3, 0x5c8(r25)
/* 80D05108  38 03 00 20 */	addi r0, r3, 0x20
/* 80D0510C  90 19 05 CC */	stw r0, 0x5cc(r25)
/* 80D05110  38 79 05 EC */	addi r3, r25, 0x5ec
/* 80D05114  3C 80 80 D0 */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80D053E0@ha */
/* 80D05118  38 84 53 E0 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80D053E0@l */
/* 80D0511C  3C A0 80 D0 */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80D05314@ha */
/* 80D05120  38 A5 53 14 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80D05314@l */
/* 80D05124  38 C0 01 3C */	li r6, 0x13c
/* 80D05128  38 E0 00 0B */	li r7, 0xb
/* 80D0512C  4B 65 CC 35 */	bl __construct_array
lbl_80D05130:
/* 80D05130  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D05134  60 00 00 08 */	ori r0, r0, 8
/* 80D05138  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D0513C:
/* 80D0513C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80D05140  3C 80 80 D0 */	lis r4, d_a_obj_taFence__stringBase0@ha /* 0x80D06198@ha */
/* 80D05144  38 84 61 98 */	addi r4, r4, d_a_obj_taFence__stringBase0@l /* 0x80D06198@l */
/* 80D05148  4B 32 7D 75 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D0514C  7C 7F 1B 78 */	mr r31, r3
/* 80D05150  2C 1F 00 04 */	cmpwi r31, 4
/* 80D05154  40 82 01 A4 */	bne lbl_80D052F8
/* 80D05158  7F C3 F3 78 */	mr r3, r30
/* 80D0515C  3C 80 80 D0 */	lis r4, d_a_obj_taFence__stringBase0@ha /* 0x80D06198@ha */
/* 80D05160  38 84 61 98 */	addi r4, r4, d_a_obj_taFence__stringBase0@l /* 0x80D06198@l */
/* 80D05164  38 A0 00 07 */	li r5, 7
/* 80D05168  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80D0516C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80D05170  38 E0 15 00 */	li r7, 0x1500
/* 80D05174  39 00 00 00 */	li r8, 0
/* 80D05178  4B 37 36 45 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D0517C  2C 03 00 05 */	cmpwi r3, 5
/* 80D05180  40 82 00 0C */	bne lbl_80D0518C
/* 80D05184  38 60 00 05 */	li r3, 5
/* 80D05188  48 00 01 74 */	b lbl_80D052FC
lbl_80D0518C:
/* 80D0518C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D05190  38 03 00 24 */	addi r0, r3, 0x24
/* 80D05194  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D05198  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D0519C  80 83 00 04 */	lwz r4, 4(r3)
/* 80D051A0  7F C3 F3 78 */	mr r3, r30
/* 80D051A4  4B 31 53 D5 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D051A8  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80D051AC  38 80 00 FF */	li r4, 0xff
/* 80D051B0  38 A0 00 FF */	li r5, 0xff
/* 80D051B4  7F C6 F3 78 */	mr r6, r30
/* 80D051B8  4B 37 E6 A9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D051BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D051C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D051C4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D051C8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D051CC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D051D0  7C 05 07 74 */	extsb r5, r0
/* 80D051D4  4B 33 01 8D */	bl isSwitch__10dSv_info_cCFii
/* 80D051D8  2C 03 00 00 */	cmpwi r3, 0
/* 80D051DC  41 82 00 68 */	beq lbl_80D05244
/* 80D051E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D051E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D051E8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D051EC  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D051F0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D051F4  7C 05 07 74 */	extsb r5, r0
/* 80D051F8  4B 33 01 69 */	bl isSwitch__10dSv_info_cCFii
/* 80D051FC  2C 03 00 00 */	cmpwi r3, 0
/* 80D05200  41 82 00 14 */	beq lbl_80D05214
/* 80D05204  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 80D05208  3C 63 00 01 */	addis r3, r3, 1
/* 80D0520C  38 03 80 00 */	addi r0, r3, -32768
/* 80D05210  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_80D05214:
/* 80D05214  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D05218  4B 56 2F BD */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D0521C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D05220  41 82 00 18 */	beq lbl_80D05238
/* 80D05224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D05228  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0522C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D05230  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80D05234  4B 36 F0 1D */	bl Release__4cBgSFP9dBgW_Base
lbl_80D05238:
/* 80D05238  7F C3 F3 78 */	mr r3, r30
/* 80D0523C  48 00 0A F1 */	bl init_modeMoveEnd__11daTaFence_cFv
/* 80D05240  48 00 00 B0 */	b lbl_80D052F0
lbl_80D05244:
/* 80D05244  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 80D05248  38 03 40 00 */	addi r0, r3, 0x4000
/* 80D0524C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80D05250  3B 20 00 00 */	li r25, 0
/* 80D05254  3B A0 00 00 */	li r29, 0
/* 80D05258  3C 60 80 D0 */	lis r3, mCcDCyl__11daTaFence_c@ha /* 0x80D061C4@ha */
/* 80D0525C  3B 63 61 C4 */	addi r27, r3, mCcDCyl__11daTaFence_c@l /* 0x80D061C4@l */
/* 80D05260  3B 9E 05 B0 */	addi r28, r30, 0x5b0
lbl_80D05264:
/* 80D05264  7F 5E EA 14 */	add r26, r30, r29
/* 80D05268  38 7A 05 EC */	addi r3, r26, 0x5ec
/* 80D0526C  7F 64 DB 78 */	mr r4, r27
/* 80D05270  4B 37 F6 45 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D05274  93 9A 06 30 */	stw r28, 0x630(r26)
/* 80D05278  3B 39 00 01 */	addi r25, r25, 1
/* 80D0527C  2C 19 00 0B */	cmpwi r25, 0xb
/* 80D05280  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80D05284  41 80 FF E0 */	blt lbl_80D05264
/* 80D05288  38 00 00 00 */	li r0, 0
/* 80D0528C  B0 1E 13 8C */	sth r0, 0x138c(r30)
/* 80D05290  B0 1E 13 8E */	sth r0, 0x138e(r30)
/* 80D05294  B0 1E 13 90 */	sth r0, 0x1390(r30)
/* 80D05298  3C 60 80 D0 */	lis r3, lit_3651@ha /* 0x80D060E0@ha */
/* 80D0529C  C0 03 60 E0 */	lfs f0, lit_3651@l(r3)  /* 0x80D060E0@l */
/* 80D052A0  D0 1E 13 94 */	stfs f0, 0x1394(r30)
/* 80D052A4  D0 1E 13 AC */	stfs f0, 0x13ac(r30)
/* 80D052A8  D0 1E 13 B0 */	stfs f0, 0x13b0(r30)
/* 80D052AC  D0 1E 13 B4 */	stfs f0, 0x13b4(r30)
/* 80D052B0  D0 1E 13 C0 */	stfs f0, 0x13c0(r30)
/* 80D052B4  D0 1E 13 9C */	stfs f0, 0x139c(r30)
/* 80D052B8  D0 1E 13 98 */	stfs f0, 0x1398(r30)
/* 80D052BC  D0 1E 13 A0 */	stfs f0, 0x13a0(r30)
/* 80D052C0  D0 1E 13 A4 */	stfs f0, 0x13a4(r30)
/* 80D052C4  D0 1E 13 A8 */	stfs f0, 0x13a8(r30)
/* 80D052C8  D0 1E 13 B8 */	stfs f0, 0x13b8(r30)
/* 80D052CC  D0 1E 13 BC */	stfs f0, 0x13bc(r30)
/* 80D052D0  D0 1E 13 C4 */	stfs f0, 0x13c4(r30)
/* 80D052D4  D0 1E 13 C8 */	stfs f0, 0x13c8(r30)
/* 80D052D8  D0 1E 13 CC */	stfs f0, 0x13cc(r30)
/* 80D052DC  90 1E 13 88 */	stw r0, 0x1388(r30)
/* 80D052E0  98 1E 13 86 */	stb r0, 0x1386(r30)
/* 80D052E4  98 1E 13 D0 */	stb r0, 0x13d0(r30)
/* 80D052E8  7F C3 F3 78 */	mr r3, r30
/* 80D052EC  48 00 04 D9 */	bl init_modeWait__11daTaFence_cFv
lbl_80D052F0:
/* 80D052F0  7F C3 F3 78 */	mr r3, r30
/* 80D052F4  4B FF FC 99 */	bl setBaseMtx__11daTaFence_cFv
lbl_80D052F8:
/* 80D052F8  7F E3 FB 78 */	mr r3, r31
lbl_80D052FC:
/* 80D052FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80D05300  4B 65 CF 19 */	bl _restgpr_25
/* 80D05304  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D05308  7C 08 03 A6 */	mtlr r0
/* 80D0530C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D05310  4E 80 00 20 */	blr 
