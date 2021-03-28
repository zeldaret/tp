lbl_80AD982C:
/* 80AD982C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AD9830  7C 08 02 A6 */	mflr r0
/* 80AD9834  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD9838  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AD983C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AD9840  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD9844  4B 88 89 94 */	b _savegpr_28
/* 80AD9848  7C 7D 1B 78 */	mr r29, r3
/* 80AD984C  7C 9E 23 78 */	mr r30, r4
/* 80AD9850  FF E0 08 90 */	fmr f31, f1
/* 80AD9854  3C 80 80 AE */	lis r4, cNullVec__6Z2Calc@ha
/* 80AD9858  3B E4 26 20 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80AD985C  1F 9E 00 0C */	mulli r28, r30, 0xc
/* 80AD9860  38 BF 00 20 */	addi r5, r31, 0x20
/* 80AD9864  7C 85 E2 14 */	add r4, r5, r28
/* 80AD9868  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD986C  54 00 10 3A */	slwi r0, r0, 2
/* 80AD9870  38 9F 02 C0 */	addi r4, r31, 0x2c0
/* 80AD9874  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD9878  7C A5 E0 2E */	lwzx r5, r5, r28
/* 80AD987C  4B 67 92 B0 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AD9880  7C 64 1B 79 */	or. r4, r3, r3
/* 80AD9884  38 1F 00 20 */	addi r0, r31, 0x20
/* 80AD9888  7C 60 E2 14 */	add r3, r0, r28
/* 80AD988C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AD9890  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80AD9894  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80AD9898  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80AD989C  41 82 00 3C */	beq lbl_80AD98D8
/* 80AD98A0  7F A3 EB 78 */	mr r3, r29
/* 80AD98A4  3C C0 80 AE */	lis r6, lit_4497@ha
/* 80AD98A8  C0 26 20 68 */	lfs f1, lit_4497@l(r6)
/* 80AD98AC  FC 40 F8 90 */	fmr f2, f31
/* 80AD98B0  38 C0 00 00 */	li r6, 0
/* 80AD98B4  38 E0 FF FF */	li r7, -1
/* 80AD98B8  4B 67 93 64 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80AD98BC  2C 03 00 00 */	cmpwi r3, 0
/* 80AD98C0  41 82 00 18 */	beq lbl_80AD98D8
/* 80AD98C4  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80AD98C8  60 00 00 09 */	ori r0, r0, 9
/* 80AD98CC  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80AD98D0  38 00 00 00 */	li r0, 0
/* 80AD98D4  B0 1D 09 E2 */	sth r0, 0x9e2(r29)
lbl_80AD98D8:
/* 80AD98D8  38 00 00 00 */	li r0, 0
/* 80AD98DC  2C 1E 00 20 */	cmpwi r30, 0x20
/* 80AD98E0  41 82 00 3C */	beq lbl_80AD991C
/* 80AD98E4  40 80 00 1C */	bge lbl_80AD9900
/* 80AD98E8  2C 1E 00 1A */	cmpwi r30, 0x1a
/* 80AD98EC  41 82 00 28 */	beq lbl_80AD9914
/* 80AD98F0  40 80 00 38 */	bge lbl_80AD9928
/* 80AD98F4  2C 1E 00 19 */	cmpwi r30, 0x19
/* 80AD98F8  40 80 00 14 */	bge lbl_80AD990C
/* 80AD98FC  48 00 00 2C */	b lbl_80AD9928
lbl_80AD9900:
/* 80AD9900  2C 1E 00 22 */	cmpwi r30, 0x22
/* 80AD9904  40 80 00 24 */	bge lbl_80AD9928
/* 80AD9908  48 00 00 1C */	b lbl_80AD9924
lbl_80AD990C:
/* 80AD990C  38 00 00 01 */	li r0, 1
/* 80AD9910  48 00 00 18 */	b lbl_80AD9928
lbl_80AD9914:
/* 80AD9914  38 00 00 02 */	li r0, 2
/* 80AD9918  48 00 00 10 */	b lbl_80AD9928
lbl_80AD991C:
/* 80AD991C  38 00 00 03 */	li r0, 3
/* 80AD9920  48 00 00 08 */	b lbl_80AD9928
lbl_80AD9924:
/* 80AD9924  38 00 00 04 */	li r0, 4
lbl_80AD9928:
/* 80AD9928  1F 80 00 0C */	mulli r28, r0, 0xc
/* 80AD992C  7F A3 EB 78 */	mr r3, r29
/* 80AD9930  38 BF 02 54 */	addi r5, r31, 0x254
/* 80AD9934  7C 85 E2 14 */	add r4, r5, r28
/* 80AD9938  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD993C  54 00 10 3A */	slwi r0, r0, 2
/* 80AD9940  38 9F 02 C0 */	addi r4, r31, 0x2c0
/* 80AD9944  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD9948  7C A5 E0 2E */	lwzx r5, r5, r28
/* 80AD994C  4B 67 92 58 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80AD9950  7C 64 1B 79 */	or. r4, r3, r3
/* 80AD9954  38 1F 02 54 */	addi r0, r31, 0x254
/* 80AD9958  7C 60 E2 14 */	add r3, r0, r28
/* 80AD995C  80 C3 00 04 */	lwz r6, 4(r3)
/* 80AD9960  41 82 00 34 */	beq lbl_80AD9994
/* 80AD9964  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AD9968  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD996C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AD9970  7F A3 EB 78 */	mr r3, r29
/* 80AD9974  3C E0 80 AE */	lis r7, lit_4497@ha
/* 80AD9978  C0 27 20 68 */	lfs f1, lit_4497@l(r7)
/* 80AD997C  4B 67 93 88 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80AD9980  2C 03 00 00 */	cmpwi r3, 0
/* 80AD9984  41 82 00 10 */	beq lbl_80AD9994
/* 80AD9988  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80AD998C  60 00 00 12 */	ori r0, r0, 0x12
/* 80AD9990  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_80AD9994:
/* 80AD9994  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AD9998  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AD999C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD99A0  4B 88 88 84 */	b _restgpr_28
/* 80AD99A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD99A8  7C 08 03 A6 */	mtlr r0
/* 80AD99AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80AD99B0  4E 80 00 20 */	blr 
