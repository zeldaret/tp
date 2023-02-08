lbl_802C24D0:
/* 802C24D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C24D4  7C 08 02 A6 */	mflr r0
/* 802C24D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C24DC  39 61 00 30 */	addi r11, r1, 0x30
/* 802C24E0  48 09 FC FD */	bl _savegpr_29
/* 802C24E4  7C 7D 1B 78 */	mr r29, r3
/* 802C24E8  7C 9E 23 78 */	mr r30, r4
/* 802C24EC  7C BF 2B 78 */	mr r31, r5
/* 802C24F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F6@ha */
/* 802C24F4  38 03 01 F6 */	addi r0, r3, 0x01F6 /* 0x000701F6@l */
/* 802C24F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C24FC  38 7D 00 50 */	addi r3, r29, 0x50
/* 802C2500  38 81 00 10 */	addi r4, r1, 0x10
/* 802C2504  4B FE 8D 51 */	bl getHandleSoundID__14Z2SoundHandlesF10JAISoundID
/* 802C2508  28 03 00 00 */	cmplwi r3, 0
/* 802C250C  40 82 00 24 */	bne lbl_802C2530
/* 802C2510  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F7@ha */
/* 802C2514  38 03 01 F7 */	addi r0, r3, 0x01F7 /* 0x000701F7@l */
/* 802C2518  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C251C  38 7D 00 50 */	addi r3, r29, 0x50
/* 802C2520  38 81 00 0C */	addi r4, r1, 0xc
/* 802C2524  4B FE 8D 31 */	bl getHandleSoundID__14Z2SoundHandlesF10JAISoundID
/* 802C2528  28 03 00 00 */	cmplwi r3, 0
/* 802C252C  41 82 00 0C */	beq lbl_802C2538
lbl_802C2530:
/* 802C2530  38 60 00 00 */	li r3, 0
/* 802C2534  48 00 00 2C */	b lbl_802C2560
lbl_802C2538:
/* 802C2538  80 1E 00 00 */	lwz r0, 0(r30)
/* 802C253C  90 01 00 08 */	stw r0, 8(r1)
/* 802C2540  38 7D 00 50 */	addi r3, r29, 0x50
/* 802C2544  38 81 00 08 */	addi r4, r1, 8
/* 802C2548  38 A0 00 00 */	li r5, 0
/* 802C254C  7F E6 FB 78 */	mr r6, r31
/* 802C2550  81 9D 00 60 */	lwz r12, 0x60(r29)
/* 802C2554  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C2558  7D 89 03 A6 */	mtctr r12
/* 802C255C  4E 80 04 21 */	bctrl 
lbl_802C2560:
/* 802C2560  39 61 00 30 */	addi r11, r1, 0x30
/* 802C2564  48 09 FC C5 */	bl _restgpr_29
/* 802C2568  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C256C  7C 08 03 A6 */	mtlr r0
/* 802C2570  38 21 00 30 */	addi r1, r1, 0x30
/* 802C2574  4E 80 00 20 */	blr 
