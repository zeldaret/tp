lbl_804616EC:
/* 804616EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804616F0  7C 08 02 A6 */	mflr r0
/* 804616F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804616F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804616FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80461700  7C 7E 1B 78 */	mr r30, r3
/* 80461704  7C 9F 23 78 */	mr r31, r4
/* 80461708  4B BD 8A ED */	bl isMsgDoor__13door_param2_cFP10fopAc_ac_c
/* 8046170C  2C 03 00 00 */	cmpwi r3, 0
/* 80461710  40 82 00 0C */	bne lbl_8046171C
/* 80461714  38 60 00 01 */	li r3, 1
/* 80461718  48 00 00 5C */	b lbl_80461774
lbl_8046171C:
/* 8046171C  7F C3 F3 78 */	mr r3, r30
/* 80461720  4B BD 8A F9 */	bl getMsgNo__13door_param2_cFP10fopAc_ac_c
/* 80461724  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 80461728  3C 05 00 00 */	addis r0, r5, 0
/* 8046172C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80461730  40 82 00 14 */	bne lbl_80461744
/* 80461734  38 00 00 00 */	li r0, 0
/* 80461738  90 1F 00 00 */	stw r0, 0(r31)
/* 8046173C  38 60 00 01 */	li r3, 1
/* 80461740  48 00 00 34 */	b lbl_80461774
lbl_80461744:
/* 80461744  38 7E 06 24 */	addi r3, r30, 0x624
/* 80461748  38 80 00 00 */	li r4, 0
/* 8046174C  38 C0 00 00 */	li r6, 0
/* 80461750  38 E0 00 00 */	li r7, 0
/* 80461754  4B DE 88 3D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80461758  38 7E 06 24 */	addi r3, r30, 0x624
/* 8046175C  7F C4 F3 78 */	mr r4, r30
/* 80461760  7F E5 FB 78 */	mr r5, r31
/* 80461764  4B DE 89 D9 */	bl checkOpenDoor__10dMsgFlow_cFP10fopAc_ac_cPi
/* 80461768  7C 7F 1B 78 */	mr r31, r3
/* 8046176C  4B DD 69 2D */	bl endFlowGroup__12dMsgObject_cFv
/* 80461770  7F E3 FB 78 */	mr r3, r31
lbl_80461774:
/* 80461774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80461778  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046177C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80461780  7C 08 03 A6 */	mtlr r0
/* 80461784  38 21 00 10 */	addi r1, r1, 0x10
/* 80461788  4E 80 00 20 */	blr 
