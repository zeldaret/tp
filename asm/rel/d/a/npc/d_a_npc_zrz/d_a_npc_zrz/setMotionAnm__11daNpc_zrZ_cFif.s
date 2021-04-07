lbl_80B95F3C:
/* 80B95F3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B95F40  7C 08 02 A6 */	mflr r0
/* 80B95F44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B95F48  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B95F4C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B95F50  39 61 00 20 */	addi r11, r1, 0x20
/* 80B95F54  4B 7C C2 7D */	bl _savegpr_26
/* 80B95F58  7C 7A 1B 78 */	mr r26, r3
/* 80B95F5C  7C 9B 23 78 */	mr r27, r4
/* 80B95F60  FF E0 08 90 */	fmr f31, f1
/* 80B95F64  3C 80 80 BA */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B9B284@ha */
/* 80B95F68  3B E4 B2 84 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80B9B284@l */
/* 80B95F6C  3B C0 00 00 */	li r30, 0
/* 80B95F70  3B A0 00 00 */	li r29, 0
/* 80B95F74  3B 80 00 02 */	li r28, 2
/* 80B95F78  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80B95F7C  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80B95F80  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80B95F84  88 03 14 4C */	lbz r0, 0x144c(r3)
/* 80B95F88  28 00 00 01 */	cmplwi r0, 1
/* 80B95F8C  40 82 00 38 */	bne lbl_80B95FC4
/* 80B95F90  57 60 18 38 */	slwi r0, r27, 3
/* 80B95F94  38 9F 00 58 */	addi r4, r31, 0x58
/* 80B95F98  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B95F9C  2C 05 00 00 */	cmpwi r5, 0
/* 80B95FA0  41 80 00 54 */	blt lbl_80B95FF4
/* 80B95FA4  7C 84 02 14 */	add r4, r4, r0
/* 80B95FA8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B95FAC  54 00 10 3A */	slwi r0, r0, 2
/* 80B95FB0  38 9F 01 10 */	addi r4, r31, 0x110
/* 80B95FB4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B95FB8  4B 5B CB 75 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B95FBC  7C 7E 1B 78 */	mr r30, r3
/* 80B95FC0  48 00 00 34 */	b lbl_80B95FF4
lbl_80B95FC4:
/* 80B95FC4  57 60 18 38 */	slwi r0, r27, 3
/* 80B95FC8  38 9F 00 30 */	addi r4, r31, 0x30
/* 80B95FCC  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B95FD0  2C 05 00 00 */	cmpwi r5, 0
/* 80B95FD4  41 80 00 20 */	blt lbl_80B95FF4
/* 80B95FD8  7C 84 02 14 */	add r4, r4, r0
/* 80B95FDC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B95FE0  54 00 10 3A */	slwi r0, r0, 2
/* 80B95FE4  38 9F 01 10 */	addi r4, r31, 0x110
/* 80B95FE8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B95FEC  4B 5B CB 41 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B95FF0  7C 7E 1B 78 */	mr r30, r3
lbl_80B95FF4:
/* 80B95FF4  2C 1B 00 04 */	cmpwi r27, 4
/* 80B95FF8  41 82 00 14 */	beq lbl_80B9600C
/* 80B95FFC  40 80 00 18 */	bge lbl_80B96014
/* 80B96000  2C 1B 00 02 */	cmpwi r27, 2
/* 80B96004  40 80 00 18 */	bge lbl_80B9601C
/* 80B96008  48 00 00 0C */	b lbl_80B96014
lbl_80B9600C:
/* 80B9600C  3B 80 00 00 */	li r28, 0
/* 80B96010  48 00 00 0C */	b lbl_80B9601C
lbl_80B96014:
/* 80B96014  3B C0 00 00 */	li r30, 0
/* 80B96018  3B A0 00 00 */	li r29, 0
lbl_80B9601C:
/* 80B9601C  88 1A 14 4C */	lbz r0, 0x144c(r26)
/* 80B96020  28 00 00 01 */	cmplwi r0, 1
/* 80B96024  40 82 00 34 */	bne lbl_80B96058
/* 80B96028  80 BF 00 98 */	lwz r5, 0x98(r31)
/* 80B9602C  2C 05 00 00 */	cmpwi r5, 0
/* 80B96030  41 80 00 54 */	blt lbl_80B96084
/* 80B96034  7F 43 D3 78 */	mr r3, r26
/* 80B96038  38 9F 00 98 */	addi r4, r31, 0x98
/* 80B9603C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B96040  54 00 10 3A */	slwi r0, r0, 2
/* 80B96044  38 9F 01 10 */	addi r4, r31, 0x110
/* 80B96048  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B9604C  4B 5B CB 59 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B96050  7C 7D 1B 78 */	mr r29, r3
/* 80B96054  48 00 00 30 */	b lbl_80B96084
lbl_80B96058:
/* 80B96058  80 BF 00 90 */	lwz r5, 0x90(r31)
/* 80B9605C  2C 05 00 00 */	cmpwi r5, 0
/* 80B96060  41 80 00 24 */	blt lbl_80B96084
/* 80B96064  7F 43 D3 78 */	mr r3, r26
/* 80B96068  38 9F 00 90 */	addi r4, r31, 0x90
/* 80B9606C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B96070  54 00 10 3A */	slwi r0, r0, 2
/* 80B96074  38 9F 01 10 */	addi r4, r31, 0x110
/* 80B96078  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B9607C  4B 5B CB 29 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B96080  7C 7D 1B 78 */	mr r29, r3
lbl_80B96084:
/* 80B96084  28 1D 00 00 */	cmplwi r29, 0
/* 80B96088  41 82 00 3C */	beq lbl_80B960C4
/* 80B9608C  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B96090  80 63 00 04 */	lwz r3, 4(r3)
/* 80B96094  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B96098  7F 43 D3 78 */	mr r3, r26
/* 80B9609C  7F A4 EB 78 */	mr r4, r29
/* 80B960A0  3C C0 80 BA */	lis r6, lit_4521@ha /* 0x80B9B080@ha */
/* 80B960A4  C0 26 B0 80 */	lfs f1, lit_4521@l(r6)  /* 0x80B9B080@l */
/* 80B960A8  38 C0 00 02 */	li r6, 2
/* 80B960AC  4B 5B CC 59 */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80B960B0  2C 03 00 00 */	cmpwi r3, 0
/* 80B960B4  41 82 00 10 */	beq lbl_80B960C4
/* 80B960B8  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 80B960BC  60 00 00 12 */	ori r0, r0, 0x12
/* 80B960C0  90 1A 09 9C */	stw r0, 0x99c(r26)
lbl_80B960C4:
/* 80B960C4  28 1E 00 00 */	cmplwi r30, 0
/* 80B960C8  41 82 00 44 */	beq lbl_80B9610C
/* 80B960CC  7F 43 D3 78 */	mr r3, r26
/* 80B960D0  7F C4 F3 78 */	mr r4, r30
/* 80B960D4  3C A0 80 BA */	lis r5, lit_4521@ha /* 0x80B9B080@ha */
/* 80B960D8  C0 25 B0 80 */	lfs f1, lit_4521@l(r5)  /* 0x80B9B080@l */
/* 80B960DC  FC 40 F8 90 */	fmr f2, f31
/* 80B960E0  7F 85 E3 78 */	mr r5, r28
/* 80B960E4  38 C0 00 00 */	li r6, 0
/* 80B960E8  38 E0 FF FF */	li r7, -1
/* 80B960EC  4B 5B CB 31 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80B960F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B960F4  41 82 00 18 */	beq lbl_80B9610C
/* 80B960F8  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 80B960FC  60 00 00 09 */	ori r0, r0, 9
/* 80B96100  90 1A 09 9C */	stw r0, 0x99c(r26)
/* 80B96104  38 00 00 00 */	li r0, 0
/* 80B96108  B0 1A 09 E2 */	sth r0, 0x9e2(r26)
lbl_80B9610C:
/* 80B9610C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B96110  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B96114  39 61 00 20 */	addi r11, r1, 0x20
/* 80B96118  4B 7C C1 05 */	bl _restgpr_26
/* 80B9611C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B96120  7C 08 03 A6 */	mtlr r0
/* 80B96124  38 21 00 30 */	addi r1, r1, 0x30
/* 80B96128  4E 80 00 20 */	blr 
