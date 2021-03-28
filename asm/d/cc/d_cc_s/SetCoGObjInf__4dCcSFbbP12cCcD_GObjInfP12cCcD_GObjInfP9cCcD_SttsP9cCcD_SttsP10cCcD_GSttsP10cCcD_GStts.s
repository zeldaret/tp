lbl_80086240:
/* 80086240  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80086244  7C 08 02 A6 */	mflr r0
/* 80086248  90 01 00 34 */	stw r0, 0x34(r1)
/* 8008624C  39 61 00 30 */	addi r11, r1, 0x30
/* 80086250  48 2D BF 7D */	bl _savegpr_25
/* 80086254  7C 9C 23 78 */	mr r28, r4
/* 80086258  7C BD 2B 78 */	mr r29, r5
/* 8008625C  7D 19 43 78 */	mr r25, r8
/* 80086260  7D 5A 53 78 */	mr r26, r10
/* 80086264  83 61 00 38 */	lwz r27, 0x38(r1)
/* 80086268  7C DF 33 78 */	mr r31, r6
/* 8008626C  7C FE 3B 78 */	mr r30, r7
/* 80086270  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80086274  41 82 00 28 */	beq lbl_8008629C
/* 80086278  80 89 00 10 */	lwz r4, 0x10(r9)
/* 8008627C  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 80086280  4B FF D3 F9 */	bl SetHitApid__22dCcD_GAtTgCoCommonBaseFUi
/* 80086284  80 1B 00 1C */	lwz r0, 0x1c(r27)
/* 80086288  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8008628C  41 82 00 10 */	beq lbl_8008629C
/* 80086290  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 80086294  60 00 00 01 */	ori r0, r0, 1
/* 80086298  90 1F 00 EC */	stw r0, 0xec(r31)
lbl_8008629C:
/* 8008629C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800862A0  41 82 00 28 */	beq lbl_800862C8
/* 800862A4  80 99 00 10 */	lwz r4, 0x10(r25)
/* 800862A8  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 800862AC  4B FF D3 CD */	bl SetHitApid__22dCcD_GAtTgCoCommonBaseFUi
/* 800862B0  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 800862B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800862B8  41 82 00 10 */	beq lbl_800862C8
/* 800862BC  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 800862C0  60 00 00 01 */	ori r0, r0, 1
/* 800862C4  90 1E 00 EC */	stw r0, 0xec(r30)
lbl_800862C8:
/* 800862C8  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800862CC  41 82 00 3C */	beq lbl_80086308
/* 800862D0  83 7F 00 F0 */	lwz r27, 0xf0(r31)
/* 800862D4  28 1B 00 00 */	cmplwi r27, 0
/* 800862D8  41 82 00 30 */	beq lbl_80086308
/* 800862DC  7F C3 F3 78 */	mr r3, r30
/* 800862E0  48 1D D7 69 */	bl GetAc__8cCcD_ObjFv
/* 800862E4  7C 7C 1B 78 */	mr r28, r3
/* 800862E8  7F E3 FB 78 */	mr r3, r31
/* 800862EC  48 1D D7 5D */	bl GetAc__8cCcD_ObjFv
/* 800862F0  7F E4 FB 78 */	mr r4, r31
/* 800862F4  7F 85 E3 78 */	mr r5, r28
/* 800862F8  7F C6 F3 78 */	mr r6, r30
/* 800862FC  7F 6C DB 78 */	mr r12, r27
/* 80086300  7D 89 03 A6 */	mtctr r12
/* 80086304  4E 80 04 21 */	bctrl 
lbl_80086308:
/* 80086308  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8008630C  41 82 00 3C */	beq lbl_80086348
/* 80086310  83 7E 00 F0 */	lwz r27, 0xf0(r30)
/* 80086314  28 1B 00 00 */	cmplwi r27, 0
/* 80086318  41 82 00 30 */	beq lbl_80086348
/* 8008631C  7F E3 FB 78 */	mr r3, r31
/* 80086320  48 1D D7 29 */	bl GetAc__8cCcD_ObjFv
/* 80086324  7C 7C 1B 78 */	mr r28, r3
/* 80086328  7F C3 F3 78 */	mr r3, r30
/* 8008632C  48 1D D7 1D */	bl GetAc__8cCcD_ObjFv
/* 80086330  7F C4 F3 78 */	mr r4, r30
/* 80086334  7F 85 E3 78 */	mr r5, r28
/* 80086338  7F E6 FB 78 */	mr r6, r31
/* 8008633C  7F 6C DB 78 */	mr r12, r27
/* 80086340  7D 89 03 A6 */	mtctr r12
/* 80086344  4E 80 04 21 */	bctrl 
lbl_80086348:
/* 80086348  39 61 00 30 */	addi r11, r1, 0x30
/* 8008634C  48 2D BE CD */	bl _restgpr_25
/* 80086350  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80086354  7C 08 03 A6 */	mtlr r0
/* 80086358  38 21 00 30 */	addi r1, r1, 0x30
/* 8008635C  4E 80 00 20 */	blr 
