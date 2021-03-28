lbl_80B7BEA0:
/* 80B7BEA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B7BEA4  7C 08 02 A6 */	mflr r0
/* 80B7BEA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B7BEAC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B7BEB0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B7BEB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7BEB8  4B 7E 63 14 */	b _savegpr_25
/* 80B7BEBC  7C 79 1B 78 */	mr r25, r3
/* 80B7BEC0  7C 9A 23 78 */	mr r26, r4
/* 80B7BEC4  FF E0 08 90 */	fmr f31, f1
/* 80B7BEC8  3C 60 80 B9 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B7BECC  3B E3 CE 90 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80B7BED0  3B C0 00 00 */	li r30, 0
/* 80B7BED4  3B A0 00 00 */	li r29, 0
/* 80B7BED8  3B 80 00 00 */	li r28, 0
/* 80B7BEDC  3B 60 00 02 */	li r27, 2
/* 80B7BEE0  93 59 14 EC */	stw r26, 0x14ec(r25)
/* 80B7BEE4  80 19 05 FC */	lwz r0, 0x5fc(r25)
/* 80B7BEE8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B7BEEC  41 82 00 08 */	beq lbl_80B7BEF4
/* 80B7BEF0  3B 80 00 03 */	li r28, 3
lbl_80B7BEF4:
/* 80B7BEF4  88 19 14 E9 */	lbz r0, 0x14e9(r25)
/* 80B7BEF8  28 00 00 00 */	cmplwi r0, 0
/* 80B7BEFC  40 82 00 1C */	bne lbl_80B7BF18
/* 80B7BF00  80 19 14 EC */	lwz r0, 0x14ec(r25)
/* 80B7BF04  2C 00 00 29 */	cmpwi r0, 0x29
/* 80B7BF08  41 80 00 10 */	blt lbl_80B7BF18
/* 80B7BF0C  2C 00 00 33 */	cmpwi r0, 0x33
/* 80B7BF10  41 81 00 08 */	bgt lbl_80B7BF18
/* 80B7BF14  3B 5A 00 0B */	addi r26, r26, 0xb
lbl_80B7BF18:
/* 80B7BF18  80 79 09 9C */	lwz r3, 0x99c(r25)
/* 80B7BF1C  38 00 FF E4 */	li r0, -28
/* 80B7BF20  7C 60 00 38 */	and r0, r3, r0
/* 80B7BF24  90 19 09 9C */	stw r0, 0x99c(r25)
/* 80B7BF28  57 40 18 38 */	slwi r0, r26, 3
/* 80B7BF2C  38 9F 00 54 */	addi r4, r31, 0x54
/* 80B7BF30  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B7BF34  2C 05 00 00 */	cmpwi r5, 0
/* 80B7BF38  41 80 00 24 */	blt lbl_80B7BF5C
/* 80B7BF3C  7F 23 CB 78 */	mr r3, r25
/* 80B7BF40  7C 84 02 14 */	add r4, r4, r0
/* 80B7BF44  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7BF48  54 00 10 3A */	slwi r0, r0, 2
/* 80B7BF4C  38 9F 04 70 */	addi r4, r31, 0x470
/* 80B7BF50  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B7BF54  4B 5D 6B D8 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B7BF58  7C 7E 1B 78 */	mr r30, r3
lbl_80B7BF5C:
/* 80B7BF5C  38 1A FF EB */	addi r0, r26, -21
/* 80B7BF60  28 00 00 29 */	cmplwi r0, 0x29
/* 80B7BF64  41 81 00 24 */	bgt lbl_80B7BF88
/* 80B7BF68  3C 60 80 B9 */	lis r3, lit_5957@ha
/* 80B7BF6C  38 63 D4 B8 */	addi r3, r3, lit_5957@l
/* 80B7BF70  54 00 10 3A */	slwi r0, r0, 2
/* 80B7BF74  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B7BF78  7C 09 03 A6 */	mtctr r0
/* 80B7BF7C  4E 80 04 20 */	bctr 
lbl_80B7BF80:
/* 80B7BF80  3B 60 00 00 */	li r27, 0
/* 80B7BF84  48 00 00 0C */	b lbl_80B7BF90
lbl_80B7BF88:
/* 80B7BF88  3B C0 00 00 */	li r30, 0
/* 80B7BF8C  3B A0 00 00 */	li r29, 0
lbl_80B7BF90:
/* 80B7BF90  57 80 18 38 */	slwi r0, r28, 3
/* 80B7BF94  38 9F 02 8C */	addi r4, r31, 0x28c
/* 80B7BF98  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B7BF9C  2C 05 00 00 */	cmpwi r5, 0
/* 80B7BFA0  41 80 00 24 */	blt lbl_80B7BFC4
/* 80B7BFA4  7F 23 CB 78 */	mr r3, r25
/* 80B7BFA8  7C 84 02 14 */	add r4, r4, r0
/* 80B7BFAC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7BFB0  54 00 10 3A */	slwi r0, r0, 2
/* 80B7BFB4  38 9F 04 70 */	addi r4, r31, 0x470
/* 80B7BFB8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B7BFBC  4B 5D 6B E8 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B7BFC0  7C 7D 1B 78 */	mr r29, r3
lbl_80B7BFC4:
/* 80B7BFC4  28 1D 00 00 */	cmplwi r29, 0
/* 80B7BFC8  41 82 00 3C */	beq lbl_80B7C004
/* 80B7BFCC  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B7BFD0  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7BFD4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B7BFD8  7F 23 CB 78 */	mr r3, r25
/* 80B7BFDC  7F A4 EB 78 */	mr r4, r29
/* 80B7BFE0  3C C0 80 B9 */	lis r6, lit_5070@ha
/* 80B7BFE4  C0 26 C5 48 */	lfs f1, lit_5070@l(r6)
/* 80B7BFE8  38 C0 00 02 */	li r6, 2
/* 80B7BFEC  4B 5D 6D 18 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80B7BFF0  2C 03 00 00 */	cmpwi r3, 0
/* 80B7BFF4  41 82 00 10 */	beq lbl_80B7C004
/* 80B7BFF8  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 80B7BFFC  60 00 00 12 */	ori r0, r0, 0x12
/* 80B7C000  90 19 09 9C */	stw r0, 0x99c(r25)
lbl_80B7C004:
/* 80B7C004  93 99 14 F0 */	stw r28, 0x14f0(r25)
/* 80B7C008  28 1E 00 00 */	cmplwi r30, 0
/* 80B7C00C  41 82 00 44 */	beq lbl_80B7C050
/* 80B7C010  7F 23 CB 78 */	mr r3, r25
/* 80B7C014  7F C4 F3 78 */	mr r4, r30
/* 80B7C018  3C A0 80 B9 */	lis r5, lit_5070@ha
/* 80B7C01C  C0 25 C5 48 */	lfs f1, lit_5070@l(r5)
/* 80B7C020  FC 40 F8 90 */	fmr f2, f31
/* 80B7C024  7F 65 DB 78 */	mr r5, r27
/* 80B7C028  38 C0 00 00 */	li r6, 0
/* 80B7C02C  38 E0 FF FF */	li r7, -1
/* 80B7C030  4B 5D 6B EC */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80B7C034  2C 03 00 00 */	cmpwi r3, 0
/* 80B7C038  41 82 00 18 */	beq lbl_80B7C050
/* 80B7C03C  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 80B7C040  60 00 00 09 */	ori r0, r0, 9
/* 80B7C044  90 19 09 9C */	stw r0, 0x99c(r25)
/* 80B7C048  38 00 00 00 */	li r0, 0
/* 80B7C04C  B0 19 09 E2 */	sth r0, 0x9e2(r25)
lbl_80B7C050:
/* 80B7C050  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B7C054  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B7C058  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7C05C  4B 7E 61 BC */	b _restgpr_25
/* 80B7C060  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B7C064  7C 08 03 A6 */	mtlr r0
/* 80B7C068  38 21 00 40 */	addi r1, r1, 0x40
/* 80B7C06C  4E 80 00 20 */	blr 
