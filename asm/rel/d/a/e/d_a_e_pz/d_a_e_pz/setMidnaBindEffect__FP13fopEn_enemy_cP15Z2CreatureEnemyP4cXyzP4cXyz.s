lbl_80760CF4:
/* 80760CF4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80760CF8  7C 08 02 A6 */	mflr r0
/* 80760CFC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80760D00  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80760D04  4B C0 14 B1 */	bl _savegpr_19
/* 80760D08  7C 7E 1B 78 */	mr r30, r3
/* 80760D0C  7C 9A 23 78 */	mr r26, r4
/* 80760D10  7C BB 2B 78 */	mr r27, r5
/* 80760D14  7C DC 33 78 */	mr r28, r6
/* 80760D18  3C 60 80 76 */	lis r3, cNullVec__6Z2Calc@ha /* 0x807617BC@ha */
/* 80760D1C  3A E3 17 BC */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x807617BC@l */
/* 80760D20  3C 60 80 76 */	lis r3, lit_3906@ha /* 0x807614FC@ha */
/* 80760D24  3B E3 14 FC */	addi r31, r3, lit_3906@l /* 0x807614FC@l */
/* 80760D28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80760D2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80760D30  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80760D34  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80760D38  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 80760D3C  28 00 00 00 */	cmplwi r0, 0
/* 80760D40  41 82 03 A4 */	beq lbl_807610E4
/* 80760D44  7F C4 F3 78 */	mr r4, r30
/* 80760D48  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80760D4C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80760D50  7D 89 03 A6 */	mtctr r12
/* 80760D54  4E 80 04 21 */	bctrl 
/* 80760D58  2C 03 00 00 */	cmpwi r3, 0
/* 80760D5C  41 82 03 88 */	beq lbl_807610E4
/* 80760D60  4B A4 B8 1D */	bl dKy_darkworld_check__Fv
/* 80760D64  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80760D68  30 03 FF FF */	addic r0, r3, -1
/* 80760D6C  7F A0 19 10 */	subfe r29, r0, r3
/* 80760D70  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80760D74  28 00 00 00 */	cmplwi r0, 0
/* 80760D78  40 82 02 A0 */	bne lbl_80761018
/* 80760D7C  38 00 00 01 */	li r0, 1
/* 80760D80  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80760D84  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80760D88  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 80760D8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80760D90  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80760D94  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80760D98  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80760D9C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80760DA0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80760DA4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80760DA8  4B BE 57 09 */	bl PSMTXCopy
/* 80760DAC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80760DB0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80760DB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80760DB8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80760DBC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80760DC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80760DC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80760DC8  38 81 00 4C */	addi r4, r1, 0x4c
/* 80760DCC  38 A1 00 58 */	addi r5, r1, 0x58
/* 80760DD0  4B BE 5F 9D */	bl PSMTXMultVec
/* 80760DD4  38 61 00 34 */	addi r3, r1, 0x34
/* 80760DD8  38 81 00 58 */	addi r4, r1, 0x58
/* 80760DDC  7F 65 DB 78 */	mr r5, r27
/* 80760DE0  4B B0 5D 55 */	bl __mi__4cXyzCFRC3Vec
/* 80760DE4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80760DE8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80760DEC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80760DF0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80760DF4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80760DF8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80760DFC  4B B0 68 79 */	bl cM_atan2s__Fff
/* 80760E00  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80760E04  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80760E08  EC 20 00 32 */	fmuls f1, f0, f0
/* 80760E0C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80760E10  EC 00 00 32 */	fmuls f0, f0, f0
/* 80760E14  EC 41 00 2A */	fadds f2, f1, f0
/* 80760E18  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80760E1C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80760E20  40 81 00 0C */	ble lbl_80760E2C
/* 80760E24  FC 00 10 34 */	frsqrte f0, f2
/* 80760E28  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80760E2C:
/* 80760E2C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80760E30  4B B0 68 45 */	bl cM_atan2s__Fff
/* 80760E34  7C 03 00 D0 */	neg r0, r3
/* 80760E38  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80760E3C  38 80 00 00 */	li r4, 0
/* 80760E40  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80760E44  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80760E48  7C 00 07 74 */	extsb r0, r0
/* 80760E4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80760E50  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80760E54  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80760E58  57 A5 10 3A */	slwi r5, r29, 2
/* 80760E5C  90 81 00 08 */	stw r4, 8(r1)
/* 80760E60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80760E64  3A B7 00 20 */	addi r21, r23, 0x20
/* 80760E68  7E B5 2A 14 */	add r21, r21, r5
/* 80760E6C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80760E70  3A D7 00 28 */	addi r22, r23, 0x28
/* 80760E74  7E D6 2A 14 */	add r22, r22, r5
/* 80760E78  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80760E7C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80760E80  38 80 00 00 */	li r4, 0
/* 80760E84  38 A0 02 9B */	li r5, 0x29b
/* 80760E88  7F 66 DB 78 */	mr r6, r27
/* 80760E8C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80760E90  39 01 00 2C */	addi r8, r1, 0x2c
/* 80760E94  7F 89 E3 78 */	mr r9, r28
/* 80760E98  39 40 00 FF */	li r10, 0xff
/* 80760E9C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80760EA0  4B 8E BB F1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80760EA4  7C 79 1B 79 */	or. r25, r3, r3
/* 80760EA8  41 82 00 FC */	beq lbl_80760FA4
/* 80760EAC  38 61 00 40 */	addi r3, r1, 0x40
/* 80760EB0  4B BE 62 89 */	bl PSVECSquareMag
/* 80760EB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80760EB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80760EBC  40 81 00 58 */	ble lbl_80760F14
/* 80760EC0  FC 00 08 34 */	frsqrte f0, f1
/* 80760EC4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80760EC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80760ECC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80760ED0  FC 00 00 32 */	fmul f0, f0, f0
/* 80760ED4  FC 01 00 32 */	fmul f0, f1, f0
/* 80760ED8  FC 03 00 28 */	fsub f0, f3, f0
/* 80760EDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80760EE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80760EE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80760EE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80760EEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80760EF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80760EF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80760EF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80760EFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80760F00  FC 03 00 28 */	fsub f0, f3, f0
/* 80760F04  FC 02 00 32 */	fmul f0, f2, f0
/* 80760F08  FC 21 00 32 */	fmul f1, f1, f0
/* 80760F0C  FC 20 08 18 */	frsp f1, f1
/* 80760F10  48 00 00 88 */	b lbl_80760F98
lbl_80760F14:
/* 80760F14  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80760F18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80760F1C  40 80 00 10 */	bge lbl_80760F2C
/* 80760F20  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80760F24  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80760F28  48 00 00 70 */	b lbl_80760F98
lbl_80760F2C:
/* 80760F2C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80760F30  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80760F34  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80760F38  3C 00 7F 80 */	lis r0, 0x7f80
/* 80760F3C  7C 03 00 00 */	cmpw r3, r0
/* 80760F40  41 82 00 14 */	beq lbl_80760F54
/* 80760F44  40 80 00 40 */	bge lbl_80760F84
/* 80760F48  2C 03 00 00 */	cmpwi r3, 0
/* 80760F4C  41 82 00 20 */	beq lbl_80760F6C
/* 80760F50  48 00 00 34 */	b lbl_80760F84
lbl_80760F54:
/* 80760F54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80760F58  41 82 00 0C */	beq lbl_80760F64
/* 80760F5C  38 00 00 01 */	li r0, 1
/* 80760F60  48 00 00 28 */	b lbl_80760F88
lbl_80760F64:
/* 80760F64  38 00 00 02 */	li r0, 2
/* 80760F68  48 00 00 20 */	b lbl_80760F88
lbl_80760F6C:
/* 80760F6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80760F70  41 82 00 0C */	beq lbl_80760F7C
/* 80760F74  38 00 00 05 */	li r0, 5
/* 80760F78  48 00 00 10 */	b lbl_80760F88
lbl_80760F7C:
/* 80760F7C  38 00 00 03 */	li r0, 3
/* 80760F80  48 00 00 08 */	b lbl_80760F88
lbl_80760F84:
/* 80760F84  38 00 00 04 */	li r0, 4
lbl_80760F88:
/* 80760F88  2C 00 00 01 */	cmpwi r0, 1
/* 80760F8C  40 82 00 0C */	bne lbl_80760F98
/* 80760F90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80760F94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80760F98:
/* 80760F98  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80760F9C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80760FA0  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80760FA4:
/* 80760FA4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80760FA8  7C 04 07 74 */	extsb r4, r0
/* 80760FAC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80760FB0  38 00 00 00 */	li r0, 0
/* 80760FB4  90 01 00 08 */	stw r0, 8(r1)
/* 80760FB8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80760FBC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80760FC0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80760FC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80760FC8  38 80 00 00 */	li r4, 0
/* 80760FCC  38 A0 02 9C */	li r5, 0x29c
/* 80760FD0  7F 66 DB 78 */	mr r6, r27
/* 80760FD4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80760FD8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80760FDC  7F 89 E3 78 */	mr r9, r28
/* 80760FE0  39 40 00 FF */	li r10, 0xff
/* 80760FE4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80760FE8  4B 8E BA A9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80760FEC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80760FF0  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80760FF4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80760FF8  7F 43 D3 78 */	mr r3, r26
/* 80760FFC  38 81 00 28 */	addi r4, r1, 0x28
/* 80761000  38 A0 00 00 */	li r5, 0
/* 80761004  38 C0 FF FF */	li r6, -1
/* 80761008  81 9A 00 00 */	lwz r12, 0(r26)
/* 8076100C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80761010  7D 89 03 A6 */	mtctr r12
/* 80761014  4E 80 04 21 */	bctrl 
lbl_80761018:
/* 80761018  3A A0 00 00 */	li r21, 0
/* 8076101C  3A C0 00 00 */	li r22, 0
/* 80761020  3A 80 00 00 */	li r20, 0
/* 80761024  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80761028  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076102C  57 A0 10 3A */	slwi r0, r29, 2
/* 80761030  3B 17 00 28 */	addi r24, r23, 0x28
/* 80761034  7F 18 02 14 */	add r24, r24, r0
/* 80761038  3B B7 00 20 */	addi r29, r23, 0x20
/* 8076103C  7F BD 02 14 */	add r29, r29, r0
/* 80761040  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80761044:
/* 80761044  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80761048  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8076104C  7C 05 07 74 */	extsb r5, r0
/* 80761050  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80761054  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80761058  38 00 00 FF */	li r0, 0xff
/* 8076105C  90 01 00 08 */	stw r0, 8(r1)
/* 80761060  38 00 00 00 */	li r0, 0
/* 80761064  90 01 00 0C */	stw r0, 0xc(r1)
/* 80761068  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8076106C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80761070  93 01 00 18 */	stw r24, 0x18(r1)
/* 80761074  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80761078  38 A0 00 00 */	li r5, 0
/* 8076107C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80761080  7F 67 DB 78 */	mr r7, r27
/* 80761084  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80761088  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8076108C  7F 8A E3 78 */	mr r10, r28
/* 80761090  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80761094  4B 8E C4 39 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80761098  7C 7E B9 2E */	stwx r3, r30, r23
/* 8076109C  3A B5 00 01 */	addi r21, r21, 1
/* 807610A0  2C 15 00 03 */	cmpwi r21, 3
/* 807610A4  3A D6 00 02 */	addi r22, r22, 2
/* 807610A8  3A 94 00 04 */	addi r20, r20, 4
/* 807610AC  41 80 FF 98 */	blt lbl_80761044
/* 807610B0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807610B4  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 807610B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807610BC  7F 43 D3 78 */	mr r3, r26
/* 807610C0  38 81 00 24 */	addi r4, r1, 0x24
/* 807610C4  38 A0 00 00 */	li r5, 0
/* 807610C8  38 C0 FF FF */	li r6, -1
/* 807610CC  81 9A 00 00 */	lwz r12, 0(r26)
/* 807610D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807610D4  7D 89 03 A6 */	mtctr r12
/* 807610D8  4E 80 04 21 */	bctrl 
/* 807610DC  38 60 00 01 */	li r3, 1
/* 807610E0  48 00 00 10 */	b lbl_807610F0
lbl_807610E4:
/* 807610E4  38 00 00 00 */	li r0, 0
/* 807610E8  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807610EC  38 60 00 00 */	li r3, 0
lbl_807610F0:
/* 807610F0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807610F4  4B C0 11 0D */	bl _restgpr_19
/* 807610F8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807610FC  7C 08 03 A6 */	mtlr r0
/* 80761100  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80761104  4E 80 00 20 */	blr 
