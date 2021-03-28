lbl_80D26468:
/* 80D26468  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D2646C  7C 08 02 A6 */	mflr r0
/* 80D26470  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D26474  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D26478  7C 7F 1B 78 */	mr r31, r3
/* 80D2647C  3C 60 80 D2 */	lis r3, l_arcName@ha
/* 80D26480  38 63 6C 74 */	addi r3, r3, l_arcName@l
/* 80D26484  80 63 00 00 */	lwz r3, 0(r3)
/* 80D26488  38 80 00 08 */	li r4, 8
/* 80D2648C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D26490  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D26494  3C A5 00 02 */	addis r5, r5, 2
/* 80D26498  38 C0 00 80 */	li r6, 0x80
/* 80D2649C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D264A0  4B 31 5E 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D264A4  38 80 00 00 */	li r4, 0
/* 80D264A8  38 A1 00 08 */	addi r5, r1, 8
/* 80D264AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80D264B0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80D264B4  7D 89 03 A6 */	mtctr r12
/* 80D264B8  4E 80 04 21 */	bctrl 
/* 80D264BC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D264C0  D0 1F 09 80 */	stfs f0, 0x980(r31)
/* 80D264C4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D264C8  D0 1F 09 84 */	stfs f0, 0x984(r31)
/* 80D264CC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D264D0  D0 1F 09 88 */	stfs f0, 0x988(r31)
/* 80D264D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D264D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D264DC  7C 08 03 A6 */	mtlr r0
/* 80D264E0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D264E4  4E 80 00 20 */	blr 
