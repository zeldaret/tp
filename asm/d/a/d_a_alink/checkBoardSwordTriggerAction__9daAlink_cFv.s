lbl_80106618:
/* 80106618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010661C  7C 08 02 A6 */	mflr r0
/* 80106620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80106624  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 80106628  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8010662C  41 82 00 0C */	beq lbl_80106638
/* 80106630  48 00 0E 7D */	bl procBoardCutInit__9daAlink_cFv
/* 80106634  48 00 00 0C */	b lbl_80106640
lbl_80106638:
/* 80106638  38 80 00 00 */	li r4, 0
/* 8010663C  48 00 03 FD */	bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
lbl_80106640:
/* 80106640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80106644  7C 08 03 A6 */	mtlr r0
/* 80106648  38 21 00 10 */	addi r1, r1, 0x10
/* 8010664C  4E 80 00 20 */	blr 
