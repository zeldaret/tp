lbl_809EAB60:
/* 809EAB60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809EAB64  7C 08 02 A6 */	mflr r0
/* 809EAB68  90 01 00 44 */	stw r0, 0x44(r1)
/* 809EAB6C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809EAB70  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809EAB74  39 61 00 30 */	addi r11, r1, 0x30
/* 809EAB78  4B 97 76 50 */	b _savegpr_24
/* 809EAB7C  7C 78 1B 78 */	mr r24, r3
/* 809EAB80  7C 99 23 78 */	mr r25, r4
/* 809EAB84  FF E0 08 90 */	fmr f31, f1
/* 809EAB88  3C 80 80 9F */	lis r4, cNullVec__6Z2Calc@ha
/* 809EAB8C  3B E4 F6 A0 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 809EAB90  3B C0 00 00 */	li r30, 0
/* 809EAB94  3B A0 00 00 */	li r29, 0
/* 809EAB98  3B 80 00 00 */	li r28, 0
/* 809EAB9C  3B 60 00 02 */	li r27, 2
/* 809EABA0  3B 40 00 02 */	li r26, 2
/* 809EABA4  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809EABA8  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 809EABAC  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809EABB0  57 20 18 38 */	slwi r0, r25, 3
/* 809EABB4  38 9F 00 28 */	addi r4, r31, 0x28
/* 809EABB8  7C A4 00 2E */	lwzx r5, r4, r0
/* 809EABBC  2C 05 00 00 */	cmpwi r5, 0
/* 809EABC0  41 80 00 20 */	blt lbl_809EABE0
/* 809EABC4  7C 84 02 14 */	add r4, r4, r0
/* 809EABC8  80 04 00 04 */	lwz r0, 4(r4)
/* 809EABCC  54 00 10 3A */	slwi r0, r0, 2
/* 809EABD0  38 9F 02 48 */	addi r4, r31, 0x248
/* 809EABD4  7C 84 00 2E */	lwzx r4, r4, r0
/* 809EABD8  4B 76 7F 54 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809EABDC  7C 7E 1B 78 */	mr r30, r3
lbl_809EABE0:
/* 809EABE0  93 38 1A 80 */	stw r25, 0x1a80(r24)
/* 809EABE4  38 19 FF F1 */	addi r0, r25, -15
/* 809EABE8  28 00 00 12 */	cmplwi r0, 0x12
/* 809EABEC  41 81 00 7C */	bgt lbl_809EAC68
/* 809EABF0  3C 60 80 9F */	lis r3, lit_5151@ha
/* 809EABF4  38 63 FA 08 */	addi r3, r3, lit_5151@l
/* 809EABF8  54 00 10 3A */	slwi r0, r0, 2
/* 809EABFC  7C 03 00 2E */	lwzx r0, r3, r0
/* 809EAC00  7C 09 03 A6 */	mtctr r0
/* 809EAC04  4E 80 04 20 */	bctr 
lbl_809EAC08:
/* 809EAC08  3B 60 00 00 */	li r27, 0
/* 809EAC0C  48 00 00 64 */	b lbl_809EAC70
lbl_809EAC10:
/* 809EAC10  3B 60 00 00 */	li r27, 0
/* 809EAC14  48 00 00 5C */	b lbl_809EAC70
lbl_809EAC18:
/* 809EAC18  3B 60 00 00 */	li r27, 0
/* 809EAC1C  48 00 00 54 */	b lbl_809EAC70
lbl_809EAC20:
/* 809EAC20  3B 80 00 01 */	li r28, 1
/* 809EAC24  3B 40 00 00 */	li r26, 0
/* 809EAC28  3B 60 00 00 */	li r27, 0
/* 809EAC2C  48 00 00 44 */	b lbl_809EAC70
lbl_809EAC30:
/* 809EAC30  3B 60 00 00 */	li r27, 0
/* 809EAC34  48 00 00 3C */	b lbl_809EAC70
lbl_809EAC38:
/* 809EAC38  3B 60 00 00 */	li r27, 0
/* 809EAC3C  48 00 00 34 */	b lbl_809EAC70
lbl_809EAC40:
/* 809EAC40  3B 80 00 02 */	li r28, 2
/* 809EAC44  3B 40 00 00 */	li r26, 0
/* 809EAC48  3B 60 00 00 */	li r27, 0
/* 809EAC4C  48 00 00 24 */	b lbl_809EAC70
lbl_809EAC50:
/* 809EAC50  3B 60 00 00 */	li r27, 0
/* 809EAC54  48 00 00 1C */	b lbl_809EAC70
lbl_809EAC58:
/* 809EAC58  3B 60 00 00 */	li r27, 0
/* 809EAC5C  48 00 00 14 */	b lbl_809EAC70
lbl_809EAC60:
/* 809EAC60  3B 60 00 00 */	li r27, 0
/* 809EAC64  48 00 00 0C */	b lbl_809EAC70
lbl_809EAC68:
/* 809EAC68  3B C0 00 00 */	li r30, 0
/* 809EAC6C  3B A0 00 00 */	li r29, 0
lbl_809EAC70:
/* 809EAC70  57 80 18 38 */	slwi r0, r28, 3
/* 809EAC74  38 9F 01 88 */	addi r4, r31, 0x188
/* 809EAC78  7C A4 00 2E */	lwzx r5, r4, r0
/* 809EAC7C  2C 05 00 00 */	cmpwi r5, 0
/* 809EAC80  41 80 00 24 */	blt lbl_809EACA4
/* 809EAC84  7F 03 C3 78 */	mr r3, r24
/* 809EAC88  7C 84 02 14 */	add r4, r4, r0
/* 809EAC8C  80 04 00 04 */	lwz r0, 4(r4)
/* 809EAC90  54 00 10 3A */	slwi r0, r0, 2
/* 809EAC94  38 9F 02 48 */	addi r4, r31, 0x248
/* 809EAC98  7C 84 00 2E */	lwzx r4, r4, r0
/* 809EAC9C  4B 76 7F 08 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809EACA0  7C 7D 1B 78 */	mr r29, r3
lbl_809EACA4:
/* 809EACA4  28 1D 00 00 */	cmplwi r29, 0
/* 809EACA8  41 82 00 3C */	beq lbl_809EACE4
/* 809EACAC  80 78 05 68 */	lwz r3, 0x568(r24)
/* 809EACB0  80 63 00 04 */	lwz r3, 4(r3)
/* 809EACB4  80 A3 00 04 */	lwz r5, 4(r3)
/* 809EACB8  7F 03 C3 78 */	mr r3, r24
/* 809EACBC  7F A4 EB 78 */	mr r4, r29
/* 809EACC0  3C C0 80 9F */	lis r6, lit_4359@ha
/* 809EACC4  C0 26 F2 98 */	lfs f1, lit_4359@l(r6)
/* 809EACC8  7F 46 D3 78 */	mr r6, r26
/* 809EACCC  4B 76 80 38 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 809EACD0  2C 03 00 00 */	cmpwi r3, 0
/* 809EACD4  41 82 00 10 */	beq lbl_809EACE4
/* 809EACD8  80 18 09 9C */	lwz r0, 0x99c(r24)
/* 809EACDC  60 00 00 12 */	ori r0, r0, 0x12
/* 809EACE0  90 18 09 9C */	stw r0, 0x99c(r24)
lbl_809EACE4:
/* 809EACE4  28 1E 00 00 */	cmplwi r30, 0
/* 809EACE8  41 82 00 44 */	beq lbl_809EAD2C
/* 809EACEC  7F 03 C3 78 */	mr r3, r24
/* 809EACF0  7F C4 F3 78 */	mr r4, r30
/* 809EACF4  3C A0 80 9F */	lis r5, lit_4359@ha
/* 809EACF8  C0 25 F2 98 */	lfs f1, lit_4359@l(r5)
/* 809EACFC  FC 40 F8 90 */	fmr f2, f31
/* 809EAD00  7F 65 DB 78 */	mr r5, r27
/* 809EAD04  38 C0 00 00 */	li r6, 0
/* 809EAD08  38 E0 FF FF */	li r7, -1
/* 809EAD0C  4B 76 7F 10 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 809EAD10  2C 03 00 00 */	cmpwi r3, 0
/* 809EAD14  41 82 00 18 */	beq lbl_809EAD2C
/* 809EAD18  80 18 09 9C */	lwz r0, 0x99c(r24)
/* 809EAD1C  60 00 00 09 */	ori r0, r0, 9
/* 809EAD20  90 18 09 9C */	stw r0, 0x99c(r24)
/* 809EAD24  38 00 00 00 */	li r0, 0
/* 809EAD28  B0 18 09 E2 */	sth r0, 0x9e2(r24)
lbl_809EAD2C:
/* 809EAD2C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 809EAD30  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 809EAD34  39 61 00 30 */	addi r11, r1, 0x30
/* 809EAD38  4B 97 74 DC */	b _restgpr_24
/* 809EAD3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809EAD40  7C 08 03 A6 */	mtlr r0
/* 809EAD44  38 21 00 40 */	addi r1, r1, 0x40
/* 809EAD48  4E 80 00 20 */	blr 
