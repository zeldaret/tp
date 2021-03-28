lbl_809CC930:
/* 809CC930  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809CC934  7C 08 02 A6 */	mflr r0
/* 809CC938  90 01 00 24 */	stw r0, 0x24(r1)
/* 809CC93C  39 61 00 20 */	addi r11, r1, 0x20
/* 809CC940  4B 99 58 94 */	b _savegpr_27
/* 809CC944  7C 7B 1B 78 */	mr r27, r3
/* 809CC948  7C 9C 23 78 */	mr r28, r4
/* 809CC94C  7C BD 2B 78 */	mr r29, r5
/* 809CC950  3B E0 00 00 */	li r31, 0
/* 809CC954  3B C0 00 00 */	li r30, 0
/* 809CC958  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809CC95C  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 809CC960  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809CC964  54 80 18 38 */	slwi r0, r4, 3
/* 809CC968  3C 80 80 9D */	lis r4, l_bckGetParamList@ha
/* 809CC96C  38 84 F8 4C */	addi r4, r4, l_bckGetParamList@l
/* 809CC970  7C A4 00 2E */	lwzx r5, r4, r0
/* 809CC974  2C 05 00 00 */	cmpwi r5, 0
/* 809CC978  41 80 00 24 */	blt lbl_809CC99C
/* 809CC97C  7C 84 02 14 */	add r4, r4, r0
/* 809CC980  80 04 00 04 */	lwz r0, 4(r4)
/* 809CC984  54 00 10 3A */	slwi r0, r0, 2
/* 809CC988  3C 80 80 9D */	lis r4, l_resNames@ha
/* 809CC98C  38 84 F9 64 */	addi r4, r4, l_resNames@l
/* 809CC990  7C 84 00 2E */	lwzx r4, r4, r0
/* 809CC994  4B 78 61 98 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809CC998  7C 7F 1B 78 */	mr r31, r3
lbl_809CC99C:
/* 809CC99C  38 60 00 00 */	li r3, 0
/* 809CC9A0  28 1C 00 09 */	cmplwi r28, 9
/* 809CC9A4  41 81 01 4C */	bgt lbl_809CCAF0
/* 809CC9A8  3C 80 80 9D */	lis r4, lit_4874@ha
/* 809CC9AC  38 84 F9 94 */	addi r4, r4, lit_4874@l
/* 809CC9B0  57 80 10 3A */	slwi r0, r28, 2
/* 809CC9B4  7C 04 00 2E */	lwzx r0, r4, r0
/* 809CC9B8  7C 09 03 A6 */	mtctr r0
/* 809CC9BC  4E 80 04 20 */	bctr 
lbl_809CC9C0:
/* 809CC9C0  7F 63 DB 78 */	mr r3, r27
/* 809CC9C4  38 80 00 00 */	li r4, 0
/* 809CC9C8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CC9CC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809CC9D0  7D 89 03 A6 */	mtctr r12
/* 809CC9D4  4E 80 04 21 */	bctrl 
/* 809CC9D8  48 00 01 1C */	b lbl_809CCAF4
lbl_809CC9DC:
/* 809CC9DC  7F 63 DB 78 */	mr r3, r27
/* 809CC9E0  38 80 00 00 */	li r4, 0
/* 809CC9E4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CC9E8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809CC9EC  7D 89 03 A6 */	mtctr r12
/* 809CC9F0  4E 80 04 21 */	bctrl 
/* 809CC9F4  3B C0 00 02 */	li r30, 2
/* 809CC9F8  48 00 00 FC */	b lbl_809CCAF4
lbl_809CC9FC:
/* 809CC9FC  7F 63 DB 78 */	mr r3, r27
/* 809CCA00  38 80 00 00 */	li r4, 0
/* 809CCA04  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CCA08  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809CCA0C  7D 89 03 A6 */	mtctr r12
/* 809CCA10  4E 80 04 21 */	bctrl 
/* 809CCA14  3B C0 00 02 */	li r30, 2
/* 809CCA18  48 00 00 DC */	b lbl_809CCAF4
lbl_809CCA1C:
/* 809CCA1C  7F 63 DB 78 */	mr r3, r27
/* 809CCA20  38 80 00 00 */	li r4, 0
/* 809CCA24  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CCA28  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809CCA2C  7D 89 03 A6 */	mtctr r12
/* 809CCA30  4E 80 04 21 */	bctrl 
/* 809CCA34  3B C0 00 02 */	li r30, 2
/* 809CCA38  48 00 00 BC */	b lbl_809CCAF4
lbl_809CCA3C:
/* 809CCA3C  7F 63 DB 78 */	mr r3, r27
/* 809CCA40  38 80 00 04 */	li r4, 4
/* 809CCA44  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CCA48  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809CCA4C  7D 89 03 A6 */	mtctr r12
/* 809CCA50  4E 80 04 21 */	bctrl 
/* 809CCA54  3B C0 00 02 */	li r30, 2
/* 809CCA58  48 00 00 9C */	b lbl_809CCAF4
lbl_809CCA5C:
/* 809CCA5C  7F 63 DB 78 */	mr r3, r27
/* 809CCA60  38 80 00 00 */	li r4, 0
/* 809CCA64  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CCA68  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809CCA6C  7D 89 03 A6 */	mtctr r12
/* 809CCA70  4E 80 04 21 */	bctrl 
/* 809CCA74  3B C0 00 02 */	li r30, 2
/* 809CCA78  48 00 00 7C */	b lbl_809CCAF4
lbl_809CCA7C:
/* 809CCA7C  7F 63 DB 78 */	mr r3, r27
/* 809CCA80  38 80 00 01 */	li r4, 1
/* 809CCA84  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CCA88  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809CCA8C  7D 89 03 A6 */	mtctr r12
/* 809CCA90  4E 80 04 21 */	bctrl 
/* 809CCA94  48 00 00 60 */	b lbl_809CCAF4
lbl_809CCA98:
/* 809CCA98  7F 63 DB 78 */	mr r3, r27
/* 809CCA9C  38 80 00 02 */	li r4, 2
/* 809CCAA0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CCAA4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809CCAA8  7D 89 03 A6 */	mtctr r12
/* 809CCAAC  4E 80 04 21 */	bctrl 
/* 809CCAB0  48 00 00 44 */	b lbl_809CCAF4
lbl_809CCAB4:
/* 809CCAB4  7F 63 DB 78 */	mr r3, r27
/* 809CCAB8  38 80 00 03 */	li r4, 3
/* 809CCABC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CCAC0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809CCAC4  7D 89 03 A6 */	mtctr r12
/* 809CCAC8  4E 80 04 21 */	bctrl 
/* 809CCACC  48 00 00 28 */	b lbl_809CCAF4
lbl_809CCAD0:
/* 809CCAD0  7F 63 DB 78 */	mr r3, r27
/* 809CCAD4  38 80 00 05 */	li r4, 5
/* 809CCAD8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CCADC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809CCAE0  7D 89 03 A6 */	mtctr r12
/* 809CCAE4  4E 80 04 21 */	bctrl 
/* 809CCAE8  3B C0 00 02 */	li r30, 2
/* 809CCAEC  48 00 00 08 */	b lbl_809CCAF4
lbl_809CCAF0:
/* 809CCAF0  3B E0 00 00 */	li r31, 0
lbl_809CCAF4:
/* 809CCAF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809CCAF8  40 82 00 0C */	bne lbl_809CCB04
/* 809CCAFC  38 60 00 00 */	li r3, 0
/* 809CCB00  48 00 00 60 */	b lbl_809CCB60
lbl_809CCB04:
/* 809CCB04  28 1F 00 00 */	cmplwi r31, 0
/* 809CCB08  40 82 00 0C */	bne lbl_809CCB14
/* 809CCB0C  38 60 00 01 */	li r3, 1
/* 809CCB10  48 00 00 50 */	b lbl_809CCB60
lbl_809CCB14:
/* 809CCB14  7F 63 DB 78 */	mr r3, r27
/* 809CCB18  7F E4 FB 78 */	mr r4, r31
/* 809CCB1C  3C A0 80 9D */	lis r5, lit_4454@ha
/* 809CCB20  C0 25 F5 98 */	lfs f1, lit_4454@l(r5)
/* 809CCB24  7F C5 F3 78 */	mr r5, r30
/* 809CCB28  38 C0 00 00 */	li r6, 0
/* 809CCB2C  38 E0 FF FF */	li r7, -1
/* 809CCB30  7F A8 EB 78 */	mr r8, r29
/* 809CCB34  4B 78 61 4C */	b setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 809CCB38  2C 03 00 00 */	cmpwi r3, 0
/* 809CCB3C  41 82 00 20 */	beq lbl_809CCB5C
/* 809CCB40  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 809CCB44  60 00 01 40 */	ori r0, r0, 0x140
/* 809CCB48  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 809CCB4C  38 00 00 00 */	li r0, 0
/* 809CCB50  B0 1B 09 E4 */	sth r0, 0x9e4(r27)
/* 809CCB54  38 60 00 01 */	li r3, 1
/* 809CCB58  48 00 00 08 */	b lbl_809CCB60
lbl_809CCB5C:
/* 809CCB5C  38 60 00 00 */	li r3, 0
lbl_809CCB60:
/* 809CCB60  39 61 00 20 */	addi r11, r1, 0x20
/* 809CCB64  4B 99 56 BC */	b _restgpr_27
/* 809CCB68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809CCB6C  7C 08 03 A6 */	mtlr r0
/* 809CCB70  38 21 00 20 */	addi r1, r1, 0x20
/* 809CCB74  4E 80 00 20 */	blr 
