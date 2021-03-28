lbl_80282E08:
/* 80282E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80282E0C  7C 08 02 A6 */	mflr r0
/* 80282E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80282E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80282E18  7C 7F 1B 78 */	mr r31, r3
/* 80282E1C  38 7F 00 08 */	addi r3, r31, 8
/* 80282E20  4B FF EA F9 */	bl range_initialize__Q27JStudio29TFunctionValueAttribute_rangeFv
/* 80282E24  38 60 00 00 */	li r3, 0
/* 80282E28  90 7F 00 40 */	stw r3, 0x40(r31)
/* 80282E2C  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80282E30  90 7F 00 48 */	stw r3, 0x48(r31)
/* 80282E34  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 80282E38  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80282E3C  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80282E40  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80282E44  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80282E48  90 7F 00 58 */	stw r3, 0x58(r31)
/* 80282E4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80282E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80282E54  7C 08 03 A6 */	mtlr r0
/* 80282E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80282E5C  4E 80 00 20 */	blr 
