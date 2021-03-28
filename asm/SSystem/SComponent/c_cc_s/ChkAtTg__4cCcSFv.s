lbl_80264F40:
/* 80264F40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80264F44  7C 08 02 A6 */	mflr r0
/* 80264F48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80264F4C  39 61 00 30 */	addi r11, r1, 0x30
/* 80264F50  48 0F D2 7D */	bl _savegpr_25
/* 80264F54  7C 7F 1B 78 */	mr r31, r3
/* 80264F58  A0 03 28 02 */	lhz r0, 0x2802(r3)
/* 80264F5C  54 04 10 3A */	slwi r4, r0, 2
/* 80264F60  3B A4 04 00 */	addi r29, r4, 0x400
/* 80264F64  7F BF EA 14 */	add r29, r31, r29
/* 80264F68  4B FF FE 29 */	bl ClrAtHitInf__4cCcSFv
/* 80264F6C  7F E3 FB 78 */	mr r3, r31
/* 80264F70  4B FF FD 81 */	bl ClrTgHitInf__4cCcSFv
/* 80264F74  7F FC FB 78 */	mr r28, r31
/* 80264F78  3C 60 80 43 */	lis r3, cross@ha
/* 80264F7C  3B C3 0C CC */	addi r30, r3, cross@l
/* 80264F80  48 00 01 B0 */	b lbl_80265130
lbl_80264F84:
/* 80264F84  80 7C 00 00 */	lwz r3, 0(r28)
/* 80264F88  28 03 00 00 */	cmplwi r3, 0
/* 80264F8C  41 82 01 A0 */	beq lbl_8026512C
/* 80264F90  80 03 00 00 */	lwz r0, 0(r3)
/* 80264F94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80264F98  41 82 01 94 */	beq lbl_8026512C
/* 80264F9C  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80264FA0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80264FA4  7D 89 03 A6 */	mtctr r12
/* 80264FA8  4E 80 04 21 */	bctrl 
/* 80264FAC  7C 7B 1B 78 */	mr r27, r3
/* 80264FB0  3B 5F 04 00 */	addi r26, r31, 0x400
/* 80264FB4  48 00 01 70 */	b lbl_80265124
lbl_80264FB8:
/* 80264FB8  80 7A 00 00 */	lwz r3, 0(r26)
/* 80264FBC  28 03 00 00 */	cmplwi r3, 0
/* 80264FC0  41 82 01 60 */	beq lbl_80265120
/* 80264FC4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80264FC8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80264FCC  41 82 01 54 */	beq lbl_80265120
/* 80264FD0  38 83 00 48 */	addi r4, r3, 0x48
/* 80264FD4  80 7C 00 00 */	lwz r3, 0(r28)
/* 80264FD8  38 63 00 48 */	addi r3, r3, 0x48
/* 80264FDC  4B FF E3 8D */	bl Chk__15cCcD_DivideInfoCFRC15cCcD_DivideInfo
/* 80264FE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80264FE4  41 82 01 3C */	beq lbl_80265120
/* 80264FE8  7F E3 FB 78 */	mr r3, r31
/* 80264FEC  80 9C 00 00 */	lwz r4, 0(r28)
/* 80264FF0  80 BA 00 00 */	lwz r5, 0(r26)
/* 80264FF4  4B FF FE 39 */	bl ChkNoHitAtTg__4cCcSFP8cCcD_ObjP8cCcD_Obj
/* 80264FF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80264FFC  40 82 01 24 */	bne lbl_80265120
/* 80265000  80 7A 00 00 */	lwz r3, 0(r26)
/* 80265004  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80265008  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8026500C  7D 89 03 A6 */	mtctr r12
/* 80265010  4E 80 04 21 */	bctrl 
/* 80265014  7C 79 1B 78 */	mr r25, r3
/* 80265018  88 0D 8B D8 */	lbz r0, data_80451158(r13)
/* 8026501C  7C 00 07 75 */	extsb. r0, r0
/* 80265020  40 82 00 28 */	bne lbl_80265048
/* 80265024  3C 60 80 43 */	lis r3, cross@ha
/* 80265028  38 63 0C CC */	addi r3, r3, cross@l
/* 8026502C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80265030  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80265034  3C A0 80 43 */	lis r5, lit_2492@ha
/* 80265038  38 A5 0C C0 */	addi r5, r5, lit_2492@l
/* 8026503C  48 0F CB E9 */	bl __register_global_object
/* 80265040  38 00 00 01 */	li r0, 1
/* 80265044  98 0D 8B D8 */	stb r0, data_80451158(r13)
lbl_80265048:
/* 80265048  7F 63 DB 78 */	mr r3, r27
/* 8026504C  7F 24 CB 78 */	mr r4, r25
/* 80265050  3C A0 80 43 */	lis r5, cross@ha
/* 80265054  38 A5 0C CC */	addi r5, r5, cross@l
/* 80265058  81 9B 00 1C */	lwz r12, 0x1c(r27)
/* 8026505C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80265060  7D 89 03 A6 */	mtctr r12
/* 80265064  4E 80 04 21 */	bctrl 
/* 80265068  38 C0 00 01 */	li r6, 1
/* 8026506C  80 9C 00 00 */	lwz r4, 0(r28)
/* 80265070  80 04 00 40 */	lwz r0, 0x40(r4)
/* 80265074  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80265078  40 82 00 18 */	bne lbl_80265090
/* 8026507C  80 BA 00 00 */	lwz r5, 0(r26)
/* 80265080  80 05 00 40 */	lwz r0, 0x40(r5)
/* 80265084  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80265088  40 82 00 08 */	bne lbl_80265090
/* 8026508C  38 C0 00 00 */	li r6, 0
lbl_80265090:
/* 80265090  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80265094  40 82 00 24 */	bne lbl_802650B8
/* 80265098  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026509C  41 82 00 1C */	beq lbl_802650B8
/* 802650A0  7F E3 FB 78 */	mr r3, r31
/* 802650A4  80 BA 00 00 */	lwz r5, 0(r26)
/* 802650A8  3C C0 80 43 */	lis r6, cross@ha
/* 802650AC  38 C6 0C CC */	addi r6, r6, cross@l
/* 802650B0  48 00 03 19 */	bl SetAtTgCommonHitInf__4cCcSFP8cCcD_ObjP8cCcD_ObjP4cXyz
/* 802650B4  48 00 00 6C */	b lbl_80265120
lbl_802650B8:
/* 802650B8  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 802650BC  41 82 00 64 */	beq lbl_80265120
/* 802650C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802650C4  40 82 00 5C */	bne lbl_80265120
/* 802650C8  7C 83 23 78 */	mr r3, r4
/* 802650CC  81 84 00 3C */	lwz r12, 0x3c(r4)
/* 802650D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802650D4  7D 89 03 A6 */	mtctr r12
/* 802650D8  4E 80 04 21 */	bctrl 
/* 802650DC  28 03 00 00 */	cmplwi r3, 0
/* 802650E0  40 82 00 1C */	bne lbl_802650FC
/* 802650E4  C0 02 B6 38 */	lfs f0, lit_2532(r2)
/* 802650E8  3C 60 80 43 */	lis r3, cross@ha
/* 802650EC  D0 03 0C CC */	stfs f0, cross@l(r3)
/* 802650F0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 802650F4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 802650F8  48 00 00 10 */	b lbl_80265108
lbl_802650FC:
/* 802650FC  3C 80 80 43 */	lis r4, cross@ha
/* 80265100  38 84 0C CC */	addi r4, r4, cross@l
/* 80265104  48 00 9D 21 */	bl CalcCenter__8cM3dGAabCFP4cXyz
lbl_80265108:
/* 80265108  7F E3 FB 78 */	mr r3, r31
/* 8026510C  80 9C 00 00 */	lwz r4, 0(r28)
/* 80265110  80 BA 00 00 */	lwz r5, 0(r26)
/* 80265114  3C C0 80 43 */	lis r6, cross@ha
/* 80265118  38 C6 0C CC */	addi r6, r6, cross@l
/* 8026511C  48 00 02 AD */	bl SetAtTgCommonHitInf__4cCcSFP8cCcD_ObjP8cCcD_ObjP4cXyz
lbl_80265120:
/* 80265120  3B 5A 00 04 */	addi r26, r26, 4
lbl_80265124:
/* 80265124  7C 1A E8 40 */	cmplw r26, r29
/* 80265128  41 80 FE 90 */	blt lbl_80264FB8
lbl_8026512C:
/* 8026512C  3B 9C 00 04 */	addi r28, r28, 4
lbl_80265130:
/* 80265130  A0 1F 28 00 */	lhz r0, 0x2800(r31)
/* 80265134  54 00 10 3A */	slwi r0, r0, 2
/* 80265138  7C 1F 02 14 */	add r0, r31, r0
/* 8026513C  7C 1C 00 40 */	cmplw r28, r0
/* 80265140  41 80 FE 44 */	blt lbl_80264F84
/* 80265144  39 61 00 30 */	addi r11, r1, 0x30
/* 80265148  48 0F D0 D1 */	bl _restgpr_25
/* 8026514C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80265150  7C 08 03 A6 */	mtlr r0
/* 80265154  38 21 00 30 */	addi r1, r1, 0x30
/* 80265158  4E 80 00 20 */	blr 
