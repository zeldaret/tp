lbl_8045EE5C:
/* 8045EE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045EE60  7C 08 02 A6 */	mflr r0
/* 8045EE64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045EE68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045EE6C  93 C1 00 08 */	stw r30, 8(r1)
/* 8045EE70  7C 7E 1B 78 */	mr r30, r3
/* 8045EE74  7C 9F 23 78 */	mr r31, r4
/* 8045EE78  4B FF F9 F9 */	bl getMsgNo__12knob_param_cFP10fopAc_ac_c
/* 8045EE7C  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 8045EE80  3C 05 00 00 */	addis r0, r5, 0
/* 8045EE84  28 00 FF FF */	cmplwi r0, 0xffff
/* 8045EE88  40 82 00 14 */	bne lbl_8045EE9C
/* 8045EE8C  38 00 00 00 */	li r0, 0
/* 8045EE90  90 1F 00 00 */	stw r0, 0(r31)
/* 8045EE94  38 60 00 01 */	li r3, 1
/* 8045EE98  48 00 00 34 */	b lbl_8045EECC
lbl_8045EE9C:
/* 8045EE9C  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8045EEA0  38 80 00 00 */	li r4, 0
/* 8045EEA4  38 C0 00 00 */	li r6, 0
/* 8045EEA8  38 E0 00 00 */	li r7, 0
/* 8045EEAC  4B DE B0 E4 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8045EEB0  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8045EEB4  7F C4 F3 78 */	mr r4, r30
/* 8045EEB8  7F E5 FB 78 */	mr r5, r31
/* 8045EEBC  4B DE B2 80 */	b checkOpenDoor__10dMsgFlow_cFP10fopAc_ac_cPi
/* 8045EEC0  7C 7F 1B 78 */	mr r31, r3
/* 8045EEC4  4B DD 91 D4 */	b endFlowGroup__12dMsgObject_cFv
/* 8045EEC8  7F E3 FB 78 */	mr r3, r31
lbl_8045EECC:
/* 8045EECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045EED0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045EED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045EED8  7C 08 03 A6 */	mtlr r0
/* 8045EEDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8045EEE0  4E 80 00 20 */	blr 
