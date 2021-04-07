lbl_80B30654:
/* 80B30654  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B30658  7C 08 02 A6 */	mflr r0
/* 80B3065C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B30660  39 61 00 20 */	addi r11, r1, 0x20
/* 80B30664  4B 83 1B 79 */	bl _savegpr_29
/* 80B30668  7C 7E 1B 78 */	mr r30, r3
/* 80B3066C  7C 9F 23 78 */	mr r31, r4
/* 80B30670  80 83 0E 04 */	lwz r4, 0xe04(r3)
/* 80B30674  80 84 00 08 */	lwz r4, 8(r4)
/* 80B30678  57 FD 18 38 */	slwi r29, r31, 3
/* 80B3067C  7C A4 E8 2E */	lwzx r5, r4, r29
/* 80B30680  2C 05 00 00 */	cmpwi r5, 0
/* 80B30684  41 80 00 24 */	blt lbl_80B306A8
/* 80B30688  88 1E 0E 9B */	lbz r0, 0xe9b(r30)
/* 80B3068C  54 00 10 3A */	slwi r0, r0, 2
/* 80B30690  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B30694  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B30698  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3069C  4B 62 24 CD */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80B306A0  7C 64 1B 78 */	mr r4, r3
/* 80B306A4  48 00 00 08 */	b lbl_80B306AC
lbl_80B306A8:
/* 80B306A8  38 80 00 00 */	li r4, 0
lbl_80B306AC:
/* 80B306AC  80 7E 0E 04 */	lwz r3, 0xe04(r30)
/* 80B306B0  80 03 00 08 */	lwz r0, 8(r3)
/* 80B306B4  7C 60 EA 14 */	add r3, r0, r29
/* 80B306B8  80 C3 00 04 */	lwz r6, 4(r3)
/* 80B306BC  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80B306C0  38 00 F5 7F */	li r0, -2689
/* 80B306C4  7C 60 00 38 */	and r0, r3, r0
/* 80B306C8  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80B306CC  28 04 00 00 */	cmplwi r4, 0
/* 80B306D0  40 82 00 0C */	bne lbl_80B306DC
/* 80B306D4  38 60 00 01 */	li r3, 1
/* 80B306D8  48 00 00 5C */	b lbl_80B30734
lbl_80B306DC:
/* 80B306DC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B306E0  80 63 00 04 */	lwz r3, 4(r3)
/* 80B306E4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B306E8  7F C3 F3 78 */	mr r3, r30
/* 80B306EC  3C E0 80 B4 */	lis r7, lit_4417@ha /* 0x80B41890@ha */
/* 80B306F0  C0 27 18 90 */	lfs f1, lit_4417@l(r7)  /* 0x80B41890@l */
/* 80B306F4  4B 62 25 D1 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80B306F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B306FC  41 82 00 34 */	beq lbl_80B30730
/* 80B30700  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B30704  60 00 02 80 */	ori r0, r0, 0x280
/* 80B30708  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80B3070C  2C 1F 00 00 */	cmpwi r31, 0
/* 80B30710  41 82 00 0C */	beq lbl_80B3071C
/* 80B30714  2C 1F 00 14 */	cmpwi r31, 0x14
/* 80B30718  40 82 00 10 */	bne lbl_80B30728
lbl_80B3071C:
/* 80B3071C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B30720  60 00 08 00 */	ori r0, r0, 0x800
/* 80B30724  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80B30728:
/* 80B30728  38 60 00 01 */	li r3, 1
/* 80B3072C  48 00 00 08 */	b lbl_80B30734
lbl_80B30730:
/* 80B30730  38 60 00 00 */	li r3, 0
lbl_80B30734:
/* 80B30734  39 61 00 20 */	addi r11, r1, 0x20
/* 80B30738  4B 83 1A F1 */	bl _restgpr_29
/* 80B3073C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B30740  7C 08 03 A6 */	mtlr r0
/* 80B30744  38 21 00 20 */	addi r1, r1, 0x20
/* 80B30748  4E 80 00 20 */	blr 
