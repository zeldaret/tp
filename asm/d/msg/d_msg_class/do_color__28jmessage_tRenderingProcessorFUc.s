lbl_8022E7CC:
/* 8022E7CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8022E7D0  7C 08 02 A6 */	mflr r0
/* 8022E7D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8022E7D8  39 61 00 40 */	addi r11, r1, 0x40
/* 8022E7DC  48 13 3A 01 */	bl _savegpr_29
/* 8022E7E0  7C 7D 1B 78 */	mr r29, r3
/* 8022E7E4  7C 9E 23 78 */	mr r30, r4
/* 8022E7E8  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022E7EC  9B C3 01 50 */	stb r30, 0x150(r3)
/* 8022E7F0  7F C3 F3 78 */	mr r3, r30
/* 8022E7F4  88 9F 12 46 */	lbz r4, 0x1246(r31)
/* 8022E7F8  4B FF A1 05 */	bl getFontCCColorTable__FUcUc
/* 8022E7FC  90 7D 01 20 */	stw r3, 0x120(r29)
/* 8022E800  7F C3 F3 78 */	mr r3, r30
/* 8022E804  88 9F 12 46 */	lbz r4, 0x1246(r31)
/* 8022E808  4B FF A1 A1 */	bl getFontGCColorTable__FUcUc
/* 8022E80C  90 7D 01 24 */	stw r3, 0x124(r29)
/* 8022E810  38 61 00 08 */	addi r3, r1, 8
/* 8022E814  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 8022E818  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 8022E81C  38 84 00 18 */	addi r4, r4, 0x18
/* 8022E820  80 BD 01 20 */	lwz r5, 0x120(r29)
/* 8022E824  80 DD 01 24 */	lwz r6, 0x124(r29)
/* 8022E828  4C C6 31 82 */	crclr 6
/* 8022E82C  48 13 7C B1 */	bl sprintf
/* 8022E830  7F A3 EB 78 */	mr r3, r29
/* 8022E834  38 81 00 08 */	addi r4, r1, 8
/* 8022E838  38 A0 00 00 */	li r5, 0
/* 8022E83C  38 C0 00 00 */	li r6, 0
/* 8022E840  38 E0 00 00 */	li r7, 0
/* 8022E844  48 00 06 BD */	bl do_strcat__28jmessage_tRenderingProcessorFPcbbb
/* 8022E848  39 61 00 40 */	addi r11, r1, 0x40
/* 8022E84C  48 13 39 DD */	bl _restgpr_29
/* 8022E850  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022E854  7C 08 03 A6 */	mtlr r0
/* 8022E858  38 21 00 40 */	addi r1, r1, 0x40
/* 8022E85C  4E 80 00 20 */	blr 
