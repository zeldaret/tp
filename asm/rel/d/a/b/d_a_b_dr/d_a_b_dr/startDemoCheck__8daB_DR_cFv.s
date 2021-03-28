lbl_805C2BE8:
/* 805C2BE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C2BEC  7C 08 02 A6 */	mflr r0
/* 805C2BF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C2BF4  39 61 00 20 */	addi r11, r1, 0x20
/* 805C2BF8  4B D9 F5 E4 */	b _savegpr_29
/* 805C2BFC  7C 7D 1B 78 */	mr r29, r3
/* 805C2C00  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805C2C04  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805C2C08  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 805C2C0C  7C 00 07 74 */	extsb r0, r0
/* 805C2C10  38 84 5D 74 */	addi r4, r4, 0x5d74
/* 805C2C14  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C2C18  7F E4 00 2E */	lwzx r31, r4, r0
/* 805C2C1C  83 C4 00 00 */	lwz r30, 0(r4)
/* 805C2C20  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 805C2C24  28 00 00 02 */	cmplwi r0, 2
/* 805C2C28  41 82 00 5C */	beq lbl_805C2C84
/* 805C2C2C  38 80 00 02 */	li r4, 2
/* 805C2C30  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805C2C34  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805C2C38  38 C0 00 00 */	li r6, 0
/* 805C2C3C  4B A5 8C CC */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805C2C40  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 805C2C44  60 00 00 02 */	ori r0, r0, 2
/* 805C2C48  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 805C2C4C  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 805C2C50  D0 1D 27 C4 */	stfs f0, 0x27c4(r29)
/* 805C2C54  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 805C2C58  D0 1D 27 C8 */	stfs f0, 0x27c8(r29)
/* 805C2C5C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 805C2C60  D0 1D 27 CC */	stfs f0, 0x27cc(r29)
/* 805C2C64  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 805C2C68  D0 1D 27 D0 */	stfs f0, 0x27d0(r29)
/* 805C2C6C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 805C2C70  D0 1D 27 D4 */	stfs f0, 0x27d4(r29)
/* 805C2C74  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 805C2C78  D0 1D 27 D8 */	stfs f0, 0x27d8(r29)
/* 805C2C7C  38 60 00 00 */	li r3, 0
/* 805C2C80  48 00 00 38 */	b lbl_805C2CB8
lbl_805C2C84:
/* 805C2C84  38 7F 02 48 */	addi r3, r31, 0x248
/* 805C2C88  4B B9 E8 48 */	b Stop__9dCamera_cFv
/* 805C2C8C  38 7F 02 48 */	addi r3, r31, 0x248
/* 805C2C90  38 80 00 03 */	li r4, 3
/* 805C2C94  4B BA 03 78 */	b SetTrimSize__9dCamera_cFl
/* 805C2C98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C2C9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C2CA0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805C2CA4  38 00 00 03 */	li r0, 3
/* 805C2CA8  B0 03 06 04 */	sth r0, 0x604(r3)
/* 805C2CAC  38 00 00 00 */	li r0, 0
/* 805C2CB0  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805C2CB4  38 60 00 01 */	li r3, 1
lbl_805C2CB8:
/* 805C2CB8  39 61 00 20 */	addi r11, r1, 0x20
/* 805C2CBC  4B D9 F5 6C */	b _restgpr_29
/* 805C2CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C2CC4  7C 08 03 A6 */	mtlr r0
/* 805C2CC8  38 21 00 20 */	addi r1, r1, 0x20
/* 805C2CCC  4E 80 00 20 */	blr 
