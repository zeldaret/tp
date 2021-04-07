lbl_80C991CC:
/* 80C991CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C991D0  7C 08 02 A6 */	mflr r0
/* 80C991D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C991D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C991DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C991E0  7C 7F 1B 78 */	mr r31, r3
/* 80C991E4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C991E8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C991EC  40 82 00 34 */	bne lbl_80C99220
/* 80C991F0  7F E0 FB 79 */	or. r0, r31, r31
/* 80C991F4  41 82 00 20 */	beq lbl_80C99214
/* 80C991F8  7C 1E 03 78 */	mr r30, r0
/* 80C991FC  4B 3D F4 29 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C99200  3C 60 80 CA */	lis r3, __vt__18daObjMirrorScrew_c@ha /* 0x80C99874@ha */
/* 80C99204  38 03 98 74 */	addi r0, r3, __vt__18daObjMirrorScrew_c@l /* 0x80C99874@l */
/* 80C99208  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C9920C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80C99210  4B 5C EE 65 */	bl __ct__13cBgS_PolyInfoFv
lbl_80C99214:
/* 80C99214  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C99218  60 00 00 08 */	ori r0, r0, 8
/* 80C9921C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C99220:
/* 80C99220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C99224  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C99228  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9922C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C99230  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C99234  7C 05 07 74 */	extsb r5, r0
/* 80C99238  4B 39 C1 29 */	bl isSwitch__10dSv_info_cCFii
/* 80C9923C  2C 03 00 00 */	cmpwi r3, 0
/* 80C99240  40 82 00 48 */	bne lbl_80C99288
/* 80C99244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C99248  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9924C  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80C99250  7F C3 F3 78 */	mr r3, r30
/* 80C99254  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C99258  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C9925C  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C99260  4B 39 B7 5D */	bl isEventBit__11dSv_event_cCFUs
/* 80C99264  2C 03 00 00 */	cmpwi r3, 0
/* 80C99268  40 82 00 20 */	bne lbl_80C99288
/* 80C9926C  7F C3 F3 78 */	mr r3, r30
/* 80C99270  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C99274  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C99278  A0 84 02 C4 */	lhz r4, 0x2c4(r4)
/* 80C9927C  4B 39 B7 41 */	bl isEventBit__11dSv_event_cCFUs
/* 80C99280  2C 03 00 00 */	cmpwi r3, 0
/* 80C99284  41 82 00 0C */	beq lbl_80C99290
lbl_80C99288:
/* 80C99288  38 60 00 05 */	li r3, 5
/* 80C9928C  48 00 00 50 */	b lbl_80C992DC
lbl_80C99290:
/* 80C99290  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 80C99294  3C 80 80 CA */	lis r4, l_arcName@ha /* 0x80C997C0@ha */
/* 80C99298  38 84 97 C0 */	addi r4, r4, l_arcName@l /* 0x80C997C0@l */
/* 80C9929C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C992A0  4B 39 3C 1D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C992A4  2C 03 00 04 */	cmpwi r3, 4
/* 80C992A8  40 82 00 34 */	bne lbl_80C992DC
/* 80C992AC  7F E3 FB 78 */	mr r3, r31
/* 80C992B0  3C 80 80 CA */	lis r4, l_arcName@ha /* 0x80C997C0@ha */
/* 80C992B4  38 84 97 C0 */	addi r4, r4, l_arcName@l /* 0x80C997C0@l */
/* 80C992B8  80 84 00 00 */	lwz r4, 0(r4)
/* 80C992BC  38 A0 00 07 */	li r5, 7
/* 80C992C0  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C992C4  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C992C8  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000C760@ha */
/* 80C992CC  38 E7 C7 60 */	addi r7, r7, 0xC760 /* 0x0000C760@l */
/* 80C992D0  39 00 00 00 */	li r8, 0
/* 80C992D4  4B 3D F4 E9 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C992D8  2C 03 00 05 */	cmpwi r3, 5
lbl_80C992DC:
/* 80C992DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C992E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C992E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C992E8  7C 08 03 A6 */	mtlr r0
/* 80C992EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C992F0  4E 80 00 20 */	blr 
