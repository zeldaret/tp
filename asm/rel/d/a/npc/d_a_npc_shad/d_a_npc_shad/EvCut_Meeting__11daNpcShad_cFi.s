lbl_80ADC800:
/* 80ADC800  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ADC804  7C 08 02 A6 */	mflr r0
/* 80ADC808  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADC80C  39 61 00 30 */	addi r11, r1, 0x30
/* 80ADC810  4B 88 59 C4 */	b _savegpr_27
/* 80ADC814  7C 7D 1B 78 */	mr r29, r3
/* 80ADC818  7C 9B 23 78 */	mr r27, r4
/* 80ADC81C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADC820  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80ADC824  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80ADC828  7F 83 E3 78 */	mr r3, r28
/* 80ADC82C  3C A0 80 AE */	lis r5, struct_80AE24C4+0x0@ha
/* 80ADC830  38 A5 24 C4 */	addi r5, r5, struct_80AE24C4+0x0@l
/* 80ADC834  38 A5 01 4E */	addi r5, r5, 0x14e
/* 80ADC838  38 C0 00 03 */	li r6, 3
/* 80ADC83C  4B 56 B8 B0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ADC840  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ADC844  40 82 00 0C */	bne lbl_80ADC850
/* 80ADC848  38 60 00 00 */	li r3, 0
/* 80ADC84C  48 00 02 74 */	b lbl_80ADCAC0
lbl_80ADC850:
/* 80ADC850  7F 83 E3 78 */	mr r3, r28
/* 80ADC854  7F 64 DB 78 */	mr r4, r27
/* 80ADC858  4B 56 B4 F4 */	b getIsAddvance__16dEvent_manager_cFi
/* 80ADC85C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC860  41 82 00 90 */	beq lbl_80ADC8F0
/* 80ADC864  80 1F 00 00 */	lwz r0, 0(r31)
/* 80ADC868  2C 00 00 01 */	cmpwi r0, 1
/* 80ADC86C  41 82 00 5C */	beq lbl_80ADC8C8
/* 80ADC870  40 80 00 80 */	bge lbl_80ADC8F0
/* 80ADC874  2C 00 00 00 */	cmpwi r0, 0
/* 80ADC878  40 80 00 08 */	bge lbl_80ADC880
/* 80ADC87C  48 00 00 74 */	b lbl_80ADC8F0
lbl_80ADC880:
/* 80ADC880  7F A3 EB 78 */	mr r3, r29
/* 80ADC884  38 80 00 0C */	li r4, 0xc
/* 80ADC888  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADC88C  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADC890  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADC894  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADC898  7D 89 03 A6 */	mtctr r12
/* 80ADC89C  4E 80 04 21 */	bctrl 
/* 80ADC8A0  7F A3 EB 78 */	mr r3, r29
/* 80ADC8A4  38 80 00 04 */	li r4, 4
/* 80ADC8A8  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADC8AC  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADC8B0  38 A0 00 00 */	li r5, 0
/* 80ADC8B4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADC8B8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADC8BC  7D 89 03 A6 */	mtctr r12
/* 80ADC8C0  4E 80 04 21 */	bctrl 
/* 80ADC8C4  48 00 00 2C */	b lbl_80ADC8F0
lbl_80ADC8C8:
/* 80ADC8C8  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80ADC8CC  2C 00 00 02 */	cmpwi r0, 2
/* 80ADC8D0  40 82 00 10 */	bne lbl_80ADC8E0
/* 80ADC8D4  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80ADC8D8  28 00 00 00 */	cmplwi r0, 0
/* 80ADC8DC  41 82 00 14 */	beq lbl_80ADC8F0
lbl_80ADC8E0:
/* 80ADC8E0  38 00 00 02 */	li r0, 2
/* 80ADC8E4  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80ADC8E8  38 00 00 00 */	li r0, 0
/* 80ADC8EC  90 1D 0C A8 */	stw r0, 0xca8(r29)
lbl_80ADC8F0:
/* 80ADC8F0  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 80ADC8F4  7F A3 EB 78 */	mr r3, r29
/* 80ADC8F8  38 81 00 0C */	addi r4, r1, 0xc
/* 80ADC8FC  38 A1 00 08 */	addi r5, r1, 8
/* 80ADC900  7F A6 EB 78 */	mr r6, r29
/* 80ADC904  38 E0 00 00 */	li r7, 0
/* 80ADC908  4B 67 6E 10 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ADC90C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC910  41 82 00 4C */	beq lbl_80ADC95C
/* 80ADC914  7F A3 EB 78 */	mr r3, r29
/* 80ADC918  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ADC91C  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADC920  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADC924  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADC928  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADC92C  7D 89 03 A6 */	mtctr r12
/* 80ADC930  4E 80 04 21 */	bctrl 
/* 80ADC934  7F A3 EB 78 */	mr r3, r29
/* 80ADC938  80 81 00 08 */	lwz r4, 8(r1)
/* 80ADC93C  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADC940  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADC944  38 A0 00 00 */	li r5, 0
/* 80ADC948  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADC94C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADC950  7D 89 03 A6 */	mtctr r12
/* 80ADC954  4E 80 04 21 */	bctrl 
/* 80ADC958  48 00 00 F4 */	b lbl_80ADCA4C
lbl_80ADC95C:
/* 80ADC95C  2C 1C 00 00 */	cmpwi r28, 0
/* 80ADC960  41 82 00 EC */	beq lbl_80ADCA4C
/* 80ADC964  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80ADC968  2C 00 00 00 */	cmpwi r0, 0
/* 80ADC96C  40 82 00 E0 */	bne lbl_80ADCA4C
/* 80ADC970  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80ADC974  2C 00 00 03 */	cmpwi r0, 3
/* 80ADC978  41 82 00 6C */	beq lbl_80ADC9E4
/* 80ADC97C  40 80 00 14 */	bge lbl_80ADC990
/* 80ADC980  2C 00 00 01 */	cmpwi r0, 1
/* 80ADC984  41 82 00 18 */	beq lbl_80ADC99C
/* 80ADC988  40 80 00 38 */	bge lbl_80ADC9C0
/* 80ADC98C  48 00 00 A0 */	b lbl_80ADCA2C
lbl_80ADC990:
/* 80ADC990  2C 00 00 05 */	cmpwi r0, 5
/* 80ADC994  40 80 00 98 */	bge lbl_80ADCA2C
/* 80ADC998  48 00 00 70 */	b lbl_80ADCA08
lbl_80ADC99C:
/* 80ADC99C  7F A3 EB 78 */	mr r3, r29
/* 80ADC9A0  38 80 00 08 */	li r4, 8
/* 80ADC9A4  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADC9A8  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADC9AC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADC9B0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADC9B4  7D 89 03 A6 */	mtctr r12
/* 80ADC9B8  4E 80 04 21 */	bctrl 
/* 80ADC9BC  48 00 00 90 */	b lbl_80ADCA4C
lbl_80ADC9C0:
/* 80ADC9C0  7F A3 EB 78 */	mr r3, r29
/* 80ADC9C4  38 80 00 09 */	li r4, 9
/* 80ADC9C8  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADC9CC  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADC9D0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADC9D4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADC9D8  7D 89 03 A6 */	mtctr r12
/* 80ADC9DC  4E 80 04 21 */	bctrl 
/* 80ADC9E0  48 00 00 6C */	b lbl_80ADCA4C
lbl_80ADC9E4:
/* 80ADC9E4  7F A3 EB 78 */	mr r3, r29
/* 80ADC9E8  38 80 00 0A */	li r4, 0xa
/* 80ADC9EC  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADC9F0  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADC9F4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADC9F8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADC9FC  7D 89 03 A6 */	mtctr r12
/* 80ADCA00  4E 80 04 21 */	bctrl 
/* 80ADCA04  48 00 00 48 */	b lbl_80ADCA4C
lbl_80ADCA08:
/* 80ADCA08  7F A3 EB 78 */	mr r3, r29
/* 80ADCA0C  38 80 00 07 */	li r4, 7
/* 80ADCA10  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADCA14  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADCA18  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCA1C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADCA20  7D 89 03 A6 */	mtctr r12
/* 80ADCA24  4E 80 04 21 */	bctrl 
/* 80ADCA28  48 00 00 24 */	b lbl_80ADCA4C
lbl_80ADCA2C:
/* 80ADCA2C  7F A3 EB 78 */	mr r3, r29
/* 80ADCA30  38 80 00 0C */	li r4, 0xc
/* 80ADCA34  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADCA38  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADCA3C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCA40  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADCA44  7D 89 03 A6 */	mtctr r12
/* 80ADCA48  4E 80 04 21 */	bctrl 
lbl_80ADCA4C:
/* 80ADCA4C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80ADCA50  2C 00 00 01 */	cmpwi r0, 1
/* 80ADCA54  41 82 00 60 */	beq lbl_80ADCAB4
/* 80ADCA58  40 80 00 64 */	bge lbl_80ADCABC
/* 80ADCA5C  2C 00 00 00 */	cmpwi r0, 0
/* 80ADCA60  40 80 00 08 */	bge lbl_80ADCA68
/* 80ADCA64  48 00 00 58 */	b lbl_80ADCABC
lbl_80ADCA68:
/* 80ADCA68  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80ADCA6C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADCA70  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ADCA74  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 80ADCA78  4B 56 68 74 */	b convPId__14dEvt_control_cFUi
/* 80ADCA7C  7C 03 E8 40 */	cmplw r3, r29
/* 80ADCA80  40 82 00 08 */	bne lbl_80ADCA88
/* 80ADCA84  38 60 00 00 */	li r3, 0
lbl_80ADCA88:
/* 80ADCA88  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80ADCA8C  2C 00 00 04 */	cmpwi r0, 4
/* 80ADCA90  40 82 00 10 */	bne lbl_80ADCAA0
/* 80ADCA94  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80ADCA98  7C 03 00 40 */	cmplw r3, r0
/* 80ADCA9C  41 82 00 10 */	beq lbl_80ADCAAC
lbl_80ADCAA0:
/* 80ADCAA0  38 00 00 04 */	li r0, 4
/* 80ADCAA4  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80ADCAA8  90 7D 0C A8 */	stw r3, 0xca8(r29)
lbl_80ADCAAC:
/* 80ADCAAC  38 60 00 01 */	li r3, 1
/* 80ADCAB0  48 00 00 10 */	b lbl_80ADCAC0
lbl_80ADCAB4:
/* 80ADCAB4  38 60 00 01 */	li r3, 1
/* 80ADCAB8  48 00 00 08 */	b lbl_80ADCAC0
lbl_80ADCABC:
/* 80ADCABC  38 60 00 00 */	li r3, 0
lbl_80ADCAC0:
/* 80ADCAC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80ADCAC4  4B 88 57 5C */	b _restgpr_27
/* 80ADCAC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ADCACC  7C 08 03 A6 */	mtlr r0
/* 80ADCAD0  38 21 00 30 */	addi r1, r1, 0x30
/* 80ADCAD4  4E 80 00 20 */	blr 
