lbl_800B3500:
/* 800B3500  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B3504  7C 08 02 A6 */	mflr r0
/* 800B3508  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B350C  39 61 00 30 */	addi r11, r1, 0x30
/* 800B3510  48 2A EC BD */	bl _savegpr_25
/* 800B3514  7C 7D 1B 78 */	mr r29, r3
/* 800B3518  3B E0 00 01 */	li r31, 1
/* 800B351C  7F FE FB 78 */	mr r30, r31
/* 800B3520  7F FB FB 78 */	mr r27, r31
/* 800B3524  7F FA FB 78 */	mr r26, r31
/* 800B3528  83 83 27 E0 */	lwz r28, 0x27e0(r3)
/* 800B352C  7F F9 FB 78 */	mr r25, r31
/* 800B3530  7F 83 E3 78 */	mr r3, r28
/* 800B3534  4B FC 02 B1 */	bl LockonTruth__12dAttention_cFv
/* 800B3538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B353C  40 82 00 14 */	bne lbl_800B3550
/* 800B3540  80 1C 03 34 */	lwz r0, 0x334(r28)
/* 800B3544  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B3548  40 82 00 08 */	bne lbl_800B3550
/* 800B354C  3B 20 00 00 */	li r25, 0
lbl_800B3550:
/* 800B3550  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 800B3554  40 82 00 30 */	bne lbl_800B3584
/* 800B3558  38 60 00 00 */	li r3, 0
/* 800B355C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800B3560  28 00 00 62 */	cmplwi r0, 0x62
/* 800B3564  41 82 00 10 */	beq lbl_800B3574
/* 800B3568  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B356C  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800B3570  40 82 00 08 */	bne lbl_800B3578
lbl_800B3574:
/* 800B3574  38 60 00 01 */	li r3, 1
lbl_800B3578:
/* 800B3578  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B357C  40 82 00 08 */	bne lbl_800B3584
/* 800B3580  3B 40 00 00 */	li r26, 0
lbl_800B3584:
/* 800B3584  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 800B3588  40 82 00 3C */	bne lbl_800B35C4
/* 800B358C  38 60 00 00 */	li r3, 0
/* 800B3590  80 9D 27 EC */	lwz r4, 0x27ec(r29)
/* 800B3594  28 04 00 00 */	cmplwi r4, 0
/* 800B3598  41 82 00 20 */	beq lbl_800B35B8
/* 800B359C  80 1D 28 38 */	lwz r0, 0x2838(r29)
/* 800B35A0  7C 04 00 40 */	cmplw r4, r0
/* 800B35A4  41 82 00 10 */	beq lbl_800B35B4
/* 800B35A8  80 1D 28 40 */	lwz r0, 0x2840(r29)
/* 800B35AC  7C 04 00 40 */	cmplw r4, r0
/* 800B35B0  40 82 00 08 */	bne lbl_800B35B8
lbl_800B35B4:
/* 800B35B4  38 60 00 01 */	li r3, 1
lbl_800B35B8:
/* 800B35B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B35BC  40 82 00 08 */	bne lbl_800B35C4
/* 800B35C0  3B 60 00 00 */	li r27, 0
lbl_800B35C4:
/* 800B35C4  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800B35C8  40 82 00 34 */	bne lbl_800B35FC
/* 800B35CC  3B 80 00 00 */	li r28, 0
/* 800B35D0  7F A3 EB 78 */	mr r3, r29
/* 800B35D4  48 00 79 AD */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800B35D8  2C 03 00 00 */	cmpwi r3, 0
/* 800B35DC  41 82 00 14 */	beq lbl_800B35F0
/* 800B35E0  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800B35E4  28 00 01 02 */	cmplwi r0, 0x102
/* 800B35E8  41 82 00 08 */	beq lbl_800B35F0
/* 800B35EC  3B 80 00 01 */	li r28, 1
lbl_800B35F0:
/* 800B35F0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800B35F4  40 82 00 08 */	bne lbl_800B35FC
/* 800B35F8  3B C0 00 00 */	li r30, 0
lbl_800B35FC:
/* 800B35FC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800B3600  40 82 00 14 */	bne lbl_800B3614
/* 800B3604  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 800B3608  28 00 00 17 */	cmplwi r0, 0x17
/* 800B360C  41 82 00 08 */	beq lbl_800B3614
/* 800B3610  3B E0 00 00 */	li r31, 0
lbl_800B3614:
/* 800B3614  7F E3 FB 78 */	mr r3, r31
/* 800B3618  39 61 00 30 */	addi r11, r1, 0x30
/* 800B361C  48 2A EB FD */	bl _restgpr_25
/* 800B3620  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B3624  7C 08 03 A6 */	mtlr r0
/* 800B3628  38 21 00 30 */	addi r1, r1, 0x30
/* 800B362C  4E 80 00 20 */	blr 
