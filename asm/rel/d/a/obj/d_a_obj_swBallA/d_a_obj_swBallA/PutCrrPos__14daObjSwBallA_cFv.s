lbl_80CF3D84:
/* 80CF3D84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CF3D88  7C 08 02 A6 */	mflr r0
/* 80CF3D8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CF3D90  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF3D94  4B 66 E4 2C */	b _savegpr_22
/* 80CF3D98  7C 76 1B 78 */	mr r22, r3
/* 80CF3D9C  3C 60 80 CF */	lis r3, l_color@ha
/* 80CF3DA0  3B E3 43 E4 */	addi r31, r3, l_color@l
/* 80CF3DA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF3DA8  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
/* 80CF3DAC  83 17 5D AC */	lwz r24, 0x5dac(r23)
/* 80CF3DB0  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80CF3DB4  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 80CF3DB8  4B 57 CE 4C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80CF3DBC  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 80CF3DC0  7C 00 18 50 */	subf r0, r0, r3
/* 80CF3DC4  7C 19 07 34 */	extsh r25, r0
/* 80CF3DC8  7E C3 B3 78 */	mr r3, r22
/* 80CF3DCC  80 97 5D AC */	lwz r4, 0x5dac(r23)
/* 80CF3DD0  4B 32 6B 94 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CF3DD4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CF3DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF3DDC  40 80 00 78 */	bge lbl_80CF3E54
/* 80CF3DE0  2C 19 40 00 */	cmpwi r25, 0x4000
/* 80CF3DE4  40 80 00 70 */	bge lbl_80CF3E54
/* 80CF3DE8  7F 03 C3 78 */	mr r3, r24
/* 80CF3DEC  81 98 06 28 */	lwz r12, 0x628(r24)
/* 80CF3DF0  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80CF3DF4  7D 89 03 A6 */	mtctr r12
/* 80CF3DF8  4E 80 04 21 */	bctrl 
/* 80CF3DFC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80CF3E00  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80CF3E04  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80CF3E08  38 81 00 0C */	addi r4, r1, 0xc
/* 80CF3E0C  4B 32 59 EC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80CF3E10  7C 77 1B 79 */	or. r23, r3, r3
/* 80CF3E14  41 82 00 40 */	beq lbl_80CF3E54
/* 80CF3E18  4B 32 4E C8 */	b fopAc_IsActor__FPv
/* 80CF3E1C  2C 03 00 00 */	cmpwi r3, 0
/* 80CF3E20  41 82 00 34 */	beq lbl_80CF3E54
/* 80CF3E24  A8 17 00 08 */	lha r0, 8(r23)
/* 80CF3E28  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80CF3E2C  40 82 00 28 */	bne lbl_80CF3E54
/* 80CF3E30  88 17 0C F0 */	lbz r0, 0xcf0(r23)
/* 80CF3E34  2C 00 00 0B */	cmpwi r0, 0xb
/* 80CF3E38  40 82 00 1C */	bne lbl_80CF3E54
/* 80CF3E3C  7F 03 C3 78 */	mr r3, r24
/* 80CF3E40  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 80CF3E44  81 98 06 28 */	lwz r12, 0x628(r24)
/* 80CF3E48  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 80CF3E4C  7D 89 03 A6 */	mtctr r12
/* 80CF3E50  4E 80 04 21 */	bctrl 
lbl_80CF3E54:
/* 80CF3E54  3B 40 00 00 */	li r26, 0
/* 80CF3E58  48 00 01 F0 */	b lbl_80CF4048
lbl_80CF3E5C:
/* 80CF3E5C  3B 20 00 00 */	li r25, 0
/* 80CF3E60  3B 00 00 00 */	li r24, 0
/* 80CF3E64  3A E0 00 00 */	li r23, 0
/* 80CF3E68  57 5D 06 3E */	clrlwi r29, r26, 0x18
/* 80CF3E6C  57 43 15 BA */	rlwinm r3, r26, 2, 0x16, 0x1d
/* 80CF3E70  3B C3 05 8C */	addi r30, r3, 0x58c
/* 80CF3E74  7C 76 F0 2E */	lwzx r3, r22, r30
/* 80CF3E78  3C 03 00 01 */	addis r0, r3, 1
/* 80CF3E7C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF3E80  41 82 01 7C */	beq lbl_80CF3FFC
/* 80CF3E84  90 61 00 08 */	stw r3, 8(r1)
/* 80CF3E88  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80CF3E8C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80CF3E90  38 81 00 08 */	addi r4, r1, 8
/* 80CF3E94  4B 32 59 64 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80CF3E98  7C 7B 1B 78 */	mr r27, r3
/* 80CF3E9C  7E C3 B3 78 */	mr r3, r22
/* 80CF3EA0  7F 64 DB 78 */	mr r4, r27
/* 80CF3EA4  4B FF F4 F1 */	bl checkArea_sub__14daObjSwBallA_cFP10fopAc_ac_c
/* 80CF3EA8  30 03 FF FF */	addic r0, r3, -1
/* 80CF3EAC  7C 00 19 10 */	subfe r0, r0, r3
/* 80CF3EB0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CF3EB4  7C 19 03 78 */	mr r25, r0
/* 80CF3EB8  80 7B 04 9C */	lwz r3, 0x49c(r27)
/* 80CF3EBC  54 60 9F FE */	rlwinm r0, r3, 0x13, 0x1f, 0x1f
/* 80CF3EC0  7C 18 03 78 */	mr r24, r0
/* 80CF3EC4  54 60 67 FE */	rlwinm r0, r3, 0xc, 0x1f, 0x1f
/* 80CF3EC8  7C 17 03 78 */	mr r23, r0
/* 80CF3ECC  80 76 05 C0 */	lwz r3, 0x5c0(r22)
/* 80CF3ED0  3C 03 00 01 */	addis r0, r3, 1
/* 80CF3ED4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF3ED8  41 82 00 10 */	beq lbl_80CF3EE8
/* 80CF3EDC  7C 16 F0 2E */	lwzx r0, r22, r30
/* 80CF3EE0  7C 03 00 40 */	cmplw r3, r0
/* 80CF3EE4  40 82 01 18 */	bne lbl_80CF3FFC
lbl_80CF3EE8:
/* 80CF3EE8  7F 96 EA 14 */	add r28, r22, r29
/* 80CF3EEC  88 1C 05 B7 */	lbz r0, 0x5b7(r28)
/* 80CF3EF0  2C 00 00 01 */	cmpwi r0, 1
/* 80CF3EF4  41 82 00 94 */	beq lbl_80CF3F88
/* 80CF3EF8  40 80 01 04 */	bge lbl_80CF3FFC
/* 80CF3EFC  2C 00 00 00 */	cmpwi r0, 0
/* 80CF3F00  40 80 00 08 */	bge lbl_80CF3F08
/* 80CF3F04  48 00 00 F8 */	b lbl_80CF3FFC
lbl_80CF3F08:
/* 80CF3F08  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80CF3F0C  41 82 00 2C */	beq lbl_80CF3F38
/* 80CF3F10  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80CF3F14  40 82 00 10 */	bne lbl_80CF3F24
/* 80CF3F18  88 1C 05 AF */	lbz r0, 0x5af(r28)
/* 80CF3F1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CF3F20  40 82 00 3C */	bne lbl_80CF3F5C
lbl_80CF3F24:
/* 80CF3F24  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80CF3F28  40 82 00 10 */	bne lbl_80CF3F38
/* 80CF3F2C  88 1C 05 AF */	lbz r0, 0x5af(r28)
/* 80CF3F30  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80CF3F34  40 82 00 28 */	bne lbl_80CF3F5C
lbl_80CF3F38:
/* 80CF3F38  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80CF3F3C  41 82 00 38 */	beq lbl_80CF3F74
/* 80CF3F40  88 1C 05 AF */	lbz r0, 0x5af(r28)
/* 80CF3F44  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80CF3F48  40 82 00 2C */	bne lbl_80CF3F74
/* 80CF3F4C  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80CF3F50  40 82 00 24 */	bne lbl_80CF3F74
/* 80CF3F54  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80CF3F58  40 82 00 1C */	bne lbl_80CF3F74
lbl_80CF3F5C:
/* 80CF3F5C  38 60 00 01 */	li r3, 1
/* 80CF3F60  98 7B 0D B8 */	stb r3, 0xdb8(r27)
/* 80CF3F64  7C 16 F0 2E */	lwzx r0, r22, r30
/* 80CF3F68  90 16 05 C0 */	stw r0, 0x5c0(r22)
/* 80CF3F6C  98 7C 05 B7 */	stb r3, 0x5b7(r28)
/* 80CF3F70  48 00 00 8C */	b lbl_80CF3FFC
lbl_80CF3F74:
/* 80CF3F74  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80CF3F78  40 82 00 84 */	bne lbl_80CF3FFC
/* 80CF3F7C  38 00 FF FF */	li r0, -1
/* 80CF3F80  90 16 05 C0 */	stw r0, 0x5c0(r22)
/* 80CF3F84  48 00 00 78 */	b lbl_80CF3FFC
lbl_80CF3F88:
/* 80CF3F88  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80CF3F8C  41 82 00 5C */	beq lbl_80CF3FE8
/* 80CF3F90  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80CF3F94  40 82 00 54 */	bne lbl_80CF3FE8
/* 80CF3F98  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80CF3F9C  40 82 00 4C */	bne lbl_80CF3FE8
/* 80CF3FA0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80CF3FA4  C0 36 04 D0 */	lfs f1, 0x4d0(r22)
/* 80CF3FA8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80CF3FAC  4B 57 C7 94 */	b cLib_chaseF__FPfff
/* 80CF3FB0  38 7B 04 D8 */	addi r3, r27, 0x4d8
/* 80CF3FB4  C0 36 04 D8 */	lfs f1, 0x4d8(r22)
/* 80CF3FB8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80CF3FBC  4B 57 C7 84 */	b cLib_chaseF__FPfff
/* 80CF3FC0  7E C3 B3 78 */	mr r3, r22
/* 80CF3FC4  7F 64 DB 78 */	mr r4, r27
/* 80CF3FC8  4B 32 69 9C */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CF3FCC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80CF3FD0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CF3FD4  40 82 00 28 */	bne lbl_80CF3FFC
/* 80CF3FD8  38 00 00 00 */	li r0, 0
/* 80CF3FDC  98 1B 0D B8 */	stb r0, 0xdb8(r27)
/* 80CF3FE0  98 1C 05 B7 */	stb r0, 0x5b7(r28)
/* 80CF3FE4  48 00 00 18 */	b lbl_80CF3FFC
lbl_80CF3FE8:
/* 80CF3FE8  38 00 00 00 */	li r0, 0
/* 80CF3FEC  98 1B 0D B8 */	stb r0, 0xdb8(r27)
/* 80CF3FF0  98 1C 05 B7 */	stb r0, 0x5b7(r28)
/* 80CF3FF4  38 00 FF FF */	li r0, -1
/* 80CF3FF8  90 16 05 C0 */	stw r0, 0x5c0(r22)
lbl_80CF3FFC:
/* 80CF3FFC  38 00 00 00 */	li r0, 0
/* 80CF4000  38 7D 05 AF */	addi r3, r29, 0x5af
/* 80CF4004  7C 16 19 AE */	stbx r0, r22, r3
/* 80CF4008  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80CF400C  41 82 00 10 */	beq lbl_80CF401C
/* 80CF4010  7C 16 18 AE */	lbzx r0, r22, r3
/* 80CF4014  60 00 00 02 */	ori r0, r0, 2
/* 80CF4018  7C 16 19 AE */	stbx r0, r22, r3
lbl_80CF401C:
/* 80CF401C  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80CF4020  41 82 00 10 */	beq lbl_80CF4030
/* 80CF4024  7C 16 18 AE */	lbzx r0, r22, r3
/* 80CF4028  60 00 00 01 */	ori r0, r0, 1
/* 80CF402C  7C 16 19 AE */	stbx r0, r22, r3
lbl_80CF4030:
/* 80CF4030  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80CF4034  41 82 00 10 */	beq lbl_80CF4044
/* 80CF4038  7C 16 18 AE */	lbzx r0, r22, r3
/* 80CF403C  60 00 00 04 */	ori r0, r0, 4
/* 80CF4040  7C 16 19 AE */	stbx r0, r22, r3
lbl_80CF4044:
/* 80CF4044  3B 5A 00 01 */	addi r26, r26, 1
lbl_80CF4048:
/* 80CF4048  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 80CF404C  28 00 00 08 */	cmplwi r0, 8
/* 80CF4050  41 80 FE 0C */	blt lbl_80CF3E5C
/* 80CF4054  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF4058  4B 66 E1 B4 */	b _restgpr_22
/* 80CF405C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CF4060  7C 08 03 A6 */	mtlr r0
/* 80CF4064  38 21 00 40 */	addi r1, r1, 0x40
/* 80CF4068  4E 80 00 20 */	blr 
