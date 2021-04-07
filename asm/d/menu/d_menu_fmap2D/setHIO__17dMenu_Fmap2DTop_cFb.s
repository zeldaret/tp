lbl_801D7BCC:
/* 801D7BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7BD0  7C 08 02 A6 */	mflr r0
/* 801D7BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7BD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D7BDC  93 C1 00 08 */	stw r30, 8(r1)
/* 801D7BE0  7C 7E 1B 78 */	mr r30, r3
/* 801D7BE4  7C 9F 23 78 */	mr r31, r4
/* 801D7BE8  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 801D7BEC  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7BF0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7BF4  C0 43 00 E8 */	lfs f2, 0xe8(r3)
/* 801D7BF8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801D7BFC  40 82 00 14 */	bne lbl_801D7C10
/* 801D7C00  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 801D7C04  C0 03 00 EC */	lfs f0, 0xec(r3)
/* 801D7C08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D7C0C  41 82 00 28 */	beq lbl_801D7C34
lbl_801D7C10:
/* 801D7C10  D0 5E 00 84 */	stfs f2, 0x84(r30)
/* 801D7C14  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7C18  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7C1C  C0 03 00 EC */	lfs f0, 0xec(r3)
/* 801D7C20  D0 1E 00 88 */	stfs f0, 0x88(r30)
/* 801D7C24  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 801D7C28  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 801D7C2C  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 801D7C30  48 07 C9 81 */	bl paneTrans__8CPaneMgrFff
lbl_801D7C34:
/* 801D7C34  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 801D7C38  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7C3C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7C40  C0 23 00 F0 */	lfs f1, 0xf0(r3)
/* 801D7C44  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D7C48  41 82 00 2C */	beq lbl_801D7C74
/* 801D7C4C  D0 3E 00 8C */	stfs f1, 0x8c(r30)
/* 801D7C50  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 801D7C54  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 801D7C58  80 63 00 04 */	lwz r3, 4(r3)
/* 801D7C5C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D7C60  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D7C64  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7C68  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D7C6C  7D 89 03 A6 */	mtctr r12
/* 801D7C70  4E 80 04 21 */	bctrl 
lbl_801D7C74:
/* 801D7C74  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 801D7C78  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7C7C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7C80  C0 43 00 F4 */	lfs f2, 0xf4(r3)
/* 801D7C84  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801D7C88  40 82 00 14 */	bne lbl_801D7C9C
/* 801D7C8C  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 801D7C90  C0 03 00 F8 */	lfs f0, 0xf8(r3)
/* 801D7C94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D7C98  41 82 00 28 */	beq lbl_801D7CC0
lbl_801D7C9C:
/* 801D7C9C  D0 5E 00 90 */	stfs f2, 0x90(r30)
/* 801D7CA0  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7CA4  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7CA8  C0 03 00 F8 */	lfs f0, 0xf8(r3)
/* 801D7CAC  D0 1E 00 94 */	stfs f0, 0x94(r30)
/* 801D7CB0  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 801D7CB4  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 801D7CB8  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 801D7CBC  48 07 C8 F5 */	bl paneTrans__8CPaneMgrFff
lbl_801D7CC0:
/* 801D7CC0  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 801D7CC4  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7CC8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7CCC  C0 23 00 FC */	lfs f1, 0xfc(r3)
/* 801D7CD0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D7CD4  41 82 00 2C */	beq lbl_801D7D00
/* 801D7CD8  D0 3E 00 98 */	stfs f1, 0x98(r30)
/* 801D7CDC  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 801D7CE0  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 801D7CE4  80 63 00 04 */	lwz r3, 4(r3)
/* 801D7CE8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D7CEC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D7CF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7CF4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D7CF8  7D 89 03 A6 */	mtctr r12
/* 801D7CFC  4E 80 04 21 */	bctrl 
lbl_801D7D00:
/* 801D7D00  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 801D7D04  28 00 00 00 */	cmplwi r0, 0
/* 801D7D08  41 82 00 90 */	beq lbl_801D7D98
/* 801D7D0C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 801D7D10  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7D14  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7D18  C0 43 01 00 */	lfs f2, 0x100(r3)
/* 801D7D1C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801D7D20  40 82 00 14 */	bne lbl_801D7D34
/* 801D7D24  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 801D7D28  C0 03 01 04 */	lfs f0, 0x104(r3)
/* 801D7D2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D7D30  41 82 00 28 */	beq lbl_801D7D58
lbl_801D7D34:
/* 801D7D34  D0 5E 00 9C */	stfs f2, 0x9c(r30)
/* 801D7D38  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7D3C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7D40  C0 03 01 04 */	lfs f0, 0x104(r3)
/* 801D7D44  D0 1E 00 A0 */	stfs f0, 0xa0(r30)
/* 801D7D48  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 801D7D4C  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 801D7D50  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 801D7D54  48 07 C8 5D */	bl paneTrans__8CPaneMgrFff
lbl_801D7D58:
/* 801D7D58  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 801D7D5C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7D60  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7D64  C0 23 01 08 */	lfs f1, 0x108(r3)
/* 801D7D68  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D7D6C  41 82 00 2C */	beq lbl_801D7D98
/* 801D7D70  D0 3E 00 A4 */	stfs f1, 0xa4(r30)
/* 801D7D74  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 801D7D78  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 801D7D7C  80 63 00 04 */	lwz r3, 4(r3)
/* 801D7D80  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D7D84  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D7D88  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7D8C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D7D90  7D 89 03 A6 */	mtctr r12
/* 801D7D94  4E 80 04 21 */	bctrl 
lbl_801D7D98:
/* 801D7D98  80 1E 00 5C */	lwz r0, 0x5c(r30)
/* 801D7D9C  28 00 00 00 */	cmplwi r0, 0
/* 801D7DA0  41 82 00 90 */	beq lbl_801D7E30
/* 801D7DA4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 801D7DA8  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7DAC  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7DB0  C0 43 01 0C */	lfs f2, 0x10c(r3)
/* 801D7DB4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801D7DB8  40 82 00 14 */	bne lbl_801D7DCC
/* 801D7DBC  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 801D7DC0  C0 03 01 10 */	lfs f0, 0x110(r3)
/* 801D7DC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D7DC8  41 82 00 28 */	beq lbl_801D7DF0
lbl_801D7DCC:
/* 801D7DCC  D0 5E 00 A8 */	stfs f2, 0xa8(r30)
/* 801D7DD0  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7DD4  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7DD8  C0 03 01 10 */	lfs f0, 0x110(r3)
/* 801D7DDC  D0 1E 00 AC */	stfs f0, 0xac(r30)
/* 801D7DE0  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 801D7DE4  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 801D7DE8  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 801D7DEC  48 07 C7 C5 */	bl paneTrans__8CPaneMgrFff
lbl_801D7DF0:
/* 801D7DF0  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 801D7DF4  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7DF8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7DFC  C0 23 01 14 */	lfs f1, 0x114(r3)
/* 801D7E00  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D7E04  41 82 00 2C */	beq lbl_801D7E30
/* 801D7E08  D0 3E 00 B0 */	stfs f1, 0xb0(r30)
/* 801D7E0C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 801D7E10  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 801D7E14  80 63 00 04 */	lwz r3, 4(r3)
/* 801D7E18  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D7E1C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D7E20  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7E24  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D7E28  7D 89 03 A6 */	mtctr r12
/* 801D7E2C  4E 80 04 21 */	bctrl 
lbl_801D7E30:
/* 801D7E30  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 801D7E34  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7E38  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7E3C  C0 43 01 18 */	lfs f2, 0x118(r3)
/* 801D7E40  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801D7E44  40 82 00 14 */	bne lbl_801D7E58
/* 801D7E48  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 801D7E4C  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 801D7E50  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D7E54  41 82 00 28 */	beq lbl_801D7E7C
lbl_801D7E58:
/* 801D7E58  D0 5E 00 B4 */	stfs f2, 0xb4(r30)
/* 801D7E5C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7E60  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7E64  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 801D7E68  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 801D7E6C  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 801D7E70  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 801D7E74  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 801D7E78  48 07 C7 39 */	bl paneTrans__8CPaneMgrFff
lbl_801D7E7C:
/* 801D7E7C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 801D7E80  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7E84  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7E88  C0 23 01 20 */	lfs f1, 0x120(r3)
/* 801D7E8C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D7E90  41 82 00 2C */	beq lbl_801D7EBC
/* 801D7E94  D0 3E 00 BC */	stfs f1, 0xbc(r30)
/* 801D7E98  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 801D7E9C  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 801D7EA0  80 63 00 04 */	lwz r3, 4(r3)
/* 801D7EA4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D7EA8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D7EAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7EB0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D7EB4  7D 89 03 A6 */	mtctr r12
/* 801D7EB8  4E 80 04 21 */	bctrl 
lbl_801D7EBC:
/* 801D7EBC  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7EC0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7EC4  88 03 02 ED */	lbz r0, 0x2ed(r3)
/* 801D7EC8  28 00 00 00 */	cmplwi r0, 0
/* 801D7ECC  40 82 00 0C */	bne lbl_801D7ED8
/* 801D7ED0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801D7ED4  41 82 01 9C */	beq lbl_801D8070
lbl_801D7ED8:
/* 801D7ED8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801D7EDC  3C 80 80 43 */	lis r4, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7EE0  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7EE4  C0 24 01 24 */	lfs f1, 0x124(r4)
/* 801D7EE8  C0 44 01 28 */	lfs f2, 0x128(r4)
/* 801D7EEC  48 07 C6 C5 */	bl paneTrans__8CPaneMgrFff
/* 801D7EF0  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7EF4  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7EF8  C0 03 01 2C */	lfs f0, 0x12c(r3)
/* 801D7EFC  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801D7F00  80 63 00 04 */	lwz r3, 4(r3)
/* 801D7F04  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D7F08  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D7F0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7F10  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D7F14  7D 89 03 A6 */	mtctr r12
/* 801D7F18  4E 80 04 21 */	bctrl 
/* 801D7F1C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801D7F20  3C 80 80 43 */	lis r4, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7F24  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7F28  C0 24 01 30 */	lfs f1, 0x130(r4)
/* 801D7F2C  C0 44 01 34 */	lfs f2, 0x134(r4)
/* 801D7F30  48 07 C6 81 */	bl paneTrans__8CPaneMgrFff
/* 801D7F34  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7F38  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7F3C  C0 03 01 38 */	lfs f0, 0x138(r3)
/* 801D7F40  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801D7F44  80 63 00 04 */	lwz r3, 4(r3)
/* 801D7F48  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D7F4C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D7F50  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7F54  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D7F58  7D 89 03 A6 */	mtctr r12
/* 801D7F5C  4E 80 04 21 */	bctrl 
/* 801D7F60  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801D7F64  3C 80 80 43 */	lis r4, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7F68  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7F6C  C0 24 01 3C */	lfs f1, 0x13c(r4)
/* 801D7F70  C0 44 01 40 */	lfs f2, 0x140(r4)
/* 801D7F74  48 07 C6 3D */	bl paneTrans__8CPaneMgrFff
/* 801D7F78  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7F7C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7F80  C0 03 01 44 */	lfs f0, 0x144(r3)
/* 801D7F84  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801D7F88  80 63 00 04 */	lwz r3, 4(r3)
/* 801D7F8C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D7F90  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D7F94  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7F98  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D7F9C  7D 89 03 A6 */	mtctr r12
/* 801D7FA0  4E 80 04 21 */	bctrl 
/* 801D7FA4  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 801D7FA8  3C 80 80 43 */	lis r4, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7FAC  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7FB0  C0 24 01 48 */	lfs f1, 0x148(r4)
/* 801D7FB4  C0 44 01 4C */	lfs f2, 0x14c(r4)
/* 801D7FB8  48 07 C5 F9 */	bl paneTrans__8CPaneMgrFff
/* 801D7FBC  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7FC0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7FC4  C0 03 01 50 */	lfs f0, 0x150(r3)
/* 801D7FC8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 801D7FCC  80 63 00 04 */	lwz r3, 4(r3)
/* 801D7FD0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D7FD4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D7FD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7FDC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D7FE0  7D 89 03 A6 */	mtctr r12
/* 801D7FE4  4E 80 04 21 */	bctrl 
/* 801D7FE8  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 801D7FEC  3C 80 80 43 */	lis r4, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7FF0  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7FF4  C0 24 01 54 */	lfs f1, 0x154(r4)
/* 801D7FF8  C0 44 01 58 */	lfs f2, 0x158(r4)
/* 801D7FFC  48 07 C5 B5 */	bl paneTrans__8CPaneMgrFff
/* 801D8000  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D8004  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D8008  C0 03 01 5C */	lfs f0, 0x15c(r3)
/* 801D800C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 801D8010  80 63 00 04 */	lwz r3, 4(r3)
/* 801D8014  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D8018  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D801C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D8020  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D8024  7D 89 03 A6 */	mtctr r12
/* 801D8028  4E 80 04 21 */	bctrl 
/* 801D802C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 801D8030  3C 80 80 43 */	lis r4, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D8034  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D8038  C0 24 01 60 */	lfs f1, 0x160(r4)
/* 801D803C  C0 44 01 64 */	lfs f2, 0x164(r4)
/* 801D8040  48 07 C5 71 */	bl paneTrans__8CPaneMgrFff
/* 801D8044  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D8048  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D804C  C0 03 01 68 */	lfs f0, 0x168(r3)
/* 801D8050  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 801D8054  80 63 00 04 */	lwz r3, 4(r3)
/* 801D8058  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D805C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D8060  81 83 00 00 */	lwz r12, 0(r3)
/* 801D8064  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D8068  7D 89 03 A6 */	mtctr r12
/* 801D806C  4E 80 04 21 */	bctrl 
lbl_801D8070:
/* 801D8070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D8074  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D8078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D807C  7C 08 03 A6 */	mtlr r0
/* 801D8080  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8084  4E 80 00 20 */	blr 
