lbl_807319E4:
/* 807319E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807319E8  7C 08 02 A6 */	mflr r0
/* 807319EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807319F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807319F4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807319F8  7C 7E 1B 78 */	mr r30, r3
/* 807319FC  3C 60 80 73 */	lis r3, lit_3911@ha /* 0x80735B28@ha */
/* 80731A00  3B E3 5B 28 */	addi r31, r3, lit_3911@l /* 0x80735B28@l */
/* 80731A04  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80731A08  38 9E 06 7C */	addi r4, r30, 0x67c
/* 80731A0C  4B B3 F1 F9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80731A10  B0 7E 06 D4 */	sth r3, 0x6d4(r30)
/* 80731A14  B0 7E 06 BC */	sth r3, 0x6bc(r30)
/* 80731A18  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80731A1C  2C 00 00 02 */	cmpwi r0, 2
/* 80731A20  40 82 00 40 */	bne lbl_80731A60
/* 80731A24  38 00 00 00 */	li r0, 0
/* 80731A28  98 1E 06 DE */	stb r0, 0x6de(r30)
/* 80731A2C  7F C3 F3 78 */	mr r3, r30
/* 80731A30  4B FF B3 79 */	bl setWatchMode__8daE_OC_cFv
/* 80731A34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80731A38  40 82 02 C8 */	bne lbl_80731D00
/* 80731A3C  7F C3 F3 78 */	mr r3, r30
/* 80731A40  4B FF B5 51 */	bl searchPlayer2__8daE_OC_cFv
/* 80731A44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80731A48  41 82 00 18 */	beq lbl_80731A60
/* 80731A4C  7F C3 F3 78 */	mr r3, r30
/* 80731A50  38 80 00 03 */	li r4, 3
/* 80731A54  38 A0 00 03 */	li r5, 3
/* 80731A58  4B FF C2 65 */	bl setActionMode__8daE_OC_cFii
/* 80731A5C  48 00 02 A4 */	b lbl_80731D00
lbl_80731A60:
/* 80731A60  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80731A64  2C 00 00 02 */	cmpwi r0, 2
/* 80731A68  41 82 00 F4 */	beq lbl_80731B5C
/* 80731A6C  40 80 00 14 */	bge lbl_80731A80
/* 80731A70  2C 00 00 00 */	cmpwi r0, 0
/* 80731A74  41 82 00 18 */	beq lbl_80731A8C
/* 80731A78  40 80 00 84 */	bge lbl_80731AFC
/* 80731A7C  48 00 02 84 */	b lbl_80731D00
lbl_80731A80:
/* 80731A80  2C 00 00 04 */	cmpwi r0, 4
/* 80731A84  40 80 02 7C */	bge lbl_80731D00
/* 80731A88  48 00 02 38 */	b lbl_80731CC0
lbl_80731A8C:
/* 80731A8C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80731A90  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80731A94  7F C3 F3 78 */	mr r3, r30
/* 80731A98  38 80 00 0D */	li r4, 0xd
/* 80731A9C  38 A0 00 00 */	li r5, 0
/* 80731AA0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80731AA4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80731AA8  4B FF C7 CD */	bl setBck__8daE_OC_cFiUcff
/* 80731AAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007017E@ha */
/* 80731AB0  38 03 01 7E */	addi r0, r3, 0x017E /* 0x0007017E@l */
/* 80731AB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80731AB8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80731ABC  38 81 00 10 */	addi r4, r1, 0x10
/* 80731AC0  38 A0 FF FF */	li r5, -1
/* 80731AC4  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80731AC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80731ACC  7D 89 03 A6 */	mtctr r12
/* 80731AD0  4E 80 04 21 */	bctrl 
/* 80731AD4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80731AD8  4B B3 5E 7D */	bl cM_rndF__Ff
/* 80731ADC  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80731AE0  EC 00 08 2A */	fadds f0, f0, f1
/* 80731AE4  FC 00 00 1E */	fctiwz f0, f0
/* 80731AE8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80731AEC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80731AF0  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 80731AF4  38 00 00 01 */	li r0, 1
/* 80731AF8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
lbl_80731AFC:
/* 80731AFC  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 80731B00  2C 00 00 00 */	cmpwi r0, 0
/* 80731B04  40 82 01 FC */	bne lbl_80731D00
/* 80731B08  7F C3 F3 78 */	mr r3, r30
/* 80731B0C  38 80 00 0B */	li r4, 0xb
/* 80731B10  38 A0 00 02 */	li r5, 2
/* 80731B14  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80731B18  C0 5F 01 0C */	lfs f2, 0x10c(r31)
/* 80731B1C  4B FF C7 59 */	bl setBck__8daE_OC_cFiUcff
/* 80731B20  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007017F@ha */
/* 80731B24  38 03 01 7F */	addi r0, r3, 0x017F /* 0x0007017F@l */
/* 80731B28  90 01 00 0C */	stw r0, 0xc(r1)
/* 80731B2C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80731B30  38 81 00 0C */	addi r4, r1, 0xc
/* 80731B34  38 A0 FF FF */	li r5, -1
/* 80731B38  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80731B3C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80731B40  7D 89 03 A6 */	mtctr r12
/* 80731B44  4E 80 04 21 */	bctrl 
/* 80731B48  38 00 00 02 */	li r0, 2
/* 80731B4C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80731B50  38 00 00 3C */	li r0, 0x3c
/* 80731B54  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 80731B58  48 00 01 A8 */	b lbl_80731D00
lbl_80731B5C:
/* 80731B5C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80731B60  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80731B64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80731B68  4B B3 EB D9 */	bl cLib_chaseF__FPfff
/* 80731B6C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80731B70  A8 9E 06 BC */	lha r4, 0x6bc(r30)
/* 80731B74  38 A0 00 04 */	li r5, 4
/* 80731B78  38 C0 08 00 */	li r6, 0x800
/* 80731B7C  38 E0 01 00 */	li r7, 0x100
/* 80731B80  4B B3 E9 C1 */	bl cLib_addCalcAngleS__FPsssss
/* 80731B84  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80731B88  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80731B8C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80731B90  38 9E 06 7C */	addi r4, r30, 0x67c
/* 80731B94  4B C1 58 09 */	bl PSVECSquareDistance
/* 80731B98  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80731B9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80731BA0  40 81 00 58 */	ble lbl_80731BF8
/* 80731BA4  FC 00 08 34 */	frsqrte f0, f1
/* 80731BA8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80731BAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80731BB0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80731BB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80731BB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80731BBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80731BC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80731BC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80731BC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80731BCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80731BD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80731BD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80731BD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80731BDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80731BE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80731BE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80731BE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80731BEC  FC 21 00 32 */	fmul f1, f1, f0
/* 80731BF0  FC 20 08 18 */	frsp f1, f1
/* 80731BF4  48 00 00 88 */	b lbl_80731C7C
lbl_80731BF8:
/* 80731BF8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80731BFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80731C00  40 80 00 10 */	bge lbl_80731C10
/* 80731C04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80731C08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80731C0C  48 00 00 70 */	b lbl_80731C7C
lbl_80731C10:
/* 80731C10  D0 21 00 08 */	stfs f1, 8(r1)
/* 80731C14  80 81 00 08 */	lwz r4, 8(r1)
/* 80731C18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80731C1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80731C20  7C 03 00 00 */	cmpw r3, r0
/* 80731C24  41 82 00 14 */	beq lbl_80731C38
/* 80731C28  40 80 00 40 */	bge lbl_80731C68
/* 80731C2C  2C 03 00 00 */	cmpwi r3, 0
/* 80731C30  41 82 00 20 */	beq lbl_80731C50
/* 80731C34  48 00 00 34 */	b lbl_80731C68
lbl_80731C38:
/* 80731C38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80731C3C  41 82 00 0C */	beq lbl_80731C48
/* 80731C40  38 00 00 01 */	li r0, 1
/* 80731C44  48 00 00 28 */	b lbl_80731C6C
lbl_80731C48:
/* 80731C48  38 00 00 02 */	li r0, 2
/* 80731C4C  48 00 00 20 */	b lbl_80731C6C
lbl_80731C50:
/* 80731C50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80731C54  41 82 00 0C */	beq lbl_80731C60
/* 80731C58  38 00 00 05 */	li r0, 5
/* 80731C5C  48 00 00 10 */	b lbl_80731C6C
lbl_80731C60:
/* 80731C60  38 00 00 03 */	li r0, 3
/* 80731C64  48 00 00 08 */	b lbl_80731C6C
lbl_80731C68:
/* 80731C68  38 00 00 04 */	li r0, 4
lbl_80731C6C:
/* 80731C6C  2C 00 00 01 */	cmpwi r0, 1
/* 80731C70  40 82 00 0C */	bne lbl_80731C7C
/* 80731C74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80731C78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80731C7C:
/* 80731C7C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80731C80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80731C84  41 80 00 10 */	blt lbl_80731C94
/* 80731C88  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 80731C8C  2C 00 00 00 */	cmpwi r0, 0
/* 80731C90  40 82 00 70 */	bne lbl_80731D00
lbl_80731C94:
/* 80731C94  7F C3 F3 78 */	mr r3, r30
/* 80731C98  38 80 00 16 */	li r4, 0x16
/* 80731C9C  38 A0 00 00 */	li r5, 0
/* 80731CA0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80731CA4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80731CA8  4B FF C5 CD */	bl setBck__8daE_OC_cFiUcff
/* 80731CAC  38 00 00 03 */	li r0, 3
/* 80731CB0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80731CB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80731CB8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80731CBC  48 00 00 44 */	b lbl_80731D00
lbl_80731CC0:
/* 80731CC0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80731CC4  38 80 00 01 */	li r4, 1
/* 80731CC8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80731CCC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80731CD0  40 82 00 18 */	bne lbl_80731CE8
/* 80731CD4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80731CD8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80731CDC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80731CE0  41 82 00 08 */	beq lbl_80731CE8
/* 80731CE4  38 80 00 00 */	li r4, 0
lbl_80731CE8:
/* 80731CE8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80731CEC  41 82 00 14 */	beq lbl_80731D00
/* 80731CF0  7F C3 F3 78 */	mr r3, r30
/* 80731CF4  38 80 00 00 */	li r4, 0
/* 80731CF8  38 A0 00 00 */	li r5, 0
/* 80731CFC  4B FF BF C1 */	bl setActionMode__8daE_OC_cFii
lbl_80731D00:
/* 80731D00  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80731D04  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80731D08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80731D0C  7C 08 03 A6 */	mtlr r0
/* 80731D10  38 21 00 30 */	addi r1, r1, 0x30
/* 80731D14  4E 80 00 20 */	blr 
