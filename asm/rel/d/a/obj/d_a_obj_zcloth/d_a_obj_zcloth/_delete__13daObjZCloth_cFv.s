lbl_80D3F200:
/* 80D3F200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F204  7C 08 02 A6 */	mflr r0
/* 80D3F208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F20C  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 80D3F210  54 00 20 36 */	slwi r0, r0, 4
/* 80D3F214  3C 80 80 3B */	lis r4, field_item_res__10dItem_data@ha /* 0x803ADD88@ha */
/* 80D3F218  38 84 DD 88 */	addi r4, r4, field_item_res__10dItem_data@l /* 0x803ADD88@l */
/* 80D3F21C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3F220  38 63 05 6C */	addi r3, r3, 0x56c
/* 80D3F224  4B 2E DD E5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D3F228  38 60 00 01 */	li r3, 1
/* 80D3F22C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F230  7C 08 03 A6 */	mtlr r0
/* 80D3F234  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F238  4E 80 00 20 */	blr 
