lbl_80809DA8:
/* 80809DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80809DAC  7C 08 02 A6 */	mflr r0
/* 80809DB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80809DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80809DB8  4B B5 84 25 */	bl _savegpr_29
/* 80809DBC  7C 7F 1B 78 */	mr r31, r3
/* 80809DC0  7C 9D 23 78 */	mr r29, r4
/* 80809DC4  3C 80 80 81 */	lis r4, lit_3925@ha /* 0x80815994@ha */
/* 80809DC8  3B C4 59 94 */	addi r30, r4, lit_3925@l /* 0x80815994@l */
/* 80809DCC  88 03 06 CA */	lbz r0, 0x6ca(r3)
/* 80809DD0  28 00 00 01 */	cmplwi r0, 1
/* 80809DD4  40 82 00 20 */	bne lbl_80809DF4
/* 80809DD8  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80809DDC  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80809DE0  38 A0 00 0A */	li r5, 0xa
/* 80809DE4  4B FF E3 A1 */	bl checkBck__8daE_YM_cFPCci
/* 80809DE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80809DEC  40 82 00 24 */	bne lbl_80809E10
/* 80809DF0  48 00 00 E8 */	b lbl_80809ED8
lbl_80809DF4:
/* 80809DF4  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80809DF8  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80809DFC  38 84 00 05 */	addi r4, r4, 5
/* 80809E00  38 A0 00 10 */	li r5, 0x10
/* 80809E04  4B FF E3 81 */	bl checkBck__8daE_YM_cFPCci
/* 80809E08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80809E0C  41 82 00 CC */	beq lbl_80809ED8
lbl_80809E10:
/* 80809E10  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80809E14  FC 00 02 10 */	fabs f0, f0
/* 80809E18  FC 20 00 18 */	frsp f1, f0
/* 80809E1C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80809E20  EC 00 00 72 */	fmuls f0, f0, f1
/* 80809E24  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80809E28  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80809E2C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80809E30  38 63 00 0C */	addi r3, r3, 0xc
/* 80809E34  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80809E38  4B B1 E5 F5 */	bl checkPass__12J3DFrameCtrlFf
/* 80809E3C  2C 03 00 00 */	cmpwi r3, 0
/* 80809E40  40 82 00 34 */	bne lbl_80809E74
/* 80809E44  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80809E48  38 63 00 0C */	addi r3, r3, 0xc
/* 80809E4C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80809E50  4B B1 E5 DD */	bl checkPass__12J3DFrameCtrlFf
/* 80809E54  2C 03 00 00 */	cmpwi r3, 0
/* 80809E58  40 82 00 1C */	bne lbl_80809E74
/* 80809E5C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80809E60  38 63 00 0C */	addi r3, r3, 0xc
/* 80809E64  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80809E68  4B B1 E5 C5 */	bl checkPass__12J3DFrameCtrlFf
/* 80809E6C  2C 03 00 00 */	cmpwi r3, 0
/* 80809E70  41 82 00 68 */	beq lbl_80809ED8
lbl_80809E74:
/* 80809E74  2C 1D 00 00 */	cmpwi r29, 0
/* 80809E78  41 82 00 34 */	beq lbl_80809EAC
/* 80809E7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070198@ha */
/* 80809E80  38 03 01 98 */	addi r0, r3, 0x0198 /* 0x00070198@l */
/* 80809E84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80809E88  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80809E8C  38 81 00 0C */	addi r4, r1, 0xc
/* 80809E90  38 A0 00 00 */	li r5, 0
/* 80809E94  38 C0 FF FF */	li r6, -1
/* 80809E98  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 80809E9C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80809EA0  7D 89 03 A6 */	mtctr r12
/* 80809EA4  4E 80 04 21 */	bctrl 
/* 80809EA8  48 00 00 30 */	b lbl_80809ED8
lbl_80809EAC:
/* 80809EAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700E6@ha */
/* 80809EB0  38 03 00 E6 */	addi r0, r3, 0x00E6 /* 0x000700E6@l */
/* 80809EB4  90 01 00 08 */	stw r0, 8(r1)
/* 80809EB8  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80809EBC  38 81 00 08 */	addi r4, r1, 8
/* 80809EC0  38 A0 00 00 */	li r5, 0
/* 80809EC4  38 C0 FF FF */	li r6, -1
/* 80809EC8  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 80809ECC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80809ED0  7D 89 03 A6 */	mtctr r12
/* 80809ED4  4E 80 04 21 */	bctrl 
lbl_80809ED8:
/* 80809ED8  39 61 00 20 */	addi r11, r1, 0x20
/* 80809EDC  4B B5 83 4D */	bl _restgpr_29
/* 80809EE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80809EE4  7C 08 03 A6 */	mtlr r0
/* 80809EE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80809EEC  4E 80 00 20 */	blr 
