lbl_80D11104:
/* 80D11104  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D11108  7C 08 02 A6 */	mflr r0
/* 80D1110C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D11110  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80D11114  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80D11118  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1111C  4B 65 10 C1 */	bl _savegpr_29
/* 80D11120  7C 7F 1B 78 */	mr r31, r3
/* 80D11124  7C 80 23 78 */	mr r0, r4
/* 80D11128  FF E0 08 90 */	fmr f31, f1
/* 80D1112C  3C 80 80 D1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80D128F0@ha */
/* 80D11130  3B C4 28 F0 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80D128F0@l */
/* 80D11134  2C 00 00 02 */	cmpwi r0, 2
/* 80D11138  41 80 00 D0 */	blt lbl_80D11208
/* 80D1113C  2C 00 00 06 */	cmpwi r0, 6
/* 80D11140  41 80 00 08 */	blt lbl_80D11148
/* 80D11144  48 00 00 C4 */	b lbl_80D11208
lbl_80D11148:
/* 80D11148  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 80D1114C  54 1D 18 38 */	slwi r29, r0, 3
/* 80D11150  38 BE 00 20 */	addi r5, r30, 0x20
/* 80D11154  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80D11158  4B 44 19 D5 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80D1115C  7C 64 1B 79 */	or. r4, r3, r3
/* 80D11160  38 1E 00 20 */	addi r0, r30, 0x20
/* 80D11164  7C 60 EA 14 */	add r3, r0, r29
/* 80D11168  80 A3 00 04 */	lwz r5, 4(r3)
/* 80D1116C  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80D11170  38 00 FF E4 */	li r0, -28
/* 80D11174  7C 60 00 38 */	and r0, r3, r0
/* 80D11178  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80D1117C  41 82 00 3C */	beq lbl_80D111B8
/* 80D11180  7F E3 FB 78 */	mr r3, r31
/* 80D11184  3C C0 80 D1 */	lis r6, lit_4323@ha /* 0x80D127D0@ha */
/* 80D11188  C0 26 27 D0 */	lfs f1, lit_4323@l(r6)  /* 0x80D127D0@l */
/* 80D1118C  FC 40 F8 90 */	fmr f2, f31
/* 80D11190  38 C0 00 00 */	li r6, 0
/* 80D11194  38 E0 FF FF */	li r7, -1
/* 80D11198  4B 44 1A 85 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80D1119C  2C 03 00 00 */	cmpwi r3, 0
/* 80D111A0  41 82 00 18 */	beq lbl_80D111B8
/* 80D111A4  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80D111A8  60 00 00 09 */	ori r0, r0, 9
/* 80D111AC  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80D111B0  38 00 00 00 */	li r0, 0
/* 80D111B4  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_80D111B8:
/* 80D111B8  7F E3 FB 78 */	mr r3, r31
/* 80D111BC  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 80D111C0  80 BE 00 58 */	lwz r5, 0x58(r30)
/* 80D111C4  4B 44 19 E1 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80D111C8  7C 64 1B 79 */	or. r4, r3, r3
/* 80D111CC  38 7E 00 58 */	addi r3, r30, 0x58
/* 80D111D0  80 C3 00 04 */	lwz r6, 4(r3)
/* 80D111D4  41 82 00 34 */	beq lbl_80D11208
/* 80D111D8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D111DC  80 63 00 04 */	lwz r3, 4(r3)
/* 80D111E0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80D111E4  7F E3 FB 78 */	mr r3, r31
/* 80D111E8  3C E0 80 D1 */	lis r7, lit_4323@ha /* 0x80D127D0@ha */
/* 80D111EC  C0 27 27 D0 */	lfs f1, lit_4323@l(r7)  /* 0x80D127D0@l */
/* 80D111F0  4B 44 1B 15 */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80D111F4  2C 03 00 00 */	cmpwi r3, 0
/* 80D111F8  41 82 00 10 */	beq lbl_80D11208
/* 80D111FC  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80D11200  60 00 00 12 */	ori r0, r0, 0x12
/* 80D11204  90 1F 09 9C */	stw r0, 0x99c(r31)
lbl_80D11208:
/* 80D11208  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80D1120C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80D11210  39 61 00 20 */	addi r11, r1, 0x20
/* 80D11214  4B 65 10 15 */	bl _restgpr_29
/* 80D11218  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D1121C  7C 08 03 A6 */	mtlr r0
/* 80D11220  38 21 00 30 */	addi r1, r1, 0x30
/* 80D11224  4E 80 00 20 */	blr 
