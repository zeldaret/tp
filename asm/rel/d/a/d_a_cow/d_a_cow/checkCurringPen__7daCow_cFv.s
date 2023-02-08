lbl_8065C32C:
/* 8065C32C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8065C330  7C 08 02 A6 */	mflr r0
/* 8065C334  90 01 00 34 */	stw r0, 0x34(r1)
/* 8065C338  39 61 00 30 */	addi r11, r1, 0x30
/* 8065C33C  4B D0 5E A1 */	bl _savegpr_29
/* 8065C340  7C 7E 1B 78 */	mr r30, r3
/* 8065C344  3C 60 80 66 */	lis r3, lit_3987@ha /* 0x80662DB0@ha */
/* 8065C348  3B E3 2D B0 */	addi r31, r3, lit_3987@l /* 0x80662DB0@l */
/* 8065C34C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065C350  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065C354  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8065C358  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8065C35C  3C 80 80 66 */	lis r4, data_806634AC@ha /* 0x806634AC@ha */
/* 8065C360  38 84 34 AC */	addi r4, r4, data_806634AC@l /* 0x806634AC@l */
/* 8065C364  4B CE B0 39 */	bl PSVECSquareDistance
/* 8065C368  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065C36C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065C370  40 81 00 58 */	ble lbl_8065C3C8
/* 8065C374  FC 00 08 34 */	frsqrte f0, f1
/* 8065C378  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065C37C  FC 44 00 32 */	fmul f2, f4, f0
/* 8065C380  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065C384  FC 00 00 32 */	fmul f0, f0, f0
/* 8065C388  FC 01 00 32 */	fmul f0, f1, f0
/* 8065C38C  FC 03 00 28 */	fsub f0, f3, f0
/* 8065C390  FC 02 00 32 */	fmul f0, f2, f0
/* 8065C394  FC 44 00 32 */	fmul f2, f4, f0
/* 8065C398  FC 00 00 32 */	fmul f0, f0, f0
/* 8065C39C  FC 01 00 32 */	fmul f0, f1, f0
/* 8065C3A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8065C3A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8065C3A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8065C3AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8065C3B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8065C3B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8065C3B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8065C3BC  FC 21 00 32 */	fmul f1, f1, f0
/* 8065C3C0  FC 20 08 18 */	frsp f1, f1
/* 8065C3C4  48 00 00 88 */	b lbl_8065C44C
lbl_8065C3C8:
/* 8065C3C8  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065C3CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065C3D0  40 80 00 10 */	bge lbl_8065C3E0
/* 8065C3D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065C3D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065C3DC  48 00 00 70 */	b lbl_8065C44C
lbl_8065C3E0:
/* 8065C3E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8065C3E4  80 81 00 08 */	lwz r4, 8(r1)
/* 8065C3E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065C3EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065C3F0  7C 03 00 00 */	cmpw r3, r0
/* 8065C3F4  41 82 00 14 */	beq lbl_8065C408
/* 8065C3F8  40 80 00 40 */	bge lbl_8065C438
/* 8065C3FC  2C 03 00 00 */	cmpwi r3, 0
/* 8065C400  41 82 00 20 */	beq lbl_8065C420
/* 8065C404  48 00 00 34 */	b lbl_8065C438
lbl_8065C408:
/* 8065C408  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065C40C  41 82 00 0C */	beq lbl_8065C418
/* 8065C410  38 00 00 01 */	li r0, 1
/* 8065C414  48 00 00 28 */	b lbl_8065C43C
lbl_8065C418:
/* 8065C418  38 00 00 02 */	li r0, 2
/* 8065C41C  48 00 00 20 */	b lbl_8065C43C
lbl_8065C420:
/* 8065C420  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065C424  41 82 00 0C */	beq lbl_8065C430
/* 8065C428  38 00 00 05 */	li r0, 5
/* 8065C42C  48 00 00 10 */	b lbl_8065C43C
lbl_8065C430:
/* 8065C430  38 00 00 03 */	li r0, 3
/* 8065C434  48 00 00 08 */	b lbl_8065C43C
lbl_8065C438:
/* 8065C438  38 00 00 04 */	li r0, 4
lbl_8065C43C:
/* 8065C43C  2C 00 00 01 */	cmpwi r0, 1
/* 8065C440  40 82 00 0C */	bne lbl_8065C44C
/* 8065C444  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065C448  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065C44C:
/* 8065C44C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8065C450  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065C454  40 80 00 0C */	bge lbl_8065C460
/* 8065C458  38 60 00 00 */	li r3, 0
/* 8065C45C  48 00 00 94 */	b lbl_8065C4F0
lbl_8065C460:
/* 8065C460  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065C464  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065C468  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8065C46C  7C 00 07 74 */	extsb r0, r0
/* 8065C470  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8065C474  7C 63 02 14 */	add r3, r3, r0
/* 8065C478  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8065C47C  4B 9C 1E 8D */	bl fopCamM_GetParam__FP12camera_class
/* 8065C480  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065C484  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065C488  1C 03 00 38 */	mulli r0, r3, 0x38
/* 8065C48C  7C 64 02 14 */	add r3, r4, r0
/* 8065C490  88 03 5D 78 */	lbz r0, 0x5d78(r3)
/* 8065C494  7C 00 07 74 */	extsb r0, r0
/* 8065C498  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 8065C49C  7C 64 02 14 */	add r3, r4, r0
/* 8065C4A0  3B A3 5D 60 */	addi r29, r3, 0x5d60
/* 8065C4A4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8065C4A8  38 81 00 0C */	addi r4, r1, 0xc
/* 8065C4AC  4B 9B 8E 65 */	bl mDoLib_project__FP3VecP3Vec
/* 8065C4B0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8065C4B4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065C4B8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8065C4BC  40 81 00 30 */	ble lbl_8065C4EC
/* 8065C4C0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8065C4C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8065C4C8  40 80 00 24 */	bge lbl_8065C4EC
/* 8065C4CC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8065C4D0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8065C4D4  40 81 00 18 */	ble lbl_8065C4EC
/* 8065C4D8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8065C4DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8065C4E0  40 80 00 0C */	bge lbl_8065C4EC
/* 8065C4E4  38 60 00 00 */	li r3, 0
/* 8065C4E8  48 00 00 08 */	b lbl_8065C4F0
lbl_8065C4EC:
/* 8065C4EC  38 60 00 01 */	li r3, 1
lbl_8065C4F0:
/* 8065C4F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8065C4F4  4B D0 5D 35 */	bl _restgpr_29
/* 8065C4F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8065C4FC  7C 08 03 A6 */	mtlr r0
/* 8065C500  38 21 00 30 */	addi r1, r1, 0x30
/* 8065C504  4E 80 00 20 */	blr 
