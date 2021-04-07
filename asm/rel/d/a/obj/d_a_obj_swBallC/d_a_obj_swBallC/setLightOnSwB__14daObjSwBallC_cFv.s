lbl_80CF6818:
/* 80CF6818  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF681C  7C 08 02 A6 */	mflr r0
/* 80CF6820  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF6824  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF6828  4B 66 B9 B1 */	bl _savegpr_28
/* 80CF682C  7C 7C 1B 78 */	mr r28, r3
/* 80CF6830  3B A0 00 00 */	li r29, 0
/* 80CF6834  3C 60 80 CF */	lis r3, s_swb_sub__FPvPv@ha /* 0x80CF5BB8@ha */
/* 80CF6838  3B C3 5B B8 */	addi r30, r3, s_swb_sub__FPvPv@l /* 0x80CF5BB8@l */
/* 80CF683C  3B E0 00 01 */	li r31, 1
/* 80CF6840  48 00 00 24 */	b lbl_80CF6864
lbl_80CF6844:
/* 80CF6844  9B BC 05 82 */	stb r29, 0x582(r28)
/* 80CF6848  7F C3 F3 78 */	mr r3, r30
/* 80CF684C  7F 84 E3 78 */	mr r4, r28
/* 80CF6850  4B 32 AA E9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80CF6854  28 03 00 00 */	cmplwi r3, 0
/* 80CF6858  41 82 00 08 */	beq lbl_80CF6860
/* 80CF685C  9B E3 05 AC */	stb r31, 0x5ac(r3)
lbl_80CF6860:
/* 80CF6860  3B BD 00 01 */	addi r29, r29, 1
lbl_80CF6864:
/* 80CF6864  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80CF6868  28 00 00 06 */	cmplwi r0, 6
/* 80CF686C  41 80 FF D8 */	blt lbl_80CF6844
/* 80CF6870  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF6874  4B 66 B9 B1 */	bl _restgpr_28
/* 80CF6878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF687C  7C 08 03 A6 */	mtlr r0
/* 80CF6880  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF6884  4E 80 00 20 */	blr 
