lbl_80834E70:
/* 80834E70  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80834E74  7C 08 02 A6 */	mflr r0
/* 80834E78  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80834E7C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80834E80  4B B2 D3 35 */	bl _savegpr_19
/* 80834E84  7C 7E 1B 78 */	mr r30, r3
/* 80834E88  7C 9A 23 78 */	mr r26, r4
/* 80834E8C  7C BB 2B 78 */	mr r27, r5
/* 80834E90  7C DC 33 78 */	mr r28, r6
/* 80834E94  3C 60 80 83 */	lis r3, cNullVec__6Z2Calc@ha /* 0x8083534C@ha */
/* 80834E98  3A E3 53 4C */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x8083534C@l */
/* 80834E9C  3C 60 80 83 */	lis r3, lit_3909@ha /* 0x808352D0@ha */
/* 80834EA0  3B E3 52 D0 */	addi r31, r3, lit_3909@l /* 0x808352D0@l */
/* 80834EA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80834EA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80834EAC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80834EB0  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80834EB4  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 80834EB8  28 00 00 00 */	cmplwi r0, 0
/* 80834EBC  41 82 03 A4 */	beq lbl_80835260
/* 80834EC0  7F C4 F3 78 */	mr r4, r30
/* 80834EC4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80834EC8  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80834ECC  7D 89 03 A6 */	mtctr r12
/* 80834ED0  4E 80 04 21 */	bctrl 
/* 80834ED4  2C 03 00 00 */	cmpwi r3, 0
/* 80834ED8  41 82 03 88 */	beq lbl_80835260
/* 80834EDC  4B 97 76 A1 */	bl dKy_darkworld_check__Fv
/* 80834EE0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80834EE4  30 03 FF FF */	addic r0, r3, -1
/* 80834EE8  7F A0 19 10 */	subfe r29, r0, r3
/* 80834EEC  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80834EF0  28 00 00 00 */	cmplwi r0, 0
/* 80834EF4  40 82 02 A0 */	bne lbl_80835194
/* 80834EF8  38 00 00 01 */	li r0, 1
/* 80834EFC  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80834F00  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80834F04  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 80834F08  80 63 00 00 */	lwz r3, 0(r3)
/* 80834F0C  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80834F10  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80834F14  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80834F18  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80834F1C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80834F20  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80834F24  4B B1 15 8D */	bl PSMTXCopy
/* 80834F28  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80834F2C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80834F30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80834F34  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80834F38  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80834F3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80834F40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80834F44  38 81 00 4C */	addi r4, r1, 0x4c
/* 80834F48  38 A1 00 58 */	addi r5, r1, 0x58
/* 80834F4C  4B B1 1E 21 */	bl PSMTXMultVec
/* 80834F50  38 61 00 34 */	addi r3, r1, 0x34
/* 80834F54  38 81 00 58 */	addi r4, r1, 0x58
/* 80834F58  7F 65 DB 78 */	mr r5, r27
/* 80834F5C  4B A3 1B D9 */	bl __mi__4cXyzCFRC3Vec
/* 80834F60  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80834F64  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80834F68  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80834F6C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80834F70  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80834F74  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80834F78  4B A3 26 FD */	bl cM_atan2s__Fff
/* 80834F7C  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80834F80  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80834F84  EC 20 00 32 */	fmuls f1, f0, f0
/* 80834F88  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80834F8C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80834F90  EC 41 00 2A */	fadds f2, f1, f0
/* 80834F94  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80834F98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80834F9C  40 81 00 0C */	ble lbl_80834FA8
/* 80834FA0  FC 00 10 34 */	frsqrte f0, f2
/* 80834FA4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80834FA8:
/* 80834FA8  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80834FAC  4B A3 26 C9 */	bl cM_atan2s__Fff
/* 80834FB0  7C 03 00 D0 */	neg r0, r3
/* 80834FB4  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80834FB8  38 80 00 00 */	li r4, 0
/* 80834FBC  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80834FC0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80834FC4  7C 00 07 74 */	extsb r0, r0
/* 80834FC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80834FCC  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80834FD0  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80834FD4  57 A5 10 3A */	slwi r5, r29, 2
/* 80834FD8  90 81 00 08 */	stw r4, 8(r1)
/* 80834FDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80834FE0  3A B7 00 20 */	addi r21, r23, 0x20
/* 80834FE4  7E B5 2A 14 */	add r21, r21, r5
/* 80834FE8  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80834FEC  3A D7 00 28 */	addi r22, r23, 0x28
/* 80834FF0  7E D6 2A 14 */	add r22, r22, r5
/* 80834FF4  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80834FF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80834FFC  38 80 00 00 */	li r4, 0
/* 80835000  38 A0 02 9B */	li r5, 0x29b
/* 80835004  7F 66 DB 78 */	mr r6, r27
/* 80835008  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8083500C  39 01 00 2C */	addi r8, r1, 0x2c
/* 80835010  7F 89 E3 78 */	mr r9, r28
/* 80835014  39 40 00 FF */	li r10, 0xff
/* 80835018  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8083501C  4B 81 7A 75 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80835020  7C 79 1B 79 */	or. r25, r3, r3
/* 80835024  41 82 00 FC */	beq lbl_80835120
/* 80835028  38 61 00 40 */	addi r3, r1, 0x40
/* 8083502C  4B B1 21 0D */	bl PSVECSquareMag
/* 80835030  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80835034  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80835038  40 81 00 58 */	ble lbl_80835090
/* 8083503C  FC 00 08 34 */	frsqrte f0, f1
/* 80835040  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80835044  FC 44 00 32 */	fmul f2, f4, f0
/* 80835048  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8083504C  FC 00 00 32 */	fmul f0, f0, f0
/* 80835050  FC 01 00 32 */	fmul f0, f1, f0
/* 80835054  FC 03 00 28 */	fsub f0, f3, f0
/* 80835058  FC 02 00 32 */	fmul f0, f2, f0
/* 8083505C  FC 44 00 32 */	fmul f2, f4, f0
/* 80835060  FC 00 00 32 */	fmul f0, f0, f0
/* 80835064  FC 01 00 32 */	fmul f0, f1, f0
/* 80835068  FC 03 00 28 */	fsub f0, f3, f0
/* 8083506C  FC 02 00 32 */	fmul f0, f2, f0
/* 80835070  FC 44 00 32 */	fmul f2, f4, f0
/* 80835074  FC 00 00 32 */	fmul f0, f0, f0
/* 80835078  FC 01 00 32 */	fmul f0, f1, f0
/* 8083507C  FC 03 00 28 */	fsub f0, f3, f0
/* 80835080  FC 02 00 32 */	fmul f0, f2, f0
/* 80835084  FC 21 00 32 */	fmul f1, f1, f0
/* 80835088  FC 20 08 18 */	frsp f1, f1
/* 8083508C  48 00 00 88 */	b lbl_80835114
lbl_80835090:
/* 80835090  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80835094  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80835098  40 80 00 10 */	bge lbl_808350A8
/* 8083509C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 808350A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 808350A4  48 00 00 70 */	b lbl_80835114
lbl_808350A8:
/* 808350A8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 808350AC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 808350B0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 808350B4  3C 00 7F 80 */	lis r0, 0x7f80
/* 808350B8  7C 03 00 00 */	cmpw r3, r0
/* 808350BC  41 82 00 14 */	beq lbl_808350D0
/* 808350C0  40 80 00 40 */	bge lbl_80835100
/* 808350C4  2C 03 00 00 */	cmpwi r3, 0
/* 808350C8  41 82 00 20 */	beq lbl_808350E8
/* 808350CC  48 00 00 34 */	b lbl_80835100
lbl_808350D0:
/* 808350D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 808350D4  41 82 00 0C */	beq lbl_808350E0
/* 808350D8  38 00 00 01 */	li r0, 1
/* 808350DC  48 00 00 28 */	b lbl_80835104
lbl_808350E0:
/* 808350E0  38 00 00 02 */	li r0, 2
/* 808350E4  48 00 00 20 */	b lbl_80835104
lbl_808350E8:
/* 808350E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 808350EC  41 82 00 0C */	beq lbl_808350F8
/* 808350F0  38 00 00 05 */	li r0, 5
/* 808350F4  48 00 00 10 */	b lbl_80835104
lbl_808350F8:
/* 808350F8  38 00 00 03 */	li r0, 3
/* 808350FC  48 00 00 08 */	b lbl_80835104
lbl_80835100:
/* 80835100  38 00 00 04 */	li r0, 4
lbl_80835104:
/* 80835104  2C 00 00 01 */	cmpwi r0, 1
/* 80835108  40 82 00 0C */	bne lbl_80835114
/* 8083510C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80835110  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80835114:
/* 80835114  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80835118  EC 00 00 72 */	fmuls f0, f0, f1
/* 8083511C  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80835120:
/* 80835120  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80835124  7C 04 07 74 */	extsb r4, r0
/* 80835128  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8083512C  38 00 00 00 */	li r0, 0
/* 80835130  90 01 00 08 */	stw r0, 8(r1)
/* 80835134  90 81 00 0C */	stw r4, 0xc(r1)
/* 80835138  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8083513C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80835140  90 01 00 18 */	stw r0, 0x18(r1)
/* 80835144  38 80 00 00 */	li r4, 0
/* 80835148  38 A0 02 9C */	li r5, 0x29c
/* 8083514C  7F 66 DB 78 */	mr r6, r27
/* 80835150  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80835154  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80835158  7F 89 E3 78 */	mr r9, r28
/* 8083515C  39 40 00 FF */	li r10, 0xff
/* 80835160  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80835164  4B 81 79 2D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80835168  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 8083516C  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80835170  90 01 00 28 */	stw r0, 0x28(r1)
/* 80835174  7F 43 D3 78 */	mr r3, r26
/* 80835178  38 81 00 28 */	addi r4, r1, 0x28
/* 8083517C  38 A0 00 00 */	li r5, 0
/* 80835180  38 C0 FF FF */	li r6, -1
/* 80835184  81 9A 00 00 */	lwz r12, 0(r26)
/* 80835188  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8083518C  7D 89 03 A6 */	mtctr r12
/* 80835190  4E 80 04 21 */	bctrl 
lbl_80835194:
/* 80835194  3A A0 00 00 */	li r21, 0
/* 80835198  3A C0 00 00 */	li r22, 0
/* 8083519C  3A 80 00 00 */	li r20, 0
/* 808351A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808351A4  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808351A8  57 A0 10 3A */	slwi r0, r29, 2
/* 808351AC  3B 17 00 28 */	addi r24, r23, 0x28
/* 808351B0  7F 18 02 14 */	add r24, r24, r0
/* 808351B4  3B B7 00 20 */	addi r29, r23, 0x20
/* 808351B8  7F BD 02 14 */	add r29, r29, r0
/* 808351BC  3A 77 00 30 */	addi r19, r23, 0x30
lbl_808351C0:
/* 808351C0  3A F4 05 9C */	addi r23, r20, 0x59c
/* 808351C4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 808351C8  7C 05 07 74 */	extsb r5, r0
/* 808351CC  7C 9E B8 2E */	lwzx r4, r30, r23
/* 808351D0  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 808351D4  38 00 00 FF */	li r0, 0xff
/* 808351D8  90 01 00 08 */	stw r0, 8(r1)
/* 808351DC  38 00 00 00 */	li r0, 0
/* 808351E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 808351E4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 808351E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 808351EC  93 01 00 18 */	stw r24, 0x18(r1)
/* 808351F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 808351F4  38 A0 00 00 */	li r5, 0
/* 808351F8  7C D3 B2 2E */	lhzx r6, r19, r22
/* 808351FC  7F 67 DB 78 */	mr r7, r27
/* 80835200  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80835204  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80835208  7F 8A E3 78 */	mr r10, r28
/* 8083520C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80835210  4B 81 82 BD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80835214  7C 7E B9 2E */	stwx r3, r30, r23
/* 80835218  3A B5 00 01 */	addi r21, r21, 1
/* 8083521C  2C 15 00 03 */	cmpwi r21, 3
/* 80835220  3A D6 00 02 */	addi r22, r22, 2
/* 80835224  3A 94 00 04 */	addi r20, r20, 4
/* 80835228  41 80 FF 98 */	blt lbl_808351C0
/* 8083522C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80835230  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80835234  90 01 00 24 */	stw r0, 0x24(r1)
/* 80835238  7F 43 D3 78 */	mr r3, r26
/* 8083523C  38 81 00 24 */	addi r4, r1, 0x24
/* 80835240  38 A0 00 00 */	li r5, 0
/* 80835244  38 C0 FF FF */	li r6, -1
/* 80835248  81 9A 00 00 */	lwz r12, 0(r26)
/* 8083524C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80835250  7D 89 03 A6 */	mtctr r12
/* 80835254  4E 80 04 21 */	bctrl 
/* 80835258  38 60 00 01 */	li r3, 1
/* 8083525C  48 00 00 10 */	b lbl_8083526C
lbl_80835260:
/* 80835260  38 00 00 00 */	li r0, 0
/* 80835264  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80835268  38 60 00 00 */	li r3, 0
lbl_8083526C:
/* 8083526C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80835270  4B B2 CF 91 */	bl _restgpr_19
/* 80835274  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80835278  7C 08 03 A6 */	mtlr r0
/* 8083527C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80835280  4E 80 00 20 */	blr 
