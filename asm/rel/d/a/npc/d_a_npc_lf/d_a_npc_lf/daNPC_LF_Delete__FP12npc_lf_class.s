lbl_80A6A51C:
/* 80A6A51C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6A520  7C 08 02 A6 */	mflr r0
/* 80A6A524  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6A528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6A52C  7C 7F 1B 78 */	mr r31, r3
/* 80A6A530  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80A6A534  3C 80 80 A7 */	lis r4, d_a_npc_lf__stringBase0@ha /* 0x80A6AA14@ha */
/* 80A6A538  38 84 AA 14 */	addi r4, r4, d_a_npc_lf__stringBase0@l /* 0x80A6AA14@l */
/* 80A6A53C  4B 5C 2A CD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80A6A540  88 1F 1F C0 */	lbz r0, 0x1fc0(r31)
/* 80A6A544  28 00 00 00 */	cmplwi r0, 0
/* 80A6A548  41 82 00 10 */	beq lbl_80A6A558
/* 80A6A54C  38 00 00 00 */	li r0, 0
/* 80A6A550  3C 60 80 A7 */	lis r3, data_80A6AA90@ha /* 0x80A6AA90@ha */
/* 80A6A554  98 03 AA 90 */	stb r0, data_80A6AA90@l(r3)  /* 0x80A6AA90@l */
lbl_80A6A558:
/* 80A6A558  38 60 00 01 */	li r3, 1
/* 80A6A55C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6A560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6A564  7C 08 03 A6 */	mtlr r0
/* 80A6A568  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6A56C  4E 80 00 20 */	blr 
