lbl_8070EEC4:
/* 8070EEC4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8070EEC8  7C 08 02 A6 */	mflr r0
/* 8070EECC  90 01 00 94 */	stw r0, 0x94(r1)
/* 8070EED0  39 61 00 90 */	addi r11, r1, 0x90
/* 8070EED4  4B C5 32 FD */	bl _savegpr_26
/* 8070EED8  7C 7B 1B 78 */	mr r27, r3
/* 8070EEDC  3C 60 80 71 */	lis r3, lit_3828@ha /* 0x80713974@ha */
/* 8070EEE0  3B E3 39 74 */	addi r31, r3, lit_3828@l /* 0x80713974@l */
/* 8070EEE4  80 7B 05 DC */	lwz r3, 0x5dc(r27)
/* 8070EEE8  80 63 00 04 */	lwz r3, 4(r3)
/* 8070EEEC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8070EEF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8070EEF4  38 63 00 60 */	addi r3, r3, 0x60
/* 8070EEF8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8070EEFC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8070EF00  80 84 00 00 */	lwz r4, 0(r4)
/* 8070EF04  4B C3 75 AD */	bl PSMTXCopy
/* 8070EF08  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070EF0C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8070EF10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070EF14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070EF18  38 61 00 14 */	addi r3, r1, 0x14
/* 8070EF1C  38 81 00 08 */	addi r4, r1, 8
/* 8070EF20  4B B6 1F CD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8070EF24  3B 41 00 20 */	addi r26, r1, 0x20
/* 8070EF28  7F 43 D3 78 */	mr r3, r26
/* 8070EF2C  4B 96 86 51 */	bl __ct__11dBgS_GndChkFv
/* 8070EF30  3C 60 80 71 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80713EE4@ha */
/* 8070EF34  38 63 3E E4 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x80713EE4@l */
/* 8070EF38  90 61 00 30 */	stw r3, 0x30(r1)
/* 8070EF3C  3B C3 00 0C */	addi r30, r3, 0xc
/* 8070EF40  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8070EF44  3B A3 00 18 */	addi r29, r3, 0x18
/* 8070EF48  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 8070EF4C  3B 83 00 24 */	addi r28, r3, 0x24
/* 8070EF50  93 81 00 6C */	stw r28, 0x6c(r1)
/* 8070EF54  38 7A 00 3C */	addi r3, r26, 0x3c
/* 8070EF58  4B 96 9F 11 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8070EF5C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8070EF60  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8070EF64  EC 01 00 2A */	fadds f0, f1, f0
/* 8070EF68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8070EF6C  7F 43 D3 78 */	mr r3, r26
/* 8070EF70  38 81 00 08 */	addi r4, r1, 8
/* 8070EF74  4B B5 8D B5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8070EF78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070EF7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070EF80  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8070EF84  7F 44 D3 78 */	mr r4, r26
/* 8070EF88  4B 96 55 19 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8070EF8C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8070EF90  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8070EF94  FC 00 08 18 */	frsp f0, f1
/* 8070EF98  EC 22 00 28 */	fsubs f1, f2, f0
/* 8070EF9C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8070EFA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070EFA4  40 81 00 30 */	ble lbl_8070EFD4
/* 8070EFA8  3C 60 80 71 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80713EE4@ha */
/* 8070EFAC  38 03 3E E4 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x80713EE4@l */
/* 8070EFB0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8070EFB4  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8070EFB8  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 8070EFBC  93 81 00 6C */	stw r28, 0x6c(r1)
/* 8070EFC0  7F 43 D3 78 */	mr r3, r26
/* 8070EFC4  38 80 00 00 */	li r4, 0
/* 8070EFC8  4B 96 86 29 */	bl __dt__11dBgS_GndChkFv
/* 8070EFCC  38 60 00 01 */	li r3, 1
/* 8070EFD0  48 00 00 2C */	b lbl_8070EFFC
lbl_8070EFD4:
/* 8070EFD4  3C 60 80 71 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80713EE4@ha */
/* 8070EFD8  38 03 3E E4 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x80713EE4@l */
/* 8070EFDC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8070EFE0  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8070EFE4  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 8070EFE8  93 81 00 6C */	stw r28, 0x6c(r1)
/* 8070EFEC  7F 43 D3 78 */	mr r3, r26
/* 8070EFF0  38 80 00 00 */	li r4, 0
/* 8070EFF4  4B 96 85 FD */	bl __dt__11dBgS_GndChkFv
/* 8070EFF8  38 60 00 00 */	li r3, 0
lbl_8070EFFC:
/* 8070EFFC  39 61 00 90 */	addi r11, r1, 0x90
/* 8070F000  4B C5 32 1D */	bl _restgpr_26
/* 8070F004  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8070F008  7C 08 03 A6 */	mtlr r0
/* 8070F00C  38 21 00 90 */	addi r1, r1, 0x90
/* 8070F010  4E 80 00 20 */	blr 
