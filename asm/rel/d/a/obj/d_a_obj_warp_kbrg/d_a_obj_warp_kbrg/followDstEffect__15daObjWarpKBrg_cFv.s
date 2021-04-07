lbl_80D290A8:
/* 80D290A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D290AC  7C 08 02 A6 */	mflr r0
/* 80D290B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D290B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D290B8  4B 63 91 25 */	bl _savegpr_29
/* 80D290BC  7C 7D 1B 78 */	mr r29, r3
/* 80D290C0  3B C0 00 00 */	li r30, 0
/* 80D290C4  3B E0 00 00 */	li r31, 0
lbl_80D290C8:
/* 80D290C8  38 1F 06 60 */	addi r0, r31, 0x660
/* 80D290CC  7C BD 00 2E */	lwzx r5, r29, r0
/* 80D290D0  28 05 00 00 */	cmplwi r5, 0
/* 80D290D4  41 82 00 1C */	beq lbl_80D290F0
/* 80D290D8  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80D290DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D290E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D290E4  38 85 00 68 */	addi r4, r5, 0x68
/* 80D290E8  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80D290EC  4B 55 76 F5 */	bl func_802807E0
lbl_80D290F0:
/* 80D290F0  3B DE 00 01 */	addi r30, r30, 1
/* 80D290F4  2C 1E 00 06 */	cmpwi r30, 6
/* 80D290F8  3B FF 00 04 */	addi r31, r31, 4
/* 80D290FC  41 80 FF CC */	blt lbl_80D290C8
/* 80D29100  3B C0 00 00 */	li r30, 0
/* 80D29104  3B E0 00 00 */	li r31, 0
lbl_80D29108:
/* 80D29108  38 1F 06 78 */	addi r0, r31, 0x678
/* 80D2910C  7C BD 00 2E */	lwzx r5, r29, r0
/* 80D29110  28 05 00 00 */	cmplwi r5, 0
/* 80D29114  41 82 00 1C */	beq lbl_80D29130
/* 80D29118  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80D2911C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D29120  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D29124  38 85 00 68 */	addi r4, r5, 0x68
/* 80D29128  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80D2912C  4B 55 76 B5 */	bl func_802807E0
lbl_80D29130:
/* 80D29130  3B DE 00 01 */	addi r30, r30, 1
/* 80D29134  2C 1E 00 02 */	cmpwi r30, 2
/* 80D29138  3B FF 00 04 */	addi r31, r31, 4
/* 80D2913C  41 80 FF CC */	blt lbl_80D29108
/* 80D29140  39 61 00 20 */	addi r11, r1, 0x20
/* 80D29144  4B 63 90 E5 */	bl _restgpr_29
/* 80D29148  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2914C  7C 08 03 A6 */	mtlr r0
/* 80D29150  38 21 00 20 */	addi r1, r1, 0x20
/* 80D29154  4E 80 00 20 */	blr 
