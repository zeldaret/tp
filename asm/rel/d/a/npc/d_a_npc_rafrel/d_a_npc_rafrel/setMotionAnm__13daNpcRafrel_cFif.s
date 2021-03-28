lbl_80ABA9CC:
/* 80ABA9CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ABA9D0  7C 08 02 A6 */	mflr r0
/* 80ABA9D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ABA9D8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80ABA9DC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80ABA9E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80ABA9E4  4B 8A 77 E8 */	b _savegpr_25
/* 80ABA9E8  7C 7A 1B 78 */	mr r26, r3
/* 80ABA9EC  7C 9B 23 78 */	mr r27, r4
/* 80ABA9F0  FF E0 08 90 */	fmr f31, f1
/* 80ABA9F4  3C 60 80 AC */	lis r3, cNullVec__6Z2Calc@ha
/* 80ABA9F8  3B E3 FE 80 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80ABA9FC  3B 20 00 00 */	li r25, 0
/* 80ABAA00  2C 1B 00 18 */	cmpwi r27, 0x18
/* 80ABAA04  41 82 00 34 */	beq lbl_80ABAA38
/* 80ABAA08  40 80 00 14 */	bge lbl_80ABAA1C
/* 80ABAA0C  2C 1B 00 16 */	cmpwi r27, 0x16
/* 80ABAA10  41 82 00 18 */	beq lbl_80ABAA28
/* 80ABAA14  40 80 00 1C */	bge lbl_80ABAA30
/* 80ABAA18  48 00 00 2C */	b lbl_80ABAA44
lbl_80ABAA1C:
/* 80ABAA1C  2C 1B 00 1A */	cmpwi r27, 0x1a
/* 80ABAA20  40 80 00 24 */	bge lbl_80ABAA44
/* 80ABAA24  48 00 00 1C */	b lbl_80ABAA40
lbl_80ABAA28:
/* 80ABAA28  3B 20 00 01 */	li r25, 1
/* 80ABAA2C  48 00 00 18 */	b lbl_80ABAA44
lbl_80ABAA30:
/* 80ABAA30  3B 20 00 02 */	li r25, 2
/* 80ABAA34  48 00 00 10 */	b lbl_80ABAA44
lbl_80ABAA38:
/* 80ABAA38  3B 20 00 03 */	li r25, 3
/* 80ABAA3C  48 00 00 08 */	b lbl_80ABAA44
lbl_80ABAA40:
/* 80ABAA40  3B 20 00 04 */	li r25, 4
lbl_80ABAA44:
/* 80ABAA44  1F DB 00 0C */	mulli r30, r27, 0xc
/* 80ABAA48  7F 43 D3 78 */	mr r3, r26
/* 80ABAA4C  38 BF 00 20 */	addi r5, r31, 0x20
/* 80ABAA50  7C 85 F2 14 */	add r4, r5, r30
/* 80ABAA54  80 04 00 08 */	lwz r0, 8(r4)
/* 80ABAA58  54 00 10 3A */	slwi r0, r0, 2
/* 80ABAA5C  38 9F 02 18 */	addi r4, r31, 0x218
/* 80ABAA60  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ABAA64  7C A5 F0 2E */	lwzx r5, r5, r30
/* 80ABAA68  4B 69 80 C4 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80ABAA6C  7C 7D 1B 78 */	mr r29, r3
/* 80ABAA70  1F 39 00 0C */	mulli r25, r25, 0xc
/* 80ABAA74  7F 43 D3 78 */	mr r3, r26
/* 80ABAA78  38 BF 01 AC */	addi r5, r31, 0x1ac
/* 80ABAA7C  7C 85 CA 14 */	add r4, r5, r25
/* 80ABAA80  80 04 00 08 */	lwz r0, 8(r4)
/* 80ABAA84  54 00 10 3A */	slwi r0, r0, 2
/* 80ABAA88  38 9F 02 18 */	addi r4, r31, 0x218
/* 80ABAA8C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ABAA90  7C A5 C8 2E */	lwzx r5, r5, r25
/* 80ABAA94  4B 69 81 10 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80ABAA98  7C 7C 1B 78 */	mr r28, r3
/* 80ABAA9C  38 1F 00 20 */	addi r0, r31, 0x20
/* 80ABAAA0  7C 60 F2 14 */	add r3, r0, r30
/* 80ABAAA4  83 C3 00 04 */	lwz r30, 4(r3)
/* 80ABAAA8  38 1F 01 AC */	addi r0, r31, 0x1ac
/* 80ABAAAC  7C 60 CA 14 */	add r3, r0, r25
/* 80ABAAB0  83 23 00 04 */	lwz r25, 4(r3)
/* 80ABAAB4  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 80ABAAB8  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80ABAABC  90 1A 09 9C */	stw r0, 0x99c(r26)
/* 80ABAAC0  2C 1B 00 13 */	cmpwi r27, 0x13
/* 80ABAAC4  40 82 00 1C */	bne lbl_80ABAAE0
/* 80ABAAC8  7F 43 D3 78 */	mr r3, r26
/* 80ABAACC  38 80 00 03 */	li r4, 3
/* 80ABAAD0  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ABAAD4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80ABAAD8  7D 89 03 A6 */	mtctr r12
/* 80ABAADC  4E 80 04 21 */	bctrl 
lbl_80ABAAE0:
/* 80ABAAE0  28 1D 00 00 */	cmplwi r29, 0
/* 80ABAAE4  41 82 00 44 */	beq lbl_80ABAB28
/* 80ABAAE8  7F 43 D3 78 */	mr r3, r26
/* 80ABAAEC  7F A4 EB 78 */	mr r4, r29
/* 80ABAAF0  3C A0 80 AC */	lis r5, lit_4320@ha
/* 80ABAAF4  C0 25 FA 64 */	lfs f1, lit_4320@l(r5)
/* 80ABAAF8  FC 40 F8 90 */	fmr f2, f31
/* 80ABAAFC  7F C5 F3 78 */	mr r5, r30
/* 80ABAB00  38 C0 00 00 */	li r6, 0
/* 80ABAB04  38 E0 FF FF */	li r7, -1
/* 80ABAB08  4B 69 81 14 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80ABAB0C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABAB10  41 82 00 18 */	beq lbl_80ABAB28
/* 80ABAB14  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 80ABAB18  60 00 00 09 */	ori r0, r0, 9
/* 80ABAB1C  90 1A 09 9C */	stw r0, 0x99c(r26)
/* 80ABAB20  38 00 00 00 */	li r0, 0
/* 80ABAB24  B0 1A 09 E2 */	sth r0, 0x9e2(r26)
lbl_80ABAB28:
/* 80ABAB28  28 1C 00 00 */	cmplwi r28, 0
/* 80ABAB2C  41 82 00 3C */	beq lbl_80ABAB68
/* 80ABAB30  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80ABAB34  80 63 00 04 */	lwz r3, 4(r3)
/* 80ABAB38  80 A3 00 04 */	lwz r5, 4(r3)
/* 80ABAB3C  7F 43 D3 78 */	mr r3, r26
/* 80ABAB40  7F 84 E3 78 */	mr r4, r28
/* 80ABAB44  3C C0 80 AC */	lis r6, lit_4320@ha
/* 80ABAB48  C0 26 FA 64 */	lfs f1, lit_4320@l(r6)
/* 80ABAB4C  7F 26 CB 78 */	mr r6, r25
/* 80ABAB50  4B 69 81 B4 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80ABAB54  2C 03 00 00 */	cmpwi r3, 0
/* 80ABAB58  41 82 00 10 */	beq lbl_80ABAB68
/* 80ABAB5C  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 80ABAB60  60 00 00 12 */	ori r0, r0, 0x12
/* 80ABAB64  90 1A 09 9C */	stw r0, 0x99c(r26)
lbl_80ABAB68:
/* 80ABAB68  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80ABAB6C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80ABAB70  39 61 00 30 */	addi r11, r1, 0x30
/* 80ABAB74  4B 8A 76 A4 */	b _restgpr_25
/* 80ABAB78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ABAB7C  7C 08 03 A6 */	mtlr r0
/* 80ABAB80  38 21 00 40 */	addi r1, r1, 0x40
/* 80ABAB84  4E 80 00 20 */	blr 
