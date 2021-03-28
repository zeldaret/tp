lbl_80725ED4:
/* 80725ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80725ED8  7C 08 02 A6 */	mflr r0
/* 80725EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80725EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80725EE4  7C 7F 1B 78 */	mr r31, r3
/* 80725EE8  38 9F 05 38 */	addi r4, r31, 0x538
/* 80725EEC  38 A0 00 0A */	li r5, 0xa
/* 80725EF0  38 C0 00 00 */	li r6, 0
/* 80725EF4  38 E0 00 26 */	li r7, 0x26
/* 80725EF8  4B 8F 6B E0 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 80725EFC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80725F00  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80725F04  2C 04 00 FF */	cmpwi r4, 0xff
/* 80725F08  41 82 00 18 */	beq lbl_80725F20
/* 80725F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80725F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80725F14  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80725F18  7C 05 07 74 */	extsb r5, r0
/* 80725F1C  4B 90 F2 E4 */	b onSwitch__10dSv_info_cFii
lbl_80725F20:
/* 80725F20  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80725F24  28 00 00 01 */	cmplwi r0, 1
/* 80725F28  40 82 00 AC */	bne lbl_80725FD4
/* 80725F2C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80725F30  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80725F34  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80725F38  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80725F3C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80725F40  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80725F44  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80725F48  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80725F4C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80725F50  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80725F54  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80725F58  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80725F5C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80725F60  98 1F 04 E2 */	stb r0, 0x4e2(r31)
/* 80725F64  88 1F 04 BB */	lbz r0, 0x4bb(r31)
/* 80725F68  98 1F 04 E3 */	stb r0, 0x4e3(r31)
/* 80725F6C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80725F70  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80725F74  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80725F78  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80725F7C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80725F80  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80725F84  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80725F88  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80725F8C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80725F90  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80725F94  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80725F98  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80725F9C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80725FA0  98 1F 04 CE */	stb r0, 0x4ce(r31)
/* 80725FA4  88 1F 04 E3 */	lbz r0, 0x4e3(r31)
/* 80725FA8  98 1F 04 CF */	stb r0, 0x4cf(r31)
/* 80725FAC  38 60 00 01 */	li r3, 1
/* 80725FB0  B0 7F 05 62 */	sth r3, 0x562(r31)
/* 80725FB4  38 00 00 00 */	li r0, 0
/* 80725FB8  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 80725FBC  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80725FC0  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80725FC4  2C 00 00 FF */	cmpwi r0, 0xff
/* 80725FC8  41 82 00 14 */	beq lbl_80725FDC
/* 80725FCC  98 7F 0B A6 */	stb r3, 0xba6(r31)
/* 80725FD0  48 00 00 0C */	b lbl_80725FDC
lbl_80725FD4:
/* 80725FD4  7F E3 FB 78 */	mr r3, r31
/* 80725FD8  4B 8F 3C A4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80725FDC:
/* 80725FDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80725FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80725FE4  7C 08 03 A6 */	mtlr r0
/* 80725FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80725FEC  4E 80 00 20 */	blr 
