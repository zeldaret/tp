lbl_802BD5B8:
/* 802BD5B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BD5BC  7C 08 02 A6 */	mflr r0
/* 802BD5C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BD5C4  39 61 00 30 */	addi r11, r1, 0x30
/* 802BD5C8  48 0A 4C 05 */	bl _savegpr_25
/* 802BD5CC  7C 7C 1B 78 */	mr r28, r3
/* 802BD5D0  7C 9F 23 78 */	mr r31, r4
/* 802BD5D4  88 04 00 10 */	lbz r0, 0x10(r4)
/* 802BD5D8  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 802BD5DC  40 82 00 40 */	bne lbl_802BD61C
/* 802BD5E0  3B 20 00 00 */	li r25, 0
/* 802BD5E4  3B 40 00 00 */	li r26, 0
/* 802BD5E8  48 00 00 20 */	b lbl_802BD608
lbl_802BD5EC:
/* 802BD5EC  38 7A 01 34 */	addi r3, r26, 0x134
/* 802BD5F0  7C 7C 1A 14 */	add r3, r28, r3
/* 802BD5F4  7F E4 FB 78 */	mr r4, r31
/* 802BD5F8  7F 25 CB 78 */	mr r5, r25
/* 802BD5FC  4B FF F5 F1 */	bl convertAbsToRel__13Z2AudioCameraFP9Z2Audiblei
/* 802BD600  3B 39 00 01 */	addi r25, r25, 1
/* 802BD604  3B 5A 00 74 */	addi r26, r26, 0x74
lbl_802BD608:
/* 802BD608  80 1C 01 D4 */	lwz r0, 0x1d4(r28)
/* 802BD60C  7C 19 00 00 */	cmpw r25, r0
/* 802BD610  41 80 FF DC */	blt lbl_802BD5EC
/* 802BD614  38 60 00 00 */	li r3, 0
/* 802BD618  48 00 00 D4 */	b lbl_802BD6EC
lbl_802BD61C:
/* 802BD61C  3B C0 FF FF */	li r30, -1
/* 802BD620  3B A0 00 00 */	li r29, 0
/* 802BD624  3B 60 00 00 */	li r27, 0
/* 802BD628  3B 40 00 00 */	li r26, 0
/* 802BD62C  48 00 00 78 */	b lbl_802BD6A4
lbl_802BD630:
/* 802BD630  7F E3 FB 78 */	mr r3, r31
/* 802BD634  7F A4 EB 78 */	mr r4, r29
/* 802BD638  4B FF EB CD */	bl getChannel__9Z2AudibleFi
/* 802BD63C  7C 79 1B 79 */	or. r25, r3, r3
/* 802BD640  41 82 00 58 */	beq lbl_802BD698
/* 802BD644  38 7A 01 34 */	addi r3, r26, 0x134
/* 802BD648  7C 7C 1A 14 */	add r3, r28, r3
/* 802BD64C  7F E4 FB 78 */	mr r4, r31
/* 802BD650  7F A5 EB 78 */	mr r5, r29
/* 802BD654  4B FF F5 99 */	bl convertAbsToRel__13Z2AudioCameraFP9Z2Audiblei
/* 802BD658  7F E3 FB 78 */	mr r3, r31
/* 802BD65C  4B FF EB BD */	bl getDistVolBit__9Z2AudibleFv
/* 802BD660  7C 64 1B 78 */	mr r4, r3
/* 802BD664  7F 83 E3 78 */	mr r3, r28
/* 802BD668  C0 39 00 24 */	lfs f1, 0x24(r25)
/* 802BD66C  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 802BD670  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 802BD674  30 05 FF FF */	addic r0, r5, -1
/* 802BD678  7C 00 29 10 */	subfe r0, r0, r5
/* 802BD67C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 802BD680  48 00 05 C5 */	bl calcDeltaPriority___10Z2AudienceCFfib
/* 802BD684  38 81 00 08 */	addi r4, r1, 8
/* 802BD688  7C 64 D9 2E */	stwx r3, r4, r27
/* 802BD68C  7C 03 F0 40 */	cmplw r3, r30
/* 802BD690  40 80 00 08 */	bge lbl_802BD698
/* 802BD694  7C 7E 1B 78 */	mr r30, r3
lbl_802BD698:
/* 802BD698  3B BD 00 01 */	addi r29, r29, 1
/* 802BD69C  3B 7B 00 04 */	addi r27, r27, 4
/* 802BD6A0  3B 5A 00 74 */	addi r26, r26, 0x74
lbl_802BD6A4:
/* 802BD6A4  80 1C 01 D4 */	lwz r0, 0x1d4(r28)
/* 802BD6A8  7C 1D 00 00 */	cmpw r29, r0
/* 802BD6AC  41 80 FF 84 */	blt lbl_802BD630
/* 802BD6B0  88 1C 01 CD */	lbz r0, 0x1cd(r28)
/* 802BD6B4  28 00 00 00 */	cmplwi r0, 0
/* 802BD6B8  41 82 00 30 */	beq lbl_802BD6E8
/* 802BD6BC  3B 3C 01 A8 */	addi r25, r28, 0x1a8
/* 802BD6C0  7F 23 CB 78 */	mr r3, r25
/* 802BD6C4  7F E4 FB 78 */	mr r4, r31
/* 802BD6C8  4B FF F8 95 */	bl calcMicDist__9Z2SpotMicFP9Z2Audible
/* 802BD6CC  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 802BD6D0  7F 23 CB 78 */	mr r3, r25
/* 802BD6D4  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 802BD6D8  4B FF F9 0D */	bl calcMicPriority__9Z2SpotMicFf
/* 802BD6DC  7C 03 F0 40 */	cmplw r3, r30
/* 802BD6E0  40 80 00 08 */	bge lbl_802BD6E8
/* 802BD6E4  7C 7E 1B 78 */	mr r30, r3
lbl_802BD6E8:
/* 802BD6E8  7F C3 F3 78 */	mr r3, r30
lbl_802BD6EC:
/* 802BD6EC  39 61 00 30 */	addi r11, r1, 0x30
/* 802BD6F0  48 0A 4B 29 */	bl _restgpr_25
/* 802BD6F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BD6F8  7C 08 03 A6 */	mtlr r0
/* 802BD6FC  38 21 00 30 */	addi r1, r1, 0x30
/* 802BD700  4E 80 00 20 */	blr 
