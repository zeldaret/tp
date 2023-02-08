lbl_8067BFD4:
/* 8067BFD4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8067BFD8  7C 08 02 A6 */	mflr r0
/* 8067BFDC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8067BFE0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8067BFE4  4B CE 61 D1 */	bl _savegpr_19
/* 8067BFE8  7C 7E 1B 78 */	mr r30, r3
/* 8067BFEC  7C 9A 23 78 */	mr r26, r4
/* 8067BFF0  7C BB 2B 78 */	mr r27, r5
/* 8067BFF4  7C DC 33 78 */	mr r28, r6
/* 8067BFF8  3C 60 80 68 */	lis r3, cNullVec__6Z2Calc@ha /* 0x8067C540@ha */
/* 8067BFFC  3A E3 C5 40 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x8067C540@l */
/* 8067C000  3C 60 80 68 */	lis r3, lit_3789@ha /* 0x8067C3FC@ha */
/* 8067C004  3B E3 C3 FC */	addi r31, r3, lit_3789@l /* 0x8067C3FC@l */
/* 8067C008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067C00C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067C010  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8067C014  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8067C018  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 8067C01C  28 00 00 00 */	cmplwi r0, 0
/* 8067C020  41 82 03 A4 */	beq lbl_8067C3C4
/* 8067C024  7F C4 F3 78 */	mr r4, r30
/* 8067C028  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8067C02C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8067C030  7D 89 03 A6 */	mtctr r12
/* 8067C034  4E 80 04 21 */	bctrl 
/* 8067C038  2C 03 00 00 */	cmpwi r3, 0
/* 8067C03C  41 82 03 88 */	beq lbl_8067C3C4
/* 8067C040  4B B3 05 3D */	bl dKy_darkworld_check__Fv
/* 8067C044  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8067C048  30 03 FF FF */	addic r0, r3, -1
/* 8067C04C  7F A0 19 10 */	subfe r29, r0, r3
/* 8067C050  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 8067C054  28 00 00 00 */	cmplwi r0, 0
/* 8067C058  40 82 02 A0 */	bne lbl_8067C2F8
/* 8067C05C  38 00 00 01 */	li r0, 1
/* 8067C060  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8067C064  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8067C068  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 8067C06C  80 63 00 00 */	lwz r3, 0(r3)
/* 8067C070  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8067C074  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8067C078  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8067C07C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8067C080  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8067C084  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8067C088  4B CC A4 29 */	bl PSMTXCopy
/* 8067C08C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8067C090  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8067C094  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067C098  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8067C09C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8067C0A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8067C0A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8067C0A8  38 81 00 4C */	addi r4, r1, 0x4c
/* 8067C0AC  38 A1 00 58 */	addi r5, r1, 0x58
/* 8067C0B0  4B CC AC BD */	bl PSMTXMultVec
/* 8067C0B4  38 61 00 34 */	addi r3, r1, 0x34
/* 8067C0B8  38 81 00 58 */	addi r4, r1, 0x58
/* 8067C0BC  7F 65 DB 78 */	mr r5, r27
/* 8067C0C0  4B BE AA 75 */	bl __mi__4cXyzCFRC3Vec
/* 8067C0C4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8067C0C8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8067C0CC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8067C0D0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8067C0D4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8067C0D8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8067C0DC  4B BE B5 99 */	bl cM_atan2s__Fff
/* 8067C0E0  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 8067C0E4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8067C0E8  EC 20 00 32 */	fmuls f1, f0, f0
/* 8067C0EC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8067C0F0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8067C0F4  EC 41 00 2A */	fadds f2, f1, f0
/* 8067C0F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067C0FC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8067C100  40 81 00 0C */	ble lbl_8067C10C
/* 8067C104  FC 00 10 34 */	frsqrte f0, f2
/* 8067C108  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8067C10C:
/* 8067C10C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8067C110  4B BE B5 65 */	bl cM_atan2s__Fff
/* 8067C114  7C 03 00 D0 */	neg r0, r3
/* 8067C118  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8067C11C  38 80 00 00 */	li r4, 0
/* 8067C120  B0 81 00 30 */	sth r4, 0x30(r1)
/* 8067C124  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8067C128  7C 00 07 74 */	extsb r0, r0
/* 8067C12C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067C130  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067C134  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8067C138  57 A5 10 3A */	slwi r5, r29, 2
/* 8067C13C  90 81 00 08 */	stw r4, 8(r1)
/* 8067C140  90 01 00 0C */	stw r0, 0xc(r1)
/* 8067C144  3A B7 00 20 */	addi r21, r23, 0x20
/* 8067C148  7E B5 2A 14 */	add r21, r21, r5
/* 8067C14C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8067C150  3A D7 00 28 */	addi r22, r23, 0x28
/* 8067C154  7E D6 2A 14 */	add r22, r22, r5
/* 8067C158  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8067C15C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8067C160  38 80 00 00 */	li r4, 0
/* 8067C164  38 A0 02 9B */	li r5, 0x29b
/* 8067C168  7F 66 DB 78 */	mr r6, r27
/* 8067C16C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8067C170  39 01 00 2C */	addi r8, r1, 0x2c
/* 8067C174  7F 89 E3 78 */	mr r9, r28
/* 8067C178  39 40 00 FF */	li r10, 0xff
/* 8067C17C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067C180  4B 9D 09 11 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8067C184  7C 79 1B 79 */	or. r25, r3, r3
/* 8067C188  41 82 00 FC */	beq lbl_8067C284
/* 8067C18C  38 61 00 40 */	addi r3, r1, 0x40
/* 8067C190  4B CC AF A9 */	bl PSVECSquareMag
/* 8067C194  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067C198  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067C19C  40 81 00 58 */	ble lbl_8067C1F4
/* 8067C1A0  FC 00 08 34 */	frsqrte f0, f1
/* 8067C1A4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8067C1A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8067C1AC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8067C1B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8067C1B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8067C1B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8067C1BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8067C1C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8067C1C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8067C1C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8067C1CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8067C1D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8067C1D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8067C1D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8067C1DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8067C1E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8067C1E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8067C1E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8067C1EC  FC 20 08 18 */	frsp f1, f1
/* 8067C1F0  48 00 00 88 */	b lbl_8067C278
lbl_8067C1F4:
/* 8067C1F4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8067C1F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067C1FC  40 80 00 10 */	bge lbl_8067C20C
/* 8067C200  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8067C204  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8067C208  48 00 00 70 */	b lbl_8067C278
lbl_8067C20C:
/* 8067C20C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8067C210  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8067C214  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8067C218  3C 00 7F 80 */	lis r0, 0x7f80
/* 8067C21C  7C 03 00 00 */	cmpw r3, r0
/* 8067C220  41 82 00 14 */	beq lbl_8067C234
/* 8067C224  40 80 00 40 */	bge lbl_8067C264
/* 8067C228  2C 03 00 00 */	cmpwi r3, 0
/* 8067C22C  41 82 00 20 */	beq lbl_8067C24C
/* 8067C230  48 00 00 34 */	b lbl_8067C264
lbl_8067C234:
/* 8067C234  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8067C238  41 82 00 0C */	beq lbl_8067C244
/* 8067C23C  38 00 00 01 */	li r0, 1
/* 8067C240  48 00 00 28 */	b lbl_8067C268
lbl_8067C244:
/* 8067C244  38 00 00 02 */	li r0, 2
/* 8067C248  48 00 00 20 */	b lbl_8067C268
lbl_8067C24C:
/* 8067C24C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8067C250  41 82 00 0C */	beq lbl_8067C25C
/* 8067C254  38 00 00 05 */	li r0, 5
/* 8067C258  48 00 00 10 */	b lbl_8067C268
lbl_8067C25C:
/* 8067C25C  38 00 00 03 */	li r0, 3
/* 8067C260  48 00 00 08 */	b lbl_8067C268
lbl_8067C264:
/* 8067C264  38 00 00 04 */	li r0, 4
lbl_8067C268:
/* 8067C268  2C 00 00 01 */	cmpwi r0, 1
/* 8067C26C  40 82 00 0C */	bne lbl_8067C278
/* 8067C270  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8067C274  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8067C278:
/* 8067C278  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8067C27C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8067C280  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8067C284:
/* 8067C284  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8067C288  7C 04 07 74 */	extsb r4, r0
/* 8067C28C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8067C290  38 00 00 00 */	li r0, 0
/* 8067C294  90 01 00 08 */	stw r0, 8(r1)
/* 8067C298  90 81 00 0C */	stw r4, 0xc(r1)
/* 8067C29C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8067C2A0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8067C2A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8067C2A8  38 80 00 00 */	li r4, 0
/* 8067C2AC  38 A0 02 9C */	li r5, 0x29c
/* 8067C2B0  7F 66 DB 78 */	mr r6, r27
/* 8067C2B4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8067C2B8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8067C2BC  7F 89 E3 78 */	mr r9, r28
/* 8067C2C0  39 40 00 FF */	li r10, 0xff
/* 8067C2C4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067C2C8  4B 9D 07 C9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8067C2CC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 8067C2D0  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8067C2D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 8067C2D8  7F 43 D3 78 */	mr r3, r26
/* 8067C2DC  38 81 00 28 */	addi r4, r1, 0x28
/* 8067C2E0  38 A0 00 00 */	li r5, 0
/* 8067C2E4  38 C0 FF FF */	li r6, -1
/* 8067C2E8  81 9A 00 00 */	lwz r12, 0(r26)
/* 8067C2EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8067C2F0  7D 89 03 A6 */	mtctr r12
/* 8067C2F4  4E 80 04 21 */	bctrl 
lbl_8067C2F8:
/* 8067C2F8  3A A0 00 00 */	li r21, 0
/* 8067C2FC  3A C0 00 00 */	li r22, 0
/* 8067C300  3A 80 00 00 */	li r20, 0
/* 8067C304  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067C308  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067C30C  57 A0 10 3A */	slwi r0, r29, 2
/* 8067C310  3B 17 00 28 */	addi r24, r23, 0x28
/* 8067C314  7F 18 02 14 */	add r24, r24, r0
/* 8067C318  3B B7 00 20 */	addi r29, r23, 0x20
/* 8067C31C  7F BD 02 14 */	add r29, r29, r0
/* 8067C320  3A 77 00 30 */	addi r19, r23, 0x30
lbl_8067C324:
/* 8067C324  3A F4 05 9C */	addi r23, r20, 0x59c
/* 8067C328  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8067C32C  7C 05 07 74 */	extsb r5, r0
/* 8067C330  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8067C334  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8067C338  38 00 00 FF */	li r0, 0xff
/* 8067C33C  90 01 00 08 */	stw r0, 8(r1)
/* 8067C340  38 00 00 00 */	li r0, 0
/* 8067C344  90 01 00 0C */	stw r0, 0xc(r1)
/* 8067C348  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8067C34C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8067C350  93 01 00 18 */	stw r24, 0x18(r1)
/* 8067C354  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8067C358  38 A0 00 00 */	li r5, 0
/* 8067C35C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 8067C360  7F 67 DB 78 */	mr r7, r27
/* 8067C364  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8067C368  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8067C36C  7F 8A E3 78 */	mr r10, r28
/* 8067C370  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067C374  4B 9D 11 59 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8067C378  7C 7E B9 2E */	stwx r3, r30, r23
/* 8067C37C  3A B5 00 01 */	addi r21, r21, 1
/* 8067C380  2C 15 00 03 */	cmpwi r21, 3
/* 8067C384  3A D6 00 02 */	addi r22, r22, 2
/* 8067C388  3A 94 00 04 */	addi r20, r20, 4
/* 8067C38C  41 80 FF 98 */	blt lbl_8067C324
/* 8067C390  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8067C394  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 8067C398  90 01 00 24 */	stw r0, 0x24(r1)
/* 8067C39C  7F 43 D3 78 */	mr r3, r26
/* 8067C3A0  38 81 00 24 */	addi r4, r1, 0x24
/* 8067C3A4  38 A0 00 00 */	li r5, 0
/* 8067C3A8  38 C0 FF FF */	li r6, -1
/* 8067C3AC  81 9A 00 00 */	lwz r12, 0(r26)
/* 8067C3B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8067C3B4  7D 89 03 A6 */	mtctr r12
/* 8067C3B8  4E 80 04 21 */	bctrl 
/* 8067C3BC  38 60 00 01 */	li r3, 1
/* 8067C3C0  48 00 00 10 */	b lbl_8067C3D0
lbl_8067C3C4:
/* 8067C3C4  38 00 00 00 */	li r0, 0
/* 8067C3C8  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8067C3CC  38 60 00 00 */	li r3, 0
lbl_8067C3D0:
/* 8067C3D0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8067C3D4  4B CE 5E 2D */	bl _restgpr_19
/* 8067C3D8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8067C3DC  7C 08 03 A6 */	mtlr r0
/* 8067C3E0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8067C3E4  4E 80 00 20 */	blr 
