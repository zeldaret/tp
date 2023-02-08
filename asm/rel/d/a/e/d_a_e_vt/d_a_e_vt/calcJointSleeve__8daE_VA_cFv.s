lbl_807C2A4C:
/* 807C2A4C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 807C2A50  7C 08 02 A6 */	mflr r0
/* 807C2A54  90 01 01 24 */	stw r0, 0x124(r1)
/* 807C2A58  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 807C2A5C  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 807C2A60  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 807C2A64  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 807C2A68  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 807C2A6C  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 807C2A70  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 807C2A74  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 807C2A78  39 61 00 E0 */	addi r11, r1, 0xe0
/* 807C2A7C  4B B9 F7 39 */	bl _savegpr_19
/* 807C2A80  7C 77 1B 78 */	mr r23, r3
/* 807C2A84  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807C2A88  3B A3 EC A8 */	addi r29, r3, lit_3907@l /* 0x807CECA8@l */
/* 807C2A8C  C0 17 13 B8 */	lfs f0, 0x13b8(r23)
/* 807C2A90  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 807C2A94  C0 17 13 BC */	lfs f0, 0x13bc(r23)
/* 807C2A98  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807C2A9C  C0 17 13 C0 */	lfs f0, 0x13c0(r23)
/* 807C2AA0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 807C2AA4  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 807C2AA8  80 63 00 04 */	lwz r3, 4(r3)
/* 807C2AAC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807C2AB0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807C2AB4  38 63 02 10 */	addi r3, r3, 0x210
/* 807C2AB8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807C2ABC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807C2AC0  4B B8 39 F1 */	bl PSMTXCopy
/* 807C2AC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807C2AC8  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807C2ACC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807C2AD0  D0 17 13 B8 */	stfs f0, 0x13b8(r23)
/* 807C2AD4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807C2AD8  D0 17 13 BC */	stfs f0, 0x13bc(r23)
/* 807C2ADC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 807C2AE0  D0 17 13 C0 */	stfs f0, 0x13c0(r23)
/* 807C2AE4  7F C3 F3 78 */	mr r3, r30
/* 807C2AE8  38 81 00 10 */	addi r4, r1, 0x10
/* 807C2AEC  4B 84 A1 15 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 807C2AF0  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 807C2AF4  C3 83 00 1C */	lfs f28, 0x1c(r3)
/* 807C2AF8  7E E3 BB 78 */	mr r3, r23
/* 807C2AFC  38 80 00 12 */	li r4, 0x12
/* 807C2B00  48 00 0D BD */	bl checkBck__8daE_VA_cFi
/* 807C2B04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C2B08  41 82 00 14 */	beq lbl_807C2B1C
/* 807C2B0C  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 807C2B10  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 807C2B14  4C 41 13 82 */	cror 2, 1, 2
/* 807C2B18  41 82 00 84 */	beq lbl_807C2B9C
lbl_807C2B1C:
/* 807C2B1C  7E E3 BB 78 */	mr r3, r23
/* 807C2B20  38 80 00 13 */	li r4, 0x13
/* 807C2B24  48 00 0D 99 */	bl checkBck__8daE_VA_cFi
/* 807C2B28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C2B2C  41 82 00 14 */	beq lbl_807C2B40
/* 807C2B30  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 807C2B34  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 807C2B38  4C 40 13 82 */	cror 2, 0, 2
/* 807C2B3C  41 82 00 60 */	beq lbl_807C2B9C
lbl_807C2B40:
/* 807C2B40  7E E3 BB 78 */	mr r3, r23
/* 807C2B44  38 80 00 25 */	li r4, 0x25
/* 807C2B48  48 00 0D 75 */	bl checkBck__8daE_VA_cFi
/* 807C2B4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C2B50  41 82 00 14 */	beq lbl_807C2B64
/* 807C2B54  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 807C2B58  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 807C2B5C  4C 41 13 82 */	cror 2, 1, 2
/* 807C2B60  41 82 00 3C */	beq lbl_807C2B9C
lbl_807C2B64:
/* 807C2B64  7E E3 BB 78 */	mr r3, r23
/* 807C2B68  38 80 00 26 */	li r4, 0x26
/* 807C2B6C  48 00 0D 51 */	bl checkBck__8daE_VA_cFi
/* 807C2B70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C2B74  40 82 00 28 */	bne lbl_807C2B9C
/* 807C2B78  7E E3 BB 78 */	mr r3, r23
/* 807C2B7C  38 80 00 27 */	li r4, 0x27
/* 807C2B80  48 00 0D 3D */	bl checkBck__8daE_VA_cFi
/* 807C2B84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C2B88  41 82 00 1C */	beq lbl_807C2BA4
/* 807C2B8C  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 807C2B90  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 807C2B94  4C 40 13 82 */	cror 2, 0, 2
/* 807C2B98  40 82 00 0C */	bne lbl_807C2BA4
lbl_807C2B9C:
/* 807C2B9C  A8 17 14 68 */	lha r0, 0x1468(r23)
/* 807C2BA0  B0 01 00 12 */	sth r0, 0x12(r1)
lbl_807C2BA4:
/* 807C2BA4  38 61 00 78 */	addi r3, r1, 0x78
/* 807C2BA8  38 97 13 B8 */	addi r4, r23, 0x13b8
/* 807C2BAC  38 A1 00 90 */	addi r5, r1, 0x90
/* 807C2BB0  4B AA 3F 85 */	bl __mi__4cXyzCFRC3Vec
/* 807C2BB4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 807C2BB8  D0 17 13 C4 */	stfs f0, 0x13c4(r23)
/* 807C2BBC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 807C2BC0  D0 17 13 C8 */	stfs f0, 0x13c8(r23)
/* 807C2BC4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807C2BC8  D0 17 13 CC */	stfs f0, 0x13cc(r23)
/* 807C2BCC  C0 17 13 C4 */	lfs f0, 0x13c4(r23)
/* 807C2BD0  D0 17 13 D0 */	stfs f0, 0x13d0(r23)
/* 807C2BD4  C0 17 13 C8 */	lfs f0, 0x13c8(r23)
/* 807C2BD8  D0 17 13 D4 */	stfs f0, 0x13d4(r23)
/* 807C2BDC  C0 17 13 CC */	lfs f0, 0x13cc(r23)
/* 807C2BE0  D0 17 13 D8 */	stfs f0, 0x13d8(r23)
/* 807C2BE4  C0 17 13 B8 */	lfs f0, 0x13b8(r23)
/* 807C2BE8  D0 17 14 0C */	stfs f0, 0x140c(r23)
/* 807C2BEC  C0 17 13 BC */	lfs f0, 0x13bc(r23)
/* 807C2BF0  D0 17 14 10 */	stfs f0, 0x1410(r23)
/* 807C2BF4  C0 17 13 C0 */	lfs f0, 0x13c0(r23)
/* 807C2BF8  D0 17 14 14 */	stfs f0, 0x1414(r23)
/* 807C2BFC  80 77 13 B4 */	lwz r3, 0x13b4(r23)
/* 807C2C00  80 83 00 00 */	lwz r4, 0(r3)
/* 807C2C04  C0 17 14 0C */	lfs f0, 0x140c(r23)
/* 807C2C08  D0 04 00 00 */	stfs f0, 0(r4)
/* 807C2C0C  C0 17 14 10 */	lfs f0, 0x1410(r23)
/* 807C2C10  D0 04 00 04 */	stfs f0, 4(r4)
/* 807C2C14  C0 17 14 14 */	lfs f0, 0x1414(r23)
/* 807C2C18  D0 04 00 08 */	stfs f0, 8(r4)
/* 807C2C1C  A8 61 00 12 */	lha r3, 0x12(r1)
/* 807C2C20  38 00 80 00 */	li r0, -32768
/* 807C2C24  B0 17 14 66 */	sth r0, 0x1466(r23)
/* 807C2C28  B0 77 14 68 */	sth r3, 0x1468(r23)
/* 807C2C2C  B0 17 14 6A */	sth r0, 0x146a(r23)
/* 807C2C30  3B 00 00 01 */	li r24, 1
/* 807C2C34  3A C0 00 06 */	li r22, 6
/* 807C2C38  3A A0 00 0C */	li r21, 0xc
/* 807C2C3C  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807C2C40  3B E3 F4 C4 */	addi r31, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807C2C44  3B 24 00 0C */	addi r25, r4, 0xc
/* 807C2C48  C3 DD 00 04 */	lfs f30, 4(r29)
/* 807C2C4C  C3 FD 00 74 */	lfs f31, 0x74(r29)
/* 807C2C50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807C2C54  3A 83 D4 70 */	addi r20, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_807C2C58:
/* 807C2C58  2C 18 00 01 */	cmpwi r24, 1
/* 807C2C5C  40 82 00 08 */	bne lbl_807C2C64
/* 807C2C60  C3 BD 00 6C */	lfs f29, 0x6c(r29)
lbl_807C2C64:
/* 807C2C64  2C 18 00 02 */	cmpwi r24, 2
/* 807C2C68  40 82 00 08 */	bne lbl_807C2C70
/* 807C2C6C  C3 BD 00 6C */	lfs f29, 0x6c(r29)
lbl_807C2C70:
/* 807C2C70  2C 18 00 03 */	cmpwi r24, 3
/* 807C2C74  40 82 00 08 */	bne lbl_807C2C7C
/* 807C2C78  C3 BD 00 70 */	lfs f29, 0x70(r29)
lbl_807C2C7C:
/* 807C2C7C  2C 18 00 04 */	cmpwi r24, 4
/* 807C2C80  40 82 00 08 */	bne lbl_807C2C88
/* 807C2C84  C3 BD 00 70 */	lfs f29, 0x70(r29)
lbl_807C2C88:
/* 807C2C88  7F 57 AA 14 */	add r26, r23, r21
/* 807C2C8C  3B 9A 14 0C */	addi r28, r26, 0x140c
/* 807C2C90  7F 83 E3 78 */	mr r3, r28
/* 807C2C94  38 18 FF FF */	addi r0, r24, -1
/* 807C2C98  1C 80 00 0C */	mulli r4, r0, 0xc
/* 807C2C9C  3B 64 14 0C */	addi r27, r4, 0x140c
/* 807C2CA0  7F 77 DA 14 */	add r27, r23, r27
/* 807C2CA4  7F 64 DB 78 */	mr r4, r27
/* 807C2CA8  4B B8 46 F5 */	bl PSVECSquareDistance
/* 807C2CAC  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 807C2CB0  40 81 00 58 */	ble lbl_807C2D08
/* 807C2CB4  FC 00 08 34 */	frsqrte f0, f1
/* 807C2CB8  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 807C2CBC  FC 44 00 32 */	fmul f2, f4, f0
/* 807C2CC0  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 807C2CC4  FC 00 00 32 */	fmul f0, f0, f0
/* 807C2CC8  FC 01 00 32 */	fmul f0, f1, f0
/* 807C2CCC  FC 03 00 28 */	fsub f0, f3, f0
/* 807C2CD0  FC 02 00 32 */	fmul f0, f2, f0
/* 807C2CD4  FC 44 00 32 */	fmul f2, f4, f0
/* 807C2CD8  FC 00 00 32 */	fmul f0, f0, f0
/* 807C2CDC  FC 01 00 32 */	fmul f0, f1, f0
/* 807C2CE0  FC 03 00 28 */	fsub f0, f3, f0
/* 807C2CE4  FC 02 00 32 */	fmul f0, f2, f0
/* 807C2CE8  FC 44 00 32 */	fmul f2, f4, f0
/* 807C2CEC  FC 00 00 32 */	fmul f0, f0, f0
/* 807C2CF0  FC 01 00 32 */	fmul f0, f1, f0
/* 807C2CF4  FC 03 00 28 */	fsub f0, f3, f0
/* 807C2CF8  FC 02 00 32 */	fmul f0, f2, f0
/* 807C2CFC  FC 21 00 32 */	fmul f1, f1, f0
/* 807C2D00  FC 20 08 18 */	frsp f1, f1
/* 807C2D04  48 00 00 88 */	b lbl_807C2D8C
lbl_807C2D08:
/* 807C2D08  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 807C2D0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C2D10  40 80 00 10 */	bge lbl_807C2D20
/* 807C2D14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807C2D18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807C2D1C  48 00 00 70 */	b lbl_807C2D8C
lbl_807C2D20:
/* 807C2D20  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807C2D24  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807C2D28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807C2D2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807C2D30  7C 03 00 00 */	cmpw r3, r0
/* 807C2D34  41 82 00 14 */	beq lbl_807C2D48
/* 807C2D38  40 80 00 40 */	bge lbl_807C2D78
/* 807C2D3C  2C 03 00 00 */	cmpwi r3, 0
/* 807C2D40  41 82 00 20 */	beq lbl_807C2D60
/* 807C2D44  48 00 00 34 */	b lbl_807C2D78
lbl_807C2D48:
/* 807C2D48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C2D4C  41 82 00 0C */	beq lbl_807C2D58
/* 807C2D50  38 00 00 01 */	li r0, 1
/* 807C2D54  48 00 00 28 */	b lbl_807C2D7C
lbl_807C2D58:
/* 807C2D58  38 00 00 02 */	li r0, 2
/* 807C2D5C  48 00 00 20 */	b lbl_807C2D7C
lbl_807C2D60:
/* 807C2D60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C2D64  41 82 00 0C */	beq lbl_807C2D70
/* 807C2D68  38 00 00 05 */	li r0, 5
/* 807C2D6C  48 00 00 10 */	b lbl_807C2D7C
lbl_807C2D70:
/* 807C2D70  38 00 00 03 */	li r0, 3
/* 807C2D74  48 00 00 08 */	b lbl_807C2D7C
lbl_807C2D78:
/* 807C2D78  38 00 00 04 */	li r0, 4
lbl_807C2D7C:
/* 807C2D7C  2C 00 00 01 */	cmpwi r0, 1
/* 807C2D80  40 82 00 0C */	bne lbl_807C2D8C
/* 807C2D84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807C2D88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807C2D8C:
/* 807C2D8C  EC 1F E8 2A */	fadds f0, f31, f29
/* 807C2D90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C2D94  40 81 02 14 */	ble lbl_807C2FA8
/* 807C2D98  38 61 00 6C */	addi r3, r1, 0x6c
/* 807C2D9C  7F 64 DB 78 */	mr r4, r27
/* 807C2DA0  7F 85 E3 78 */	mr r5, r28
/* 807C2DA4  4B AA 3D 91 */	bl __mi__4cXyzCFRC3Vec
/* 807C2DA8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 807C2DAC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807C2DB0  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 807C2DB4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807C2DB8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 807C2DBC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807C2DC0  38 61 00 84 */	addi r3, r1, 0x84
/* 807C2DC4  4B B8 43 75 */	bl PSVECSquareMag
/* 807C2DC8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C2DCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C2DD0  40 81 00 58 */	ble lbl_807C2E28
/* 807C2DD4  FC 00 08 34 */	frsqrte f0, f1
/* 807C2DD8  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 807C2DDC  FC 44 00 32 */	fmul f2, f4, f0
/* 807C2DE0  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 807C2DE4  FC 00 00 32 */	fmul f0, f0, f0
/* 807C2DE8  FC 01 00 32 */	fmul f0, f1, f0
/* 807C2DEC  FC 03 00 28 */	fsub f0, f3, f0
/* 807C2DF0  FC 02 00 32 */	fmul f0, f2, f0
/* 807C2DF4  FC 44 00 32 */	fmul f2, f4, f0
/* 807C2DF8  FC 00 00 32 */	fmul f0, f0, f0
/* 807C2DFC  FC 01 00 32 */	fmul f0, f1, f0
/* 807C2E00  FC 03 00 28 */	fsub f0, f3, f0
/* 807C2E04  FC 02 00 32 */	fmul f0, f2, f0
/* 807C2E08  FC 44 00 32 */	fmul f2, f4, f0
/* 807C2E0C  FC 00 00 32 */	fmul f0, f0, f0
/* 807C2E10  FC 01 00 32 */	fmul f0, f1, f0
/* 807C2E14  FC 03 00 28 */	fsub f0, f3, f0
/* 807C2E18  FC 02 00 32 */	fmul f0, f2, f0
/* 807C2E1C  FF 81 00 32 */	fmul f28, f1, f0
/* 807C2E20  FF 80 E0 18 */	frsp f28, f28
/* 807C2E24  48 00 00 90 */	b lbl_807C2EB4
lbl_807C2E28:
/* 807C2E28  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 807C2E2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C2E30  40 80 00 10 */	bge lbl_807C2E40
/* 807C2E34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807C2E38  C3 83 0A E0 */	lfs f28, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807C2E3C  48 00 00 78 */	b lbl_807C2EB4
lbl_807C2E40:
/* 807C2E40  D0 21 00 08 */	stfs f1, 8(r1)
/* 807C2E44  80 81 00 08 */	lwz r4, 8(r1)
/* 807C2E48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807C2E4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807C2E50  7C 03 00 00 */	cmpw r3, r0
/* 807C2E54  41 82 00 14 */	beq lbl_807C2E68
/* 807C2E58  40 80 00 40 */	bge lbl_807C2E98
/* 807C2E5C  2C 03 00 00 */	cmpwi r3, 0
/* 807C2E60  41 82 00 20 */	beq lbl_807C2E80
/* 807C2E64  48 00 00 34 */	b lbl_807C2E98
lbl_807C2E68:
/* 807C2E68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C2E6C  41 82 00 0C */	beq lbl_807C2E78
/* 807C2E70  38 00 00 01 */	li r0, 1
/* 807C2E74  48 00 00 28 */	b lbl_807C2E9C
lbl_807C2E78:
/* 807C2E78  38 00 00 02 */	li r0, 2
/* 807C2E7C  48 00 00 20 */	b lbl_807C2E9C
lbl_807C2E80:
/* 807C2E80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C2E84  41 82 00 0C */	beq lbl_807C2E90
/* 807C2E88  38 00 00 05 */	li r0, 5
/* 807C2E8C  48 00 00 10 */	b lbl_807C2E9C
lbl_807C2E90:
/* 807C2E90  38 00 00 03 */	li r0, 3
/* 807C2E94  48 00 00 08 */	b lbl_807C2E9C
lbl_807C2E98:
/* 807C2E98  38 00 00 04 */	li r0, 4
lbl_807C2E9C:
/* 807C2E9C  2C 00 00 01 */	cmpwi r0, 1
/* 807C2EA0  40 82 00 10 */	bne lbl_807C2EB0
/* 807C2EA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807C2EA8  C3 83 0A E0 */	lfs f28, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807C2EAC  48 00 00 08 */	b lbl_807C2EB4
lbl_807C2EB0:
/* 807C2EB0  FF 80 08 90 */	fmr f28, f1
lbl_807C2EB4:
/* 807C2EB4  38 61 00 60 */	addi r3, r1, 0x60
/* 807C2EB8  38 81 00 84 */	addi r4, r1, 0x84
/* 807C2EBC  4B AA 40 8D */	bl normalizeZP__4cXyzFv
/* 807C2EC0  38 61 00 54 */	addi r3, r1, 0x54
/* 807C2EC4  38 81 00 84 */	addi r4, r1, 0x84
/* 807C2EC8  EC 3C E8 28 */	fsubs f1, f28, f29
/* 807C2ECC  4B AA 3C B9 */	bl __ml__4cXyzCFf
/* 807C2ED0  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 807C2ED4  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 807C2ED8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807C2EDC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807C2EE0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807C2EE4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807C2EE8  D0 3A 13 D0 */	stfs f1, 0x13d0(r26)
/* 807C2EEC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 807C2EF0  D0 1A 13 D8 */	stfs f0, 0x13d8(r26)
/* 807C2EF4  C0 3A 14 10 */	lfs f1, 0x1410(r26)
/* 807C2EF8  C0 1A 14 04 */	lfs f0, 0x1404(r26)
/* 807C2EFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807C2F00  FC 00 02 10 */	fabs f0, f0
/* 807C2F04  FC 00 00 18 */	frsp f0, f0
/* 807C2F08  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 807C2F0C  40 81 00 10 */	ble lbl_807C2F1C
/* 807C2F10  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 807C2F14  D0 1A 13 D4 */	stfs f0, 0x13d4(r26)
/* 807C2F18  48 00 01 10 */	b lbl_807C3028
lbl_807C2F1C:
/* 807C2F1C  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 807C2F20  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C2F24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C2F28  4C 41 13 82 */	cror 2, 1, 2
/* 807C2F2C  40 82 00 18 */	bne lbl_807C2F44
/* 807C2F30  C0 1A 13 D4 */	lfs f0, 0x13d4(r26)
/* 807C2F34  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807C2F38  40 80 00 F0 */	bge lbl_807C3028
/* 807C2F3C  D0 3A 13 D4 */	stfs f1, 0x13d4(r26)
/* 807C2F40  48 00 00 E8 */	b lbl_807C3028
lbl_807C2F44:
/* 807C2F44  C0 3A 13 D4 */	lfs f1, 0x13d4(r26)
/* 807C2F48  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807C2F4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807C2F50  D0 1A 13 D4 */	stfs f0, 0x13d4(r26)
/* 807C2F54  C0 5A 14 10 */	lfs f2, 0x1410(r26)
/* 807C2F58  C0 3A 14 04 */	lfs f1, 0x1404(r26)
/* 807C2F5C  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 807C2F60  EC 00 07 72 */	fmuls f0, f0, f29
/* 807C2F64  EC 01 00 28 */	fsubs f0, f1, f0
/* 807C2F68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807C2F6C  40 80 00 20 */	bge lbl_807C2F8C
/* 807C2F70  C0 3A 13 D4 */	lfs f1, 0x13d4(r26)
/* 807C2F74  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 807C2F78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C2F7C  4C 40 13 82 */	cror 2, 0, 2
/* 807C2F80  40 82 00 A8 */	bne lbl_807C3028
/* 807C2F84  D0 1A 13 D4 */	stfs f0, 0x13d4(r26)
/* 807C2F88  48 00 00 A0 */	b lbl_807C3028
lbl_807C2F8C:
/* 807C2F8C  C0 1A 13 D4 */	lfs f0, 0x13d4(r26)
/* 807C2F90  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807C2F94  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807C2F98  4C 40 13 82 */	cror 2, 0, 2
/* 807C2F9C  40 82 00 8C */	bne lbl_807C3028
/* 807C2FA0  D0 3A 13 D4 */	stfs f1, 0x13d4(r26)
/* 807C2FA4  48 00 00 84 */	b lbl_807C3028
lbl_807C2FA8:
/* 807C2FA8  C0 3A 13 D0 */	lfs f1, 0x13d0(r26)
/* 807C2FAC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 807C2FB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C2FB4  D0 1A 13 D0 */	stfs f0, 0x13d0(r26)
/* 807C2FB8  C0 3A 13 D8 */	lfs f1, 0x13d8(r26)
/* 807C2FBC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 807C2FC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C2FC4  D0 1A 13 D8 */	stfs f0, 0x13d8(r26)
/* 807C2FC8  C0 3A 13 D4 */	lfs f1, 0x13d4(r26)
/* 807C2FCC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807C2FD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807C2FD4  D0 1A 13 D4 */	stfs f0, 0x13d4(r26)
/* 807C2FD8  C0 5A 14 10 */	lfs f2, 0x1410(r26)
/* 807C2FDC  C0 3A 14 04 */	lfs f1, 0x1404(r26)
/* 807C2FE0  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 807C2FE4  EC 00 07 72 */	fmuls f0, f0, f29
/* 807C2FE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807C2FEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807C2FF0  40 80 00 20 */	bge lbl_807C3010
/* 807C2FF4  C0 3A 13 D4 */	lfs f1, 0x13d4(r26)
/* 807C2FF8  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 807C2FFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C3000  4C 40 13 82 */	cror 2, 0, 2
/* 807C3004  40 82 00 24 */	bne lbl_807C3028
/* 807C3008  D0 1A 13 D4 */	stfs f0, 0x13d4(r26)
/* 807C300C  48 00 00 1C */	b lbl_807C3028
lbl_807C3010:
/* 807C3010  C0 1A 13 D4 */	lfs f0, 0x13d4(r26)
/* 807C3014  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807C3018  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807C301C  4C 40 13 82 */	cror 2, 0, 2
/* 807C3020  40 82 00 08 */	bne lbl_807C3028
/* 807C3024  D0 3A 13 D4 */	stfs f1, 0x13d4(r26)
lbl_807C3028:
/* 807C3028  80 17 13 54 */	lwz r0, 0x1354(r23)
/* 807C302C  2C 00 00 00 */	cmpwi r0, 0
/* 807C3030  41 82 00 2C */	beq lbl_807C305C
/* 807C3034  C0 3A 13 D4 */	lfs f1, 0x13d4(r26)
/* 807C3038  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807C303C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807C3040  D0 1A 13 D4 */	stfs f0, 0x13d4(r26)
/* 807C3044  C0 1A 13 D4 */	lfs f0, 0x13d4(r26)
/* 807C3048  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807C304C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807C3050  4C 40 13 82 */	cror 2, 0, 2
/* 807C3054  40 82 00 08 */	bne lbl_807C305C
/* 807C3058  D0 3A 13 D4 */	stfs f1, 0x13d4(r26)
lbl_807C305C:
/* 807C305C  7F 83 E3 78 */	mr r3, r28
/* 807C3060  3A 7A 13 D0 */	addi r19, r26, 0x13d0
/* 807C3064  7E 64 9B 78 */	mr r4, r19
/* 807C3068  7F 85 E3 78 */	mr r5, r28
/* 807C306C  4B B8 40 25 */	bl PSVECAdd
/* 807C3070  C0 1A 14 10 */	lfs f0, 0x1410(r26)
/* 807C3074  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 807C3078  40 80 00 20 */	bge lbl_807C3098
/* 807C307C  7E 63 9B 78 */	mr r3, r19
/* 807C3080  7E 64 9B 78 */	mr r4, r19
/* 807C3084  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 807C3088  4B B8 40 51 */	bl PSVECScale
/* 807C308C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C3090  D0 1A 13 D4 */	stfs f0, 0x13d4(r26)
/* 807C3094  D0 1A 14 10 */	stfs f0, 0x1410(r26)
lbl_807C3098:
/* 807C3098  38 61 00 48 */	addi r3, r1, 0x48
/* 807C309C  7F 84 E3 78 */	mr r4, r28
/* 807C30A0  7F 65 DB 78 */	mr r5, r27
/* 807C30A4  4B AA 3A 91 */	bl __mi__4cXyzCFRC3Vec
/* 807C30A8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807C30AC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807C30B0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807C30B4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807C30B8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807C30BC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807C30C0  38 61 00 3C */	addi r3, r1, 0x3c
/* 807C30C4  38 81 00 84 */	addi r4, r1, 0x84
/* 807C30C8  4B AA 3E 81 */	bl normalizeZP__4cXyzFv
/* 807C30CC  38 61 00 30 */	addi r3, r1, 0x30
/* 807C30D0  38 81 00 84 */	addi r4, r1, 0x84
/* 807C30D4  FC 20 E8 90 */	fmr f1, f29
/* 807C30D8  4B AA 3A AD */	bl __ml__4cXyzCFf
/* 807C30DC  38 61 00 24 */	addi r3, r1, 0x24
/* 807C30E0  7F 64 DB 78 */	mr r4, r27
/* 807C30E4  38 A1 00 30 */	addi r5, r1, 0x30
/* 807C30E8  4B AA 39 FD */	bl __pl__4cXyzCFRC3Vec
/* 807C30EC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807C30F0  D0 1A 14 0C */	stfs f0, 0x140c(r26)
/* 807C30F4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807C30F8  D0 1A 14 10 */	stfs f0, 0x1410(r26)
/* 807C30FC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807C3100  D0 1A 14 14 */	stfs f0, 0x1414(r26)
/* 807C3104  C0 1A 14 0C */	lfs f0, 0x140c(r26)
/* 807C3108  D0 19 00 00 */	stfs f0, 0(r25)
/* 807C310C  C0 1A 14 10 */	lfs f0, 0x1410(r26)
/* 807C3110  D0 19 00 04 */	stfs f0, 4(r25)
/* 807C3114  C0 1A 14 14 */	lfs f0, 0x1414(r26)
/* 807C3118  D0 19 00 08 */	stfs f0, 8(r25)
/* 807C311C  38 61 00 18 */	addi r3, r1, 0x18
/* 807C3120  7F 24 CB 78 */	mr r4, r25
/* 807C3124  38 B9 FF F4 */	addi r5, r25, -12
/* 807C3128  4B AA 3A 0D */	bl __mi__4cXyzCFRC3Vec
/* 807C312C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807C3130  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807C3134  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807C3138  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807C313C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807C3140  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807C3144  7E 83 A3 78 */	mr r3, r20
/* 807C3148  A8 01 00 12 */	lha r0, 0x12(r1)
/* 807C314C  7C 00 00 D0 */	neg r0, r0
/* 807C3150  7C 04 07 34 */	extsh r4, r0
/* 807C3154  4B 84 92 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 807C3158  38 61 00 84 */	addi r3, r1, 0x84
/* 807C315C  4B 84 9C 79 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 807C3160  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807C3164  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807C3168  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 807C316C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 807C3170  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 807C3174  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 807C3178  4B AA 44 FD */	bl cM_atan2s__Fff
/* 807C317C  7E 77 B2 14 */	add r19, r23, r22
/* 807C3180  B0 73 14 66 */	sth r3, 0x1466(r19)
/* 807C3184  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 807C3188  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 807C318C  4B AA 44 E9 */	bl cM_atan2s__Fff
/* 807C3190  B0 73 14 68 */	sth r3, 0x1468(r19)
/* 807C3194  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 807C3198  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 807C319C  4B AA 44 D9 */	bl cM_atan2s__Fff
/* 807C31A0  B0 73 14 6A */	sth r3, 0x146a(r19)
/* 807C31A4  3B 18 00 01 */	addi r24, r24, 1
/* 807C31A8  2C 18 00 05 */	cmpwi r24, 5
/* 807C31AC  3A D6 00 06 */	addi r22, r22, 6
/* 807C31B0  3A B5 00 0C */	addi r21, r21, 0xc
/* 807C31B4  3B 39 00 0C */	addi r25, r25, 0xc
/* 807C31B8  41 80 FA A0 */	blt lbl_807C2C58
/* 807C31BC  A8 01 00 12 */	lha r0, 0x12(r1)
/* 807C31C0  B0 17 13 0C */	sth r0, 0x130c(r23)
/* 807C31C4  38 00 C0 00 */	li r0, -16384
/* 807C31C8  B0 17 13 0E */	sth r0, 0x130e(r23)
/* 807C31CC  3A 80 00 00 */	li r20, 0
/* 807C31D0  3B 00 00 00 */	li r24, 0
lbl_807C31D4:
/* 807C31D4  7E 77 C2 14 */	add r19, r23, r24
/* 807C31D8  A8 77 14 66 */	lha r3, 0x1466(r23)
/* 807C31DC  A8 13 14 6C */	lha r0, 0x146c(r19)
/* 807C31E0  7C 03 00 50 */	subf r0, r3, r0
/* 807C31E4  B0 13 14 4A */	sth r0, 0x144a(r19)
/* 807C31E8  A8 73 14 70 */	lha r3, 0x1470(r19)
/* 807C31EC  A8 17 14 6A */	lha r0, 0x146a(r23)
/* 807C31F0  7C 03 00 50 */	subf r0, r3, r0
/* 807C31F4  B0 13 14 4C */	sth r0, 0x144c(r19)
/* 807C31F8  A8 73 14 4C */	lha r3, 0x144c(r19)
/* 807C31FC  4B BA 1E D5 */	bl abs
/* 807C3200  2C 03 40 00 */	cmpwi r3, 0x4000
/* 807C3204  41 80 00 18 */	blt lbl_807C321C
/* 807C3208  A8 93 14 4A */	lha r4, 0x144a(r19)
/* 807C320C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 807C3210  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 807C3214  7C 04 00 50 */	subf r0, r4, r0
/* 807C3218  B0 13 14 4A */	sth r0, 0x144a(r19)
lbl_807C321C:
/* 807C321C  3A 94 00 01 */	addi r20, r20, 1
/* 807C3220  2C 14 00 04 */	cmpwi r20, 4
/* 807C3224  3B 18 00 06 */	addi r24, r24, 6
/* 807C3228  41 80 FF AC */	blt lbl_807C31D4
/* 807C322C  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 807C3230  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 807C3234  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 807C3238  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 807C323C  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 807C3240  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 807C3244  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 807C3248  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 807C324C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 807C3250  4B B9 EF B1 */	bl _restgpr_19
/* 807C3254  80 01 01 24 */	lwz r0, 0x124(r1)
/* 807C3258  7C 08 03 A6 */	mtlr r0
/* 807C325C  38 21 01 20 */	addi r1, r1, 0x120
/* 807C3260  4E 80 00 20 */	blr 
