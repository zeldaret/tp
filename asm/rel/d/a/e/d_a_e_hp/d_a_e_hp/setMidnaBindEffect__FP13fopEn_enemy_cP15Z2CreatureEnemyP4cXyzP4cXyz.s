lbl_806E9DCC:
/* 806E9DCC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806E9DD0  7C 08 02 A6 */	mflr r0
/* 806E9DD4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806E9DD8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806E9DDC  4B C7 83 D9 */	bl _savegpr_19
/* 806E9DE0  7C 7E 1B 78 */	mr r30, r3
/* 806E9DE4  7C 9A 23 78 */	mr r26, r4
/* 806E9DE8  7C BB 2B 78 */	mr r27, r5
/* 806E9DEC  7C DC 33 78 */	mr r28, r6
/* 806E9DF0  3C 60 80 6F */	lis r3, cNullVec__6Z2Calc@ha /* 0x806EA2E8@ha */
/* 806E9DF4  3A E3 A2 E8 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x806EA2E8@l */
/* 806E9DF8  3C 60 80 6F */	lis r3, lit_3905@ha /* 0x806EA1F4@ha */
/* 806E9DFC  3B E3 A1 F4 */	addi r31, r3, lit_3905@l /* 0x806EA1F4@l */
/* 806E9E00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E9E04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E9E08  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806E9E0C  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806E9E10  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 806E9E14  28 00 00 00 */	cmplwi r0, 0
/* 806E9E18  41 82 03 A4 */	beq lbl_806EA1BC
/* 806E9E1C  7F C4 F3 78 */	mr r4, r30
/* 806E9E20  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806E9E24  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806E9E28  7D 89 03 A6 */	mtctr r12
/* 806E9E2C  4E 80 04 21 */	bctrl 
/* 806E9E30  2C 03 00 00 */	cmpwi r3, 0
/* 806E9E34  41 82 03 88 */	beq lbl_806EA1BC
/* 806E9E38  4B AC 27 45 */	bl dKy_darkworld_check__Fv
/* 806E9E3C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806E9E40  30 03 FF FF */	addic r0, r3, -1
/* 806E9E44  7F A0 19 10 */	subfe r29, r0, r3
/* 806E9E48  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806E9E4C  28 00 00 00 */	cmplwi r0, 0
/* 806E9E50  40 82 02 A0 */	bne lbl_806EA0F0
/* 806E9E54  38 00 00 01 */	li r0, 1
/* 806E9E58  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806E9E5C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806E9E60  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 806E9E64  80 63 00 00 */	lwz r3, 0(r3)
/* 806E9E68  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806E9E6C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806E9E70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E9E74  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806E9E78  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E9E7C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E9E80  4B C5 C6 31 */	bl PSMTXCopy
/* 806E9E84  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806E9E88  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806E9E8C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E9E90  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806E9E94  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806E9E98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E9E9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E9EA0  38 81 00 4C */	addi r4, r1, 0x4c
/* 806E9EA4  38 A1 00 58 */	addi r5, r1, 0x58
/* 806E9EA8  4B C5 CE C5 */	bl PSMTXMultVec
/* 806E9EAC  38 61 00 34 */	addi r3, r1, 0x34
/* 806E9EB0  38 81 00 58 */	addi r4, r1, 0x58
/* 806E9EB4  7F 65 DB 78 */	mr r5, r27
/* 806E9EB8  4B B7 CC 7D */	bl __mi__4cXyzCFRC3Vec
/* 806E9EBC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806E9EC0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806E9EC4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806E9EC8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806E9ECC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806E9ED0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806E9ED4  4B B7 D7 A1 */	bl cM_atan2s__Fff
/* 806E9ED8  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806E9EDC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806E9EE0  EC 20 00 32 */	fmuls f1, f0, f0
/* 806E9EE4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806E9EE8  EC 00 00 32 */	fmuls f0, f0, f0
/* 806E9EEC  EC 41 00 2A */	fadds f2, f1, f0
/* 806E9EF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E9EF4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806E9EF8  40 81 00 0C */	ble lbl_806E9F04
/* 806E9EFC  FC 00 10 34 */	frsqrte f0, f2
/* 806E9F00  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806E9F04:
/* 806E9F04  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806E9F08  4B B7 D7 6D */	bl cM_atan2s__Fff
/* 806E9F0C  7C 03 00 D0 */	neg r0, r3
/* 806E9F10  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806E9F14  38 80 00 00 */	li r4, 0
/* 806E9F18  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806E9F1C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806E9F20  7C 00 07 74 */	extsb r0, r0
/* 806E9F24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E9F28  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E9F2C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806E9F30  57 A5 10 3A */	slwi r5, r29, 2
/* 806E9F34  90 81 00 08 */	stw r4, 8(r1)
/* 806E9F38  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E9F3C  3A B7 00 20 */	addi r21, r23, 0x20
/* 806E9F40  7E B5 2A 14 */	add r21, r21, r5
/* 806E9F44  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806E9F48  3A D7 00 28 */	addi r22, r23, 0x28
/* 806E9F4C  7E D6 2A 14 */	add r22, r22, r5
/* 806E9F50  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806E9F54  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E9F58  38 80 00 00 */	li r4, 0
/* 806E9F5C  38 A0 02 9B */	li r5, 0x29b
/* 806E9F60  7F 66 DB 78 */	mr r6, r27
/* 806E9F64  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E9F68  39 01 00 2C */	addi r8, r1, 0x2c
/* 806E9F6C  7F 89 E3 78 */	mr r9, r28
/* 806E9F70  39 40 00 FF */	li r10, 0xff
/* 806E9F74  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E9F78  4B 96 2B 19 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E9F7C  7C 79 1B 79 */	or. r25, r3, r3
/* 806E9F80  41 82 00 FC */	beq lbl_806EA07C
/* 806E9F84  38 61 00 40 */	addi r3, r1, 0x40
/* 806E9F88  4B C5 D1 B1 */	bl PSVECSquareMag
/* 806E9F8C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E9F90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E9F94  40 81 00 58 */	ble lbl_806E9FEC
/* 806E9F98  FC 00 08 34 */	frsqrte f0, f1
/* 806E9F9C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806E9FA0  FC 44 00 32 */	fmul f2, f4, f0
/* 806E9FA4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806E9FA8  FC 00 00 32 */	fmul f0, f0, f0
/* 806E9FAC  FC 01 00 32 */	fmul f0, f1, f0
/* 806E9FB0  FC 03 00 28 */	fsub f0, f3, f0
/* 806E9FB4  FC 02 00 32 */	fmul f0, f2, f0
/* 806E9FB8  FC 44 00 32 */	fmul f2, f4, f0
/* 806E9FBC  FC 00 00 32 */	fmul f0, f0, f0
/* 806E9FC0  FC 01 00 32 */	fmul f0, f1, f0
/* 806E9FC4  FC 03 00 28 */	fsub f0, f3, f0
/* 806E9FC8  FC 02 00 32 */	fmul f0, f2, f0
/* 806E9FCC  FC 44 00 32 */	fmul f2, f4, f0
/* 806E9FD0  FC 00 00 32 */	fmul f0, f0, f0
/* 806E9FD4  FC 01 00 32 */	fmul f0, f1, f0
/* 806E9FD8  FC 03 00 28 */	fsub f0, f3, f0
/* 806E9FDC  FC 02 00 32 */	fmul f0, f2, f0
/* 806E9FE0  FC 21 00 32 */	fmul f1, f1, f0
/* 806E9FE4  FC 20 08 18 */	frsp f1, f1
/* 806E9FE8  48 00 00 88 */	b lbl_806EA070
lbl_806E9FEC:
/* 806E9FEC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806E9FF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E9FF4  40 80 00 10 */	bge lbl_806EA004
/* 806E9FF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E9FFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806EA000  48 00 00 70 */	b lbl_806EA070
lbl_806EA004:
/* 806EA004  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806EA008  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806EA00C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806EA010  3C 00 7F 80 */	lis r0, 0x7f80
/* 806EA014  7C 03 00 00 */	cmpw r3, r0
/* 806EA018  41 82 00 14 */	beq lbl_806EA02C
/* 806EA01C  40 80 00 40 */	bge lbl_806EA05C
/* 806EA020  2C 03 00 00 */	cmpwi r3, 0
/* 806EA024  41 82 00 20 */	beq lbl_806EA044
/* 806EA028  48 00 00 34 */	b lbl_806EA05C
lbl_806EA02C:
/* 806EA02C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806EA030  41 82 00 0C */	beq lbl_806EA03C
/* 806EA034  38 00 00 01 */	li r0, 1
/* 806EA038  48 00 00 28 */	b lbl_806EA060
lbl_806EA03C:
/* 806EA03C  38 00 00 02 */	li r0, 2
/* 806EA040  48 00 00 20 */	b lbl_806EA060
lbl_806EA044:
/* 806EA044  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806EA048  41 82 00 0C */	beq lbl_806EA054
/* 806EA04C  38 00 00 05 */	li r0, 5
/* 806EA050  48 00 00 10 */	b lbl_806EA060
lbl_806EA054:
/* 806EA054  38 00 00 03 */	li r0, 3
/* 806EA058  48 00 00 08 */	b lbl_806EA060
lbl_806EA05C:
/* 806EA05C  38 00 00 04 */	li r0, 4
lbl_806EA060:
/* 806EA060  2C 00 00 01 */	cmpwi r0, 1
/* 806EA064  40 82 00 0C */	bne lbl_806EA070
/* 806EA068  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806EA06C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806EA070:
/* 806EA070  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806EA074  EC 00 00 72 */	fmuls f0, f0, f1
/* 806EA078  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806EA07C:
/* 806EA07C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806EA080  7C 04 07 74 */	extsb r4, r0
/* 806EA084  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806EA088  38 00 00 00 */	li r0, 0
/* 806EA08C  90 01 00 08 */	stw r0, 8(r1)
/* 806EA090  90 81 00 0C */	stw r4, 0xc(r1)
/* 806EA094  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806EA098  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806EA09C  90 01 00 18 */	stw r0, 0x18(r1)
/* 806EA0A0  38 80 00 00 */	li r4, 0
/* 806EA0A4  38 A0 02 9C */	li r5, 0x29c
/* 806EA0A8  7F 66 DB 78 */	mr r6, r27
/* 806EA0AC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806EA0B0  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806EA0B4  7F 89 E3 78 */	mr r9, r28
/* 806EA0B8  39 40 00 FF */	li r10, 0xff
/* 806EA0BC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806EA0C0  4B 96 29 D1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806EA0C4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806EA0C8  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806EA0CC  90 01 00 28 */	stw r0, 0x28(r1)
/* 806EA0D0  7F 43 D3 78 */	mr r3, r26
/* 806EA0D4  38 81 00 28 */	addi r4, r1, 0x28
/* 806EA0D8  38 A0 00 00 */	li r5, 0
/* 806EA0DC  38 C0 FF FF */	li r6, -1
/* 806EA0E0  81 9A 00 00 */	lwz r12, 0(r26)
/* 806EA0E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EA0E8  7D 89 03 A6 */	mtctr r12
/* 806EA0EC  4E 80 04 21 */	bctrl 
lbl_806EA0F0:
/* 806EA0F0  3A A0 00 00 */	li r21, 0
/* 806EA0F4  3A C0 00 00 */	li r22, 0
/* 806EA0F8  3A 80 00 00 */	li r20, 0
/* 806EA0FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EA100  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EA104  57 A0 10 3A */	slwi r0, r29, 2
/* 806EA108  3B 17 00 28 */	addi r24, r23, 0x28
/* 806EA10C  7F 18 02 14 */	add r24, r24, r0
/* 806EA110  3B B7 00 20 */	addi r29, r23, 0x20
/* 806EA114  7F BD 02 14 */	add r29, r29, r0
/* 806EA118  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806EA11C:
/* 806EA11C  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806EA120  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806EA124  7C 05 07 74 */	extsb r5, r0
/* 806EA128  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806EA12C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806EA130  38 00 00 FF */	li r0, 0xff
/* 806EA134  90 01 00 08 */	stw r0, 8(r1)
/* 806EA138  38 00 00 00 */	li r0, 0
/* 806EA13C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806EA140  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806EA144  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806EA148  93 01 00 18 */	stw r24, 0x18(r1)
/* 806EA14C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806EA150  38 A0 00 00 */	li r5, 0
/* 806EA154  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806EA158  7F 67 DB 78 */	mr r7, r27
/* 806EA15C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806EA160  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806EA164  7F 8A E3 78 */	mr r10, r28
/* 806EA168  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806EA16C  4B 96 33 61 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806EA170  7C 7E B9 2E */	stwx r3, r30, r23
/* 806EA174  3A B5 00 01 */	addi r21, r21, 1
/* 806EA178  2C 15 00 03 */	cmpwi r21, 3
/* 806EA17C  3A D6 00 02 */	addi r22, r22, 2
/* 806EA180  3A 94 00 04 */	addi r20, r20, 4
/* 806EA184  41 80 FF 98 */	blt lbl_806EA11C
/* 806EA188  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806EA18C  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806EA190  90 01 00 24 */	stw r0, 0x24(r1)
/* 806EA194  7F 43 D3 78 */	mr r3, r26
/* 806EA198  38 81 00 24 */	addi r4, r1, 0x24
/* 806EA19C  38 A0 00 00 */	li r5, 0
/* 806EA1A0  38 C0 FF FF */	li r6, -1
/* 806EA1A4  81 9A 00 00 */	lwz r12, 0(r26)
/* 806EA1A8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806EA1AC  7D 89 03 A6 */	mtctr r12
/* 806EA1B0  4E 80 04 21 */	bctrl 
/* 806EA1B4  38 60 00 01 */	li r3, 1
/* 806EA1B8  48 00 00 10 */	b lbl_806EA1C8
lbl_806EA1BC:
/* 806EA1BC  38 00 00 00 */	li r0, 0
/* 806EA1C0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806EA1C4  38 60 00 00 */	li r3, 0
lbl_806EA1C8:
/* 806EA1C8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806EA1CC  4B C7 80 35 */	bl _restgpr_19
/* 806EA1D0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806EA1D4  7C 08 03 A6 */	mtlr r0
/* 806EA1D8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806EA1DC  4E 80 00 20 */	blr 
