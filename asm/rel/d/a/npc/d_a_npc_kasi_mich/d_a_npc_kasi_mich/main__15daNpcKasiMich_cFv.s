lbl_80A26D34:
/* 80A26D34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A26D38  7C 08 02 A6 */	mflr r0
/* 80A26D3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A26D40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A26D44  7C 7F 1B 78 */	mr r31, r3
/* 80A26D48  3C 60 80 A3 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80A2A2B4@ha */
/* 80A26D4C  38 A3 A2 B4 */	addi r5, r3, cNullVec__6Z2Calc@l /* 0x80A2A2B4@l */
/* 80A26D50  80 1F 14 44 */	lwz r0, 0x1444(r31)
/* 80A26D54  2C 00 00 00 */	cmpwi r0, 0
/* 80A26D58  41 80 02 40 */	blt lbl_80A26F98
/* 80A26D5C  3C 60 80 A3 */	lis r3, struct_80A2A7F8+0x2@ha /* 0x80A2A7FA@ha */
/* 80A26D60  38 83 A7 FA */	addi r4, r3, struct_80A2A7F8+0x2@l /* 0x80A2A7FA@l */
/* 80A26D64  88 04 00 00 */	lbz r0, 0(r4)
/* 80A26D68  7C 00 07 75 */	extsb. r0, r0
/* 80A26D6C  40 82 01 F8 */	bne lbl_80A26F64
/* 80A26D70  80 65 01 0C */	lwz r3, 0x10c(r5)
/* 80A26D74  80 05 01 10 */	lwz r0, 0x110(r5)
/* 80A26D78  90 65 01 F0 */	stw r3, 0x1f0(r5)
/* 80A26D7C  90 05 01 F4 */	stw r0, 0x1f4(r5)
/* 80A26D80  80 05 01 14 */	lwz r0, 0x114(r5)
/* 80A26D84  90 05 01 F8 */	stw r0, 0x1f8(r5)
/* 80A26D88  38 65 01 F0 */	addi r3, r5, 0x1f0
/* 80A26D8C  80 C5 01 18 */	lwz r6, 0x118(r5)
/* 80A26D90  80 05 01 1C */	lwz r0, 0x11c(r5)
/* 80A26D94  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80A26D98  90 03 00 10 */	stw r0, 0x10(r3)
/* 80A26D9C  80 05 01 20 */	lwz r0, 0x120(r5)
/* 80A26DA0  90 03 00 14 */	stw r0, 0x14(r3)
/* 80A26DA4  80 C5 01 24 */	lwz r6, 0x124(r5)
/* 80A26DA8  80 05 01 28 */	lwz r0, 0x128(r5)
/* 80A26DAC  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80A26DB0  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80A26DB4  80 05 01 2C */	lwz r0, 0x12c(r5)
/* 80A26DB8  90 03 00 20 */	stw r0, 0x20(r3)
/* 80A26DBC  80 C5 01 30 */	lwz r6, 0x130(r5)
/* 80A26DC0  80 05 01 34 */	lwz r0, 0x134(r5)
/* 80A26DC4  90 C3 00 24 */	stw r6, 0x24(r3)
/* 80A26DC8  90 03 00 28 */	stw r0, 0x28(r3)
/* 80A26DCC  80 05 01 38 */	lwz r0, 0x138(r5)
/* 80A26DD0  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80A26DD4  80 C5 01 3C */	lwz r6, 0x13c(r5)
/* 80A26DD8  80 05 01 40 */	lwz r0, 0x140(r5)
/* 80A26DDC  90 C3 00 30 */	stw r6, 0x30(r3)
/* 80A26DE0  90 03 00 34 */	stw r0, 0x34(r3)
/* 80A26DE4  80 05 01 44 */	lwz r0, 0x144(r5)
/* 80A26DE8  90 03 00 38 */	stw r0, 0x38(r3)
/* 80A26DEC  80 C5 01 48 */	lwz r6, 0x148(r5)
/* 80A26DF0  80 05 01 4C */	lwz r0, 0x14c(r5)
/* 80A26DF4  90 C3 00 3C */	stw r6, 0x3c(r3)
/* 80A26DF8  90 03 00 40 */	stw r0, 0x40(r3)
/* 80A26DFC  80 05 01 50 */	lwz r0, 0x150(r5)
/* 80A26E00  90 03 00 44 */	stw r0, 0x44(r3)
/* 80A26E04  80 C5 01 54 */	lwz r6, 0x154(r5)
/* 80A26E08  80 05 01 58 */	lwz r0, 0x158(r5)
/* 80A26E0C  90 C3 00 48 */	stw r6, 0x48(r3)
/* 80A26E10  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80A26E14  80 05 01 5C */	lwz r0, 0x15c(r5)
/* 80A26E18  90 03 00 50 */	stw r0, 0x50(r3)
/* 80A26E1C  80 C5 01 60 */	lwz r6, 0x160(r5)
/* 80A26E20  80 05 01 64 */	lwz r0, 0x164(r5)
/* 80A26E24  90 C3 00 54 */	stw r6, 0x54(r3)
/* 80A26E28  90 03 00 58 */	stw r0, 0x58(r3)
/* 80A26E2C  80 05 01 68 */	lwz r0, 0x168(r5)
/* 80A26E30  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80A26E34  80 C5 01 6C */	lwz r6, 0x16c(r5)
/* 80A26E38  80 05 01 70 */	lwz r0, 0x170(r5)
/* 80A26E3C  90 C3 00 60 */	stw r6, 0x60(r3)
/* 80A26E40  90 03 00 64 */	stw r0, 0x64(r3)
/* 80A26E44  80 05 01 74 */	lwz r0, 0x174(r5)
/* 80A26E48  90 03 00 68 */	stw r0, 0x68(r3)
/* 80A26E4C  80 C5 01 78 */	lwz r6, 0x178(r5)
/* 80A26E50  80 05 01 7C */	lwz r0, 0x17c(r5)
/* 80A26E54  90 C3 00 6C */	stw r6, 0x6c(r3)
/* 80A26E58  90 03 00 70 */	stw r0, 0x70(r3)
/* 80A26E5C  80 05 01 80 */	lwz r0, 0x180(r5)
/* 80A26E60  90 03 00 74 */	stw r0, 0x74(r3)
/* 80A26E64  80 C5 01 84 */	lwz r6, 0x184(r5)
/* 80A26E68  80 05 01 88 */	lwz r0, 0x188(r5)
/* 80A26E6C  90 C3 00 78 */	stw r6, 0x78(r3)
/* 80A26E70  90 03 00 7C */	stw r0, 0x7c(r3)
/* 80A26E74  80 05 01 8C */	lwz r0, 0x18c(r5)
/* 80A26E78  90 03 00 80 */	stw r0, 0x80(r3)
/* 80A26E7C  80 C5 01 90 */	lwz r6, 0x190(r5)
/* 80A26E80  80 05 01 94 */	lwz r0, 0x194(r5)
/* 80A26E84  90 C3 00 84 */	stw r6, 0x84(r3)
/* 80A26E88  90 03 00 88 */	stw r0, 0x88(r3)
/* 80A26E8C  80 05 01 98 */	lwz r0, 0x198(r5)
/* 80A26E90  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80A26E94  80 C5 01 9C */	lwz r6, 0x19c(r5)
/* 80A26E98  80 05 01 A0 */	lwz r0, 0x1a0(r5)
/* 80A26E9C  90 C3 00 90 */	stw r6, 0x90(r3)
/* 80A26EA0  90 03 00 94 */	stw r0, 0x94(r3)
/* 80A26EA4  80 05 01 A4 */	lwz r0, 0x1a4(r5)
/* 80A26EA8  90 03 00 98 */	stw r0, 0x98(r3)
/* 80A26EAC  80 C5 01 A8 */	lwz r6, 0x1a8(r5)
/* 80A26EB0  80 05 01 AC */	lwz r0, 0x1ac(r5)
/* 80A26EB4  90 C3 00 9C */	stw r6, 0x9c(r3)
/* 80A26EB8  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 80A26EBC  80 05 01 B0 */	lwz r0, 0x1b0(r5)
/* 80A26EC0  90 03 00 A4 */	stw r0, 0xa4(r3)
/* 80A26EC4  80 C5 01 B4 */	lwz r6, 0x1b4(r5)
/* 80A26EC8  80 05 01 B8 */	lwz r0, 0x1b8(r5)
/* 80A26ECC  90 C3 00 A8 */	stw r6, 0xa8(r3)
/* 80A26ED0  90 03 00 AC */	stw r0, 0xac(r3)
/* 80A26ED4  80 05 01 BC */	lwz r0, 0x1bc(r5)
/* 80A26ED8  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80A26EDC  3C C0 80 3A */	lis r6, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A26EE0  38 E6 21 80 */	addi r7, r6, __ptmf_null@l /* 0x803A2180@l */
/* 80A26EE4  80 C7 00 00 */	lwz r6, 0(r7)
/* 80A26EE8  80 07 00 04 */	lwz r0, 4(r7)
/* 80A26EEC  90 C3 00 B4 */	stw r6, 0xb4(r3)
/* 80A26EF0  90 03 00 B8 */	stw r0, 0xb8(r3)
/* 80A26EF4  80 07 00 08 */	lwz r0, 8(r7)
/* 80A26EF8  90 03 00 BC */	stw r0, 0xbc(r3)
/* 80A26EFC  80 C5 01 C0 */	lwz r6, 0x1c0(r5)
/* 80A26F00  80 05 01 C4 */	lwz r0, 0x1c4(r5)
/* 80A26F04  90 C3 00 C0 */	stw r6, 0xc0(r3)
/* 80A26F08  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 80A26F0C  80 05 01 C8 */	lwz r0, 0x1c8(r5)
/* 80A26F10  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 80A26F14  80 C5 01 CC */	lwz r6, 0x1cc(r5)
/* 80A26F18  80 05 01 D0 */	lwz r0, 0x1d0(r5)
/* 80A26F1C  90 C3 00 CC */	stw r6, 0xcc(r3)
/* 80A26F20  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 80A26F24  80 05 01 D4 */	lwz r0, 0x1d4(r5)
/* 80A26F28  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 80A26F2C  80 C5 01 D8 */	lwz r6, 0x1d8(r5)
/* 80A26F30  80 05 01 DC */	lwz r0, 0x1dc(r5)
/* 80A26F34  90 C3 00 D8 */	stw r6, 0xd8(r3)
/* 80A26F38  90 03 00 DC */	stw r0, 0xdc(r3)
/* 80A26F3C  80 05 01 E0 */	lwz r0, 0x1e0(r5)
/* 80A26F40  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 80A26F44  80 C5 01 E4 */	lwz r6, 0x1e4(r5)
/* 80A26F48  80 05 01 E8 */	lwz r0, 0x1e8(r5)
/* 80A26F4C  90 C3 00 E4 */	stw r6, 0xe4(r3)
/* 80A26F50  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 80A26F54  80 05 01 EC */	lwz r0, 0x1ec(r5)
/* 80A26F58  90 03 00 EC */	stw r0, 0xec(r3)
/* 80A26F5C  38 00 00 01 */	li r0, 1
/* 80A26F60  98 04 00 00 */	stb r0, 0(r4)
lbl_80A26F64:
/* 80A26F64  80 1F 14 44 */	lwz r0, 0x1444(r31)
/* 80A26F68  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80A26F6C  38 05 01 F0 */	addi r0, r5, 0x1f0
/* 80A26F70  7C 80 1A 14 */	add r4, r0, r3
/* 80A26F74  80 64 00 00 */	lwz r3, 0(r4)
/* 80A26F78  80 04 00 04 */	lwz r0, 4(r4)
/* 80A26F7C  90 61 00 08 */	stw r3, 8(r1)
/* 80A26F80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A26F84  80 04 00 08 */	lwz r0, 8(r4)
/* 80A26F88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A26F8C  7F E3 FB 78 */	mr r3, r31
/* 80A26F90  38 81 00 08 */	addi r4, r1, 8
/* 80A26F94  48 00 0A F1 */	bl setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i
lbl_80A26F98:
/* 80A26F98  38 7F 14 08 */	addi r3, r31, 0x1408
/* 80A26F9C  4B 93 B0 7D */	bl __ptmf_test
/* 80A26FA0  2C 03 00 00 */	cmpwi r3, 0
/* 80A26FA4  41 82 00 18 */	beq lbl_80A26FBC
/* 80A26FA8  7F E3 FB 78 */	mr r3, r31
/* 80A26FAC  38 80 00 00 */	li r4, 0
/* 80A26FB0  39 9F 14 08 */	addi r12, r31, 0x1408
/* 80A26FB4  4B 93 B0 D1 */	bl __ptmf_scall
/* 80A26FB8  60 00 00 00 */	nop 
lbl_80A26FBC:
/* 80A26FBC  7F E3 FB 78 */	mr r3, r31
/* 80A26FC0  48 00 05 19 */	bl playMotion__15daNpcKasiMich_cFv
/* 80A26FC4  38 60 00 01 */	li r3, 1
/* 80A26FC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A26FCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A26FD0  7C 08 03 A6 */	mtlr r0
/* 80A26FD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A26FD8  4E 80 00 20 */	blr 
