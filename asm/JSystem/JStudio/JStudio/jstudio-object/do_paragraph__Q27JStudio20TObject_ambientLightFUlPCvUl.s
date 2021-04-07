lbl_80286D38:
/* 80286D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286D3C  7C 08 02 A6 */	mflr r0
/* 80286D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286D44  7C A8 2B 78 */	mr r8, r5
/* 80286D48  7C C9 33 78 */	mr r9, r6
/* 80286D4C  81 43 00 34 */	lwz r10, 0x34(r3)
/* 80286D50  28 0A 00 00 */	cmplwi r10, 0
/* 80286D54  41 82 00 B8 */	beq lbl_80286E0C
/* 80286D58  81 63 00 14 */	lwz r11, 0x14(r3)
/* 80286D5C  54 80 D9 7E */	srwi r0, r4, 5
/* 80286D60  54 87 06 FE */	clrlwi r7, r4, 0x1b
/* 80286D64  2C 00 00 20 */	cmpwi r0, 0x20
/* 80286D68  41 82 00 48 */	beq lbl_80286DB0
/* 80286D6C  40 80 00 1C */	bge lbl_80286D88
/* 80286D70  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80286D74  41 82 00 2C */	beq lbl_80286DA0
/* 80286D78  40 80 00 30 */	bge lbl_80286DA8
/* 80286D7C  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80286D80  40 80 00 18 */	bge lbl_80286D98
/* 80286D84  48 00 00 88 */	b lbl_80286E0C
lbl_80286D88:
/* 80286D88  2C 00 00 22 */	cmpwi r0, 0x22
/* 80286D8C  41 82 00 40 */	beq lbl_80286DCC
/* 80286D90  40 80 00 7C */	bge lbl_80286E0C
/* 80286D94  48 00 00 24 */	b lbl_80286DB8
lbl_80286D98:
/* 80286D98  38 A0 00 00 */	li r5, 0
/* 80286D9C  48 00 00 48 */	b lbl_80286DE4
lbl_80286DA0:
/* 80286DA0  38 A0 00 01 */	li r5, 1
/* 80286DA4  48 00 00 40 */	b lbl_80286DE4
lbl_80286DA8:
/* 80286DA8  38 A0 00 02 */	li r5, 2
/* 80286DAC  48 00 00 38 */	b lbl_80286DE4
lbl_80286DB0:
/* 80286DB0  38 A0 00 03 */	li r5, 3
/* 80286DB4  48 00 00 30 */	b lbl_80286DE4
lbl_80286DB8:
/* 80286DB8  3C 60 80 3A */	lis r3, sauVariableValue_3_COLOR_RGB__Q27JStudio21TAdaptor_ambientLight@ha /* 0x8039AA8C@ha */
/* 80286DBC  38 03 AA 8C */	addi r0, r3, sauVariableValue_3_COLOR_RGB__Q27JStudio21TAdaptor_ambientLight@l /* 0x8039AA8C@l */
/* 80286DC0  7C 05 03 78 */	mr r5, r0
/* 80286DC4  38 C0 00 03 */	li r6, 3
/* 80286DC8  48 00 00 38 */	b lbl_80286E00
lbl_80286DCC:
/* 80286DCC  3C 60 80 3A */	lis r3, sauVariableValue_4_COLOR_RGBA__Q27JStudio21TAdaptor_ambientLight@ha /* 0x8039AA98@ha */
/* 80286DD0  38 03 AA 98 */	addi r0, r3, sauVariableValue_4_COLOR_RGBA__Q27JStudio21TAdaptor_ambientLight@l /* 0x8039AA98@l */
/* 80286DD4  7C 05 03 78 */	mr r5, r0
/* 80286DD8  38 C0 00 04 */	li r6, 4
/* 80286DDC  48 00 00 24 */	b lbl_80286E00
/* 80286DE0  48 00 00 2C */	b lbl_80286E0C
lbl_80286DE4:
/* 80286DE4  7D 43 53 78 */	mr r3, r10
/* 80286DE8  7D 64 5B 78 */	mr r4, r11
/* 80286DEC  7C E6 3B 78 */	mr r6, r7
/* 80286DF0  7D 07 43 78 */	mr r7, r8
/* 80286DF4  7D 28 4B 78 */	mr r8, r9
/* 80286DF8  4B FF F2 35 */	bl adaptor_setVariableValue__Q27JStudio8TAdaptorFPQ27JStudio8TControlUlQ37JStudio4data15TEOperationDataPCvUl
/* 80286DFC  48 00 00 10 */	b lbl_80286E0C
lbl_80286E00:
/* 80286E00  7D 43 53 78 */	mr r3, r10
/* 80286E04  7D 64 5B 78 */	mr r4, r11
/* 80286E08  4B FF F2 C5 */	bl adaptor_setVariableValue_n__Q27JStudio8TAdaptorFPQ27JStudio8TControlPCUlUlQ37JStudio4data15TEOperationDataPCvUl
lbl_80286E0C:
/* 80286E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286E10  7C 08 03 A6 */	mtlr r0
/* 80286E14  38 21 00 10 */	addi r1, r1, 0x10
/* 80286E18  4E 80 00 20 */	blr 
