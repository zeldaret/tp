lbl_806B6520:
/* 806B6520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B6524  7C 08 02 A6 */	mflr r0
/* 806B6528  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B652C  39 61 00 20 */	addi r11, r1, 0x20
/* 806B6530  4B CA BC A9 */	bl _savegpr_28
/* 806B6534  7C 7C 1B 78 */	mr r28, r3
/* 806B6538  7C BD 2B 78 */	mr r29, r5
/* 806B653C  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 806B6540  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806B6544  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806B6548  1F DF 00 30 */	mulli r30, r31, 0x30
/* 806B654C  7C 60 F2 14 */	add r3, r0, r30
/* 806B6550  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B6554  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B6558  4B C8 FF 59 */	bl PSMTXCopy
/* 806B655C  2C 1F 00 02 */	cmpwi r31, 2
/* 806B6560  41 82 00 08 */	beq lbl_806B6568
/* 806B6564  48 00 00 14 */	b lbl_806B6578
lbl_806B6568:
/* 806B6568  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B656C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B6570  A8 9C 06 98 */	lha r4, 0x698(r28)
/* 806B6574  4B 95 5F 59 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_806B6578:
/* 806B6578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B657C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B6580  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 806B6584  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806B6588  7C 80 F2 14 */	add r4, r0, r30
/* 806B658C  4B C8 FF 25 */	bl PSMTXCopy
/* 806B6590  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B6594  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B6598  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806B659C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806B65A0  4B C8 FF 11 */	bl PSMTXCopy
/* 806B65A4  38 60 00 01 */	li r3, 1
/* 806B65A8  39 61 00 20 */	addi r11, r1, 0x20
/* 806B65AC  4B CA BC 79 */	bl _restgpr_28
/* 806B65B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B65B4  7C 08 03 A6 */	mtlr r0
/* 806B65B8  38 21 00 20 */	addi r1, r1, 0x20
/* 806B65BC  4E 80 00 20 */	blr 
