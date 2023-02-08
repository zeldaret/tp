lbl_8086CC6C:
/* 8086CC6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8086CC70  7C 08 02 A6 */	mflr r0
/* 8086CC74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8086CC78  39 61 00 20 */	addi r11, r1, 0x20
/* 8086CC7C  4B AF 55 61 */	bl _savegpr_29
/* 8086CC80  7C 7D 1B 78 */	mr r29, r3
/* 8086CC84  7C 9E 23 78 */	mr r30, r4
/* 8086CC88  3C 80 80 87 */	lis r4, lit_3829@ha /* 0x80870094@ha */
/* 8086CC8C  3B E4 00 94 */	addi r31, r4, lit_3829@l /* 0x80870094@l */
/* 8086CC90  4B 7A C0 51 */	bl fopAc_IsActor__FPv
/* 8086CC94  2C 03 00 00 */	cmpwi r3, 0
/* 8086CC98  41 82 00 BC */	beq lbl_8086CD54
/* 8086CC9C  A8 1D 00 08 */	lha r0, 8(r29)
/* 8086CCA0  2C 00 01 36 */	cmpwi r0, 0x136
/* 8086CCA4  40 82 00 B0 */	bne lbl_8086CD54
/* 8086CCA8  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8086CCAC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8086CCB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086CCB4  40 81 00 A0 */	ble lbl_8086CD54
/* 8086CCB8  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8086CCBC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8086CCC0  EC 81 00 28 */	fsubs f4, f1, f0
/* 8086CCC4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8086CCC8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8086CCCC  EC 41 00 28 */	fsubs f2, f1, f0
/* 8086CCD0  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8086CCD4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8086CCD8  EC A1 00 28 */	fsubs f5, f1, f0
/* 8086CCDC  C0 3D 05 BC */	lfs f1, 0x5bc(r29)
/* 8086CCE0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8086CCE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086CCE8  40 81 00 08 */	ble lbl_8086CCF0
/* 8086CCEC  FC 20 00 90 */	fmr f1, f0
lbl_8086CCF0:
/* 8086CCF0  FC 00 12 10 */	fabs f0, f2
/* 8086CCF4  FC 60 00 18 */	frsp f3, f0
/* 8086CCF8  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8086CCFC  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 8086CD00  EC 02 00 32 */	fmuls f0, f2, f0
/* 8086CD04  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8086CD08  40 80 00 4C */	bge lbl_8086CD54
/* 8086CD0C  EC 44 01 32 */	fmuls f2, f4, f4
/* 8086CD10  EC 05 01 72 */	fmuls f0, f5, f5
/* 8086CD14  EC 42 00 2A */	fadds f2, f2, f0
/* 8086CD18  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8086CD1C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8086CD20  40 81 00 0C */	ble lbl_8086CD2C
/* 8086CD24  FC 00 10 34 */	frsqrte f0, f2
/* 8086CD28  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8086CD2C:
/* 8086CD2C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8086CD30  EC 00 00 72 */	fmuls f0, f0, f1
/* 8086CD34  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8086CD38  40 80 00 1C */	bge lbl_8086CD54
/* 8086CD3C  38 7E 00 B8 */	addi r3, r30, 0xb8
/* 8086CD40  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8086CD44  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 8086CD48  4B A0 2C F5 */	bl cLib_addCalc2__FPffff
/* 8086CD4C  7F A3 EB 78 */	mr r3, r29
/* 8086CD50  48 00 00 08 */	b lbl_8086CD58
lbl_8086CD54:
/* 8086CD54  38 60 00 00 */	li r3, 0
lbl_8086CD58:
/* 8086CD58  39 61 00 20 */	addi r11, r1, 0x20
/* 8086CD5C  4B AF 54 CD */	bl _restgpr_29
/* 8086CD60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8086CD64  7C 08 03 A6 */	mtlr r0
/* 8086CD68  38 21 00 20 */	addi r1, r1, 0x20
/* 8086CD6C  4E 80 00 20 */	blr 
