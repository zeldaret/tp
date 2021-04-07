lbl_80516980:
/* 80516980  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80516984  7C 08 02 A6 */	mflr r0
/* 80516988  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8051698C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80516990  4B E4 B8 49 */	bl _savegpr_28
/* 80516994  7C 7E 1B 78 */	mr r30, r3
/* 80516998  3C 60 80 52 */	lis r3, lit_1109@ha /* 0x80519140@ha */
/* 8051699C  3B E3 91 40 */	addi r31, r3, lit_1109@l /* 0x80519140@l */
/* 805169A0  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 805169A4  3B A3 85 84 */	addi r29, r3, lit_4208@l /* 0x80518584@l */
/* 805169A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805169AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805169B0  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 805169B4  88 1F 02 A0 */	lbz r0, 0x2a0(r31)
/* 805169B8  7C 00 07 75 */	extsb. r0, r0
/* 805169BC  40 82 00 BC */	bne lbl_80516A78
/* 805169C0  C0 5D 03 C4 */	lfs f2, 0x3c4(r29)
/* 805169C4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 805169C8  C0 3D 03 C8 */	lfs f1, 0x3c8(r29)
/* 805169CC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805169D0  C0 1D 03 CC */	lfs f0, 0x3cc(r29)
/* 805169D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805169D8  D0 5F 02 BC */	stfs f2, 0x2bc(r31)
/* 805169DC  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 805169E0  D0 23 00 04 */	stfs f1, 4(r3)
/* 805169E4  D0 03 00 08 */	stfs f0, 8(r3)
/* 805169E8  3C 80 80 52 */	lis r4, __dt__4cXyzFv@ha /* 0x80518534@ha */
/* 805169EC  38 84 85 34 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80518534@l */
/* 805169F0  38 BF 02 94 */	addi r5, r31, 0x294
/* 805169F4  4B FE E0 05 */	bl __register_global_object
/* 805169F8  C0 5D 03 D0 */	lfs f2, 0x3d0(r29)
/* 805169FC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80516A00  C0 3D 03 C8 */	lfs f1, 0x3c8(r29)
/* 80516A04  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80516A08  C0 1D 03 D4 */	lfs f0, 0x3d4(r29)
/* 80516A0C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80516A10  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 80516A14  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80516A18  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80516A1C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80516A20  38 63 00 0C */	addi r3, r3, 0xc
/* 80516A24  3C 80 80 52 */	lis r4, __dt__4cXyzFv@ha /* 0x80518534@ha */
/* 80516A28  38 84 85 34 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80518534@l */
/* 80516A2C  38 BF 02 A4 */	addi r5, r31, 0x2a4
/* 80516A30  4B FE DF C9 */	bl __register_global_object
/* 80516A34  C0 5D 03 D8 */	lfs f2, 0x3d8(r29)
/* 80516A38  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80516A3C  C0 3D 03 C8 */	lfs f1, 0x3c8(r29)
/* 80516A40  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80516A44  C0 1D 03 DC */	lfs f0, 0x3dc(r29)
/* 80516A48  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80516A4C  38 7F 02 BC */	addi r3, r31, 0x2bc
/* 80516A50  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80516A54  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80516A58  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80516A5C  38 63 00 18 */	addi r3, r3, 0x18
/* 80516A60  3C 80 80 52 */	lis r4, __dt__4cXyzFv@ha /* 0x80518534@ha */
/* 80516A64  38 84 85 34 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80518534@l */
/* 80516A68  38 BF 02 B0 */	addi r5, r31, 0x2b0
/* 80516A6C  4B FE DF 8D */	bl __register_global_object
/* 80516A70  38 00 00 01 */	li r0, 1
/* 80516A74  98 1F 02 A0 */	stb r0, 0x2a0(r31)
lbl_80516A78:
/* 80516A78  38 61 00 34 */	addi r3, r1, 0x34
/* 80516A7C  4B B6 0B 01 */	bl __ct__11dBgS_GndChkFv
/* 80516A80  3B A0 00 00 */	li r29, 0
/* 80516A84  B3 A1 00 08 */	sth r29, 8(r1)
/* 80516A88  B3 A1 00 0A */	sth r29, 0xa(r1)
/* 80516A8C  B3 A1 00 0C */	sth r29, 0xc(r1)
/* 80516A90  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80516A94  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80516A98  3B 80 00 00 */	li r28, 0
lbl_80516A9C:
/* 80516A9C  38 60 00 EF */	li r3, 0xef
/* 80516AA0  38 1C 00 01 */	addi r0, r28, 1
/* 80516AA4  54 00 40 2E */	slwi r0, r0, 8
/* 80516AA8  64 04 80 00 */	oris r4, r0, 0x8000
/* 80516AAC  60 84 00 0A */	ori r4, r4, 0xa
/* 80516AB0  38 BF 02 BC */	addi r5, r31, 0x2bc
/* 80516AB4  7C A5 EA 14 */	add r5, r5, r29
/* 80516AB8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80516ABC  7C 06 07 74 */	extsb r6, r0
/* 80516AC0  38 E1 00 08 */	addi r7, r1, 8
/* 80516AC4  39 00 00 00 */	li r8, 0
/* 80516AC8  39 20 FF FF */	li r9, -1
/* 80516ACC  4B B0 32 CD */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80516AD0  3B 9C 00 01 */	addi r28, r28, 1
/* 80516AD4  2C 1C 00 03 */	cmpwi r28, 3
/* 80516AD8  3B BD 00 0C */	addi r29, r29, 0xc
/* 80516ADC  41 80 FF C0 */	blt lbl_80516A9C
/* 80516AE0  38 61 00 34 */	addi r3, r1, 0x34
/* 80516AE4  38 80 FF FF */	li r4, -1
/* 80516AE8  4B B6 0B 09 */	bl __dt__11dBgS_GndChkFv
/* 80516AEC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80516AF0  4B E4 B7 35 */	bl _restgpr_28
/* 80516AF4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80516AF8  7C 08 03 A6 */	mtlr r0
/* 80516AFC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80516B00  4E 80 00 20 */	blr 
