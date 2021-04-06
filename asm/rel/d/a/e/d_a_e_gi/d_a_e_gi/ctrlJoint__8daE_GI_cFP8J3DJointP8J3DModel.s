lbl_806CD4F4:
/* 806CD4F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806CD4F8  7C 08 02 A6 */	mflr r0
/* 806CD4FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806CD500  39 61 00 20 */	addi r11, r1, 0x20
/* 806CD504  4B C9 4C D5 */	bl _savegpr_28
/* 806CD508  7C 7C 1B 78 */	mr r28, r3
/* 806CD50C  7C BD 2B 78 */	mr r29, r5
/* 806CD510  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 806CD514  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806CD518  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806CD51C  1F DF 00 30 */	mulli r30, r31, 0x30
/* 806CD520  7C 60 F2 14 */	add r3, r0, r30
/* 806CD524  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806CD528  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806CD52C  4B C7 8F 85 */	bl PSMTXCopy
/* 806CD530  2C 1F 00 03 */	cmpwi r31, 3
/* 806CD534  41 82 00 08 */	beq lbl_806CD53C
/* 806CD538  48 00 00 14 */	b lbl_806CD54C
lbl_806CD53C:
/* 806CD53C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806CD540  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806CD544  A8 9C 06 7E */	lha r4, 0x67e(r28)
/* 806CD548  4B 93 EE 55 */	bl mDoMtx_XrotM__FPA4_fs
lbl_806CD54C:
/* 806CD54C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806CD550  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806CD554  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 806CD558  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806CD55C  7C 80 F2 14 */	add r4, r0, r30
/* 806CD560  4B C7 8F 51 */	bl PSMTXCopy
/* 806CD564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806CD568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806CD56C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806CD570  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806CD574  4B C7 8F 3D */	bl PSMTXCopy
/* 806CD578  38 60 00 01 */	li r3, 1
/* 806CD57C  39 61 00 20 */	addi r11, r1, 0x20
/* 806CD580  4B C9 4C A5 */	bl _restgpr_28
/* 806CD584  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806CD588  7C 08 03 A6 */	mtlr r0
/* 806CD58C  38 21 00 20 */	addi r1, r1, 0x20
/* 806CD590  4E 80 00 20 */	blr 
