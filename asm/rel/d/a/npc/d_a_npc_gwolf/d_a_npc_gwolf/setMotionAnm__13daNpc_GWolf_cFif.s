lbl_809F4BBC:
/* 809F4BBC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809F4BC0  7C 08 02 A6 */	mflr r0
/* 809F4BC4  90 01 00 44 */	stw r0, 0x44(r1)
/* 809F4BC8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809F4BCC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809F4BD0  39 61 00 30 */	addi r11, r1, 0x30
/* 809F4BD4  4B 96 D5 F8 */	b _savegpr_25
/* 809F4BD8  7C 79 1B 78 */	mr r25, r3
/* 809F4BDC  7C 9A 23 78 */	mr r26, r4
/* 809F4BE0  FF E0 08 90 */	fmr f31, f1
/* 809F4BE4  3C 80 80 A0 */	lis r4, cNullVec__6Z2Calc@ha
/* 809F4BE8  3B E4 87 F4 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 809F4BEC  3B C0 00 00 */	li r30, 0
/* 809F4BF0  3B A0 00 00 */	li r29, 0
/* 809F4BF4  3B 80 00 00 */	li r28, 0
/* 809F4BF8  3B 60 00 02 */	li r27, 2
/* 809F4BFC  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809F4C00  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 809F4C04  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809F4C08  57 40 18 38 */	slwi r0, r26, 3
/* 809F4C0C  38 9F 00 28 */	addi r4, r31, 0x28
/* 809F4C10  7C A4 00 2E */	lwzx r5, r4, r0
/* 809F4C14  2C 05 00 00 */	cmpwi r5, 0
/* 809F4C18  41 80 00 20 */	blt lbl_809F4C38
/* 809F4C1C  7C 84 02 14 */	add r4, r4, r0
/* 809F4C20  80 04 00 04 */	lwz r0, 4(r4)
/* 809F4C24  54 00 10 3A */	slwi r0, r0, 2
/* 809F4C28  38 9F 01 74 */	addi r4, r31, 0x174
/* 809F4C2C  7C 84 00 2E */	lwzx r4, r4, r0
/* 809F4C30  4B 75 DE FC */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809F4C34  7C 7E 1B 78 */	mr r30, r3
lbl_809F4C38:
/* 809F4C38  93 59 0E 18 */	stw r26, 0xe18(r25)
/* 809F4C3C  28 1A 00 0B */	cmplwi r26, 0xb
/* 809F4C40  41 81 00 44 */	bgt lbl_809F4C84
/* 809F4C44  3C 60 80 A0 */	lis r3, lit_5014@ha
/* 809F4C48  38 63 8A 1C */	addi r3, r3, lit_5014@l
/* 809F4C4C  57 40 10 3A */	slwi r0, r26, 2
/* 809F4C50  7C 03 00 2E */	lwzx r0, r3, r0
/* 809F4C54  7C 09 03 A6 */	mtctr r0
/* 809F4C58  4E 80 04 20 */	bctr 
lbl_809F4C5C:
/* 809F4C5C  3B 60 00 00 */	li r27, 0
/* 809F4C60  48 00 00 2C */	b lbl_809F4C8C
lbl_809F4C64:
/* 809F4C64  3B 60 00 00 */	li r27, 0
/* 809F4C68  48 00 00 24 */	b lbl_809F4C8C
lbl_809F4C6C:
/* 809F4C6C  3B 60 00 00 */	li r27, 0
/* 809F4C70  48 00 00 1C */	b lbl_809F4C8C
lbl_809F4C74:
/* 809F4C74  3B 60 00 00 */	li r27, 0
/* 809F4C78  48 00 00 14 */	b lbl_809F4C8C
lbl_809F4C7C:
/* 809F4C7C  3B 60 00 00 */	li r27, 0
/* 809F4C80  48 00 00 0C */	b lbl_809F4C8C
lbl_809F4C84:
/* 809F4C84  3B C0 00 00 */	li r30, 0
/* 809F4C88  3B A0 00 00 */	li r29, 0
lbl_809F4C8C:
/* 809F4C8C  80 BF 00 88 */	lwz r5, 0x88(r31)
/* 809F4C90  2C 05 00 00 */	cmpwi r5, 0
/* 809F4C94  41 80 00 24 */	blt lbl_809F4CB8
/* 809F4C98  7F 23 CB 78 */	mr r3, r25
/* 809F4C9C  38 9F 00 88 */	addi r4, r31, 0x88
/* 809F4CA0  80 04 00 04 */	lwz r0, 4(r4)
/* 809F4CA4  54 00 10 3A */	slwi r0, r0, 2
/* 809F4CA8  38 9F 01 74 */	addi r4, r31, 0x174
/* 809F4CAC  7C 84 00 2E */	lwzx r4, r4, r0
/* 809F4CB0  4B 75 DE F4 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809F4CB4  7C 7D 1B 78 */	mr r29, r3
lbl_809F4CB8:
/* 809F4CB8  28 1D 00 00 */	cmplwi r29, 0
/* 809F4CBC  41 82 00 3C */	beq lbl_809F4CF8
/* 809F4CC0  80 79 05 68 */	lwz r3, 0x568(r25)
/* 809F4CC4  80 63 00 04 */	lwz r3, 4(r3)
/* 809F4CC8  80 A3 00 04 */	lwz r5, 4(r3)
/* 809F4CCC  7F 23 CB 78 */	mr r3, r25
/* 809F4CD0  7F A4 EB 78 */	mr r4, r29
/* 809F4CD4  3C C0 80 A0 */	lis r6, lit_4456@ha
/* 809F4CD8  C0 26 85 90 */	lfs f1, lit_4456@l(r6)
/* 809F4CDC  38 C0 00 02 */	li r6, 2
/* 809F4CE0  4B 75 E0 24 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 809F4CE4  2C 03 00 00 */	cmpwi r3, 0
/* 809F4CE8  41 82 00 10 */	beq lbl_809F4CF8
/* 809F4CEC  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 809F4CF0  60 00 00 12 */	ori r0, r0, 0x12
/* 809F4CF4  90 19 09 9C */	stw r0, 0x99c(r25)
lbl_809F4CF8:
/* 809F4CF8  80 BF 00 90 */	lwz r5, 0x90(r31)
/* 809F4CFC  2C 05 00 00 */	cmpwi r5, 0
/* 809F4D00  41 80 00 24 */	blt lbl_809F4D24
/* 809F4D04  7F 23 CB 78 */	mr r3, r25
/* 809F4D08  38 9F 00 90 */	addi r4, r31, 0x90
/* 809F4D0C  80 04 00 04 */	lwz r0, 4(r4)
/* 809F4D10  54 00 10 3A */	slwi r0, r0, 2
/* 809F4D14  38 9F 01 74 */	addi r4, r31, 0x174
/* 809F4D18  7C 84 00 2E */	lwzx r4, r4, r0
/* 809F4D1C  4B 75 DE C4 */	b getTevRegKeyAnmP__8daNpcF_cFPci
/* 809F4D20  7C 7C 1B 78 */	mr r28, r3
lbl_809F4D24:
/* 809F4D24  28 1C 00 00 */	cmplwi r28, 0
/* 809F4D28  41 82 00 58 */	beq lbl_809F4D80
/* 809F4D2C  80 19 05 CC */	lwz r0, 0x5cc(r25)
/* 809F4D30  7C 00 E0 40 */	cmplw r0, r28
/* 809F4D34  40 82 00 14 */	bne lbl_809F4D48
/* 809F4D38  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 809F4D3C  60 00 00 20 */	ori r0, r0, 0x20
/* 809F4D40  90 19 09 9C */	stw r0, 0x99c(r25)
/* 809F4D44  48 00 00 3C */	b lbl_809F4D80
lbl_809F4D48:
/* 809F4D48  80 79 05 68 */	lwz r3, 0x568(r25)
/* 809F4D4C  80 63 00 04 */	lwz r3, 4(r3)
/* 809F4D50  80 A3 00 04 */	lwz r5, 4(r3)
/* 809F4D54  7F 23 CB 78 */	mr r3, r25
/* 809F4D58  7F 84 E3 78 */	mr r4, r28
/* 809F4D5C  3C C0 80 A0 */	lis r6, lit_4456@ha
/* 809F4D60  C0 26 85 90 */	lfs f1, lit_4456@l(r6)
/* 809F4D64  38 C0 00 02 */	li r6, 2
/* 809F4D68  4B 75 DF DC */	b setBrkAnm__8daNpcF_cFP15J3DAnmTevRegKeyP12J3DModelDatafi
/* 809F4D6C  2C 03 00 00 */	cmpwi r3, 0
/* 809F4D70  41 82 00 10 */	beq lbl_809F4D80
/* 809F4D74  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 809F4D78  60 00 00 24 */	ori r0, r0, 0x24
/* 809F4D7C  90 19 09 9C */	stw r0, 0x99c(r25)
lbl_809F4D80:
/* 809F4D80  28 1E 00 00 */	cmplwi r30, 0
/* 809F4D84  41 82 00 44 */	beq lbl_809F4DC8
/* 809F4D88  7F 23 CB 78 */	mr r3, r25
/* 809F4D8C  7F C4 F3 78 */	mr r4, r30
/* 809F4D90  3C A0 80 A0 */	lis r5, lit_4456@ha
/* 809F4D94  C0 25 85 90 */	lfs f1, lit_4456@l(r5)
/* 809F4D98  FC 40 F8 90 */	fmr f2, f31
/* 809F4D9C  7F 65 DB 78 */	mr r5, r27
/* 809F4DA0  38 C0 00 00 */	li r6, 0
/* 809F4DA4  38 E0 FF FF */	li r7, -1
/* 809F4DA8  4B 75 DE 74 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 809F4DAC  2C 03 00 00 */	cmpwi r3, 0
/* 809F4DB0  41 82 00 18 */	beq lbl_809F4DC8
/* 809F4DB4  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 809F4DB8  60 00 00 09 */	ori r0, r0, 9
/* 809F4DBC  90 19 09 9C */	stw r0, 0x99c(r25)
/* 809F4DC0  38 00 00 00 */	li r0, 0
/* 809F4DC4  B0 19 09 E2 */	sth r0, 0x9e2(r25)
lbl_809F4DC8:
/* 809F4DC8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 809F4DCC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 809F4DD0  39 61 00 30 */	addi r11, r1, 0x30
/* 809F4DD4  4B 96 D4 44 */	b _restgpr_25
/* 809F4DD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809F4DDC  7C 08 03 A6 */	mtlr r0
/* 809F4DE0  38 21 00 40 */	addi r1, r1, 0x40
/* 809F4DE4  4E 80 00 20 */	blr 
