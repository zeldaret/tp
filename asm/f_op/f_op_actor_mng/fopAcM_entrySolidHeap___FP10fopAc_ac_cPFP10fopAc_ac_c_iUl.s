lbl_8001A1E8:
/* 8001A1E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001A1EC  7C 08 02 A6 */	mflr r0
/* 8001A1F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001A1F4  39 61 00 30 */	addi r11, r1, 0x30
/* 8001A1F8  48 34 7F D1 */	bl _savegpr_24
/* 8001A1FC  7C 7B 1B 78 */	mr r27, r3
/* 8001A200  7C 9C 23 78 */	mr r28, r4
/* 8001A204  7C BD 2B 78 */	mr r29, r5
/* 8001A208  48 00 33 9D */	bl fopAcM_getProcNameString__FPC10fopAc_ac_c
/* 8001A20C  7C 7F 1B 78 */	mr r31, r3
/* 8001A210  3B C0 00 00 */	li r30, 0
/* 8001A214  28 1D 00 00 */	cmplwi r29, 0
/* 8001A218  41 82 00 0C */	beq lbl_8001A224
/* 8001A21C  38 1D 00 0F */	addi r0, r29, 0xf
/* 8001A220  54 1D 00 36 */	rlwinm r29, r0, 0, 0, 0x1b
lbl_8001A224:
/* 8001A224  3C 60 80 38 */	lis r3, f_op_f_op_actor_mng__stringBase0@ha
/* 8001A228  3B 43 88 C8 */	addi r26, r3, f_op_f_op_actor_mng__stringBase0@l
lbl_8001A22C:
/* 8001A22C  28 1D 00 00 */	cmplwi r29, 0
/* 8001A230  41 82 00 8C */	beq lbl_8001A2BC
/* 8001A234  7F A3 EB 78 */	mr r3, r29
/* 8001A238  38 80 00 20 */	li r4, 0x20
/* 8001A23C  4B FF 4C 9D */	bl mDoExt_createSolidHeapFromGame__FUlUl
/* 8001A240  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001A244  41 82 00 5C */	beq lbl_8001A2A0
/* 8001A248  7F 63 DB 78 */	mr r3, r27
/* 8001A24C  7F 84 E3 78 */	mr r4, r28
/* 8001A250  7F C5 F3 78 */	mr r5, r30
/* 8001A254  4B FF FF 35 */	bl fopAcM_callCallback__FP10fopAc_ac_cPFP10fopAc_ac_c_iP7JKRHeap
/* 8001A258  30 03 FF FF */	addic r0, r3, -1
/* 8001A25C  7C 00 19 10 */	subfe r0, r0, r3
/* 8001A260  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001A264  40 82 00 58 */	bne lbl_8001A2BC
/* 8001A268  7F C3 F3 78 */	mr r3, r30
/* 8001A26C  48 2B 44 C1 */	bl getFreeSize__7JKRHeapFv
/* 8001A270  7C 65 1B 78 */	mr r5, r3
/* 8001A274  3C 60 80 38 */	lis r3, f_op_f_op_actor_mng__stringBase0@ha
/* 8001A278  38 63 88 C8 */	addi r3, r3, f_op_f_op_actor_mng__stringBase0@l
/* 8001A27C  38 63 00 59 */	addi r3, r3, 0x59
/* 8001A280  7F A4 EB 78 */	mr r4, r29
/* 8001A284  7F E6 FB 78 */	mr r6, r31
/* 8001A288  4C C6 31 82 */	crclr 6
/* 8001A28C  4B FE C9 81 */	bl OSReport_Error
/* 8001A290  7F C3 F3 78 */	mr r3, r30
/* 8001A294  4B FF 4E F9 */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 8001A298  3B C0 00 00 */	li r30, 0
/* 8001A29C  48 00 00 20 */	b lbl_8001A2BC
lbl_8001A2A0:
/* 8001A2A0  3C 60 80 38 */	lis r3, f_op_f_op_actor_mng__stringBase0@ha
/* 8001A2A4  38 63 88 C8 */	addi r3, r3, f_op_f_op_actor_mng__stringBase0@l
/* 8001A2A8  38 63 00 91 */	addi r3, r3, 0x91
/* 8001A2AC  7F A4 EB 78 */	mr r4, r29
/* 8001A2B0  7F E5 FB 78 */	mr r5, r31
/* 8001A2B4  4C C6 31 82 */	crclr 6
/* 8001A2B8  4B FE C9 55 */	bl OSReport_Error
lbl_8001A2BC:
/* 8001A2BC  28 1E 00 00 */	cmplwi r30, 0
/* 8001A2C0  40 82 00 8C */	bne lbl_8001A34C
/* 8001A2C4  38 60 FF FF */	li r3, -1
/* 8001A2C8  38 80 00 20 */	li r4, 0x20
/* 8001A2CC  4B FF 4C 0D */	bl mDoExt_createSolidHeapFromGame__FUlUl
/* 8001A2D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001A2D4  40 82 00 24 */	bne lbl_8001A2F8
/* 8001A2D8  3C 60 80 38 */	lis r3, f_op_f_op_actor_mng__stringBase0@ha
/* 8001A2DC  38 63 88 C8 */	addi r3, r3, f_op_f_op_actor_mng__stringBase0@l
/* 8001A2E0  38 63 00 C3 */	addi r3, r3, 0xc3
/* 8001A2E4  7F E4 FB 78 */	mr r4, r31
/* 8001A2E8  4C C6 31 82 */	crclr 6
/* 8001A2EC  4B FE C9 21 */	bl OSReport_Error
/* 8001A2F0  38 60 00 00 */	li r3, 0
/* 8001A2F4  48 00 01 A4 */	b lbl_8001A498
lbl_8001A2F8:
/* 8001A2F8  7F 63 DB 78 */	mr r3, r27
/* 8001A2FC  7F 84 E3 78 */	mr r4, r28
/* 8001A300  7F C5 F3 78 */	mr r5, r30
/* 8001A304  4B FF FE 85 */	bl fopAcM_callCallback__FP10fopAc_ac_cPFP10fopAc_ac_c_iP7JKRHeap
/* 8001A308  30 03 FF FF */	addic r0, r3, -1
/* 8001A30C  7C 00 19 10 */	subfe r0, r0, r3
/* 8001A310  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001A314  40 82 00 38 */	bne lbl_8001A34C
/* 8001A318  7F C3 F3 78 */	mr r3, r30
/* 8001A31C  48 2B 44 11 */	bl getFreeSize__7JKRHeapFv
/* 8001A320  7C 64 1B 78 */	mr r4, r3
/* 8001A324  3C 60 80 38 */	lis r3, f_op_f_op_actor_mng__stringBase0@ha
/* 8001A328  38 63 88 C8 */	addi r3, r3, f_op_f_op_actor_mng__stringBase0@l
/* 8001A32C  38 63 00 E9 */	addi r3, r3, 0xe9
/* 8001A330  7F E5 FB 78 */	mr r5, r31
/* 8001A334  4C C6 31 82 */	crclr 6
/* 8001A338  4B FE C8 D5 */	bl OSReport_Error
/* 8001A33C  7F C3 F3 78 */	mr r3, r30
/* 8001A340  4B FF 4E 4D */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 8001A344  38 60 00 00 */	li r3, 0
/* 8001A348  48 00 01 50 */	b lbl_8001A498
lbl_8001A34C:
/* 8001A34C  28 1E 00 00 */	cmplwi r30, 0
/* 8001A350  41 82 01 2C */	beq lbl_8001A47C
/* 8001A354  88 0D 87 48 */	lbz r0, struct_80450CC8+0x0(r13)
/* 8001A358  28 00 00 00 */	cmplwi r0, 0
/* 8001A35C  40 82 00 18 */	bne lbl_8001A374
/* 8001A360  7F C3 F3 78 */	mr r3, r30
/* 8001A364  4B FF 4D 29 */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 8001A368  93 DB 00 F0 */	stw r30, 0xf0(r27)
/* 8001A36C  38 60 00 01 */	li r3, 1
/* 8001A370  48 00 01 28 */	b lbl_8001A498
lbl_8001A374:
/* 8001A374  3B 00 00 00 */	li r24, 0
/* 8001A378  83 3E 00 38 */	lwz r25, 0x38(r30)
/* 8001A37C  7F C3 F3 78 */	mr r3, r30
/* 8001A380  48 2B 43 AD */	bl getFreeSize__7JKRHeapFv
/* 8001A384  7C 63 C8 50 */	subf r3, r3, r25
/* 8001A388  38 03 00 1F */	addi r0, r3, 0x1f
/* 8001A38C  54 19 00 34 */	rlwinm r25, r0, 0, 0, 0x1a
/* 8001A390  4B FF 49 C1 */	bl mDoExt_getGameHeap__Fv
/* 8001A394  48 2B 43 99 */	bl getFreeSize__7JKRHeapFv
/* 8001A398  38 19 00 90 */	addi r0, r25, 0x90
/* 8001A39C  7C 00 18 40 */	cmplw r0, r3
/* 8001A3A0  40 80 00 14 */	bge lbl_8001A3B4
/* 8001A3A4  7F 23 CB 78 */	mr r3, r25
/* 8001A3A8  38 80 00 20 */	li r4, 0x20
/* 8001A3AC  4B FF 4B 2D */	bl mDoExt_createSolidHeapFromGame__FUlUl
/* 8001A3B0  7C 78 1B 78 */	mr r24, r3
lbl_8001A3B4:
/* 8001A3B4  28 18 00 00 */	cmplwi r24, 0
/* 8001A3B8  41 82 00 68 */	beq lbl_8001A420
/* 8001A3BC  7C 18 F0 40 */	cmplw r24, r30
/* 8001A3C0  40 80 00 54 */	bge lbl_8001A414
/* 8001A3C4  7F C3 F3 78 */	mr r3, r30
/* 8001A3C8  4B FF 4D C5 */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 8001A3CC  3B C0 00 00 */	li r30, 0
/* 8001A3D0  7F 63 DB 78 */	mr r3, r27
/* 8001A3D4  7F 84 E3 78 */	mr r4, r28
/* 8001A3D8  7F 05 C3 78 */	mr r5, r24
/* 8001A3DC  4B FF FD AD */	bl fopAcM_callCallback__FP10fopAc_ac_cPFP10fopAc_ac_c_iP7JKRHeap
/* 8001A3E0  30 03 FF FF */	addic r0, r3, -1
/* 8001A3E4  7C 00 19 10 */	subfe r0, r0, r3
/* 8001A3E8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001A3EC  40 82 00 34 */	bne lbl_8001A420
/* 8001A3F0  3C 60 80 38 */	lis r3, f_op_f_op_actor_mng__stringBase0@ha
/* 8001A3F4  38 63 88 C8 */	addi r3, r3, f_op_f_op_actor_mng__stringBase0@l
/* 8001A3F8  38 63 01 13 */	addi r3, r3, 0x113
/* 8001A3FC  4C C6 31 82 */	crclr 6
/* 8001A400  4B FE C8 0D */	bl OSReport_Error
/* 8001A404  7F 03 C3 78 */	mr r3, r24
/* 8001A408  4B FF 4D 85 */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 8001A40C  3B 00 00 00 */	li r24, 0
/* 8001A410  48 00 00 10 */	b lbl_8001A420
lbl_8001A414:
/* 8001A414  7F 03 C3 78 */	mr r3, r24
/* 8001A418  4B FF 4D 75 */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 8001A41C  3B 00 00 00 */	li r24, 0
lbl_8001A420:
/* 8001A420  28 18 00 00 */	cmplwi r24, 0
/* 8001A424  41 82 00 18 */	beq lbl_8001A43C
/* 8001A428  7F 03 C3 78 */	mr r3, r24
/* 8001A42C  4B FF 4C 61 */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 8001A430  93 1B 00 F0 */	stw r24, 0xf0(r27)
/* 8001A434  38 60 00 01 */	li r3, 1
/* 8001A438  48 00 00 60 */	b lbl_8001A498
lbl_8001A43C:
/* 8001A43C  28 1E 00 00 */	cmplwi r30, 0
/* 8001A440  41 82 00 18 */	beq lbl_8001A458
/* 8001A444  7F C3 F3 78 */	mr r3, r30
/* 8001A448  4B FF 4C 45 */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 8001A44C  93 DB 00 F0 */	stw r30, 0xf0(r27)
/* 8001A450  38 60 00 01 */	li r3, 1
/* 8001A454  48 00 00 44 */	b lbl_8001A498
lbl_8001A458:
/* 8001A458  38 7A 01 37 */	addi r3, r26, 0x137
/* 8001A45C  4C C6 31 82 */	crclr 6
/* 8001A460  4B FE C7 AD */	bl OSReport_Error
/* 8001A464  38 7A 01 45 */	addi r3, r26, 0x145
/* 8001A468  4C C6 31 82 */	crclr 6
/* 8001A46C  4B FE C7 A1 */	bl OSReport_Error
/* 8001A470  38 00 00 00 */	li r0, 0
/* 8001A474  98 0D 87 48 */	stb r0, struct_80450CC8+0x0(r13)
/* 8001A478  4B FF FD B4 */	b lbl_8001A22C
lbl_8001A47C:
/* 8001A47C  3C 60 80 38 */	lis r3, f_op_f_op_actor_mng__stringBase0@ha
/* 8001A480  38 63 88 C8 */	addi r3, r3, f_op_f_op_actor_mng__stringBase0@l
/* 8001A484  38 63 01 53 */	addi r3, r3, 0x153
/* 8001A488  7F E4 FB 78 */	mr r4, r31
/* 8001A48C  4C C6 31 82 */	crclr 6
/* 8001A490  4B FE C7 7D */	bl OSReport_Error
/* 8001A494  38 60 00 00 */	li r3, 0
lbl_8001A498:
/* 8001A498  39 61 00 30 */	addi r11, r1, 0x30
/* 8001A49C  48 34 7D 79 */	bl _restgpr_24
/* 8001A4A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001A4A4  7C 08 03 A6 */	mtlr r0
/* 8001A4A8  38 21 00 30 */	addi r1, r1, 0x30
/* 8001A4AC  4E 80 00 20 */	blr 
