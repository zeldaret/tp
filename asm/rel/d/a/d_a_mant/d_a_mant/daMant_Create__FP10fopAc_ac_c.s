lbl_80862918:
/* 80862918  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8086291C  7C 08 02 A6 */	mflr r0
/* 80862920  90 01 00 24 */	stw r0, 0x24(r1)
/* 80862924  39 61 00 20 */	addi r11, r1, 0x20
/* 80862928  4B AF F8 B5 */	bl _savegpr_29
/* 8086292C  7C 7E 1B 78 */	mr r30, r3
/* 80862930  3C 80 80 86 */	lis r4, lit_3815@ha /* 0x80862C4C@ha */
/* 80862934  3B E4 2C 4C */	addi r31, r4, lit_3815@l /* 0x80862C4C@l */
/* 80862938  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8086293C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80862940  40 82 00 D0 */	bne lbl_80862A10
/* 80862944  7F C0 F3 79 */	or. r0, r30, r30
/* 80862948  41 82 00 BC */	beq lbl_80862A04
/* 8086294C  7C 1D 03 78 */	mr r29, r0
/* 80862950  4B 7B 62 15 */	bl __ct__10fopAc_ac_cFv
/* 80862954  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80862958  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 8086295C  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80862960  38 00 00 00 */	li r0, 0
/* 80862964  90 1D 05 74 */	stw r0, 0x574(r29)
/* 80862968  90 1D 05 78 */	stw r0, 0x578(r29)
/* 8086296C  90 1D 05 7C */	stw r0, 0x57c(r29)
/* 80862970  3C 60 80 87 */	lis r3, __vt__15daMant_packet_c@ha /* 0x8086BF58@ha */
/* 80862974  38 03 BF 58 */	addi r0, r3, __vt__15daMant_packet_c@l /* 0x8086BF58@l */
/* 80862978  90 1D 05 70 */	stw r0, 0x570(r29)
/* 8086297C  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 80862980  3C 80 80 86 */	lis r4, __ct__4cXyzFv@ha /* 0x80862C40@ha */
/* 80862984  38 84 2C 40 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80862C40@l */
/* 80862988  3C A0 80 86 */	lis r5, __dt__4cXyzFv@ha /* 0x80861F60@ha */
/* 8086298C  38 A5 1F 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80861F60@l */
/* 80862990  38 C0 00 0C */	li r6, 0xc
/* 80862994  38 E0 01 52 */	li r7, 0x152
/* 80862998  4B AF F3 C9 */	bl __construct_array
/* 8086299C  38 7D 15 C0 */	addi r3, r29, 0x15c0
/* 808629A0  3C 80 80 86 */	lis r4, __ct__4cXyzFv@ha /* 0x80862C40@ha */
/* 808629A4  38 84 2C 40 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80862C40@l */
/* 808629A8  3C A0 80 86 */	lis r5, __dt__4cXyzFv@ha /* 0x80861F60@ha */
/* 808629AC  38 A5 1F 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80861F60@l */
/* 808629B0  38 C0 00 0C */	li r6, 0xc
/* 808629B4  38 E0 01 52 */	li r7, 0x152
/* 808629B8  4B AF F3 A9 */	bl __construct_array
/* 808629BC  38 00 00 00 */	li r0, 0
/* 808629C0  98 1D 05 E4 */	stb r0, 0x5e4(r29)
/* 808629C4  38 7D 25 A8 */	addi r3, r29, 0x25a8
/* 808629C8  3C 80 80 86 */	lis r4, __ct__8mant_j_sFv@ha /* 0x80862B3C@ha */
/* 808629CC  38 84 2B 3C */	addi r4, r4, __ct__8mant_j_sFv@l /* 0x80862B3C@l */
/* 808629D0  3C A0 80 86 */	lis r5, __dt__8mant_j_sFv@ha /* 0x80862AC0@ha */
/* 808629D4  38 A5 2A C0 */	addi r5, r5, __dt__8mant_j_sFv@l /* 0x80862AC0@l */
/* 808629D8  38 C0 01 80 */	li r6, 0x180
/* 808629DC  38 E0 00 0D */	li r7, 0xd
/* 808629E0  4B AF F3 81 */	bl __construct_array
/* 808629E4  38 7D 39 28 */	addi r3, r29, 0x3928
/* 808629E8  3C 80 80 86 */	lis r4, __ct__4cXyzFv@ha /* 0x80862C40@ha */
/* 808629EC  38 84 2C 40 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80862C40@l */
/* 808629F0  3C A0 80 86 */	lis r5, __dt__4cXyzFv@ha /* 0x80861F60@ha */
/* 808629F4  38 A5 1F 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80861F60@l */
/* 808629F8  38 C0 00 0C */	li r6, 0xc
/* 808629FC  38 E0 00 02 */	li r7, 2
/* 80862A00  4B AF F3 61 */	bl __construct_array
lbl_80862A04:
/* 80862A04  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80862A08  60 00 00 08 */	ori r0, r0, 8
/* 80862A0C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80862A10:
/* 80862A10  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80862A14  98 1E 25 9C */	stb r0, 0x259c(r30)
/* 80862A18  7F C3 F3 78 */	mr r3, r30
/* 80862A1C  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80862A20  FC 40 08 90 */	fmr f2, f1
/* 80862A24  FC 60 08 90 */	fmr f3, f1
/* 80862A28  4B 7B 7B 01 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80862A2C  7F C3 F3 78 */	mr r3, r30
/* 80862A30  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80862A34  FC 40 08 90 */	fmr f2, f1
/* 80862A38  FC 60 08 90 */	fmr f3, f1
/* 80862A3C  4B 7B 7A FD */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80862A40  88 1E 25 9C */	lbz r0, 0x259c(r30)
/* 80862A44  98 1E 25 99 */	stb r0, 0x2599(r30)
/* 80862A48  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80862A4C  D0 1E 39 4C */	stfs f0, 0x394c(r30)
/* 80862A50  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80862A54  D0 1E 39 50 */	stfs f0, 0x3950(r30)
/* 80862A58  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80862A5C  D0 1E 39 58 */	stfs f0, 0x3958(r30)
/* 80862A60  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80862A64  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80862A68  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80862A6C  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80862A70  38 80 00 06 */	li r4, 6
/* 80862A74  3C 60 80 86 */	lis r3, l_Egnd_mantTEX_U@ha /* 0x80866D40@ha */
/* 80862A78  38 63 6D 40 */	addi r3, r3, l_Egnd_mantTEX_U@l /* 0x80866D40@l */
/* 80862A7C  38 00 40 00 */	li r0, 0x4000
/* 80862A80  7C 09 03 A6 */	mtctr r0
lbl_80862A84:
/* 80862A84  98 83 00 00 */	stb r4, 0(r3)
/* 80862A88  38 63 00 01 */	addi r3, r3, 1
/* 80862A8C  42 00 FF F8 */	bdnz lbl_80862A84
/* 80862A90  38 00 00 00 */	li r0, 0
/* 80862A94  3C 60 80 87 */	lis r3, data_8086BF70@ha /* 0x8086BF70@ha */
/* 80862A98  98 03 BF 70 */	stb r0, data_8086BF70@l(r3)  /* 0x8086BF70@l */
/* 80862A9C  7F C3 F3 78 */	mr r3, r30
/* 80862AA0  4B FF FA 49 */	bl daMant_Execute__FP10mant_class
/* 80862AA4  38 60 00 04 */	li r3, 4
/* 80862AA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80862AAC  4B AF F7 7D */	bl _restgpr_29
/* 80862AB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80862AB4  7C 08 03 A6 */	mtlr r0
/* 80862AB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80862ABC  4E 80 00 20 */	blr 
