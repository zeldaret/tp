lbl_80CF699C:
/* 80CF699C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF69A0  7C 08 02 A6 */	mflr r0
/* 80CF69A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF69A8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF69AC  4B 66 B8 30 */	b _savegpr_29
/* 80CF69B0  7C 7D 1B 78 */	mr r29, r3
/* 80CF69B4  3B C0 00 00 */	li r30, 0
/* 80CF69B8  3C 60 80 CF */	lis r3, s_ballA_sub__FPvPv@ha
/* 80CF69BC  38 63 5C 24 */	addi r3, r3, s_ballA_sub__FPvPv@l
/* 80CF69C0  7F A4 EB 78 */	mr r4, r29
/* 80CF69C4  4B 32 A9 74 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80CF69C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF69CC  41 82 00 3C */	beq lbl_80CF6A08
/* 80CF69D0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CF69D4  60 00 08 00 */	ori r0, r0, 0x800
/* 80CF69D8  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80CF69DC  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80CF69E0  3C 80 80 CF */	lis r4, lit_3850@ha
/* 80CF69E4  C0 24 6C EC */	lfs f1, lit_3850@l(r4)
/* 80CF69E8  3C 80 80 CF */	lis r4, lit_4175@ha
/* 80CF69EC  C0 44 6C FC */	lfs f2, lit_4175@l(r4)
/* 80CF69F0  4B 57 9D 50 */	b cLib_chaseF__FPfff
/* 80CF69F4  7C 7E 1B 78 */	mr r30, r3
/* 80CF69F8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CF69FC  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80CF6A00  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CF6A04  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
lbl_80CF6A08:
/* 80CF6A08  3C 60 80 CF */	lis r3, s_ballB_sub__FPvPv@ha
/* 80CF6A0C  38 63 5C 7C */	addi r3, r3, s_ballB_sub__FPvPv@l
/* 80CF6A10  7F A4 EB 78 */	mr r4, r29
/* 80CF6A14  4B 32 A9 24 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80CF6A18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF6A1C  41 82 00 3C */	beq lbl_80CF6A58
/* 80CF6A20  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CF6A24  60 00 08 00 */	ori r0, r0, 0x800
/* 80CF6A28  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80CF6A2C  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80CF6A30  3C 80 80 CF */	lis r4, lit_3850@ha
/* 80CF6A34  C0 24 6C EC */	lfs f1, lit_3850@l(r4)
/* 80CF6A38  3C 80 80 CF */	lis r4, lit_4175@ha
/* 80CF6A3C  C0 44 6C FC */	lfs f2, lit_4175@l(r4)
/* 80CF6A40  4B 57 9D 00 */	b cLib_chaseF__FPfff
/* 80CF6A44  7F DE 18 38 */	and r30, r30, r3
/* 80CF6A48  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CF6A4C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80CF6A50  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CF6A54  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
lbl_80CF6A58:
/* 80CF6A58  7F C3 F3 78 */	mr r3, r30
/* 80CF6A5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF6A60  4B 66 B7 C8 */	b _restgpr_29
/* 80CF6A64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF6A68  7C 08 03 A6 */	mtlr r0
/* 80CF6A6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF6A70  4E 80 00 20 */	blr 
