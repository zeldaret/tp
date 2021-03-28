lbl_80976C9C:
/* 80976C9C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80976CA0  7C 08 02 A6 */	mflr r0
/* 80976CA4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80976CA8  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80976CAC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80976CB0  7C 7E 1B 78 */	mr r30, r3
/* 80976CB4  3C 60 80 98 */	lis r3, m__17daNpcBouS_Param_c@ha
/* 80976CB8  3B E3 84 10 */	addi r31, r3, m__17daNpcBouS_Param_c@l
/* 80976CBC  38 7E 0D C0 */	addi r3, r30, 0xdc0
/* 80976CC0  4B 9E B3 58 */	b __ptmf_test
/* 80976CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80976CC8  41 82 00 18 */	beq lbl_80976CE0
/* 80976CCC  7F C3 F3 78 */	mr r3, r30
/* 80976CD0  38 80 00 00 */	li r4, 0
/* 80976CD4  39 9E 0D C0 */	addi r12, r30, 0xdc0
/* 80976CD8  4B 9E B3 AC */	b __ptmf_scall
/* 80976CDC  60 00 00 00 */	nop 
lbl_80976CE0:
/* 80976CE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80976CE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80976CE8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80976CEC  28 00 00 00 */	cmplwi r0, 0
/* 80976CF0  41 82 00 30 */	beq lbl_80976D20
/* 80976CF4  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80976CF8  28 00 00 01 */	cmplwi r0, 1
/* 80976CFC  41 82 00 24 */	beq lbl_80976D20
/* 80976D00  80 9E 0D E4 */	lwz r4, 0xde4(r30)
/* 80976D04  3C 04 00 01 */	addis r0, r4, 1
/* 80976D08  28 00 FF FF */	cmplwi r0, 0xffff
/* 80976D0C  41 82 00 14 */	beq lbl_80976D20
/* 80976D10  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80976D14  4B 6C C9 D8 */	b setPtI_Id__14dEvt_control_cFUi
/* 80976D18  38 00 FF FF */	li r0, -1
/* 80976D1C  90 1E 0D E4 */	stw r0, 0xde4(r30)
lbl_80976D20:
/* 80976D20  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 80976D24  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 80976D28  90 61 00 24 */	stw r3, 0x24(r1)
/* 80976D2C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80976D30  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 80976D34  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80976D38  38 7F 00 00 */	addi r3, r31, 0
/* 80976D3C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80976D40  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80976D44  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 80976D48  90 01 00 08 */	stw r0, 8(r1)
/* 80976D4C  38 01 00 24 */	addi r0, r1, 0x24
/* 80976D50  90 01 00 08 */	stw r0, 8(r1)
/* 80976D54  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 80976D58  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 80976D5C  90 61 00 30 */	stw r3, 0x30(r1)
/* 80976D60  90 01 00 34 */	stw r0, 0x34(r1)
/* 80976D64  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80976D68  90 01 00 38 */	stw r0, 0x38(r1)
/* 80976D6C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80976D70  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80976D74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80976D78  38 01 00 30 */	addi r0, r1, 0x30
/* 80976D7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80976D80  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 80976D84  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 80976D88  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80976D8C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80976D90  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80976D94  90 01 00 44 */	stw r0, 0x44(r1)
/* 80976D98  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80976D9C  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80976DA0  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 80976DA4  90 61 00 48 */	stw r3, 0x48(r1)
/* 80976DA8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80976DAC  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 80976DB0  90 01 00 50 */	stw r0, 0x50(r1)
/* 80976DB4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80976DB8  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 80976DBC  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 80976DC0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80976DC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80976DC8  38 01 00 3C */	addi r0, r1, 0x3c
/* 80976DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80976DD0  38 01 00 48 */	addi r0, r1, 0x48
/* 80976DD4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80976DD8  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 80976DDC  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 80976DE0  90 61 00 54 */	stw r3, 0x54(r1)
/* 80976DE4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80976DE8  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80976DEC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80976DF0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80976DF4  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 80976DF8  80 1F 01 00 */	lwz r0, 0x100(r31)
/* 80976DFC  90 61 00 60 */	stw r3, 0x60(r1)
/* 80976E00  90 01 00 64 */	stw r0, 0x64(r1)
/* 80976E04  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 80976E08  90 01 00 68 */	stw r0, 0x68(r1)
/* 80976E0C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80976E10  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 80976E14  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 80976E18  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80976E1C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80976E20  38 01 00 54 */	addi r0, r1, 0x54
/* 80976E24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80976E28  38 01 00 60 */	addi r0, r1, 0x60
/* 80976E2C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80976E30  80 7F 01 10 */	lwz r3, 0x110(r31)
/* 80976E34  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 80976E38  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80976E3C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80976E40  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80976E44  90 01 00 74 */	stw r0, 0x74(r1)
/* 80976E48  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80976E4C  80 1F 01 1C */	lwz r0, 0x11c(r31)
/* 80976E50  90 01 00 10 */	stw r0, 0x10(r1)
/* 80976E54  38 01 00 6C */	addi r0, r1, 0x6c
/* 80976E58  90 01 00 10 */	stw r0, 0x10(r1)
/* 80976E5C  38 A1 00 74 */	addi r5, r1, 0x74
/* 80976E60  38 9F 01 1C */	addi r4, r31, 0x11c
/* 80976E64  38 00 00 03 */	li r0, 3
/* 80976E68  7C 09 03 A6 */	mtctr r0
lbl_80976E6C:
/* 80976E6C  80 64 00 04 */	lwz r3, 4(r4)
/* 80976E70  84 04 00 08 */	lwzu r0, 8(r4)
/* 80976E74  90 65 00 04 */	stw r3, 4(r5)
/* 80976E78  94 05 00 08 */	stwu r0, 8(r5)
/* 80976E7C  42 00 FF F0 */	bdnz lbl_80976E6C
/* 80976E80  38 01 00 08 */	addi r0, r1, 8
/* 80976E84  90 01 00 78 */	stw r0, 0x78(r1)
/* 80976E88  38 01 00 0C */	addi r0, r1, 0xc
/* 80976E8C  90 01 00 80 */	stw r0, 0x80(r1)
/* 80976E90  38 01 00 14 */	addi r0, r1, 0x14
/* 80976E94  90 01 00 84 */	stw r0, 0x84(r1)
/* 80976E98  38 01 00 1C */	addi r0, r1, 0x1c
/* 80976E9C  90 01 00 88 */	stw r0, 0x88(r1)
/* 80976EA0  38 01 00 10 */	addi r0, r1, 0x10
/* 80976EA4  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80976EA8  A8 7E 09 DE */	lha r3, 0x9de(r30)
/* 80976EAC  7C 60 07 35 */	extsh. r0, r3
/* 80976EB0  41 80 00 18 */	blt lbl_80976EC8
/* 80976EB4  2C 03 00 06 */	cmpwi r3, 6
/* 80976EB8  40 80 00 10 */	bge lbl_80976EC8
/* 80976EBC  7F C3 F3 78 */	mr r3, r30
/* 80976EC0  38 81 00 78 */	addi r4, r1, 0x78
/* 80976EC4  4B 7D C2 8C */	b playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80976EC8:
/* 80976EC8  7F C3 F3 78 */	mr r3, r30
/* 80976ECC  48 00 00 21 */	bl playMotion__11daNpcBouS_cFv
/* 80976ED0  38 60 00 01 */	li r3, 1
/* 80976ED4  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80976ED8  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80976EDC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80976EE0  7C 08 03 A6 */	mtlr r0
/* 80976EE4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80976EE8  4E 80 00 20 */	blr 
