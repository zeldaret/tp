lbl_802665B4:
/* 802665B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802665B8  7C 08 02 A6 */	mflr r0
/* 802665BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802665C0  39 61 00 20 */	addi r11, r1, 0x20
/* 802665C4  48 0F BC 15 */	bl _savegpr_28
/* 802665C8  7C 9C 23 78 */	mr r28, r4
/* 802665CC  7C BD 2B 78 */	mr r29, r5
/* 802665D0  83 E3 00 00 */	lwz r31, 0(r3)
/* 802665D4  83 C3 00 04 */	lwz r30, 4(r3)
/* 802665D8  48 00 00 24 */	b lbl_802665FC
lbl_802665DC:
/* 802665DC  7F E3 FB 78 */	mr r3, r31
/* 802665E0  7F 84 E3 78 */	mr r4, r28
/* 802665E4  7F A5 EB 78 */	mr r5, r29
/* 802665E8  3B FF 00 0C */	addi r31, r31, 0xc
/* 802665EC  4B FF FA AD */	bl cLsIt_Judge__FP15node_list_classPFP10node_classPv_PvPv
/* 802665F0  28 03 00 00 */	cmplwi r3, 0
/* 802665F4  41 82 00 08 */	beq lbl_802665FC
/* 802665F8  48 00 00 14 */	b lbl_8026660C
lbl_802665FC:
/* 802665FC  2C 1E 00 00 */	cmpwi r30, 0
/* 80266600  3B DE FF FF */	addi r30, r30, -1
/* 80266604  41 81 FF D8 */	bgt lbl_802665DC
/* 80266608  38 60 00 00 */	li r3, 0
lbl_8026660C:
/* 8026660C  39 61 00 20 */	addi r11, r1, 0x20
/* 80266610  48 0F BC 15 */	bl _restgpr_28
/* 80266614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80266618  7C 08 03 A6 */	mtlr r0
/* 8026661C  38 21 00 20 */	addi r1, r1, 0x20
/* 80266620  4E 80 00 20 */	blr 
