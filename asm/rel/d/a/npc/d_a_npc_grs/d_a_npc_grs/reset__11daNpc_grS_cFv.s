lbl_809E5E58:
/* 809E5E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E5E5C  7C 08 02 A6 */	mflr r0
/* 809E5E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E5E64  39 61 00 20 */	addi r11, r1, 0x20
/* 809E5E68  4B 97 C3 74 */	b _savegpr_29
/* 809E5E6C  7C 7F 1B 78 */	mr r31, r3
/* 809E5E70  4B 76 CA 58 */	b initialize__8daNpcF_cFv
/* 809E5E74  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E5E78  4B 76 A8 C0 */	b initialize__15daNpcF_MatAnm_cFv
/* 809E5E7C  38 7F 0B E0 */	addi r3, r31, 0xbe0
/* 809E5E80  4B 76 B1 B8 */	b initialize__15daNpcF_Lookat_cFv
/* 809E5E84  3B A0 00 00 */	li r29, 0
/* 809E5E88  3B C0 00 00 */	li r30, 0
lbl_809E5E8C:
/* 809E5E8C  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 809E5E90  7C 7F 1A 14 */	add r3, r31, r3
/* 809E5E94  4B 76 A8 1C */	b initialize__18daNpcF_ActorMngr_cFv
/* 809E5E98  3B BD 00 01 */	addi r29, r29, 1
/* 809E5E9C  2C 1D 00 02 */	cmpwi r29, 2
/* 809E5EA0  3B DE 00 08 */	addi r30, r30, 8
/* 809E5EA4  41 80 FF E8 */	blt lbl_809E5E8C
/* 809E5EA8  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809E5EAC  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809E5EB0  80 64 00 00 */	lwz r3, 0(r4)
/* 809E5EB4  80 04 00 04 */	lwz r0, 4(r4)
/* 809E5EB8  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 809E5EBC  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 809E5EC0  80 04 00 08 */	lwz r0, 8(r4)
/* 809E5EC4  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 809E5EC8  80 64 00 00 */	lwz r3, 0(r4)
/* 809E5ECC  80 04 00 04 */	lwz r0, 4(r4)
/* 809E5ED0  90 7F 0D D8 */	stw r3, 0xdd8(r31)
/* 809E5ED4  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 809E5ED8  80 04 00 08 */	lwz r0, 8(r4)
/* 809E5EDC  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 809E5EE0  38 00 00 00 */	li r0, 0
/* 809E5EE4  90 1F 0D FC */	stw r0, 0xdfc(r31)
/* 809E5EE8  90 1F 0E 00 */	stw r0, 0xe00(r31)
/* 809E5EEC  90 1F 0E 04 */	stw r0, 0xe04(r31)
/* 809E5EF0  90 1F 0E 08 */	stw r0, 0xe08(r31)
/* 809E5EF4  38 80 FF FF */	li r4, -1
/* 809E5EF8  B0 9F 0E 10 */	sth r4, 0xe10(r31)
/* 809E5EFC  B0 1F 0E 12 */	sth r0, 0xe12(r31)
/* 809E5F00  90 9F 0E 18 */	stw r4, 0xe18(r31)
/* 809E5F04  38 60 00 00 */	li r3, 0
/* 809E5F08  38 00 00 06 */	li r0, 6
/* 809E5F0C  7C 09 03 A6 */	mtctr r0
lbl_809E5F10:
/* 809E5F10  38 03 0E 1C */	addi r0, r3, 0xe1c
/* 809E5F14  7C 9F 01 2E */	stwx r4, r31, r0
/* 809E5F18  38 63 00 04 */	addi r3, r3, 4
/* 809E5F1C  42 00 FF F4 */	bdnz lbl_809E5F10
/* 809E5F20  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 809E5F24  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809E5F28  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 809E5F2C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809E5F30  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 809E5F34  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809E5F38  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809E5F3C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809E5F40  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809E5F44  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809E5F48  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809E5F4C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809E5F50  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809E5F54  38 80 00 00 */	li r4, 0
/* 809E5F58  B0 9F 04 DC */	sth r4, 0x4dc(r31)
/* 809E5F5C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 809E5F60  B0 9F 04 E0 */	sth r4, 0x4e0(r31)
/* 809E5F64  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809E5F68  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 809E5F6C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809E5F70  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 809E5F74  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809E5F78  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 809E5F7C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809E5F80  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 809E5F84  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809E5F88  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809E5F8C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809E5F90  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 809E5F94  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809E5F98  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 809E5F9C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809E5FA0  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 809E5FA4  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809E5FA8  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 809E5FAC  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809E5FB0  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 809E5FB4  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809E5FB8  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 809E5FBC  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809E5FC0  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 809E5FC4  3C 60 80 9E */	lis r3, lit_4491@ha
/* 809E5FC8  C0 03 7E 4C */	lfs f0, lit_4491@l(r3)
/* 809E5FCC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809E5FD0  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809E5FD4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809E5FD8  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809E5FDC  98 9F 0E 34 */	stb r4, 0xe34(r31)
/* 809E5FE0  38 00 00 01 */	li r0, 1
/* 809E5FE4  98 1F 09 EE */	stb r0, 0x9ee(r31)
/* 809E5FE8  39 61 00 20 */	addi r11, r1, 0x20
/* 809E5FEC  4B 97 C2 3C */	b _restgpr_29
/* 809E5FF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E5FF4  7C 08 03 A6 */	mtlr r0
/* 809E5FF8  38 21 00 20 */	addi r1, r1, 0x20
/* 809E5FFC  4E 80 00 20 */	blr 
