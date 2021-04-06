lbl_805C7EAC:
/* 805C7EAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C7EB0  7C 08 02 A6 */	mflr r0
/* 805C7EB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C7EB8  39 61 00 30 */	addi r11, r1, 0x30
/* 805C7EBC  4B D9 A3 21 */	bl _savegpr_29
/* 805C7EC0  7C 7D 1B 78 */	mr r29, r3
/* 805C7EC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C7EC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C7ECC  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805C7ED0  7C 00 07 74 */	extsb r0, r0
/* 805C7ED4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C7ED8  7C 63 02 14 */	add r3, r3, r0
/* 805C7EDC  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 805C7EE0  4B BB 97 61 */	bl dCam_getBody__Fv
/* 805C7EE4  7C 7E 1B 78 */	mr r30, r3
/* 805C7EE8  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 805C7EEC  28 00 00 02 */	cmplwi r0, 2
/* 805C7EF0  41 82 00 24 */	beq lbl_805C7F14
/* 805C7EF4  7F A3 EB 78 */	mr r3, r29
/* 805C7EF8  38 80 00 02 */	li r4, 2
/* 805C7EFC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805C7F00  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805C7F04  38 C0 00 00 */	li r6, 0
/* 805C7F08  4B A5 3A 01 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805C7F0C  38 60 00 00 */	li r3, 0
/* 805C7F10  48 00 00 A4 */	b lbl_805C7FB4
lbl_805C7F14:
/* 805C7F14  38 7F 02 48 */	addi r3, r31, 0x248
/* 805C7F18  4B B9 95 B9 */	bl Stop__9dCamera_cFv
/* 805C7F1C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 805C7F20  C0 1E 06 F4 */	lfs f0, 0x6f4(r30)
/* 805C7F24  EC 01 00 2A */	fadds f0, f1, f0
/* 805C7F28  D0 1D 06 00 */	stfs f0, 0x600(r29)
/* 805C7F2C  38 61 00 14 */	addi r3, r1, 0x14
/* 805C7F30  7F C4 F3 78 */	mr r4, r30
/* 805C7F34  4B BB 9F 65 */	bl Center__9dCamera_cFv
/* 805C7F38  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805C7F3C  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 805C7F40  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805C7F44  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 805C7F48  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805C7F4C  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 805C7F50  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 805C7F54  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 805C7F58  C0 1D 05 CC */	lfs f0, 0x5cc(r29)
/* 805C7F5C  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 805C7F60  C0 1D 05 D0 */	lfs f0, 0x5d0(r29)
/* 805C7F64  D0 1D 05 DC */	stfs f0, 0x5dc(r29)
/* 805C7F68  38 61 00 08 */	addi r3, r1, 8
/* 805C7F6C  7F C4 F3 78 */	mr r4, r30
/* 805C7F70  4B BB 9E F5 */	bl Eye__9dCamera_cFv
/* 805C7F74  C0 01 00 08 */	lfs f0, 8(r1)
/* 805C7F78  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 805C7F7C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805C7F80  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 805C7F84  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805C7F88  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 805C7F8C  C0 1D 05 E0 */	lfs f0, 0x5e0(r29)
/* 805C7F90  D0 1D 05 EC */	stfs f0, 0x5ec(r29)
/* 805C7F94  C0 1D 05 E4 */	lfs f0, 0x5e4(r29)
/* 805C7F98  D0 1D 05 F0 */	stfs f0, 0x5f0(r29)
/* 805C7F9C  C0 1D 05 E8 */	lfs f0, 0x5e8(r29)
/* 805C7FA0  D0 1D 05 F4 */	stfs f0, 0x5f4(r29)
/* 805C7FA4  38 7F 02 48 */	addi r3, r31, 0x248
/* 805C7FA8  38 80 00 03 */	li r4, 3
/* 805C7FAC  4B B9 B0 61 */	bl SetTrimSize__9dCamera_cFl
/* 805C7FB0  38 60 00 01 */	li r3, 1
lbl_805C7FB4:
/* 805C7FB4  39 61 00 30 */	addi r11, r1, 0x30
/* 805C7FB8  4B D9 A2 71 */	bl _restgpr_29
/* 805C7FBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C7FC0  7C 08 03 A6 */	mtlr r0
/* 805C7FC4  38 21 00 30 */	addi r1, r1, 0x30
/* 805C7FC8  4E 80 00 20 */	blr 
