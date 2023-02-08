lbl_80488104:
/* 80488104  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488108  7C 08 02 A6 */	mflr r0
/* 8048810C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80488110  39 61 00 20 */	addi r11, r1, 0x20
/* 80488114  4B ED A0 BD */	bl _savegpr_26
/* 80488118  7C 64 1B 78 */	mr r4, r3
/* 8048811C  38 00 00 00 */	li r0, 0
/* 80488120  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80488124  90 03 9A 10 */	stw r0, l_findCount@l(r3)  /* 0x80489A10@l */
/* 80488128  3C 60 80 48 */	lis r3, srchTaro__15daTag_AllMato_cFPvPv@ha /* 0x80487D9C@ha */
/* 8048812C  38 63 7D 9C */	addi r3, r3, srchTaro__15daTag_AllMato_cFPvPv@l /* 0x80487D9C@l */
/* 80488130  4B B9 92 09 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80488134  3B 60 00 00 */	li r27, 0
/* 80488138  3B E0 00 00 */	li r31, 0
/* 8048813C  3C 60 80 49 */	lis r3, l_findActorPtrs@ha /* 0x80489880@ha */
/* 80488140  3B 83 98 80 */	addi r28, r3, l_findActorPtrs@l /* 0x80489880@l */
/* 80488144  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80488148  3B C3 9A 10 */	addi r30, r3, l_findCount@l /* 0x80489A10@l */
/* 8048814C  48 00 00 4C */	b lbl_80488198
lbl_80488150:
/* 80488150  7F 5C F8 2E */	lwzx r26, r28, r31
/* 80488154  3B A0 00 00 */	li r29, 0
/* 80488158  88 1A 0E 25 */	lbz r0, 0xe25(r26)
/* 8048815C  28 00 00 00 */	cmplwi r0, 0
/* 80488160  40 82 00 1C */	bne lbl_8048817C
/* 80488164  4B BA 78 F1 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80488168  2C 03 00 00 */	cmpwi r3, 0
/* 8048816C  40 82 00 14 */	bne lbl_80488180
/* 80488170  88 1A 0A 89 */	lbz r0, 0xa89(r26)
/* 80488174  28 00 00 00 */	cmplwi r0, 0
/* 80488178  41 82 00 08 */	beq lbl_80488180
lbl_8048817C:
/* 8048817C  3B A0 00 01 */	li r29, 1
lbl_80488180:
/* 80488180  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80488184  40 82 00 0C */	bne lbl_80488190
/* 80488188  7C 7C F8 2E */	lwzx r3, r28, r31
/* 8048818C  48 00 00 1C */	b lbl_804881A8
lbl_80488190:
/* 80488190  3B 7B 00 01 */	addi r27, r27, 1
/* 80488194  3B FF 00 04 */	addi r31, r31, 4
lbl_80488198:
/* 80488198  80 1E 00 00 */	lwz r0, 0(r30)
/* 8048819C  7C 1B 00 00 */	cmpw r27, r0
/* 804881A0  41 80 FF B0 */	blt lbl_80488150
/* 804881A4  38 60 00 00 */	li r3, 0
lbl_804881A8:
/* 804881A8  39 61 00 20 */	addi r11, r1, 0x20
/* 804881AC  4B ED A0 71 */	bl _restgpr_26
/* 804881B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804881B4  7C 08 03 A6 */	mtlr r0
/* 804881B8  38 21 00 20 */	addi r1, r1, 0x20
/* 804881BC  4E 80 00 20 */	blr 
