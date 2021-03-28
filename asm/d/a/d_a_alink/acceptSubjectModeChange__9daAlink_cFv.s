lbl_800CE468:
/* 800CE468  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800CE46C  7C 08 02 A6 */	mflr r0
/* 800CE470  90 01 00 34 */	stw r0, 0x34(r1)
/* 800CE474  39 61 00 30 */	addi r11, r1, 0x30
/* 800CE478  48 29 3D 4D */	bl _savegpr_23
/* 800CE47C  7C 7C 1B 78 */	mr r28, r3
/* 800CE480  3B E0 00 00 */	li r31, 0
/* 800CE484  7F FE FB 78 */	mr r30, r31
/* 800CE488  7F FD FB 78 */	mr r29, r31
/* 800CE48C  7F FA FB 78 */	mr r26, r31
/* 800CE490  7F F9 FB 78 */	mr r25, r31
/* 800CE494  7F F8 FB 78 */	mr r24, r31
/* 800CE498  7F FB FB 78 */	mr r27, r31
/* 800CE49C  48 0B 31 A5 */	bl dCam_getBody__Fv
/* 800CE4A0  38 80 00 04 */	li r4, 4
/* 800CE4A4  48 09 30 51 */	bl ChangeModeOK__9dCamera_cFl
/* 800CE4A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CE4AC  41 82 00 18 */	beq lbl_800CE4C4
/* 800CE4B0  7F 83 E3 78 */	mr r3, r28
/* 800CE4B4  4B FF FD E1 */	bl checkNoSubjectModeCamera__9daAlink_cFv
/* 800CE4B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CE4BC  40 82 00 08 */	bne lbl_800CE4C4
/* 800CE4C0  3B 60 00 01 */	li r27, 1
lbl_800CE4C4:
/* 800CE4C4  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800CE4C8  41 82 00 38 */	beq lbl_800CE500
/* 800CE4CC  83 7C 27 E0 */	lwz r27, 0x27e0(r28)
/* 800CE4D0  3A E0 00 01 */	li r23, 1
/* 800CE4D4  7F 63 DB 78 */	mr r3, r27
/* 800CE4D8  4B FA 53 0D */	bl LockonTruth__12dAttention_cFv
/* 800CE4DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CE4E0  40 82 00 14 */	bne lbl_800CE4F4
/* 800CE4E4  80 1B 03 34 */	lwz r0, 0x334(r27)
/* 800CE4E8  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800CE4EC  40 82 00 08 */	bne lbl_800CE4F4
/* 800CE4F0  3A E0 00 00 */	li r23, 0
lbl_800CE4F4:
/* 800CE4F4  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 800CE4F8  40 82 00 08 */	bne lbl_800CE500
/* 800CE4FC  3B 00 00 01 */	li r24, 1
lbl_800CE500:
/* 800CE500  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 800CE504  41 82 00 18 */	beq lbl_800CE51C
/* 800CE508  7F 83 E3 78 */	mr r3, r28
/* 800CE50C  48 01 E9 F9 */	bl checkHorseLieAnime__9daAlink_cCFv
/* 800CE510  2C 03 00 00 */	cmpwi r3, 0
/* 800CE514  40 82 00 08 */	bne lbl_800CE51C
/* 800CE518  3B 20 00 01 */	li r25, 1
lbl_800CE51C:
/* 800CE51C  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 800CE520  41 82 00 18 */	beq lbl_800CE538
/* 800CE524  7F 83 E3 78 */	mr r3, r28
/* 800CE528  48 04 76 F9 */	bl checkEventRun__9daAlink_cCFv
/* 800CE52C  2C 03 00 00 */	cmpwi r3, 0
/* 800CE530  40 82 00 08 */	bne lbl_800CE538
/* 800CE534  3B 40 00 01 */	li r26, 1
lbl_800CE538:
/* 800CE538  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 800CE53C  41 82 00 1C */	beq lbl_800CE558
/* 800CE540  80 9C 31 A0 */	lwz r4, 0x31a0(r28)
/* 800CE544  3C 60 00 31 */	lis r3, 0x0031 /* 0x00310040@ha */
/* 800CE548  38 03 00 40 */	addi r0, r3, 0x0040 /* 0x00310040@l */
/* 800CE54C  7C 80 00 39 */	and. r0, r4, r0
/* 800CE550  40 82 00 08 */	bne lbl_800CE558
/* 800CE554  3B A0 00 01 */	li r29, 1
lbl_800CE558:
/* 800CE558  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800CE55C  41 82 00 6C */	beq lbl_800CE5C8
/* 800CE560  3B A0 00 00 */	li r29, 0
/* 800CE564  7F 83 E3 78 */	mr r3, r28
/* 800CE568  4B FE AC ED */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800CE56C  2C 03 00 00 */	cmpwi r3, 0
/* 800CE570  40 82 00 48 */	bne lbl_800CE5B8
/* 800CE574  A0 1C 1F BC */	lhz r0, 0x1fbc(r28)
/* 800CE578  28 00 02 63 */	cmplwi r0, 0x263
/* 800CE57C  41 82 00 3C */	beq lbl_800CE5B8
/* 800CE580  7F 83 E3 78 */	mr r3, r28
/* 800CE584  48 01 56 E9 */	bl checkGrabAnime__9daAlink_cCFv
/* 800CE588  2C 03 00 00 */	cmpwi r3, 0
/* 800CE58C  40 82 00 2C */	bne lbl_800CE5B8
/* 800CE590  38 60 00 00 */	li r3, 0
/* 800CE594  A0 1C 1F BC */	lhz r0, 0x1fbc(r28)
/* 800CE598  28 00 02 DA */	cmplwi r0, 0x2da
/* 800CE59C  41 82 00 10 */	beq lbl_800CE5AC
/* 800CE5A0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800CE5A4  28 00 02 DB */	cmplwi r0, 0x2db
/* 800CE5A8  40 82 00 08 */	bne lbl_800CE5B0
lbl_800CE5AC:
/* 800CE5AC  38 60 00 01 */	li r3, 1
lbl_800CE5B0:
/* 800CE5B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CE5B4  41 82 00 08 */	beq lbl_800CE5BC
lbl_800CE5B8:
/* 800CE5B8  3B A0 00 01 */	li r29, 1
lbl_800CE5BC:
/* 800CE5BC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800CE5C0  41 82 00 08 */	beq lbl_800CE5C8
/* 800CE5C4  3B C0 00 01 */	li r30, 1
lbl_800CE5C8:
/* 800CE5C8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800CE5CC  41 82 00 40 */	beq lbl_800CE60C
/* 800CE5D0  3B A0 00 00 */	li r29, 0
/* 800CE5D4  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800CE5D8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CE5DC  41 82 00 24 */	beq lbl_800CE600
/* 800CE5E0  7F 83 E3 78 */	mr r3, r28
/* 800CE5E4  48 05 D9 C5 */	bl checkWolfWaitSlipPolygon__9daAlink_cFv
/* 800CE5E8  2C 03 00 00 */	cmpwi r3, 0
/* 800CE5EC  41 82 00 14 */	beq lbl_800CE600
/* 800CE5F0  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 800CE5F4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800CE5F8  41 82 00 08 */	beq lbl_800CE600
/* 800CE5FC  3B A0 00 01 */	li r29, 1
lbl_800CE600:
/* 800CE600  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800CE604  40 82 00 08 */	bne lbl_800CE60C
/* 800CE608  3B E0 00 01 */	li r31, 1
lbl_800CE60C:
/* 800CE60C  7F E3 FB 78 */	mr r3, r31
/* 800CE610  39 61 00 30 */	addi r11, r1, 0x30
/* 800CE614  48 29 3B FD */	bl _restgpr_23
/* 800CE618  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800CE61C  7C 08 03 A6 */	mtlr r0
/* 800CE620  38 21 00 30 */	addi r1, r1, 0x30
/* 800CE624  4E 80 00 20 */	blr 
