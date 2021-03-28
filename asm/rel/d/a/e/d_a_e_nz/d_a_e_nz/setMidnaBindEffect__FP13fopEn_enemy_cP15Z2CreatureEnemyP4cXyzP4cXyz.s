lbl_8072BD1C:
/* 8072BD1C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8072BD20  7C 08 02 A6 */	mflr r0
/* 8072BD24  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8072BD28  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8072BD2C  4B C3 64 88 */	b _savegpr_19
/* 8072BD30  7C 7E 1B 78 */	mr r30, r3
/* 8072BD34  7C 9A 23 78 */	mr r26, r4
/* 8072BD38  7C BB 2B 78 */	mr r27, r5
/* 8072BD3C  7C DC 33 78 */	mr r28, r6
/* 8072BD40  3C 60 80 73 */	lis r3, cNullVec__6Z2Calc@ha
/* 8072BD44  3A E3 C2 4C */	addi r23, r3, cNullVec__6Z2Calc@l
/* 8072BD48  3C 60 80 73 */	lis r3, lit_3789@ha
/* 8072BD4C  3B E3 C1 80 */	addi r31, r3, lit_3789@l
/* 8072BD50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072BD54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072BD58  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8072BD5C  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 8072BD60  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 8072BD64  28 00 00 00 */	cmplwi r0, 0
/* 8072BD68  41 82 03 A4 */	beq lbl_8072C10C
/* 8072BD6C  7F C4 F3 78 */	mr r4, r30
/* 8072BD70  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8072BD74  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8072BD78  7D 89 03 A6 */	mtctr r12
/* 8072BD7C  4E 80 04 21 */	bctrl 
/* 8072BD80  2C 03 00 00 */	cmpwi r3, 0
/* 8072BD84  41 82 03 88 */	beq lbl_8072C10C
/* 8072BD88  4B A8 07 F4 */	b dKy_darkworld_check__Fv
/* 8072BD8C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8072BD90  30 03 FF FF */	addic r0, r3, -1
/* 8072BD94  7F A0 19 10 */	subfe r29, r0, r3
/* 8072BD98  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 8072BD9C  28 00 00 00 */	cmplwi r0, 0
/* 8072BDA0  40 82 02 A0 */	bne lbl_8072C040
/* 8072BDA4  38 00 00 01 */	li r0, 1
/* 8072BDA8  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8072BDAC  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 8072BDB0  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 8072BDB4  80 63 00 00 */	lwz r3, 0(r3)
/* 8072BDB8  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8072BDBC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8072BDC0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8072BDC4  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8072BDC8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8072BDCC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8072BDD0  4B C1 A6 E0 */	b PSMTXCopy
/* 8072BDD4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8072BDD8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8072BDDC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072BDE0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8072BDE4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8072BDE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8072BDEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8072BDF0  38 81 00 4C */	addi r4, r1, 0x4c
/* 8072BDF4  38 A1 00 58 */	addi r5, r1, 0x58
/* 8072BDF8  4B C1 AF 74 */	b PSMTXMultVec
/* 8072BDFC  38 61 00 34 */	addi r3, r1, 0x34
/* 8072BE00  38 81 00 58 */	addi r4, r1, 0x58
/* 8072BE04  7F 65 DB 78 */	mr r5, r27
/* 8072BE08  4B B3 AD 2C */	b __mi__4cXyzCFRC3Vec
/* 8072BE0C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8072BE10  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8072BE14  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8072BE18  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8072BE1C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8072BE20  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8072BE24  4B B3 B8 50 */	b cM_atan2s__Fff
/* 8072BE28  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 8072BE2C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8072BE30  EC 20 00 32 */	fmuls f1, f0, f0
/* 8072BE34  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8072BE38  EC 00 00 32 */	fmuls f0, f0, f0
/* 8072BE3C  EC 41 00 2A */	fadds f2, f1, f0
/* 8072BE40  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072BE44  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8072BE48  40 81 00 0C */	ble lbl_8072BE54
/* 8072BE4C  FC 00 10 34 */	frsqrte f0, f2
/* 8072BE50  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8072BE54:
/* 8072BE54  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8072BE58  4B B3 B8 1C */	b cM_atan2s__Fff
/* 8072BE5C  7C 03 00 D0 */	neg r0, r3
/* 8072BE60  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8072BE64  38 80 00 00 */	li r4, 0
/* 8072BE68  B0 81 00 30 */	sth r4, 0x30(r1)
/* 8072BE6C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8072BE70  7C 00 07 74 */	extsb r0, r0
/* 8072BE74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072BE78  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 8072BE7C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8072BE80  57 A5 10 3A */	slwi r5, r29, 2
/* 8072BE84  90 81 00 08 */	stw r4, 8(r1)
/* 8072BE88  90 01 00 0C */	stw r0, 0xc(r1)
/* 8072BE8C  3A B7 00 20 */	addi r21, r23, 0x20
/* 8072BE90  7E B5 2A 14 */	add r21, r21, r5
/* 8072BE94  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8072BE98  3A D7 00 28 */	addi r22, r23, 0x28
/* 8072BE9C  7E D6 2A 14 */	add r22, r22, r5
/* 8072BEA0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8072BEA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8072BEA8  38 80 00 00 */	li r4, 0
/* 8072BEAC  38 A0 02 9B */	li r5, 0x29b
/* 8072BEB0  7F 66 DB 78 */	mr r6, r27
/* 8072BEB4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8072BEB8  39 01 00 2C */	addi r8, r1, 0x2c
/* 8072BEBC  7F 89 E3 78 */	mr r9, r28
/* 8072BEC0  39 40 00 FF */	li r10, 0xff
/* 8072BEC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8072BEC8  4B 92 0B C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8072BECC  7C 79 1B 79 */	or. r25, r3, r3
/* 8072BED0  41 82 00 FC */	beq lbl_8072BFCC
/* 8072BED4  38 61 00 40 */	addi r3, r1, 0x40
/* 8072BED8  4B C1 B2 60 */	b PSVECSquareMag
/* 8072BEDC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072BEE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072BEE4  40 81 00 58 */	ble lbl_8072BF3C
/* 8072BEE8  FC 00 08 34 */	frsqrte f0, f1
/* 8072BEEC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8072BEF0  FC 44 00 32 */	fmul f2, f4, f0
/* 8072BEF4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8072BEF8  FC 00 00 32 */	fmul f0, f0, f0
/* 8072BEFC  FC 01 00 32 */	fmul f0, f1, f0
/* 8072BF00  FC 03 00 28 */	fsub f0, f3, f0
/* 8072BF04  FC 02 00 32 */	fmul f0, f2, f0
/* 8072BF08  FC 44 00 32 */	fmul f2, f4, f0
/* 8072BF0C  FC 00 00 32 */	fmul f0, f0, f0
/* 8072BF10  FC 01 00 32 */	fmul f0, f1, f0
/* 8072BF14  FC 03 00 28 */	fsub f0, f3, f0
/* 8072BF18  FC 02 00 32 */	fmul f0, f2, f0
/* 8072BF1C  FC 44 00 32 */	fmul f2, f4, f0
/* 8072BF20  FC 00 00 32 */	fmul f0, f0, f0
/* 8072BF24  FC 01 00 32 */	fmul f0, f1, f0
/* 8072BF28  FC 03 00 28 */	fsub f0, f3, f0
/* 8072BF2C  FC 02 00 32 */	fmul f0, f2, f0
/* 8072BF30  FC 21 00 32 */	fmul f1, f1, f0
/* 8072BF34  FC 20 08 18 */	frsp f1, f1
/* 8072BF38  48 00 00 88 */	b lbl_8072BFC0
lbl_8072BF3C:
/* 8072BF3C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8072BF40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072BF44  40 80 00 10 */	bge lbl_8072BF54
/* 8072BF48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072BF4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8072BF50  48 00 00 70 */	b lbl_8072BFC0
lbl_8072BF54:
/* 8072BF54  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8072BF58  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8072BF5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8072BF60  3C 00 7F 80 */	lis r0, 0x7f80
/* 8072BF64  7C 03 00 00 */	cmpw r3, r0
/* 8072BF68  41 82 00 14 */	beq lbl_8072BF7C
/* 8072BF6C  40 80 00 40 */	bge lbl_8072BFAC
/* 8072BF70  2C 03 00 00 */	cmpwi r3, 0
/* 8072BF74  41 82 00 20 */	beq lbl_8072BF94
/* 8072BF78  48 00 00 34 */	b lbl_8072BFAC
lbl_8072BF7C:
/* 8072BF7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072BF80  41 82 00 0C */	beq lbl_8072BF8C
/* 8072BF84  38 00 00 01 */	li r0, 1
/* 8072BF88  48 00 00 28 */	b lbl_8072BFB0
lbl_8072BF8C:
/* 8072BF8C  38 00 00 02 */	li r0, 2
/* 8072BF90  48 00 00 20 */	b lbl_8072BFB0
lbl_8072BF94:
/* 8072BF94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072BF98  41 82 00 0C */	beq lbl_8072BFA4
/* 8072BF9C  38 00 00 05 */	li r0, 5
/* 8072BFA0  48 00 00 10 */	b lbl_8072BFB0
lbl_8072BFA4:
/* 8072BFA4  38 00 00 03 */	li r0, 3
/* 8072BFA8  48 00 00 08 */	b lbl_8072BFB0
lbl_8072BFAC:
/* 8072BFAC  38 00 00 04 */	li r0, 4
lbl_8072BFB0:
/* 8072BFB0  2C 00 00 01 */	cmpwi r0, 1
/* 8072BFB4  40 82 00 0C */	bne lbl_8072BFC0
/* 8072BFB8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072BFBC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8072BFC0:
/* 8072BFC0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8072BFC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8072BFC8  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8072BFCC:
/* 8072BFCC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8072BFD0  7C 04 07 74 */	extsb r4, r0
/* 8072BFD4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8072BFD8  38 00 00 00 */	li r0, 0
/* 8072BFDC  90 01 00 08 */	stw r0, 8(r1)
/* 8072BFE0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8072BFE4  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8072BFE8  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8072BFEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8072BFF0  38 80 00 00 */	li r4, 0
/* 8072BFF4  38 A0 02 9C */	li r5, 0x29c
/* 8072BFF8  7F 66 DB 78 */	mr r6, r27
/* 8072BFFC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8072C000  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8072C004  7F 89 E3 78 */	mr r9, r28
/* 8072C008  39 40 00 FF */	li r10, 0xff
/* 8072C00C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8072C010  4B 92 0A 80 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8072C014  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 8072C018  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8072C01C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8072C020  7F 43 D3 78 */	mr r3, r26
/* 8072C024  38 81 00 28 */	addi r4, r1, 0x28
/* 8072C028  38 A0 00 00 */	li r5, 0
/* 8072C02C  38 C0 FF FF */	li r6, -1
/* 8072C030  81 9A 00 00 */	lwz r12, 0(r26)
/* 8072C034  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072C038  7D 89 03 A6 */	mtctr r12
/* 8072C03C  4E 80 04 21 */	bctrl 
lbl_8072C040:
/* 8072C040  3A A0 00 00 */	li r21, 0
/* 8072C044  3A C0 00 00 */	li r22, 0
/* 8072C048  3A 80 00 00 */	li r20, 0
/* 8072C04C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072C050  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 8072C054  57 A0 10 3A */	slwi r0, r29, 2
/* 8072C058  3B 17 00 28 */	addi r24, r23, 0x28
/* 8072C05C  7F 18 02 14 */	add r24, r24, r0
/* 8072C060  3B B7 00 20 */	addi r29, r23, 0x20
/* 8072C064  7F BD 02 14 */	add r29, r29, r0
/* 8072C068  3A 77 00 30 */	addi r19, r23, 0x30
lbl_8072C06C:
/* 8072C06C  3A F4 05 9C */	addi r23, r20, 0x59c
/* 8072C070  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8072C074  7C 05 07 74 */	extsb r5, r0
/* 8072C078  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8072C07C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8072C080  38 00 00 FF */	li r0, 0xff
/* 8072C084  90 01 00 08 */	stw r0, 8(r1)
/* 8072C088  38 00 00 00 */	li r0, 0
/* 8072C08C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8072C090  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8072C094  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8072C098  93 01 00 18 */	stw r24, 0x18(r1)
/* 8072C09C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8072C0A0  38 A0 00 00 */	li r5, 0
/* 8072C0A4  7C D3 B2 2E */	lhzx r6, r19, r22
/* 8072C0A8  7F 67 DB 78 */	mr r7, r27
/* 8072C0AC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8072C0B0  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8072C0B4  7F 8A E3 78 */	mr r10, r28
/* 8072C0B8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8072C0BC  4B 92 14 10 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8072C0C0  7C 7E B9 2E */	stwx r3, r30, r23
/* 8072C0C4  3A B5 00 01 */	addi r21, r21, 1
/* 8072C0C8  2C 15 00 03 */	cmpwi r21, 3
/* 8072C0CC  3A D6 00 02 */	addi r22, r22, 2
/* 8072C0D0  3A 94 00 04 */	addi r20, r20, 4
/* 8072C0D4  41 80 FF 98 */	blt lbl_8072C06C
/* 8072C0D8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8072C0DC  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 8072C0E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072C0E4  7F 43 D3 78 */	mr r3, r26
/* 8072C0E8  38 81 00 24 */	addi r4, r1, 0x24
/* 8072C0EC  38 A0 00 00 */	li r5, 0
/* 8072C0F0  38 C0 FF FF */	li r6, -1
/* 8072C0F4  81 9A 00 00 */	lwz r12, 0(r26)
/* 8072C0F8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8072C0FC  7D 89 03 A6 */	mtctr r12
/* 8072C100  4E 80 04 21 */	bctrl 
/* 8072C104  38 60 00 01 */	li r3, 1
/* 8072C108  48 00 00 10 */	b lbl_8072C118
lbl_8072C10C:
/* 8072C10C  38 00 00 00 */	li r0, 0
/* 8072C110  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8072C114  38 60 00 00 */	li r3, 0
lbl_8072C118:
/* 8072C118  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8072C11C  4B C3 60 E4 */	b _restgpr_19
/* 8072C120  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8072C124  7C 08 03 A6 */	mtlr r0
/* 8072C128  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8072C12C  4E 80 00 20 */	blr 
