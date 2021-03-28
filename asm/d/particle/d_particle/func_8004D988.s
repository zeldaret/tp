lbl_8004D988:
/* 8004D988  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8004D98C  7C 08 02 A6 */	mflr r0
/* 8004D990  90 01 00 94 */	stw r0, 0x94(r1)
/* 8004D994  39 61 00 90 */	addi r11, r1, 0x90
/* 8004D998  48 31 48 09 */	bl __save_gpr
/* 8004D99C  7C 6F 1B 78 */	mr r15, r3
/* 8004D9A0  7C 90 23 78 */	mr r16, r4
/* 8004D9A4  7C B1 2B 78 */	mr r17, r5
/* 8004D9A8  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8004D9AC  7C F2 3B 78 */	mr r18, r7
/* 8004D9B0  91 01 00 24 */	stw r8, 0x24(r1)
/* 8004D9B4  91 21 00 28 */	stw r9, 0x28(r1)
/* 8004D9B8  7D 53 53 78 */	mr r19, r10
/* 8004D9BC  8A 81 00 A3 */	lbz r20, 0xa3(r1)
/* 8004D9C0  3A A0 00 00 */	li r21, 0
/* 8004D9C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8004D9C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8004D9CC  39 C3 0F 38 */	addi r14, r3, 0xf38
/* 8004D9D0  7D C3 73 78 */	mr r3, r14
/* 8004D9D4  7E 24 8B 78 */	mr r4, r17
/* 8004D9D8  48 02 6C 89 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8004D9DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8004D9E0  40 82 00 0C */	bne lbl_8004D9EC
/* 8004D9E4  38 60 00 00 */	li r3, 0
/* 8004D9E8  48 00 02 28 */	b lbl_8004DC10
lbl_8004D9EC:
/* 8004D9EC  7D C3 73 78 */	mr r3, r14
/* 8004D9F0  7E 24 8B 78 */	mr r4, r17
/* 8004D9F4  48 02 74 5D */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8004D9F8  7C 7D 1B 78 */	mr r29, r3
/* 8004D9FC  3B 20 00 00 */	li r25, 0
/* 8004DA00  3B E0 00 00 */	li r31, 0
/* 8004DA04  3B C0 00 00 */	li r30, 0
/* 8004DA08  56 7C 00 00 */	rlwinm r28, r19, 0, 0, 0
/* 8004DA0C  56 7B 03 DE */	rlwinm r27, r19, 0, 0xf, 0xf
/* 8004DA10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8004DA14  39 C3 61 C0 */	addi r14, r3, g_dComIfG_gameInfo@l
lbl_8004DA18:
/* 8004DA18  7E 23 8B 78 */	mr r3, r17
/* 8004DA1C  7F 24 CB 78 */	mr r4, r25
/* 8004DA20  38 A1 00 34 */	addi r5, r1, 0x34
/* 8004DA24  38 C1 00 30 */	addi r6, r1, 0x30
/* 8004DA28  38 E1 00 2C */	addi r7, r1, 0x2c
/* 8004DA2C  39 01 00 38 */	addi r8, r1, 0x38
/* 8004DA30  4B FF F5 61 */	bl getPolyColor__13dPa_control_cFR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf
/* 8004DA34  2C 03 00 00 */	cmpwi r3, 0
/* 8004DA38  40 82 00 10 */	bne lbl_8004DA48
/* 8004DA3C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8004DA40  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8004DA44  48 00 01 CC */	b lbl_8004DC10
lbl_8004DA48:
/* 8004DA48  28 1C 00 00 */	cmplwi r28, 0
/* 8004DA4C  41 82 00 38 */	beq lbl_8004DA84
/* 8004DA50  2C 19 00 01 */	cmpwi r25, 1
/* 8004DA54  40 82 00 28 */	bne lbl_8004DA7C
/* 8004DA58  48 15 D8 29 */	bl dKy_camera_water_in_status_check__Fv
/* 8004DA5C  2C 03 00 00 */	cmpwi r3, 0
/* 8004DA60  41 82 00 1C */	beq lbl_8004DA7C
/* 8004DA64  2C 1D 00 01 */	cmpwi r29, 1
/* 8004DA68  41 82 00 0C */	beq lbl_8004DA74
/* 8004DA6C  2C 1D 00 03 */	cmpwi r29, 3
/* 8004DA70  40 82 00 0C */	bne lbl_8004DA7C
lbl_8004DA74:
/* 8004DA74  38 60 00 05 */	li r3, 5
/* 8004DA78  48 00 00 40 */	b lbl_8004DAB8
lbl_8004DA7C:
/* 8004DA7C  38 60 00 06 */	li r3, 6
/* 8004DA80  48 00 00 38 */	b lbl_8004DAB8
lbl_8004DA84:
/* 8004DA84  2C 19 00 00 */	cmpwi r25, 0
/* 8004DA88  40 82 00 10 */	bne lbl_8004DA98
/* 8004DA8C  7E 23 8B 78 */	mr r3, r17
/* 8004DA90  48 15 D8 01 */	bl dKy_pol_efftype_get__FPC13cBgS_PolyInfo
/* 8004DA94  48 00 00 24 */	b lbl_8004DAB8
lbl_8004DA98:
/* 8004DA98  2C 1D 00 01 */	cmpwi r29, 1
/* 8004DA9C  41 82 00 0C */	beq lbl_8004DAA8
/* 8004DAA0  2C 1D 00 03 */	cmpwi r29, 3
/* 8004DAA4  40 82 00 0C */	bne lbl_8004DAB0
lbl_8004DAA8:
/* 8004DAA8  38 60 00 06 */	li r3, 6
/* 8004DAAC  48 00 00 0C */	b lbl_8004DAB8
lbl_8004DAB0:
/* 8004DAB0  7E 23 8B 78 */	mr r3, r17
/* 8004DAB4  48 15 D8 F5 */	bl dKy_pol_efftype2_get__FPC13cBgS_PolyInfo
lbl_8004DAB8:
/* 8004DAB8  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8004DABC  28 04 00 06 */	cmplwi r4, 6
/* 8004DAC0  40 80 00 2C */	bge lbl_8004DAEC
/* 8004DAC4  38 00 00 01 */	li r0, 1
/* 8004DAC8  7C 05 20 30 */	slw r5, r0, r4
/* 8004DACC  7E 60 28 39 */	and. r0, r19, r5
/* 8004DAD0  40 82 00 1C */	bne lbl_8004DAEC
/* 8004DAD4  28 04 00 02 */	cmplwi r4, 2
/* 8004DAD8  40 82 00 28 */	bne lbl_8004DB00
/* 8004DADC  28 1B 00 00 */	cmplwi r27, 0
/* 8004DAE0  41 82 00 20 */	beq lbl_8004DB00
/* 8004DAE4  2C 19 00 01 */	cmpwi r25, 1
/* 8004DAE8  40 82 00 18 */	bne lbl_8004DB00
lbl_8004DAEC:
/* 8004DAEC  38 00 00 FF */	li r0, 0xff
/* 8004DAF0  7C 00 F0 30 */	slw r0, r0, r30
/* 8004DAF4  7E A0 03 78 */	or r0, r21, r0
/* 8004DAF8  54 15 04 3E */	clrlwi r21, r0, 0x10
/* 8004DAFC  48 00 00 FC */	b lbl_8004DBF8
lbl_8004DB00:
/* 8004DB00  7C 80 F0 30 */	slw r0, r4, r30
/* 8004DB04  7E A0 03 78 */	or r0, r21, r0
/* 8004DB08  54 15 04 3E */	clrlwi r21, r0, 0x10
/* 8004DB0C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8004DB10  28 00 00 02 */	cmplwi r0, 2
/* 8004DB14  40 82 00 24 */	bne lbl_8004DB38
/* 8004DB18  28 1B 00 00 */	cmplwi r27, 0
/* 8004DB1C  41 82 00 1C */	beq lbl_8004DB38
/* 8004DB20  54 64 1D 78 */	rlwinm r4, r3, 3, 0x15, 0x1c
/* 8004DB24  3C 60 80 3B */	lis r3, ringID@ha
/* 8004DB28  38 03 83 2C */	addi r0, r3, ringID@l
/* 8004DB2C  7F 00 22 14 */	add r24, r0, r4
/* 8004DB30  82 E1 00 20 */	lwz r23, 0x20(r1)
/* 8004DB34  48 00 00 3C */	b lbl_8004DB70
lbl_8004DB38:
/* 8004DB38  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8004DB3C  7C 00 28 39 */	and. r0, r0, r5
/* 8004DB40  41 82 00 1C */	beq lbl_8004DB5C
/* 8004DB44  54 64 1D 78 */	rlwinm r4, r3, 3, 0x15, 0x1c
/* 8004DB48  3C 60 80 3B */	lis r3, ringID@ha
/* 8004DB4C  38 03 83 2C */	addi r0, r3, ringID@l
/* 8004DB50  7F 00 22 14 */	add r24, r0, r4
/* 8004DB54  7E 57 93 78 */	mr r23, r18
/* 8004DB58  48 00 00 18 */	b lbl_8004DB70
lbl_8004DB5C:
/* 8004DB5C  54 64 1D 78 */	rlwinm r4, r3, 3, 0x15, 0x1c
/* 8004DB60  3C 60 80 3B */	lis r3, normalID@ha
/* 8004DB64  38 03 83 5C */	addi r0, r3, normalID@l
/* 8004DB68  7F 00 22 14 */	add r24, r0, r4
/* 8004DB6C  7E 57 93 78 */	mr r23, r18
lbl_8004DB70:
/* 8004DB70  7E D0 FA 14 */	add r22, r16, r31
/* 8004DB74  3B 40 00 00 */	li r26, 0
lbl_8004DB78:
/* 8004DB78  A0 D8 00 00 */	lhz r6, 0(r24)
/* 8004DB7C  28 06 FF FF */	cmplwi r6, 0xffff
/* 8004DB80  41 82 00 78 */	beq lbl_8004DBF8
/* 8004DB84  80 96 00 00 */	lwz r4, 0(r22)
/* 8004DB88  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 8004DB8C  90 01 00 08 */	stw r0, 8(r1)
/* 8004DB90  38 60 00 00 */	li r3, 0
/* 8004DB94  90 61 00 0C */	stw r3, 0xc(r1)
/* 8004DB98  92 81 00 10 */	stw r20, 0x10(r1)
/* 8004DB9C  38 01 00 34 */	addi r0, r1, 0x34
/* 8004DBA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004DBA4  38 01 00 30 */	addi r0, r1, 0x30
/* 8004DBA8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8004DBAC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8004DBB0  7D E3 7B 78 */	mr r3, r15
/* 8004DBB4  38 A0 00 00 */	li r5, 0
/* 8004DBB8  7E E7 BB 78 */	mr r7, r23
/* 8004DBBC  81 01 00 24 */	lwz r8, 0x24(r1)
/* 8004DBC0  81 21 00 98 */	lwz r9, 0x98(r1)
/* 8004DBC4  81 41 00 9C */	lwz r10, 0x9c(r1)
/* 8004DBC8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8004DBCC  4B FF F9 01 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004DBD0  90 76 00 00 */	stw r3, 0(r22)
/* 8004DBD4  80 6E 5D 3C */	lwz r3, 0x5d3c(r14)
/* 8004DBD8  38 63 02 10 */	addi r3, r3, 0x210
/* 8004DBDC  80 96 00 00 */	lwz r4, 0(r22)
/* 8004DBE0  4B FF DC D5 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 8004DBE4  3B 5A 00 01 */	addi r26, r26, 1
/* 8004DBE8  2C 1A 00 04 */	cmpwi r26, 4
/* 8004DBEC  3A D6 00 04 */	addi r22, r22, 4
/* 8004DBF0  3B 18 00 02 */	addi r24, r24, 2
/* 8004DBF4  41 80 FF 84 */	blt lbl_8004DB78
lbl_8004DBF8:
/* 8004DBF8  3B 39 00 01 */	addi r25, r25, 1
/* 8004DBFC  2C 19 00 02 */	cmpwi r25, 2
/* 8004DC00  3B FF 00 10 */	addi r31, r31, 0x10
/* 8004DC04  3B DE 00 08 */	addi r30, r30, 8
/* 8004DC08  41 80 FE 10 */	blt lbl_8004DA18
/* 8004DC0C  7E A3 AB 78 */	mr r3, r21
lbl_8004DC10:
/* 8004DC10  39 61 00 90 */	addi r11, r1, 0x90
/* 8004DC14  48 31 45 D9 */	bl __restore_gpr
/* 8004DC18  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8004DC1C  7C 08 03 A6 */	mtlr r0
/* 8004DC20  38 21 00 90 */	addi r1, r1, 0x90
/* 8004DC24  4E 80 00 20 */	blr 
