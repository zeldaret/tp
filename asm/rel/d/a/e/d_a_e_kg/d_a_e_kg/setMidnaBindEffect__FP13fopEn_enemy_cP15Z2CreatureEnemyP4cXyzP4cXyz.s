lbl_806F9F7C:
/* 806F9F7C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806F9F80  7C 08 02 A6 */	mflr r0
/* 806F9F84  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806F9F88  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806F9F8C  4B C6 82 29 */	bl _savegpr_19
/* 806F9F90  7C 7E 1B 78 */	mr r30, r3
/* 806F9F94  7C 9A 23 78 */	mr r26, r4
/* 806F9F98  7C BB 2B 78 */	mr r27, r5
/* 806F9F9C  7C DC 33 78 */	mr r28, r6
/* 806F9FA0  3C 60 80 70 */	lis r3, cNullVec__6Z2Calc@ha /* 0x806FA474@ha */
/* 806F9FA4  3A E3 A4 74 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x806FA474@l */
/* 806F9FA8  3C 60 80 70 */	lis r3, lit_3788@ha /* 0x806FA3A4@ha */
/* 806F9FAC  3B E3 A3 A4 */	addi r31, r3, lit_3788@l /* 0x806FA3A4@l */
/* 806F9FB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F9FB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F9FB8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806F9FBC  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806F9FC0  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 806F9FC4  28 00 00 00 */	cmplwi r0, 0
/* 806F9FC8  41 82 03 A4 */	beq lbl_806FA36C
/* 806F9FCC  7F C4 F3 78 */	mr r4, r30
/* 806F9FD0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806F9FD4  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806F9FD8  7D 89 03 A6 */	mtctr r12
/* 806F9FDC  4E 80 04 21 */	bctrl 
/* 806F9FE0  2C 03 00 00 */	cmpwi r3, 0
/* 806F9FE4  41 82 03 88 */	beq lbl_806FA36C
/* 806F9FE8  4B AB 25 95 */	bl dKy_darkworld_check__Fv
/* 806F9FEC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806F9FF0  30 03 FF FF */	addic r0, r3, -1
/* 806F9FF4  7F A0 19 10 */	subfe r29, r0, r3
/* 806F9FF8  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806F9FFC  28 00 00 00 */	cmplwi r0, 0
/* 806FA000  40 82 02 A0 */	bne lbl_806FA2A0
/* 806FA004  38 00 00 01 */	li r0, 1
/* 806FA008  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806FA00C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806FA010  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 806FA014  80 63 00 00 */	lwz r3, 0(r3)
/* 806FA018  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806FA01C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806FA020  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FA024  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806FA028  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FA02C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FA030  4B C4 C4 81 */	bl PSMTXCopy
/* 806FA034  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FA038  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806FA03C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FA040  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806FA044  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806FA048  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806FA04C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806FA050  38 81 00 4C */	addi r4, r1, 0x4c
/* 806FA054  38 A1 00 58 */	addi r5, r1, 0x58
/* 806FA058  4B C4 CD 15 */	bl PSMTXMultVec
/* 806FA05C  38 61 00 34 */	addi r3, r1, 0x34
/* 806FA060  38 81 00 58 */	addi r4, r1, 0x58
/* 806FA064  7F 65 DB 78 */	mr r5, r27
/* 806FA068  4B B6 CA CD */	bl __mi__4cXyzCFRC3Vec
/* 806FA06C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806FA070  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806FA074  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806FA078  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806FA07C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806FA080  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806FA084  4B B6 D5 F1 */	bl cM_atan2s__Fff
/* 806FA088  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806FA08C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806FA090  EC 20 00 32 */	fmuls f1, f0, f0
/* 806FA094  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806FA098  EC 00 00 32 */	fmuls f0, f0, f0
/* 806FA09C  EC 41 00 2A */	fadds f2, f1, f0
/* 806FA0A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FA0A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806FA0A8  40 81 00 0C */	ble lbl_806FA0B4
/* 806FA0AC  FC 00 10 34 */	frsqrte f0, f2
/* 806FA0B0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806FA0B4:
/* 806FA0B4  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806FA0B8  4B B6 D5 BD */	bl cM_atan2s__Fff
/* 806FA0BC  7C 03 00 D0 */	neg r0, r3
/* 806FA0C0  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806FA0C4  38 80 00 00 */	li r4, 0
/* 806FA0C8  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806FA0CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806FA0D0  7C 00 07 74 */	extsb r0, r0
/* 806FA0D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FA0D8  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FA0DC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806FA0E0  57 A5 10 3A */	slwi r5, r29, 2
/* 806FA0E4  90 81 00 08 */	stw r4, 8(r1)
/* 806FA0E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FA0EC  3A B7 00 20 */	addi r21, r23, 0x20
/* 806FA0F0  7E B5 2A 14 */	add r21, r21, r5
/* 806FA0F4  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806FA0F8  3A D7 00 28 */	addi r22, r23, 0x28
/* 806FA0FC  7E D6 2A 14 */	add r22, r22, r5
/* 806FA100  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806FA104  90 81 00 18 */	stw r4, 0x18(r1)
/* 806FA108  38 80 00 00 */	li r4, 0
/* 806FA10C  38 A0 02 9B */	li r5, 0x29b
/* 806FA110  7F 66 DB 78 */	mr r6, r27
/* 806FA114  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806FA118  39 01 00 2C */	addi r8, r1, 0x2c
/* 806FA11C  7F 89 E3 78 */	mr r9, r28
/* 806FA120  39 40 00 FF */	li r10, 0xff
/* 806FA124  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FA128  4B 95 29 69 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806FA12C  7C 79 1B 79 */	or. r25, r3, r3
/* 806FA130  41 82 00 FC */	beq lbl_806FA22C
/* 806FA134  38 61 00 40 */	addi r3, r1, 0x40
/* 806FA138  4B C4 D0 01 */	bl PSVECSquareMag
/* 806FA13C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FA140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FA144  40 81 00 58 */	ble lbl_806FA19C
/* 806FA148  FC 00 08 34 */	frsqrte f0, f1
/* 806FA14C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806FA150  FC 44 00 32 */	fmul f2, f4, f0
/* 806FA154  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806FA158  FC 00 00 32 */	fmul f0, f0, f0
/* 806FA15C  FC 01 00 32 */	fmul f0, f1, f0
/* 806FA160  FC 03 00 28 */	fsub f0, f3, f0
/* 806FA164  FC 02 00 32 */	fmul f0, f2, f0
/* 806FA168  FC 44 00 32 */	fmul f2, f4, f0
/* 806FA16C  FC 00 00 32 */	fmul f0, f0, f0
/* 806FA170  FC 01 00 32 */	fmul f0, f1, f0
/* 806FA174  FC 03 00 28 */	fsub f0, f3, f0
/* 806FA178  FC 02 00 32 */	fmul f0, f2, f0
/* 806FA17C  FC 44 00 32 */	fmul f2, f4, f0
/* 806FA180  FC 00 00 32 */	fmul f0, f0, f0
/* 806FA184  FC 01 00 32 */	fmul f0, f1, f0
/* 806FA188  FC 03 00 28 */	fsub f0, f3, f0
/* 806FA18C  FC 02 00 32 */	fmul f0, f2, f0
/* 806FA190  FC 21 00 32 */	fmul f1, f1, f0
/* 806FA194  FC 20 08 18 */	frsp f1, f1
/* 806FA198  48 00 00 88 */	b lbl_806FA220
lbl_806FA19C:
/* 806FA19C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806FA1A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FA1A4  40 80 00 10 */	bge lbl_806FA1B4
/* 806FA1A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806FA1AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806FA1B0  48 00 00 70 */	b lbl_806FA220
lbl_806FA1B4:
/* 806FA1B4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806FA1B8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806FA1BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806FA1C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806FA1C4  7C 03 00 00 */	cmpw r3, r0
/* 806FA1C8  41 82 00 14 */	beq lbl_806FA1DC
/* 806FA1CC  40 80 00 40 */	bge lbl_806FA20C
/* 806FA1D0  2C 03 00 00 */	cmpwi r3, 0
/* 806FA1D4  41 82 00 20 */	beq lbl_806FA1F4
/* 806FA1D8  48 00 00 34 */	b lbl_806FA20C
lbl_806FA1DC:
/* 806FA1DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806FA1E0  41 82 00 0C */	beq lbl_806FA1EC
/* 806FA1E4  38 00 00 01 */	li r0, 1
/* 806FA1E8  48 00 00 28 */	b lbl_806FA210
lbl_806FA1EC:
/* 806FA1EC  38 00 00 02 */	li r0, 2
/* 806FA1F0  48 00 00 20 */	b lbl_806FA210
lbl_806FA1F4:
/* 806FA1F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806FA1F8  41 82 00 0C */	beq lbl_806FA204
/* 806FA1FC  38 00 00 05 */	li r0, 5
/* 806FA200  48 00 00 10 */	b lbl_806FA210
lbl_806FA204:
/* 806FA204  38 00 00 03 */	li r0, 3
/* 806FA208  48 00 00 08 */	b lbl_806FA210
lbl_806FA20C:
/* 806FA20C  38 00 00 04 */	li r0, 4
lbl_806FA210:
/* 806FA210  2C 00 00 01 */	cmpwi r0, 1
/* 806FA214  40 82 00 0C */	bne lbl_806FA220
/* 806FA218  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806FA21C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806FA220:
/* 806FA220  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806FA224  EC 00 00 72 */	fmuls f0, f0, f1
/* 806FA228  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806FA22C:
/* 806FA22C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806FA230  7C 04 07 74 */	extsb r4, r0
/* 806FA234  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806FA238  38 00 00 00 */	li r0, 0
/* 806FA23C  90 01 00 08 */	stw r0, 8(r1)
/* 806FA240  90 81 00 0C */	stw r4, 0xc(r1)
/* 806FA244  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806FA248  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806FA24C  90 01 00 18 */	stw r0, 0x18(r1)
/* 806FA250  38 80 00 00 */	li r4, 0
/* 806FA254  38 A0 02 9C */	li r5, 0x29c
/* 806FA258  7F 66 DB 78 */	mr r6, r27
/* 806FA25C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806FA260  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806FA264  7F 89 E3 78 */	mr r9, r28
/* 806FA268  39 40 00 FF */	li r10, 0xff
/* 806FA26C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FA270  4B 95 28 21 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806FA274  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806FA278  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806FA27C  90 01 00 28 */	stw r0, 0x28(r1)
/* 806FA280  7F 43 D3 78 */	mr r3, r26
/* 806FA284  38 81 00 28 */	addi r4, r1, 0x28
/* 806FA288  38 A0 00 00 */	li r5, 0
/* 806FA28C  38 C0 FF FF */	li r6, -1
/* 806FA290  81 9A 00 00 */	lwz r12, 0(r26)
/* 806FA294  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FA298  7D 89 03 A6 */	mtctr r12
/* 806FA29C  4E 80 04 21 */	bctrl 
lbl_806FA2A0:
/* 806FA2A0  3A A0 00 00 */	li r21, 0
/* 806FA2A4  3A C0 00 00 */	li r22, 0
/* 806FA2A8  3A 80 00 00 */	li r20, 0
/* 806FA2AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FA2B0  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FA2B4  57 A0 10 3A */	slwi r0, r29, 2
/* 806FA2B8  3B 17 00 28 */	addi r24, r23, 0x28
/* 806FA2BC  7F 18 02 14 */	add r24, r24, r0
/* 806FA2C0  3B B7 00 20 */	addi r29, r23, 0x20
/* 806FA2C4  7F BD 02 14 */	add r29, r29, r0
/* 806FA2C8  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806FA2CC:
/* 806FA2CC  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806FA2D0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806FA2D4  7C 05 07 74 */	extsb r5, r0
/* 806FA2D8  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806FA2DC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806FA2E0  38 00 00 FF */	li r0, 0xff
/* 806FA2E4  90 01 00 08 */	stw r0, 8(r1)
/* 806FA2E8  38 00 00 00 */	li r0, 0
/* 806FA2EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FA2F0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806FA2F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806FA2F8  93 01 00 18 */	stw r24, 0x18(r1)
/* 806FA2FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806FA300  38 A0 00 00 */	li r5, 0
/* 806FA304  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806FA308  7F 67 DB 78 */	mr r7, r27
/* 806FA30C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806FA310  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806FA314  7F 8A E3 78 */	mr r10, r28
/* 806FA318  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FA31C  4B 95 31 B1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806FA320  7C 7E B9 2E */	stwx r3, r30, r23
/* 806FA324  3A B5 00 01 */	addi r21, r21, 1
/* 806FA328  2C 15 00 03 */	cmpwi r21, 3
/* 806FA32C  3A D6 00 02 */	addi r22, r22, 2
/* 806FA330  3A 94 00 04 */	addi r20, r20, 4
/* 806FA334  41 80 FF 98 */	blt lbl_806FA2CC
/* 806FA338  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806FA33C  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806FA340  90 01 00 24 */	stw r0, 0x24(r1)
/* 806FA344  7F 43 D3 78 */	mr r3, r26
/* 806FA348  38 81 00 24 */	addi r4, r1, 0x24
/* 806FA34C  38 A0 00 00 */	li r5, 0
/* 806FA350  38 C0 FF FF */	li r6, -1
/* 806FA354  81 9A 00 00 */	lwz r12, 0(r26)
/* 806FA358  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806FA35C  7D 89 03 A6 */	mtctr r12
/* 806FA360  4E 80 04 21 */	bctrl 
/* 806FA364  38 60 00 01 */	li r3, 1
/* 806FA368  48 00 00 10 */	b lbl_806FA378
lbl_806FA36C:
/* 806FA36C  38 00 00 00 */	li r0, 0
/* 806FA370  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806FA374  38 60 00 00 */	li r3, 0
lbl_806FA378:
/* 806FA378  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806FA37C  4B C6 7E 85 */	bl _restgpr_19
/* 806FA380  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806FA384  7C 08 03 A6 */	mtlr r0
/* 806FA388  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806FA38C  4E 80 00 20 */	blr 
