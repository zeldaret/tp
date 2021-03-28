lbl_80B37C30:
/* 80B37C30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B37C34  7C 08 02 A6 */	mflr r0
/* 80B37C38  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B37C3C  39 61 00 60 */	addi r11, r1, 0x60
/* 80B37C40  4B 82 A5 98 */	b _savegpr_28
/* 80B37C44  7C 7E 1B 78 */	mr r30, r3
/* 80B37C48  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha
/* 80B37C4C  3B A4 16 DC */	addi r29, r4, m__21daNpcWrestler_Param_c@l
/* 80B37C50  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B37C54  3B E4 1D F8 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80B37C58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B37C5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B37C60  83 84 5D AC */	lwz r28, 0x5dac(r4)
/* 80B37C64  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B37C68  2C 00 00 02 */	cmpwi r0, 2
/* 80B37C6C  41 82 00 5C */	beq lbl_80B37CC8
/* 80B37C70  40 80 03 2C */	bge lbl_80B37F9C
/* 80B37C74  2C 00 00 00 */	cmpwi r0, 0
/* 80B37C78  41 82 00 0C */	beq lbl_80B37C84
/* 80B37C7C  48 00 03 20 */	b lbl_80B37F9C
/* 80B37C80  48 00 03 1C */	b lbl_80B37F9C
lbl_80B37C84:
/* 80B37C84  38 80 00 07 */	li r4, 7
/* 80B37C88  38 A0 00 01 */	li r5, 1
/* 80B37C8C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B37C90  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B37C94  7D 89 03 A6 */	mtctr r12
/* 80B37C98  4E 80 04 21 */	bctrl 
/* 80B37C9C  7F C3 F3 78 */	mr r3, r30
/* 80B37CA0  38 80 00 0F */	li r4, 0xf
/* 80B37CA4  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B37CA8  38 A0 00 00 */	li r5, 0
/* 80B37CAC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B37CB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B37CB4  7D 89 03 A6 */	mtctr r12
/* 80B37CB8  4E 80 04 21 */	bctrl 
/* 80B37CBC  38 00 00 02 */	li r0, 2
/* 80B37CC0  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37CC4  48 00 02 D8 */	b lbl_80B37F9C
lbl_80B37CC8:
/* 80B37CC8  C0 1D 01 B8 */	lfs f0, 0x1b8(r29)
/* 80B37CCC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B37CD0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B37CD4  7F 83 E3 78 */	mr r3, r28
/* 80B37CD8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80B37CDC  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B37CE0  7D 89 03 A6 */	mtctr r12
/* 80B37CE4  4E 80 04 21 */	bctrl 
/* 80B37CE8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B37CEC  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B37CF0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B37CF4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B37CF8  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 80B37CFC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B37D00  40 82 00 38 */	bne lbl_80B37D38
/* 80B37D04  C0 3D 01 B8 */	lfs f1, 0x1b8(r29)
/* 80B37D08  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B37D0C  C0 1D 01 B4 */	lfs f0, 0x1b4(r29)
/* 80B37D10  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B37D14  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B37D18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B37D1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B37D20  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B37D24  80 9E 0B D8 */	lwz r4, 0xbd8(r30)
/* 80B37D28  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80B37D2C  38 A0 00 0F */	li r5, 0xf
/* 80B37D30  38 C1 00 38 */	addi r6, r1, 0x38
/* 80B37D34  4B 53 7C F0 */	b StartShock__12dVibration_cFii4cXyz
lbl_80B37D38:
/* 80B37D38  7F C3 F3 78 */	mr r3, r30
/* 80B37D3C  4B FF DA 45 */	bl checkOutOfArenaW__15daNpcWrestler_cFv
/* 80B37D40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B37D44  41 82 00 90 */	beq lbl_80B37DD4
/* 80B37D48  80 7F 0C F8 */	lwz r3, 0xcf8(r31)
/* 80B37D4C  80 1F 0C FC */	lwz r0, 0xcfc(r31)
/* 80B37D50  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B37D54  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B37D58  80 1F 0D 00 */	lwz r0, 0xd00(r31)
/* 80B37D5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B37D60  38 00 00 03 */	li r0, 3
/* 80B37D64  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37D68  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37D6C  4B 82 A2 AC */	b __ptmf_test
/* 80B37D70  2C 03 00 00 */	cmpwi r3, 0
/* 80B37D74  41 82 00 18 */	beq lbl_80B37D8C
/* 80B37D78  7F C3 F3 78 */	mr r3, r30
/* 80B37D7C  38 80 00 00 */	li r4, 0
/* 80B37D80  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37D84  4B 82 A3 00 */	b __ptmf_scall
/* 80B37D88  60 00 00 00 */	nop 
lbl_80B37D8C:
/* 80B37D8C  38 00 00 00 */	li r0, 0
/* 80B37D90  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37D94  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B37D98  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B37D9C  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B37DA0  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B37DA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B37DA8  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B37DAC  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37DB0  4B 82 A2 68 */	b __ptmf_test
/* 80B37DB4  2C 03 00 00 */	cmpwi r3, 0
/* 80B37DB8  41 82 01 E4 */	beq lbl_80B37F9C
/* 80B37DBC  7F C3 F3 78 */	mr r3, r30
/* 80B37DC0  38 80 00 00 */	li r4, 0
/* 80B37DC4  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37DC8  4B 82 A2 BC */	b __ptmf_scall
/* 80B37DCC  60 00 00 00 */	nop 
/* 80B37DD0  48 00 01 CC */	b lbl_80B37F9C
lbl_80B37DD4:
/* 80B37DD4  7F C3 F3 78 */	mr r3, r30
/* 80B37DD8  4B FF BC 15 */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B37DDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B37DE0  41 82 00 90 */	beq lbl_80B37E70
/* 80B37DE4  80 7F 0D 04 */	lwz r3, 0xd04(r31)
/* 80B37DE8  80 1F 0D 08 */	lwz r0, 0xd08(r31)
/* 80B37DEC  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B37DF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B37DF4  80 1F 0D 0C */	lwz r0, 0xd0c(r31)
/* 80B37DF8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B37DFC  38 00 00 03 */	li r0, 3
/* 80B37E00  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37E04  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37E08  4B 82 A2 10 */	b __ptmf_test
/* 80B37E0C  2C 03 00 00 */	cmpwi r3, 0
/* 80B37E10  41 82 00 18 */	beq lbl_80B37E28
/* 80B37E14  7F C3 F3 78 */	mr r3, r30
/* 80B37E18  38 80 00 00 */	li r4, 0
/* 80B37E1C  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37E20  4B 82 A2 64 */	b __ptmf_scall
/* 80B37E24  60 00 00 00 */	nop 
lbl_80B37E28:
/* 80B37E28  38 00 00 00 */	li r0, 0
/* 80B37E2C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37E30  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B37E34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B37E38  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B37E3C  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B37E40  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B37E44  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B37E48  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37E4C  4B 82 A1 CC */	b __ptmf_test
/* 80B37E50  2C 03 00 00 */	cmpwi r3, 0
/* 80B37E54  41 82 01 48 */	beq lbl_80B37F9C
/* 80B37E58  7F C3 F3 78 */	mr r3, r30
/* 80B37E5C  38 80 00 00 */	li r4, 0
/* 80B37E60  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37E64  4B 82 A2 20 */	b __ptmf_scall
/* 80B37E68  60 00 00 00 */	nop 
/* 80B37E6C  48 00 01 30 */	b lbl_80B37F9C
lbl_80B37E70:
/* 80B37E70  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 80B37E74  28 00 00 16 */	cmplwi r0, 0x16
/* 80B37E78  40 82 01 24 */	bne lbl_80B37F9C
/* 80B37E7C  88 1E 0E 98 */	lbz r0, 0xe98(r30)
/* 80B37E80  28 00 00 00 */	cmplwi r0, 0
/* 80B37E84  41 82 00 90 */	beq lbl_80B37F14
/* 80B37E88  80 7F 0D 10 */	lwz r3, 0xd10(r31)
/* 80B37E8C  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80B37E90  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B37E94  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B37E98  80 1F 0D 18 */	lwz r0, 0xd18(r31)
/* 80B37E9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B37EA0  38 00 00 03 */	li r0, 3
/* 80B37EA4  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37EA8  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37EAC  4B 82 A1 6C */	b __ptmf_test
/* 80B37EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80B37EB4  41 82 00 18 */	beq lbl_80B37ECC
/* 80B37EB8  7F C3 F3 78 */	mr r3, r30
/* 80B37EBC  38 80 00 00 */	li r4, 0
/* 80B37EC0  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37EC4  4B 82 A1 C0 */	b __ptmf_scall
/* 80B37EC8  60 00 00 00 */	nop 
lbl_80B37ECC:
/* 80B37ECC  38 00 00 00 */	li r0, 0
/* 80B37ED0  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37ED4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B37ED8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B37EDC  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B37EE0  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B37EE4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B37EE8  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B37EEC  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37EF0  4B 82 A1 28 */	b __ptmf_test
/* 80B37EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B37EF8  41 82 00 A4 */	beq lbl_80B37F9C
/* 80B37EFC  7F C3 F3 78 */	mr r3, r30
/* 80B37F00  38 80 00 00 */	li r4, 0
/* 80B37F04  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37F08  4B 82 A1 7C */	b __ptmf_scall
/* 80B37F0C  60 00 00 00 */	nop 
/* 80B37F10  48 00 00 8C */	b lbl_80B37F9C
lbl_80B37F14:
/* 80B37F14  80 7F 0D 1C */	lwz r3, 0xd1c(r31)
/* 80B37F18  80 1F 0D 20 */	lwz r0, 0xd20(r31)
/* 80B37F1C  90 61 00 08 */	stw r3, 8(r1)
/* 80B37F20  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B37F24  80 1F 0D 24 */	lwz r0, 0xd24(r31)
/* 80B37F28  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B37F2C  38 00 00 03 */	li r0, 3
/* 80B37F30  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37F34  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37F38  4B 82 A0 E0 */	b __ptmf_test
/* 80B37F3C  2C 03 00 00 */	cmpwi r3, 0
/* 80B37F40  41 82 00 18 */	beq lbl_80B37F58
/* 80B37F44  7F C3 F3 78 */	mr r3, r30
/* 80B37F48  38 80 00 00 */	li r4, 0
/* 80B37F4C  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37F50  4B 82 A1 34 */	b __ptmf_scall
/* 80B37F54  60 00 00 00 */	nop 
lbl_80B37F58:
/* 80B37F58  38 00 00 00 */	li r0, 0
/* 80B37F5C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37F60  80 61 00 08 */	lwz r3, 8(r1)
/* 80B37F64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B37F68  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B37F6C  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B37F70  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B37F74  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B37F78  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37F7C  4B 82 A0 9C */	b __ptmf_test
/* 80B37F80  2C 03 00 00 */	cmpwi r3, 0
/* 80B37F84  41 82 00 18 */	beq lbl_80B37F9C
/* 80B37F88  7F C3 F3 78 */	mr r3, r30
/* 80B37F8C  38 80 00 00 */	li r4, 0
/* 80B37F90  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37F94  4B 82 A0 F0 */	b __ptmf_scall
/* 80B37F98  60 00 00 00 */	nop 
lbl_80B37F9C:
/* 80B37F9C  38 60 00 01 */	li r3, 1
/* 80B37FA0  39 61 00 60 */	addi r11, r1, 0x60
/* 80B37FA4  4B 82 A2 80 */	b _restgpr_28
/* 80B37FA8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B37FAC  7C 08 03 A6 */	mtlr r0
/* 80B37FB0  38 21 00 60 */	addi r1, r1, 0x60
/* 80B37FB4  4E 80 00 20 */	blr 
