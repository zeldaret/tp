lbl_80D666A8:
/* 80D666A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D666AC  7C 08 02 A6 */	mflr r0
/* 80D666B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D666B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D666B8  4B 4D 1B 09 */	bl getpTalkActor__12dMsgObject_cFv
/* 80D666BC  7C 7F 1B 78 */	mr r31, r3
/* 80D666C0  4B 4D 1B 15 */	bl getIdx__12dMsgObject_cFv
/* 80D666C4  7F E4 FB 78 */	mr r4, r31
/* 80D666C8  38 A0 03 E8 */	li r5, 0x3e8
/* 80D666CC  4B 2B 96 69 */	bl fopMsgM_messageSet__FUlP10fopAc_ac_cUl
/* 80D666D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D666D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D666D8  7C 08 03 A6 */	mtlr r0
/* 80D666DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D666E0  4E 80 00 20 */	blr 
