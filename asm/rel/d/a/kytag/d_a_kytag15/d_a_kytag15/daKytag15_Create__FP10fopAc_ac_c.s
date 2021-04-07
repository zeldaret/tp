lbl_808609B4:
/* 808609B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808609B8  7C 08 02 A6 */	mflr r0
/* 808609BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 808609C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808609C4  93 C1 00 08 */	stw r30, 8(r1)
/* 808609C8  7C 7F 1B 78 */	mr r31, r3
/* 808609CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808609D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808609D4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 808609D8  3C 80 80 86 */	lis r4, d_a_kytag15__stringBase0@ha /* 0x80860B68@ha */
/* 808609DC  38 84 0B 68 */	addi r4, r4, d_a_kytag15__stringBase0@l /* 0x80860B68@l */
/* 808609E0  38 84 00 08 */	addi r4, r4, 8
/* 808609E4  4B B0 7F B1 */	bl strcmp
/* 808609E8  2C 03 00 00 */	cmpwi r3, 0
/* 808609EC  40 82 00 10 */	bne lbl_808609FC
/* 808609F0  38 00 00 01 */	li r0, 1
/* 808609F4  98 1F 05 8C */	stb r0, 0x58c(r31)
/* 808609F8  48 00 00 0C */	b lbl_80860A04
lbl_808609FC:
/* 808609FC  38 00 00 00 */	li r0, 0
/* 80860A00  98 1F 05 8C */	stb r0, 0x58c(r31)
lbl_80860A04:
/* 80860A04  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80860A08  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80860A0C  40 82 00 44 */	bne lbl_80860A50
/* 80860A10  28 1F 00 00 */	cmplwi r31, 0
/* 80860A14  41 82 00 30 */	beq lbl_80860A44
/* 80860A18  7F E3 FB 78 */	mr r3, r31
/* 80860A1C  4B 7B 81 49 */	bl __ct__10fopAc_ac_cFv
/* 80860A20  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80860A24  3C 60 80 86 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80860BC8@ha */
/* 80860A28  38 03 0B C8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80860BC8@l */
/* 80860A2C  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80860A30  7F C3 F3 78 */	mr r3, r30
/* 80860A34  38 80 00 00 */	li r4, 0
/* 80860A38  4B AC 79 C5 */	bl init__12J3DFrameCtrlFs
/* 80860A3C  38 00 00 00 */	li r0, 0
/* 80860A40  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80860A44:
/* 80860A44  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80860A48  60 00 00 08 */	ori r0, r0, 8
/* 80860A4C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80860A50:
/* 80860A50  88 1F 05 8C */	lbz r0, 0x58c(r31)
/* 80860A54  28 00 00 00 */	cmplwi r0, 0
/* 80860A58  40 82 00 30 */	bne lbl_80860A88
/* 80860A5C  4B 93 F0 5D */	bl dKy_daynight_check__Fv
/* 80860A60  2C 03 00 00 */	cmpwi r3, 0
/* 80860A64  40 82 00 14 */	bne lbl_80860A78
/* 80860A68  3C 60 80 86 */	lis r3, lit_3845@ha /* 0x80860B58@ha */
/* 80860A6C  C0 03 0B 58 */	lfs f0, lit_3845@l(r3)  /* 0x80860B58@l */
/* 80860A70  D0 1F 05 90 */	stfs f0, 0x590(r31)
/* 80860A74  48 00 00 20 */	b lbl_80860A94
lbl_80860A78:
/* 80860A78  3C 60 80 86 */	lis r3, lit_3823@ha /* 0x80860B40@ha */
/* 80860A7C  C0 03 0B 40 */	lfs f0, lit_3823@l(r3)  /* 0x80860B40@l */
/* 80860A80  D0 1F 05 90 */	stfs f0, 0x590(r31)
/* 80860A84  48 00 00 10 */	b lbl_80860A94
lbl_80860A88:
/* 80860A88  3C 60 80 86 */	lis r3, lit_3823@ha /* 0x80860B40@ha */
/* 80860A8C  C0 03 0B 40 */	lfs f0, lit_3823@l(r3)  /* 0x80860B40@l */
/* 80860A90  D0 1F 05 90 */	stfs f0, 0x590(r31)
lbl_80860A94:
/* 80860A94  38 7F 05 84 */	addi r3, r31, 0x584
/* 80860A98  3C 80 80 86 */	lis r4, d_a_kytag15__stringBase0@ha /* 0x80860B68@ha */
/* 80860A9C  38 84 0B 68 */	addi r4, r4, d_a_kytag15__stringBase0@l /* 0x80860B68@l */
/* 80860AA0  4B 7C C4 1D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80860AA4  7C 7E 1B 78 */	mr r30, r3
/* 80860AA8  2C 1E 00 04 */	cmpwi r30, 4
/* 80860AAC  40 82 00 28 */	bne lbl_80860AD4
/* 80860AB0  7F E3 FB 78 */	mr r3, r31
/* 80860AB4  3C 80 80 86 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x808608E8@ha */
/* 80860AB8  38 84 08 E8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x808608E8@l */
/* 80860ABC  38 A0 00 00 */	li r5, 0
/* 80860AC0  4B 7B 99 F1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80860AC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80860AC8  40 82 00 0C */	bne lbl_80860AD4
/* 80860ACC  38 60 00 05 */	li r3, 5
/* 80860AD0  48 00 00 08 */	b lbl_80860AD8
lbl_80860AD4:
/* 80860AD4  7F C3 F3 78 */	mr r3, r30
lbl_80860AD8:
/* 80860AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80860ADC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80860AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80860AE4  7C 08 03 A6 */	mtlr r0
/* 80860AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80860AEC  4E 80 00 20 */	blr 
