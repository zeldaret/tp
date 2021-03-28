lbl_80353AC8:
/* 80353AC8  7C 08 02 A6 */	mflr r0
/* 80353ACC  3C 60 80 45 */	lis r3, __CARDBlock@ha
/* 80353AD0  90 01 00 04 */	stw r0, 4(r1)
/* 80353AD4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80353AD8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80353ADC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80353AE0  3B C3 CB C0 */	addi r30, r3, __CARDBlock@l
/* 80353AE4  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80353AE8  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 80353AEC  28 00 00 00 */	cmplwi r0, 0
/* 80353AF0  41 82 00 10 */	beq lbl_80353B00
/* 80353AF4  80 1E 02 1C */	lwz r0, 0x21c(r30)
/* 80353AF8  28 00 00 00 */	cmplwi r0, 0
/* 80353AFC  40 82 00 5C */	bne lbl_80353B58
lbl_80353B00:
/* 80353B00  4B FE 9A 55 */	bl OSGetFontEncode
/* 80353B04  B0 6D 93 98 */	sth r3, struct_80451918+0x0(r13)
/* 80353B08  80 6D 84 E0 */	lwz r3, __CARDVersion(r13)
/* 80353B0C  4B FE 6D 69 */	bl OSRegisterVersion
/* 80353B10  4B FF E9 AD */	bl DSPInit
/* 80353B14  4B FE 6D 8D */	bl OSInitAlarm
/* 80353B18  3B A0 00 00 */	li r29, 0
/* 80353B1C  3B E0 FF FD */	li r31, -3
lbl_80353B20:
/* 80353B20  93 FE 00 04 */	stw r31, 4(r30)
/* 80353B24  38 7E 00 8C */	addi r3, r30, 0x8c
/* 80353B28  4B FE D1 4D */	bl OSInitThreadQueue
/* 80353B2C  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 80353B30  4B FE 6D C9 */	bl OSCreateAlarm
/* 80353B34  3B BD 00 01 */	addi r29, r29, 1
/* 80353B38  2C 1D 00 02 */	cmpwi r29, 2
/* 80353B3C  3B DE 01 10 */	addi r30, r30, 0x110
/* 80353B40  41 80 FF E0 */	blt lbl_80353B20
/* 80353B44  3C 60 80 00 */	lis r3, 0x8000
/* 80353B48  48 00 00 35 */	bl __CARDSetDiskID
/* 80353B4C  3C 60 80 3D */	lis r3, ResetFunctionInfo@ha
/* 80353B50  38 63 1E 80 */	addi r3, r3, ResetFunctionInfo@l
/* 80353B54  4B FE BB 0D */	bl OSRegisterResetFunction
lbl_80353B58:
/* 80353B58  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80353B5C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80353B60  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80353B64  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80353B68  38 21 00 18 */	addi r1, r1, 0x18
/* 80353B6C  7C 08 03 A6 */	mtlr r0
/* 80353B70  4E 80 00 20 */	blr 
