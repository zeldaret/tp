lbl_8080D990:
/* 8080D990  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8080D994  7C 08 02 A6 */	mflr r0
/* 8080D998  90 01 00 34 */	stw r0, 0x34(r1)
/* 8080D99C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8080D9A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8080D9A4  7C 7E 1B 78 */	mr r30, r3
/* 8080D9A8  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 8080D9AC  3B E3 59 94 */	addi r31, r3, lit_3925@l /* 0x80815994@l */
/* 8080D9B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8080D9B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8080D9B8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8080D9BC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8080D9C0  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 8080D9C4  7D 89 03 A6 */	mtctr r12
/* 8080D9C8  4E 80 04 21 */	bctrl 
/* 8080D9CC  2C 03 00 00 */	cmpwi r3, 0
/* 8080D9D0  40 82 00 20 */	bne lbl_8080D9F0
/* 8080D9D4  7F C3 F3 78 */	mr r3, r30
/* 8080D9D8  38 80 00 01 */	li r4, 1
/* 8080D9DC  4B FF C5 C1 */	bl setActionMode__8daE_YM_cFi
/* 8080D9E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080D9E4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080D9E8  38 60 00 01 */	li r3, 1
/* 8080D9EC  48 00 01 54 */	b lbl_8080DB40
lbl_8080D9F0:
/* 8080D9F0  38 61 00 0C */	addi r3, r1, 0xc
/* 8080D9F4  38 9E 06 70 */	addi r4, r30, 0x670
/* 8080D9F8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8080D9FC  4B A5 91 39 */	bl __mi__4cXyzCFRC3Vec
/* 8080DA00  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8080DA04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8080DA08  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8080DA0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8080DA10  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8080DA14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8080DA18  38 61 00 18 */	addi r3, r1, 0x18
/* 8080DA1C  4B B3 97 1D */	bl PSVECSquareMag
/* 8080DA20  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080DA24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080DA28  40 81 00 58 */	ble lbl_8080DA80
/* 8080DA2C  FC 00 08 34 */	frsqrte f0, f1
/* 8080DA30  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8080DA34  FC 44 00 32 */	fmul f2, f4, f0
/* 8080DA38  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8080DA3C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080DA40  FC 01 00 32 */	fmul f0, f1, f0
/* 8080DA44  FC 03 00 28 */	fsub f0, f3, f0
/* 8080DA48  FC 02 00 32 */	fmul f0, f2, f0
/* 8080DA4C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080DA50  FC 00 00 32 */	fmul f0, f0, f0
/* 8080DA54  FC 01 00 32 */	fmul f0, f1, f0
/* 8080DA58  FC 03 00 28 */	fsub f0, f3, f0
/* 8080DA5C  FC 02 00 32 */	fmul f0, f2, f0
/* 8080DA60  FC 44 00 32 */	fmul f2, f4, f0
/* 8080DA64  FC 00 00 32 */	fmul f0, f0, f0
/* 8080DA68  FC 01 00 32 */	fmul f0, f1, f0
/* 8080DA6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8080DA70  FC 02 00 32 */	fmul f0, f2, f0
/* 8080DA74  FC 21 00 32 */	fmul f1, f1, f0
/* 8080DA78  FC 20 08 18 */	frsp f1, f1
/* 8080DA7C  48 00 00 88 */	b lbl_8080DB04
lbl_8080DA80:
/* 8080DA80  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8080DA84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080DA88  40 80 00 10 */	bge lbl_8080DA98
/* 8080DA8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080DA90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080DA94  48 00 00 70 */	b lbl_8080DB04
lbl_8080DA98:
/* 8080DA98  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080DA9C  80 81 00 08 */	lwz r4, 8(r1)
/* 8080DAA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080DAA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080DAA8  7C 03 00 00 */	cmpw r3, r0
/* 8080DAAC  41 82 00 14 */	beq lbl_8080DAC0
/* 8080DAB0  40 80 00 40 */	bge lbl_8080DAF0
/* 8080DAB4  2C 03 00 00 */	cmpwi r3, 0
/* 8080DAB8  41 82 00 20 */	beq lbl_8080DAD8
/* 8080DABC  48 00 00 34 */	b lbl_8080DAF0
lbl_8080DAC0:
/* 8080DAC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080DAC4  41 82 00 0C */	beq lbl_8080DAD0
/* 8080DAC8  38 00 00 01 */	li r0, 1
/* 8080DACC  48 00 00 28 */	b lbl_8080DAF4
lbl_8080DAD0:
/* 8080DAD0  38 00 00 02 */	li r0, 2
/* 8080DAD4  48 00 00 20 */	b lbl_8080DAF4
lbl_8080DAD8:
/* 8080DAD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080DADC  41 82 00 0C */	beq lbl_8080DAE8
/* 8080DAE0  38 00 00 05 */	li r0, 5
/* 8080DAE4  48 00 00 10 */	b lbl_8080DAF4
lbl_8080DAE8:
/* 8080DAE8  38 00 00 03 */	li r0, 3
/* 8080DAEC  48 00 00 08 */	b lbl_8080DAF4
lbl_8080DAF0:
/* 8080DAF0  38 00 00 04 */	li r0, 4
lbl_8080DAF4:
/* 8080DAF4  2C 00 00 01 */	cmpwi r0, 1
/* 8080DAF8  40 82 00 0C */	bne lbl_8080DB04
/* 8080DAFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080DB00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080DB04:
/* 8080DB04  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 8080DB08  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080DB0C  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 8080DB10  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8080DB14  EC 02 00 2A */	fadds f0, f2, f0
/* 8080DB18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080DB1C  40 81 00 20 */	ble lbl_8080DB3C
/* 8080DB20  7F C3 F3 78 */	mr r3, r30
/* 8080DB24  38 80 00 00 */	li r4, 0
/* 8080DB28  4B FF C4 75 */	bl setActionMode__8daE_YM_cFi
/* 8080DB2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080DB30  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080DB34  38 60 00 01 */	li r3, 1
/* 8080DB38  48 00 00 08 */	b lbl_8080DB40
lbl_8080DB3C:
/* 8080DB3C  38 60 00 00 */	li r3, 0
lbl_8080DB40:
/* 8080DB40  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8080DB44  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8080DB48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8080DB4C  7C 08 03 A6 */	mtlr r0
/* 8080DB50  38 21 00 30 */	addi r1, r1, 0x30
/* 8080DB54  4E 80 00 20 */	blr 
