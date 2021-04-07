lbl_80228530:
/* 80228530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228534  7C 08 02 A6 */	mflr r0
/* 80228538  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022853C  2C 04 00 1F */	cmpwi r4, 0x1f
/* 80228540  41 80 00 18 */	blt lbl_80228558
/* 80228544  2C 04 00 28 */	cmpwi r4, 0x28
/* 80228548  41 81 00 10 */	bgt lbl_80228558
/* 8022854C  38 64 FF E1 */	addi r3, r4, -31
/* 80228550  4B FF 5D 79 */	bl dMeter2Info_getNumberTextureName__Fi
/* 80228554  48 00 00 14 */	b lbl_80228568
lbl_80228558:
/* 80228558  54 80 10 3A */	slwi r0, r4, 2
/* 8022855C  3C 60 80 3C */	lis r3, mpIconName@ha /* 0x803BFCAC@ha */
/* 80228560  38 63 FC AC */	addi r3, r3, mpIconName@l /* 0x803BFCAC@l */
/* 80228564  7C 63 00 2E */	lwzx r3, r3, r0
lbl_80228568:
/* 80228568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022856C  7C 08 03 A6 */	mtlr r0
/* 80228570  38 21 00 10 */	addi r1, r1, 0x10
/* 80228574  4E 80 00 20 */	blr 
