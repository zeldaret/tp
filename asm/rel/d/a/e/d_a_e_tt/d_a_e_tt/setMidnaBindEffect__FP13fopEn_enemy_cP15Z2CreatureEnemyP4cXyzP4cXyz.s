lbl_807C1B54:
/* 807C1B54  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807C1B58  7C 08 02 A6 */	mflr r0
/* 807C1B5C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807C1B60  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807C1B64  4B BA 06 51 */	bl _savegpr_19
/* 807C1B68  7C 7E 1B 78 */	mr r30, r3
/* 807C1B6C  7C 9A 23 78 */	mr r26, r4
/* 807C1B70  7C BB 2B 78 */	mr r27, r5
/* 807C1B74  7C DC 33 78 */	mr r28, r6
/* 807C1B78  3C 60 80 7C */	lis r3, cNullVec__6Z2Calc@ha /* 0x807C20C8@ha */
/* 807C1B7C  3A E3 20 C8 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x807C20C8@l */
/* 807C1B80  3C 60 80 7C */	lis r3, lit_3908@ha /* 0x807C1FB8@ha */
/* 807C1B84  3B E3 1F B8 */	addi r31, r3, lit_3908@l /* 0x807C1FB8@l */
/* 807C1B88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C1B8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C1B90  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807C1B94  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807C1B98  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 807C1B9C  28 00 00 00 */	cmplwi r0, 0
/* 807C1BA0  41 82 03 A4 */	beq lbl_807C1F44
/* 807C1BA4  7F C4 F3 78 */	mr r4, r30
/* 807C1BA8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807C1BAC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807C1BB0  7D 89 03 A6 */	mtctr r12
/* 807C1BB4  4E 80 04 21 */	bctrl 
/* 807C1BB8  2C 03 00 00 */	cmpwi r3, 0
/* 807C1BBC  41 82 03 88 */	beq lbl_807C1F44
/* 807C1BC0  4B 9E A9 BD */	bl dKy_darkworld_check__Fv
/* 807C1BC4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807C1BC8  30 03 FF FF */	addic r0, r3, -1
/* 807C1BCC  7F A0 19 10 */	subfe r29, r0, r3
/* 807C1BD0  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807C1BD4  28 00 00 00 */	cmplwi r0, 0
/* 807C1BD8  40 82 02 A0 */	bne lbl_807C1E78
/* 807C1BDC  38 00 00 01 */	li r0, 1
/* 807C1BE0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807C1BE4  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807C1BE8  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 807C1BEC  80 63 00 00 */	lwz r3, 0(r3)
/* 807C1BF0  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807C1BF4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807C1BF8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807C1BFC  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807C1C00  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807C1C04  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807C1C08  4B B8 48 A9 */	bl PSMTXCopy
/* 807C1C0C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807C1C10  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807C1C14  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C1C18  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807C1C1C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807C1C20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807C1C24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807C1C28  38 81 00 4C */	addi r4, r1, 0x4c
/* 807C1C2C  38 A1 00 58 */	addi r5, r1, 0x58
/* 807C1C30  4B B8 51 3D */	bl PSMTXMultVec
/* 807C1C34  38 61 00 34 */	addi r3, r1, 0x34
/* 807C1C38  38 81 00 58 */	addi r4, r1, 0x58
/* 807C1C3C  7F 65 DB 78 */	mr r5, r27
/* 807C1C40  4B AA 4E F5 */	bl __mi__4cXyzCFRC3Vec
/* 807C1C44  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807C1C48  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807C1C4C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807C1C50  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807C1C54  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807C1C58  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807C1C5C  4B AA 5A 19 */	bl cM_atan2s__Fff
/* 807C1C60  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807C1C64  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807C1C68  EC 20 00 32 */	fmuls f1, f0, f0
/* 807C1C6C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807C1C70  EC 00 00 32 */	fmuls f0, f0, f0
/* 807C1C74  EC 41 00 2A */	fadds f2, f1, f0
/* 807C1C78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C1C7C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807C1C80  40 81 00 0C */	ble lbl_807C1C8C
/* 807C1C84  FC 00 10 34 */	frsqrte f0, f2
/* 807C1C88  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807C1C8C:
/* 807C1C8C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807C1C90  4B AA 59 E5 */	bl cM_atan2s__Fff
/* 807C1C94  7C 03 00 D0 */	neg r0, r3
/* 807C1C98  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807C1C9C  38 80 00 00 */	li r4, 0
/* 807C1CA0  B0 81 00 30 */	sth r4, 0x30(r1)
/* 807C1CA4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807C1CA8  7C 00 07 74 */	extsb r0, r0
/* 807C1CAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C1CB0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C1CB4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807C1CB8  57 A5 10 3A */	slwi r5, r29, 2
/* 807C1CBC  90 81 00 08 */	stw r4, 8(r1)
/* 807C1CC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C1CC4  3A B7 00 20 */	addi r21, r23, 0x20
/* 807C1CC8  7E B5 2A 14 */	add r21, r21, r5
/* 807C1CCC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807C1CD0  3A D7 00 28 */	addi r22, r23, 0x28
/* 807C1CD4  7E D6 2A 14 */	add r22, r22, r5
/* 807C1CD8  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807C1CDC  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C1CE0  38 80 00 00 */	li r4, 0
/* 807C1CE4  38 A0 02 9B */	li r5, 0x29b
/* 807C1CE8  7F 66 DB 78 */	mr r6, r27
/* 807C1CEC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807C1CF0  39 01 00 2C */	addi r8, r1, 0x2c
/* 807C1CF4  7F 89 E3 78 */	mr r9, r28
/* 807C1CF8  39 40 00 FF */	li r10, 0xff
/* 807C1CFC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C1D00  4B 88 AD 91 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C1D04  7C 79 1B 79 */	or. r25, r3, r3
/* 807C1D08  41 82 00 FC */	beq lbl_807C1E04
/* 807C1D0C  38 61 00 40 */	addi r3, r1, 0x40
/* 807C1D10  4B B8 54 29 */	bl PSVECSquareMag
/* 807C1D14  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C1D18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C1D1C  40 81 00 58 */	ble lbl_807C1D74
/* 807C1D20  FC 00 08 34 */	frsqrte f0, f1
/* 807C1D24  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807C1D28  FC 44 00 32 */	fmul f2, f4, f0
/* 807C1D2C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807C1D30  FC 00 00 32 */	fmul f0, f0, f0
/* 807C1D34  FC 01 00 32 */	fmul f0, f1, f0
/* 807C1D38  FC 03 00 28 */	fsub f0, f3, f0
/* 807C1D3C  FC 02 00 32 */	fmul f0, f2, f0
/* 807C1D40  FC 44 00 32 */	fmul f2, f4, f0
/* 807C1D44  FC 00 00 32 */	fmul f0, f0, f0
/* 807C1D48  FC 01 00 32 */	fmul f0, f1, f0
/* 807C1D4C  FC 03 00 28 */	fsub f0, f3, f0
/* 807C1D50  FC 02 00 32 */	fmul f0, f2, f0
/* 807C1D54  FC 44 00 32 */	fmul f2, f4, f0
/* 807C1D58  FC 00 00 32 */	fmul f0, f0, f0
/* 807C1D5C  FC 01 00 32 */	fmul f0, f1, f0
/* 807C1D60  FC 03 00 28 */	fsub f0, f3, f0
/* 807C1D64  FC 02 00 32 */	fmul f0, f2, f0
/* 807C1D68  FC 21 00 32 */	fmul f1, f1, f0
/* 807C1D6C  FC 20 08 18 */	frsp f1, f1
/* 807C1D70  48 00 00 88 */	b lbl_807C1DF8
lbl_807C1D74:
/* 807C1D74  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807C1D78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C1D7C  40 80 00 10 */	bge lbl_807C1D8C
/* 807C1D80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807C1D84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807C1D88  48 00 00 70 */	b lbl_807C1DF8
lbl_807C1D8C:
/* 807C1D8C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807C1D90  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807C1D94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807C1D98  3C 00 7F 80 */	lis r0, 0x7f80
/* 807C1D9C  7C 03 00 00 */	cmpw r3, r0
/* 807C1DA0  41 82 00 14 */	beq lbl_807C1DB4
/* 807C1DA4  40 80 00 40 */	bge lbl_807C1DE4
/* 807C1DA8  2C 03 00 00 */	cmpwi r3, 0
/* 807C1DAC  41 82 00 20 */	beq lbl_807C1DCC
/* 807C1DB0  48 00 00 34 */	b lbl_807C1DE4
lbl_807C1DB4:
/* 807C1DB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C1DB8  41 82 00 0C */	beq lbl_807C1DC4
/* 807C1DBC  38 00 00 01 */	li r0, 1
/* 807C1DC0  48 00 00 28 */	b lbl_807C1DE8
lbl_807C1DC4:
/* 807C1DC4  38 00 00 02 */	li r0, 2
/* 807C1DC8  48 00 00 20 */	b lbl_807C1DE8
lbl_807C1DCC:
/* 807C1DCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C1DD0  41 82 00 0C */	beq lbl_807C1DDC
/* 807C1DD4  38 00 00 05 */	li r0, 5
/* 807C1DD8  48 00 00 10 */	b lbl_807C1DE8
lbl_807C1DDC:
/* 807C1DDC  38 00 00 03 */	li r0, 3
/* 807C1DE0  48 00 00 08 */	b lbl_807C1DE8
lbl_807C1DE4:
/* 807C1DE4  38 00 00 04 */	li r0, 4
lbl_807C1DE8:
/* 807C1DE8  2C 00 00 01 */	cmpwi r0, 1
/* 807C1DEC  40 82 00 0C */	bne lbl_807C1DF8
/* 807C1DF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807C1DF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807C1DF8:
/* 807C1DF8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807C1DFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 807C1E00  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_807C1E04:
/* 807C1E04  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807C1E08  7C 04 07 74 */	extsb r4, r0
/* 807C1E0C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807C1E10  38 00 00 00 */	li r0, 0
/* 807C1E14  90 01 00 08 */	stw r0, 8(r1)
/* 807C1E18  90 81 00 0C */	stw r4, 0xc(r1)
/* 807C1E1C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807C1E20  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807C1E24  90 01 00 18 */	stw r0, 0x18(r1)
/* 807C1E28  38 80 00 00 */	li r4, 0
/* 807C1E2C  38 A0 02 9C */	li r5, 0x29c
/* 807C1E30  7F 66 DB 78 */	mr r6, r27
/* 807C1E34  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807C1E38  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807C1E3C  7F 89 E3 78 */	mr r9, r28
/* 807C1E40  39 40 00 FF */	li r10, 0xff
/* 807C1E44  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C1E48  4B 88 AC 49 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C1E4C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 807C1E50  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 807C1E54  90 01 00 28 */	stw r0, 0x28(r1)
/* 807C1E58  7F 43 D3 78 */	mr r3, r26
/* 807C1E5C  38 81 00 28 */	addi r4, r1, 0x28
/* 807C1E60  38 A0 00 00 */	li r5, 0
/* 807C1E64  38 C0 FF FF */	li r6, -1
/* 807C1E68  81 9A 00 00 */	lwz r12, 0(r26)
/* 807C1E6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C1E70  7D 89 03 A6 */	mtctr r12
/* 807C1E74  4E 80 04 21 */	bctrl 
lbl_807C1E78:
/* 807C1E78  3A A0 00 00 */	li r21, 0
/* 807C1E7C  3A C0 00 00 */	li r22, 0
/* 807C1E80  3A 80 00 00 */	li r20, 0
/* 807C1E84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C1E88  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C1E8C  57 A0 10 3A */	slwi r0, r29, 2
/* 807C1E90  3B 17 00 28 */	addi r24, r23, 0x28
/* 807C1E94  7F 18 02 14 */	add r24, r24, r0
/* 807C1E98  3B B7 00 20 */	addi r29, r23, 0x20
/* 807C1E9C  7F BD 02 14 */	add r29, r29, r0
/* 807C1EA0  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807C1EA4:
/* 807C1EA4  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807C1EA8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807C1EAC  7C 05 07 74 */	extsb r5, r0
/* 807C1EB0  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807C1EB4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807C1EB8  38 00 00 FF */	li r0, 0xff
/* 807C1EBC  90 01 00 08 */	stw r0, 8(r1)
/* 807C1EC0  38 00 00 00 */	li r0, 0
/* 807C1EC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C1EC8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807C1ECC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807C1ED0  93 01 00 18 */	stw r24, 0x18(r1)
/* 807C1ED4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807C1ED8  38 A0 00 00 */	li r5, 0
/* 807C1EDC  7C D3 B2 2E */	lhzx r6, r19, r22
/* 807C1EE0  7F 67 DB 78 */	mr r7, r27
/* 807C1EE4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807C1EE8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807C1EEC  7F 8A E3 78 */	mr r10, r28
/* 807C1EF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C1EF4  4B 88 B5 D9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C1EF8  7C 7E B9 2E */	stwx r3, r30, r23
/* 807C1EFC  3A B5 00 01 */	addi r21, r21, 1
/* 807C1F00  2C 15 00 03 */	cmpwi r21, 3
/* 807C1F04  3A D6 00 02 */	addi r22, r22, 2
/* 807C1F08  3A 94 00 04 */	addi r20, r20, 4
/* 807C1F0C  41 80 FF 98 */	blt lbl_807C1EA4
/* 807C1F10  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807C1F14  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 807C1F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C1F1C  7F 43 D3 78 */	mr r3, r26
/* 807C1F20  38 81 00 24 */	addi r4, r1, 0x24
/* 807C1F24  38 A0 00 00 */	li r5, 0
/* 807C1F28  38 C0 FF FF */	li r6, -1
/* 807C1F2C  81 9A 00 00 */	lwz r12, 0(r26)
/* 807C1F30  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807C1F34  7D 89 03 A6 */	mtctr r12
/* 807C1F38  4E 80 04 21 */	bctrl 
/* 807C1F3C  38 60 00 01 */	li r3, 1
/* 807C1F40  48 00 00 10 */	b lbl_807C1F50
lbl_807C1F44:
/* 807C1F44  38 00 00 00 */	li r0, 0
/* 807C1F48  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807C1F4C  38 60 00 00 */	li r3, 0
lbl_807C1F50:
/* 807C1F50  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807C1F54  4B BA 02 AD */	bl _restgpr_19
/* 807C1F58  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807C1F5C  7C 08 03 A6 */	mtlr r0
/* 807C1F60  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807C1F64  4E 80 00 20 */	blr 
