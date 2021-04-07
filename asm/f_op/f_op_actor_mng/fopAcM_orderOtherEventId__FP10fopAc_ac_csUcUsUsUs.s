lbl_8001B67C:
/* 8001B67C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001B680  7C 08 02 A6 */	mflr r0
/* 8001B684  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001B688  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B68C  48 34 6B 3D */	bl _savegpr_24
/* 8001B690  7C 7A 1B 78 */	mr r26, r3
/* 8001B694  7C 9B 23 78 */	mr r27, r4
/* 8001B698  7C BC 2B 78 */	mr r28, r5
/* 8001B69C  7C DD 33 78 */	mr r29, r6
/* 8001B6A0  7D 1E 43 78 */	mr r30, r8
/* 8001B6A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001B6A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001B6AC  3B E3 4E C8 */	addi r31, r3, 0x4ec8
/* 8001B6B0  38 00 00 00 */	li r0, 0
/* 8001B6B4  88 83 4F AD */	lbz r4, 0x4fad(r3)
/* 8001B6B8  28 04 00 00 */	cmplwi r4, 0
/* 8001B6BC  41 82 00 0C */	beq lbl_8001B6C8
/* 8001B6C0  28 04 00 02 */	cmplwi r4, 2
/* 8001B6C4  40 82 00 08 */	bne lbl_8001B6CC
lbl_8001B6C8:
/* 8001B6C8  38 00 00 01 */	li r0, 1
lbl_8001B6CC:
/* 8001B6CC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001B6D0  40 82 00 20 */	bne lbl_8001B6F0
/* 8001B6D4  57 C0 05 6B */	rlwinm. r0, r30, 0, 0x15, 0x15
/* 8001B6D8  41 82 00 10 */	beq lbl_8001B6E8
/* 8001B6DC  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8001B6E0  7C 00 D0 40 */	cmplw r0, r26
/* 8001B6E4  41 82 00 0C */	beq lbl_8001B6F0
lbl_8001B6E8:
/* 8001B6E8  38 60 00 00 */	li r3, 0
/* 8001B6EC  48 00 00 B0 */	b lbl_8001B79C
lbl_8001B6F0:
/* 8001B6F0  3B 20 00 32 */	li r25, 0x32
/* 8001B6F4  8B 0D 87 E4 */	lbz r24, struct_80450D64+0x0(r13)
/* 8001B6F8  7F 18 07 74 */	extsb r24, r24
/* 8001B6FC  28 1A 00 00 */	cmplwi r26, 0
/* 8001B700  41 82 00 10 */	beq lbl_8001B710
/* 8001B704  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 8001B708  7C 00 07 74 */	extsb r0, r0
/* 8001B70C  7C 18 03 78 */	mr r24, r0
lbl_8001B710:
/* 8001B710  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 8001B714  41 82 00 0C */	beq lbl_8001B720
/* 8001B718  7C F9 3B 78 */	mr r25, r7
/* 8001B71C  48 00 00 50 */	b lbl_8001B76C
lbl_8001B720:
/* 8001B720  28 1A 00 00 */	cmplwi r26, 0
/* 8001B724  41 82 00 48 */	beq lbl_8001B76C
/* 8001B728  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8001B72C  7F 44 D3 78 */	mr r4, r26
/* 8001B730  7F 65 DB 78 */	mr r5, r27
/* 8001B734  48 02 CA C1 */	bl getEventPrio__16dEvent_manager_cFP10fopAc_ac_cs
/* 8001B738  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8001B73C  41 82 00 0C */	beq lbl_8001B748
/* 8001B740  7C 19 03 78 */	mr r25, r0
/* 8001B744  48 00 00 28 */	b lbl_8001B76C
lbl_8001B748:
/* 8001B748  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8001B74C  28 00 00 FF */	cmplwi r0, 0xff
/* 8001B750  41 82 00 1C */	beq lbl_8001B76C
/* 8001B754  7F 83 E3 78 */	mr r3, r28
/* 8001B758  7F 04 C3 78 */	mr r4, r24
/* 8001B75C  48 02 7D A5 */	bl searchMapEventData__14dEvt_control_cFUcl
/* 8001B760  28 03 00 00 */	cmplwi r3, 0
/* 8001B764  41 82 00 08 */	beq lbl_8001B76C
/* 8001B768  8B 23 00 06 */	lbz r25, 6(r3)
lbl_8001B76C:
/* 8001B76C  7F C3 F3 78 */	mr r3, r30
/* 8001B770  4B FF F8 E9 */	bl event_second_actor__FUs
/* 8001B774  7C 69 1B 78 */	mr r9, r3
/* 8001B778  93 81 00 08 */	stw r28, 8(r1)
/* 8001B77C  7F E3 FB 78 */	mr r3, r31
/* 8001B780  38 80 00 02 */	li r4, 2
/* 8001B784  7F 25 CB 78 */	mr r5, r25
/* 8001B788  7F C6 F3 78 */	mr r6, r30
/* 8001B78C  7F A7 EB 78 */	mr r7, r29
/* 8001B790  7F 48 D3 78 */	mr r8, r26
/* 8001B794  7F 6A DB 78 */	mr r10, r27
/* 8001B798  48 02 5E D1 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001B79C:
/* 8001B79C  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B7A0  48 34 6A 75 */	bl _restgpr_24
/* 8001B7A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001B7A8  7C 08 03 A6 */	mtlr r0
/* 8001B7AC  38 21 00 30 */	addi r1, r1, 0x30
/* 8001B7B0  4E 80 00 20 */	blr 
