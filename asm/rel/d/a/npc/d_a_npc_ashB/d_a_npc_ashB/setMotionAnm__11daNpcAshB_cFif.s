lbl_8095EEE0:
/* 8095EEE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8095EEE4  7C 08 02 A6 */	mflr r0
/* 8095EEE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8095EEEC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8095EEF0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8095EEF4  39 61 00 30 */	addi r11, r1, 0x30
/* 8095EEF8  4B A0 32 D4 */	b _savegpr_25
/* 8095EEFC  7C 7A 1B 78 */	mr r26, r3
/* 8095EF00  7C 9B 23 78 */	mr r27, r4
/* 8095EF04  FF E0 08 90 */	fmr f31, f1
/* 8095EF08  3C 60 80 96 */	lis r3, cNullVec__6Z2Calc@ha
/* 8095EF0C  3B E3 24 18 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 8095EF10  2C 1B 00 07 */	cmpwi r27, 7
/* 8095EF14  41 80 01 70 */	blt lbl_8095F084
/* 8095EF18  2C 1B 00 15 */	cmpwi r27, 0x15
/* 8095EF1C  41 80 00 08 */	blt lbl_8095EF24
/* 8095EF20  48 00 01 64 */	b lbl_8095F084
lbl_8095EF24:
/* 8095EF24  3B 20 00 00 */	li r25, 0
/* 8095EF28  2C 1B 00 12 */	cmpwi r27, 0x12
/* 8095EF2C  41 82 00 28 */	beq lbl_8095EF54
/* 8095EF30  40 80 00 10 */	bge lbl_8095EF40
/* 8095EF34  2C 1B 00 10 */	cmpwi r27, 0x10
/* 8095EF38  41 82 00 14 */	beq lbl_8095EF4C
/* 8095EF3C  48 00 00 24 */	b lbl_8095EF60
lbl_8095EF40:
/* 8095EF40  2C 1B 00 14 */	cmpwi r27, 0x14
/* 8095EF44  41 82 00 18 */	beq lbl_8095EF5C
/* 8095EF48  48 00 00 18 */	b lbl_8095EF60
lbl_8095EF4C:
/* 8095EF4C  3B 20 00 01 */	li r25, 1
/* 8095EF50  48 00 00 10 */	b lbl_8095EF60
lbl_8095EF54:
/* 8095EF54  3B 20 00 02 */	li r25, 2
/* 8095EF58  48 00 00 08 */	b lbl_8095EF60
lbl_8095EF5C:
/* 8095EF5C  3B 20 00 03 */	li r25, 3
lbl_8095EF60:
/* 8095EF60  1F DB 00 0C */	mulli r30, r27, 0xc
/* 8095EF64  7F 43 D3 78 */	mr r3, r26
/* 8095EF68  38 BF 00 20 */	addi r5, r31, 0x20
/* 8095EF6C  7C 85 F2 14 */	add r4, r5, r30
/* 8095EF70  80 04 00 08 */	lwz r0, 8(r4)
/* 8095EF74  54 00 10 3A */	slwi r0, r0, 2
/* 8095EF78  38 9F 01 7C */	addi r4, r31, 0x17c
/* 8095EF7C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8095EF80  7C A5 F0 2E */	lwzx r5, r5, r30
/* 8095EF84  4B 7F 3B A8 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 8095EF88  7C 7D 1B 78 */	mr r29, r3
/* 8095EF8C  1F 39 00 0C */	mulli r25, r25, 0xc
/* 8095EF90  7F 43 D3 78 */	mr r3, r26
/* 8095EF94  38 BF 01 4C */	addi r5, r31, 0x14c
/* 8095EF98  7C 85 CA 14 */	add r4, r5, r25
/* 8095EF9C  80 04 00 08 */	lwz r0, 8(r4)
/* 8095EFA0  54 00 10 3A */	slwi r0, r0, 2
/* 8095EFA4  38 9F 01 7C */	addi r4, r31, 0x17c
/* 8095EFA8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8095EFAC  7C A5 C8 2E */	lwzx r5, r5, r25
/* 8095EFB0  4B 7F 3B F4 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 8095EFB4  7C 7C 1B 78 */	mr r28, r3
/* 8095EFB8  38 1F 00 20 */	addi r0, r31, 0x20
/* 8095EFBC  7C 60 F2 14 */	add r3, r0, r30
/* 8095EFC0  83 C3 00 04 */	lwz r30, 4(r3)
/* 8095EFC4  38 1F 01 4C */	addi r0, r31, 0x14c
/* 8095EFC8  7C 60 CA 14 */	add r3, r0, r25
/* 8095EFCC  83 23 00 04 */	lwz r25, 4(r3)
/* 8095EFD0  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 8095EFD4  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 8095EFD8  90 1A 09 9C */	stw r0, 0x99c(r26)
/* 8095EFDC  2C 1B 00 0C */	cmpwi r27, 0xc
/* 8095EFE0  40 82 00 1C */	bne lbl_8095EFFC
/* 8095EFE4  7F 43 D3 78 */	mr r3, r26
/* 8095EFE8  38 80 00 01 */	li r4, 1
/* 8095EFEC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 8095EFF0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8095EFF4  7D 89 03 A6 */	mtctr r12
/* 8095EFF8  4E 80 04 21 */	bctrl 
lbl_8095EFFC:
/* 8095EFFC  28 1D 00 00 */	cmplwi r29, 0
/* 8095F000  41 82 00 44 */	beq lbl_8095F044
/* 8095F004  7F 43 D3 78 */	mr r3, r26
/* 8095F008  7F A4 EB 78 */	mr r4, r29
/* 8095F00C  3C A0 80 96 */	lis r5, lit_4237@ha
/* 8095F010  C0 25 21 64 */	lfs f1, lit_4237@l(r5)
/* 8095F014  FC 40 F8 90 */	fmr f2, f31
/* 8095F018  7F C5 F3 78 */	mr r5, r30
/* 8095F01C  38 C0 00 00 */	li r6, 0
/* 8095F020  38 E0 FF FF */	li r7, -1
/* 8095F024  4B 7F 3B F8 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 8095F028  2C 03 00 00 */	cmpwi r3, 0
/* 8095F02C  41 82 00 18 */	beq lbl_8095F044
/* 8095F030  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 8095F034  60 00 00 09 */	ori r0, r0, 9
/* 8095F038  90 1A 09 9C */	stw r0, 0x99c(r26)
/* 8095F03C  38 00 00 00 */	li r0, 0
/* 8095F040  B0 1A 09 E2 */	sth r0, 0x9e2(r26)
lbl_8095F044:
/* 8095F044  28 1C 00 00 */	cmplwi r28, 0
/* 8095F048  41 82 00 3C */	beq lbl_8095F084
/* 8095F04C  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 8095F050  80 63 00 04 */	lwz r3, 4(r3)
/* 8095F054  80 A3 00 04 */	lwz r5, 4(r3)
/* 8095F058  7F 43 D3 78 */	mr r3, r26
/* 8095F05C  7F 84 E3 78 */	mr r4, r28
/* 8095F060  3C C0 80 96 */	lis r6, lit_4237@ha
/* 8095F064  C0 26 21 64 */	lfs f1, lit_4237@l(r6)
/* 8095F068  7F 26 CB 78 */	mr r6, r25
/* 8095F06C  4B 7F 3C 98 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 8095F070  2C 03 00 00 */	cmpwi r3, 0
/* 8095F074  41 82 00 10 */	beq lbl_8095F084
/* 8095F078  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 8095F07C  60 00 00 12 */	ori r0, r0, 0x12
/* 8095F080  90 1A 09 9C */	stw r0, 0x99c(r26)
lbl_8095F084:
/* 8095F084  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8095F088  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8095F08C  39 61 00 30 */	addi r11, r1, 0x30
/* 8095F090  4B A0 31 88 */	b _restgpr_25
/* 8095F094  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8095F098  7C 08 03 A6 */	mtlr r0
/* 8095F09C  38 21 00 40 */	addi r1, r1, 0x40
/* 8095F0A0  4E 80 00 20 */	blr 
