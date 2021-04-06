lbl_8023256C:
/* 8023256C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80232570  7C 08 02 A6 */	mflr r0
/* 80232574  90 01 00 44 */	stw r0, 0x44(r1)
/* 80232578  39 61 00 40 */	addi r11, r1, 0x40
/* 8023257C  48 12 FC 61 */	bl _savegpr_29
/* 80232580  7C 7D 1B 78 */	mr r29, r3
/* 80232584  7C 9E 23 78 */	mr r30, r4
/* 80232588  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8023258C  40 82 00 14 */	bne lbl_802325A0
/* 80232590  80 7D 00 04 */	lwz r3, 4(r29)
/* 80232594  83 E3 00 78 */	lwz r31, 0x78(r3)
/* 80232598  80 C3 00 7C */	lwz r6, 0x7c(r3)
/* 8023259C  48 00 00 24 */	b lbl_802325C0
lbl_802325A0:
/* 802325A0  7F C3 F3 78 */	mr r3, r30
/* 802325A4  38 80 00 00 */	li r4, 0
/* 802325A8  4B FF 63 55 */	bl getFontCCColorTable__FUcUc
/* 802325AC  7C 7F 1B 78 */	mr r31, r3
/* 802325B0  7F C3 F3 78 */	mr r3, r30
/* 802325B4  38 80 00 00 */	li r4, 0
/* 802325B8  4B FF 63 F1 */	bl getFontGCColorTable__FUcUc
/* 802325BC  7C 66 1B 78 */	mr r6, r3
lbl_802325C0:
/* 802325C0  38 61 00 08 */	addi r3, r1, 8
/* 802325C4  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 802325C8  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 802325CC  38 84 00 18 */	addi r4, r4, 0x18
/* 802325D0  7F E5 FB 78 */	mr r5, r31
/* 802325D4  4C C6 31 82 */	crclr 6
/* 802325D8  48 13 3F 05 */	bl sprintf
/* 802325DC  7F A3 EB 78 */	mr r3, r29
/* 802325E0  38 81 00 08 */	addi r4, r1, 8
/* 802325E4  4B FF FA 61 */	bl do_strcat__35jmessage_string_tRenderingProcessorFPc
/* 802325E8  39 61 00 40 */	addi r11, r1, 0x40
/* 802325EC  48 12 FC 3D */	bl _restgpr_29
/* 802325F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802325F4  7C 08 03 A6 */	mtlr r0
/* 802325F8  38 21 00 40 */	addi r1, r1, 0x40
/* 802325FC  4E 80 00 20 */	blr 
