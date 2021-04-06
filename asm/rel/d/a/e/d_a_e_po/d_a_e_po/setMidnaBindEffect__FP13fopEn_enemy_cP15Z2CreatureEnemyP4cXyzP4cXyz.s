lbl_80756E7C:
/* 80756E7C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80756E80  7C 08 02 A6 */	mflr r0
/* 80756E84  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80756E88  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80756E8C  4B C0 B3 29 */	bl _savegpr_19
/* 80756E90  7C 7E 1B 78 */	mr r30, r3
/* 80756E94  7C 9A 23 78 */	mr r26, r4
/* 80756E98  7C BB 2B 78 */	mr r27, r5
/* 80756E9C  7C DC 33 78 */	mr r28, r6
/* 80756EA0  3C 60 80 75 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80757AA4@ha */
/* 80756EA4  3A E3 7A A4 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x80757AA4@l */
/* 80756EA8  3C 60 80 75 */	lis r3, lit_3917@ha /* 0x807576FC@ha */
/* 80756EAC  3B E3 76 FC */	addi r31, r3, lit_3917@l /* 0x807576FC@l */
/* 80756EB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80756EB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80756EB8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80756EBC  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80756EC0  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 80756EC4  28 00 00 00 */	cmplwi r0, 0
/* 80756EC8  41 82 03 A4 */	beq lbl_8075726C
/* 80756ECC  7F C4 F3 78 */	mr r4, r30
/* 80756ED0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80756ED4  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80756ED8  7D 89 03 A6 */	mtctr r12
/* 80756EDC  4E 80 04 21 */	bctrl 
/* 80756EE0  2C 03 00 00 */	cmpwi r3, 0
/* 80756EE4  41 82 03 88 */	beq lbl_8075726C
/* 80756EE8  4B A5 56 95 */	bl dKy_darkworld_check__Fv
/* 80756EEC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80756EF0  30 03 FF FF */	addic r0, r3, -1
/* 80756EF4  7F A0 19 10 */	subfe r29, r0, r3
/* 80756EF8  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80756EFC  28 00 00 00 */	cmplwi r0, 0
/* 80756F00  40 82 02 A0 */	bne lbl_807571A0
/* 80756F04  38 00 00 01 */	li r0, 1
/* 80756F08  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80756F0C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80756F10  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 80756F14  80 63 00 00 */	lwz r3, 0(r3)
/* 80756F18  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80756F1C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80756F20  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80756F24  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80756F28  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80756F2C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80756F30  4B BE F5 81 */	bl PSMTXCopy
/* 80756F34  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80756F38  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80756F3C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80756F40  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80756F44  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80756F48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80756F4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80756F50  38 81 00 4C */	addi r4, r1, 0x4c
/* 80756F54  38 A1 00 58 */	addi r5, r1, 0x58
/* 80756F58  4B BE FE 15 */	bl PSMTXMultVec
/* 80756F5C  38 61 00 34 */	addi r3, r1, 0x34
/* 80756F60  38 81 00 58 */	addi r4, r1, 0x58
/* 80756F64  7F 65 DB 78 */	mr r5, r27
/* 80756F68  4B B0 FB CD */	bl __mi__4cXyzCFRC3Vec
/* 80756F6C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80756F70  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80756F74  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80756F78  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80756F7C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80756F80  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80756F84  4B B1 06 F1 */	bl cM_atan2s__Fff
/* 80756F88  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80756F8C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80756F90  EC 20 00 32 */	fmuls f1, f0, f0
/* 80756F94  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80756F98  EC 00 00 32 */	fmuls f0, f0, f0
/* 80756F9C  EC 41 00 2A */	fadds f2, f1, f0
/* 80756FA0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80756FA4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80756FA8  40 81 00 0C */	ble lbl_80756FB4
/* 80756FAC  FC 00 10 34 */	frsqrte f0, f2
/* 80756FB0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80756FB4:
/* 80756FB4  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80756FB8  4B B1 06 BD */	bl cM_atan2s__Fff
/* 80756FBC  7C 03 00 D0 */	neg r0, r3
/* 80756FC0  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80756FC4  38 80 00 00 */	li r4, 0
/* 80756FC8  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80756FCC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80756FD0  7C 00 07 74 */	extsb r0, r0
/* 80756FD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80756FD8  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80756FDC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80756FE0  57 A5 10 3A */	slwi r5, r29, 2
/* 80756FE4  90 81 00 08 */	stw r4, 8(r1)
/* 80756FE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80756FEC  3A B7 00 20 */	addi r21, r23, 0x20
/* 80756FF0  7E B5 2A 14 */	add r21, r21, r5
/* 80756FF4  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80756FF8  3A D7 00 28 */	addi r22, r23, 0x28
/* 80756FFC  7E D6 2A 14 */	add r22, r22, r5
/* 80757000  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80757004  90 81 00 18 */	stw r4, 0x18(r1)
/* 80757008  38 80 00 00 */	li r4, 0
/* 8075700C  38 A0 02 9B */	li r5, 0x29b
/* 80757010  7F 66 DB 78 */	mr r6, r27
/* 80757014  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80757018  39 01 00 2C */	addi r8, r1, 0x2c
/* 8075701C  7F 89 E3 78 */	mr r9, r28
/* 80757020  39 40 00 FF */	li r10, 0xff
/* 80757024  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80757028  4B 8F 5A 69 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075702C  7C 79 1B 79 */	or. r25, r3, r3
/* 80757030  41 82 00 FC */	beq lbl_8075712C
/* 80757034  38 61 00 40 */	addi r3, r1, 0x40
/* 80757038  4B BF 01 01 */	bl PSVECSquareMag
/* 8075703C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80757040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80757044  40 81 00 58 */	ble lbl_8075709C
/* 80757048  FC 00 08 34 */	frsqrte f0, f1
/* 8075704C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80757050  FC 44 00 32 */	fmul f2, f4, f0
/* 80757054  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80757058  FC 00 00 32 */	fmul f0, f0, f0
/* 8075705C  FC 01 00 32 */	fmul f0, f1, f0
/* 80757060  FC 03 00 28 */	fsub f0, f3, f0
/* 80757064  FC 02 00 32 */	fmul f0, f2, f0
/* 80757068  FC 44 00 32 */	fmul f2, f4, f0
/* 8075706C  FC 00 00 32 */	fmul f0, f0, f0
/* 80757070  FC 01 00 32 */	fmul f0, f1, f0
/* 80757074  FC 03 00 28 */	fsub f0, f3, f0
/* 80757078  FC 02 00 32 */	fmul f0, f2, f0
/* 8075707C  FC 44 00 32 */	fmul f2, f4, f0
/* 80757080  FC 00 00 32 */	fmul f0, f0, f0
/* 80757084  FC 01 00 32 */	fmul f0, f1, f0
/* 80757088  FC 03 00 28 */	fsub f0, f3, f0
/* 8075708C  FC 02 00 32 */	fmul f0, f2, f0
/* 80757090  FC 21 00 32 */	fmul f1, f1, f0
/* 80757094  FC 20 08 18 */	frsp f1, f1
/* 80757098  48 00 00 88 */	b lbl_80757120
lbl_8075709C:
/* 8075709C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807570A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807570A4  40 80 00 10 */	bge lbl_807570B4
/* 807570A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807570AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807570B0  48 00 00 70 */	b lbl_80757120
lbl_807570B4:
/* 807570B4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807570B8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807570BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807570C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 807570C4  7C 03 00 00 */	cmpw r3, r0
/* 807570C8  41 82 00 14 */	beq lbl_807570DC
/* 807570CC  40 80 00 40 */	bge lbl_8075710C
/* 807570D0  2C 03 00 00 */	cmpwi r3, 0
/* 807570D4  41 82 00 20 */	beq lbl_807570F4
/* 807570D8  48 00 00 34 */	b lbl_8075710C
lbl_807570DC:
/* 807570DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807570E0  41 82 00 0C */	beq lbl_807570EC
/* 807570E4  38 00 00 01 */	li r0, 1
/* 807570E8  48 00 00 28 */	b lbl_80757110
lbl_807570EC:
/* 807570EC  38 00 00 02 */	li r0, 2
/* 807570F0  48 00 00 20 */	b lbl_80757110
lbl_807570F4:
/* 807570F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807570F8  41 82 00 0C */	beq lbl_80757104
/* 807570FC  38 00 00 05 */	li r0, 5
/* 80757100  48 00 00 10 */	b lbl_80757110
lbl_80757104:
/* 80757104  38 00 00 03 */	li r0, 3
/* 80757108  48 00 00 08 */	b lbl_80757110
lbl_8075710C:
/* 8075710C  38 00 00 04 */	li r0, 4
lbl_80757110:
/* 80757110  2C 00 00 01 */	cmpwi r0, 1
/* 80757114  40 82 00 0C */	bne lbl_80757120
/* 80757118  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8075711C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80757120:
/* 80757120  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80757124  EC 00 00 72 */	fmuls f0, f0, f1
/* 80757128  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8075712C:
/* 8075712C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80757130  7C 04 07 74 */	extsb r4, r0
/* 80757134  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80757138  38 00 00 00 */	li r0, 0
/* 8075713C  90 01 00 08 */	stw r0, 8(r1)
/* 80757140  90 81 00 0C */	stw r4, 0xc(r1)
/* 80757144  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80757148  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8075714C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80757150  38 80 00 00 */	li r4, 0
/* 80757154  38 A0 02 9C */	li r5, 0x29c
/* 80757158  7F 66 DB 78 */	mr r6, r27
/* 8075715C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80757160  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80757164  7F 89 E3 78 */	mr r9, r28
/* 80757168  39 40 00 FF */	li r10, 0xff
/* 8075716C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80757170  4B 8F 59 21 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80757174  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80757178  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8075717C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80757180  7F 43 D3 78 */	mr r3, r26
/* 80757184  38 81 00 28 */	addi r4, r1, 0x28
/* 80757188  38 A0 00 00 */	li r5, 0
/* 8075718C  38 C0 FF FF */	li r6, -1
/* 80757190  81 9A 00 00 */	lwz r12, 0(r26)
/* 80757194  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80757198  7D 89 03 A6 */	mtctr r12
/* 8075719C  4E 80 04 21 */	bctrl 
lbl_807571A0:
/* 807571A0  3A A0 00 00 */	li r21, 0
/* 807571A4  3A C0 00 00 */	li r22, 0
/* 807571A8  3A 80 00 00 */	li r20, 0
/* 807571AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807571B0  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807571B4  57 A0 10 3A */	slwi r0, r29, 2
/* 807571B8  3B 17 00 28 */	addi r24, r23, 0x28
/* 807571BC  7F 18 02 14 */	add r24, r24, r0
/* 807571C0  3B B7 00 20 */	addi r29, r23, 0x20
/* 807571C4  7F BD 02 14 */	add r29, r29, r0
/* 807571C8  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807571CC:
/* 807571CC  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807571D0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807571D4  7C 05 07 74 */	extsb r5, r0
/* 807571D8  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807571DC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807571E0  38 00 00 FF */	li r0, 0xff
/* 807571E4  90 01 00 08 */	stw r0, 8(r1)
/* 807571E8  38 00 00 00 */	li r0, 0
/* 807571EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807571F0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807571F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807571F8  93 01 00 18 */	stw r24, 0x18(r1)
/* 807571FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80757200  38 A0 00 00 */	li r5, 0
/* 80757204  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80757208  7F 67 DB 78 */	mr r7, r27
/* 8075720C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80757210  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80757214  7F 8A E3 78 */	mr r10, r28
/* 80757218  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8075721C  4B 8F 62 B1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80757220  7C 7E B9 2E */	stwx r3, r30, r23
/* 80757224  3A B5 00 01 */	addi r21, r21, 1
/* 80757228  2C 15 00 03 */	cmpwi r21, 3
/* 8075722C  3A D6 00 02 */	addi r22, r22, 2
/* 80757230  3A 94 00 04 */	addi r20, r20, 4
/* 80757234  41 80 FF 98 */	blt lbl_807571CC
/* 80757238  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8075723C  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80757240  90 01 00 24 */	stw r0, 0x24(r1)
/* 80757244  7F 43 D3 78 */	mr r3, r26
/* 80757248  38 81 00 24 */	addi r4, r1, 0x24
/* 8075724C  38 A0 00 00 */	li r5, 0
/* 80757250  38 C0 FF FF */	li r6, -1
/* 80757254  81 9A 00 00 */	lwz r12, 0(r26)
/* 80757258  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8075725C  7D 89 03 A6 */	mtctr r12
/* 80757260  4E 80 04 21 */	bctrl 
/* 80757264  38 60 00 01 */	li r3, 1
/* 80757268  48 00 00 10 */	b lbl_80757278
lbl_8075726C:
/* 8075726C  38 00 00 00 */	li r0, 0
/* 80757270  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80757274  38 60 00 00 */	li r3, 0
lbl_80757278:
/* 80757278  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8075727C  4B C0 AF 85 */	bl _restgpr_19
/* 80757280  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80757284  7C 08 03 A6 */	mtlr r0
/* 80757288  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8075728C  4E 80 00 20 */	blr 
