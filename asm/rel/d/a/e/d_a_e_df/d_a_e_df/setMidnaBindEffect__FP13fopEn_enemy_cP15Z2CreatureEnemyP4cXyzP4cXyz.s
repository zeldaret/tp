lbl_806A9B08:
/* 806A9B08  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806A9B0C  7C 08 02 A6 */	mflr r0
/* 806A9B10  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806A9B14  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806A9B18  4B CB 86 9D */	bl _savegpr_19
/* 806A9B1C  7C 7E 1B 78 */	mr r30, r3
/* 806A9B20  7C 9A 23 78 */	mr r26, r4
/* 806A9B24  7C BB 2B 78 */	mr r27, r5
/* 806A9B28  7C DC 33 78 */	mr r28, r6
/* 806A9B2C  3C 60 80 6B */	lis r3, cNullVec__6Z2Calc@ha /* 0x806AA004@ha */
/* 806A9B30  3A E3 A0 04 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x806AA004@l */
/* 806A9B34  3C 60 80 6B */	lis r3, lit_3916@ha /* 0x806A9F30@ha */
/* 806A9B38  3B E3 9F 30 */	addi r31, r3, lit_3916@l /* 0x806A9F30@l */
/* 806A9B3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A9B40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A9B44  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806A9B48  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806A9B4C  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 806A9B50  28 00 00 00 */	cmplwi r0, 0
/* 806A9B54  41 82 03 A4 */	beq lbl_806A9EF8
/* 806A9B58  7F C4 F3 78 */	mr r4, r30
/* 806A9B5C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806A9B60  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806A9B64  7D 89 03 A6 */	mtctr r12
/* 806A9B68  4E 80 04 21 */	bctrl 
/* 806A9B6C  2C 03 00 00 */	cmpwi r3, 0
/* 806A9B70  41 82 03 88 */	beq lbl_806A9EF8
/* 806A9B74  4B B0 2A 09 */	bl dKy_darkworld_check__Fv
/* 806A9B78  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806A9B7C  30 03 FF FF */	addic r0, r3, -1
/* 806A9B80  7F A0 19 10 */	subfe r29, r0, r3
/* 806A9B84  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806A9B88  28 00 00 00 */	cmplwi r0, 0
/* 806A9B8C  40 82 02 A0 */	bne lbl_806A9E2C
/* 806A9B90  38 00 00 01 */	li r0, 1
/* 806A9B94  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806A9B98  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806A9B9C  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 806A9BA0  80 63 00 00 */	lwz r3, 0(r3)
/* 806A9BA4  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806A9BA8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806A9BAC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A9BB0  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806A9BB4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A9BB8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A9BBC  4B C9 C8 F5 */	bl PSMTXCopy
/* 806A9BC0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A9BC4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806A9BC8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A9BCC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806A9BD0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806A9BD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A9BD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A9BDC  38 81 00 4C */	addi r4, r1, 0x4c
/* 806A9BE0  38 A1 00 58 */	addi r5, r1, 0x58
/* 806A9BE4  4B C9 D1 89 */	bl PSMTXMultVec
/* 806A9BE8  38 61 00 34 */	addi r3, r1, 0x34
/* 806A9BEC  38 81 00 58 */	addi r4, r1, 0x58
/* 806A9BF0  7F 65 DB 78 */	mr r5, r27
/* 806A9BF4  4B BB CF 41 */	bl __mi__4cXyzCFRC3Vec
/* 806A9BF8  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806A9BFC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806A9C00  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806A9C04  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806A9C08  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806A9C0C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806A9C10  4B BB DA 65 */	bl cM_atan2s__Fff
/* 806A9C14  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806A9C18  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806A9C1C  EC 20 00 32 */	fmuls f1, f0, f0
/* 806A9C20  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806A9C24  EC 00 00 32 */	fmuls f0, f0, f0
/* 806A9C28  EC 41 00 2A */	fadds f2, f1, f0
/* 806A9C2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A9C30  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806A9C34  40 81 00 0C */	ble lbl_806A9C40
/* 806A9C38  FC 00 10 34 */	frsqrte f0, f2
/* 806A9C3C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806A9C40:
/* 806A9C40  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806A9C44  4B BB DA 31 */	bl cM_atan2s__Fff
/* 806A9C48  7C 03 00 D0 */	neg r0, r3
/* 806A9C4C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806A9C50  38 80 00 00 */	li r4, 0
/* 806A9C54  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806A9C58  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A9C5C  7C 00 07 74 */	extsb r0, r0
/* 806A9C60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A9C64  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A9C68  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806A9C6C  57 A5 10 3A */	slwi r5, r29, 2
/* 806A9C70  90 81 00 08 */	stw r4, 8(r1)
/* 806A9C74  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A9C78  3A B7 00 20 */	addi r21, r23, 0x20
/* 806A9C7C  7E B5 2A 14 */	add r21, r21, r5
/* 806A9C80  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806A9C84  3A D7 00 28 */	addi r22, r23, 0x28
/* 806A9C88  7E D6 2A 14 */	add r22, r22, r5
/* 806A9C8C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806A9C90  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A9C94  38 80 00 00 */	li r4, 0
/* 806A9C98  38 A0 02 9B */	li r5, 0x29b
/* 806A9C9C  7F 66 DB 78 */	mr r6, r27
/* 806A9CA0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A9CA4  39 01 00 2C */	addi r8, r1, 0x2c
/* 806A9CA8  7F 89 E3 78 */	mr r9, r28
/* 806A9CAC  39 40 00 FF */	li r10, 0xff
/* 806A9CB0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A9CB4  4B 9A 2D DD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A9CB8  7C 79 1B 79 */	or. r25, r3, r3
/* 806A9CBC  41 82 00 FC */	beq lbl_806A9DB8
/* 806A9CC0  38 61 00 40 */	addi r3, r1, 0x40
/* 806A9CC4  4B C9 D4 75 */	bl PSVECSquareMag
/* 806A9CC8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A9CCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A9CD0  40 81 00 58 */	ble lbl_806A9D28
/* 806A9CD4  FC 00 08 34 */	frsqrte f0, f1
/* 806A9CD8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806A9CDC  FC 44 00 32 */	fmul f2, f4, f0
/* 806A9CE0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806A9CE4  FC 00 00 32 */	fmul f0, f0, f0
/* 806A9CE8  FC 01 00 32 */	fmul f0, f1, f0
/* 806A9CEC  FC 03 00 28 */	fsub f0, f3, f0
/* 806A9CF0  FC 02 00 32 */	fmul f0, f2, f0
/* 806A9CF4  FC 44 00 32 */	fmul f2, f4, f0
/* 806A9CF8  FC 00 00 32 */	fmul f0, f0, f0
/* 806A9CFC  FC 01 00 32 */	fmul f0, f1, f0
/* 806A9D00  FC 03 00 28 */	fsub f0, f3, f0
/* 806A9D04  FC 02 00 32 */	fmul f0, f2, f0
/* 806A9D08  FC 44 00 32 */	fmul f2, f4, f0
/* 806A9D0C  FC 00 00 32 */	fmul f0, f0, f0
/* 806A9D10  FC 01 00 32 */	fmul f0, f1, f0
/* 806A9D14  FC 03 00 28 */	fsub f0, f3, f0
/* 806A9D18  FC 02 00 32 */	fmul f0, f2, f0
/* 806A9D1C  FC 21 00 32 */	fmul f1, f1, f0
/* 806A9D20  FC 20 08 18 */	frsp f1, f1
/* 806A9D24  48 00 00 88 */	b lbl_806A9DAC
lbl_806A9D28:
/* 806A9D28  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806A9D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A9D30  40 80 00 10 */	bge lbl_806A9D40
/* 806A9D34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806A9D38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806A9D3C  48 00 00 70 */	b lbl_806A9DAC
lbl_806A9D40:
/* 806A9D40  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806A9D44  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806A9D48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806A9D4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806A9D50  7C 03 00 00 */	cmpw r3, r0
/* 806A9D54  41 82 00 14 */	beq lbl_806A9D68
/* 806A9D58  40 80 00 40 */	bge lbl_806A9D98
/* 806A9D5C  2C 03 00 00 */	cmpwi r3, 0
/* 806A9D60  41 82 00 20 */	beq lbl_806A9D80
/* 806A9D64  48 00 00 34 */	b lbl_806A9D98
lbl_806A9D68:
/* 806A9D68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A9D6C  41 82 00 0C */	beq lbl_806A9D78
/* 806A9D70  38 00 00 01 */	li r0, 1
/* 806A9D74  48 00 00 28 */	b lbl_806A9D9C
lbl_806A9D78:
/* 806A9D78  38 00 00 02 */	li r0, 2
/* 806A9D7C  48 00 00 20 */	b lbl_806A9D9C
lbl_806A9D80:
/* 806A9D80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A9D84  41 82 00 0C */	beq lbl_806A9D90
/* 806A9D88  38 00 00 05 */	li r0, 5
/* 806A9D8C  48 00 00 10 */	b lbl_806A9D9C
lbl_806A9D90:
/* 806A9D90  38 00 00 03 */	li r0, 3
/* 806A9D94  48 00 00 08 */	b lbl_806A9D9C
lbl_806A9D98:
/* 806A9D98  38 00 00 04 */	li r0, 4
lbl_806A9D9C:
/* 806A9D9C  2C 00 00 01 */	cmpwi r0, 1
/* 806A9DA0  40 82 00 0C */	bne lbl_806A9DAC
/* 806A9DA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806A9DA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806A9DAC:
/* 806A9DAC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806A9DB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 806A9DB4  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806A9DB8:
/* 806A9DB8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A9DBC  7C 04 07 74 */	extsb r4, r0
/* 806A9DC0  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806A9DC4  38 00 00 00 */	li r0, 0
/* 806A9DC8  90 01 00 08 */	stw r0, 8(r1)
/* 806A9DCC  90 81 00 0C */	stw r4, 0xc(r1)
/* 806A9DD0  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806A9DD4  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806A9DD8  90 01 00 18 */	stw r0, 0x18(r1)
/* 806A9DDC  38 80 00 00 */	li r4, 0
/* 806A9DE0  38 A0 02 9C */	li r5, 0x29c
/* 806A9DE4  7F 66 DB 78 */	mr r6, r27
/* 806A9DE8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A9DEC  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806A9DF0  7F 89 E3 78 */	mr r9, r28
/* 806A9DF4  39 40 00 FF */	li r10, 0xff
/* 806A9DF8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A9DFC  4B 9A 2C 95 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A9E00  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806A9E04  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806A9E08  90 01 00 28 */	stw r0, 0x28(r1)
/* 806A9E0C  7F 43 D3 78 */	mr r3, r26
/* 806A9E10  38 81 00 28 */	addi r4, r1, 0x28
/* 806A9E14  38 A0 00 00 */	li r5, 0
/* 806A9E18  38 C0 FF FF */	li r6, -1
/* 806A9E1C  81 9A 00 00 */	lwz r12, 0(r26)
/* 806A9E20  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A9E24  7D 89 03 A6 */	mtctr r12
/* 806A9E28  4E 80 04 21 */	bctrl 
lbl_806A9E2C:
/* 806A9E2C  3A A0 00 00 */	li r21, 0
/* 806A9E30  3A C0 00 00 */	li r22, 0
/* 806A9E34  3A 80 00 00 */	li r20, 0
/* 806A9E38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A9E3C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A9E40  57 A0 10 3A */	slwi r0, r29, 2
/* 806A9E44  3B 17 00 28 */	addi r24, r23, 0x28
/* 806A9E48  7F 18 02 14 */	add r24, r24, r0
/* 806A9E4C  3B B7 00 20 */	addi r29, r23, 0x20
/* 806A9E50  7F BD 02 14 */	add r29, r29, r0
/* 806A9E54  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806A9E58:
/* 806A9E58  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806A9E5C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A9E60  7C 05 07 74 */	extsb r5, r0
/* 806A9E64  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806A9E68  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806A9E6C  38 00 00 FF */	li r0, 0xff
/* 806A9E70  90 01 00 08 */	stw r0, 8(r1)
/* 806A9E74  38 00 00 00 */	li r0, 0
/* 806A9E78  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A9E7C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806A9E80  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806A9E84  93 01 00 18 */	stw r24, 0x18(r1)
/* 806A9E88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806A9E8C  38 A0 00 00 */	li r5, 0
/* 806A9E90  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806A9E94  7F 67 DB 78 */	mr r7, r27
/* 806A9E98  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806A9E9C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806A9EA0  7F 8A E3 78 */	mr r10, r28
/* 806A9EA4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A9EA8  4B 9A 36 25 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A9EAC  7C 7E B9 2E */	stwx r3, r30, r23
/* 806A9EB0  3A B5 00 01 */	addi r21, r21, 1
/* 806A9EB4  2C 15 00 03 */	cmpwi r21, 3
/* 806A9EB8  3A D6 00 02 */	addi r22, r22, 2
/* 806A9EBC  3A 94 00 04 */	addi r20, r20, 4
/* 806A9EC0  41 80 FF 98 */	blt lbl_806A9E58
/* 806A9EC4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806A9EC8  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806A9ECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A9ED0  7F 43 D3 78 */	mr r3, r26
/* 806A9ED4  38 81 00 24 */	addi r4, r1, 0x24
/* 806A9ED8  38 A0 00 00 */	li r5, 0
/* 806A9EDC  38 C0 FF FF */	li r6, -1
/* 806A9EE0  81 9A 00 00 */	lwz r12, 0(r26)
/* 806A9EE4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806A9EE8  7D 89 03 A6 */	mtctr r12
/* 806A9EEC  4E 80 04 21 */	bctrl 
/* 806A9EF0  38 60 00 01 */	li r3, 1
/* 806A9EF4  48 00 00 10 */	b lbl_806A9F04
lbl_806A9EF8:
/* 806A9EF8  38 00 00 00 */	li r0, 0
/* 806A9EFC  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806A9F00  38 60 00 00 */	li r3, 0
lbl_806A9F04:
/* 806A9F04  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806A9F08  4B CB 82 F9 */	bl _restgpr_19
/* 806A9F0C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806A9F10  7C 08 03 A6 */	mtlr r0
/* 806A9F14  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806A9F18  4E 80 00 20 */	blr 
