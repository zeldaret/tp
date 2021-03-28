lbl_80CF6888:
/* 80CF6888  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF688C  7C 08 02 A6 */	mflr r0
/* 80CF6890  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF6894  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF6898  4B 66 B9 40 */	b _savegpr_28
/* 80CF689C  7C 7C 1B 78 */	mr r28, r3
/* 80CF68A0  3B A0 00 00 */	li r29, 0
/* 80CF68A4  3C 60 80 CF */	lis r3, s_swb_sub__FPvPv@ha
/* 80CF68A8  3B C3 5B B8 */	addi r30, r3, s_swb_sub__FPvPv@l
/* 80CF68AC  3B E0 00 01 */	li r31, 1
/* 80CF68B0  48 00 00 24 */	b lbl_80CF68D4
lbl_80CF68B4:
/* 80CF68B4  9B BC 05 82 */	stb r29, 0x582(r28)
/* 80CF68B8  7F C3 F3 78 */	mr r3, r30
/* 80CF68BC  7F 84 E3 78 */	mr r4, r28
/* 80CF68C0  4B 32 AA 78 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80CF68C4  28 03 00 00 */	cmplwi r3, 0
/* 80CF68C8  41 82 00 08 */	beq lbl_80CF68D0
/* 80CF68CC  9B E3 05 AD */	stb r31, 0x5ad(r3)
lbl_80CF68D0:
/* 80CF68D0  3B BD 00 01 */	addi r29, r29, 1
lbl_80CF68D4:
/* 80CF68D4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80CF68D8  28 00 00 06 */	cmplwi r0, 6
/* 80CF68DC  41 80 FF D8 */	blt lbl_80CF68B4
/* 80CF68E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF68E4  4B 66 B9 40 */	b _restgpr_28
/* 80CF68E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF68EC  7C 08 03 A6 */	mtlr r0
/* 80CF68F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF68F4  4E 80 00 20 */	blr 
