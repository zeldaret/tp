lbl_80C5DAC8:
/* 80C5DAC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5DACC  7C 08 02 A6 */	mflr r0
/* 80C5DAD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5DAD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5DAD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5DADC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C5DAE0  7C 9F 23 78 */	mr r31, r4
/* 80C5DAE4  41 82 00 48 */	beq lbl_80C5DB2C
/* 80C5DAE8  3C 60 80 C6 */	lis r3, __vt__16dalv4CandleTag_c@ha /* 0x80C5DC34@ha */
/* 80C5DAEC  38 63 DC 34 */	addi r3, r3, __vt__16dalv4CandleTag_c@l /* 0x80C5DC34@l */
/* 80C5DAF0  90 7E 05 80 */	stw r3, 0x580(r30)
/* 80C5DAF4  38 03 00 08 */	addi r0, r3, 8
/* 80C5DAF8  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80C5DAFC  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80C5DB00  41 82 00 10 */	beq lbl_80C5DB10
/* 80C5DB04  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C5DC5C@ha */
/* 80C5DB08  38 03 DC 5C */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C5DC5C@l */
/* 80C5DB0C  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_80C5DB10:
/* 80C5DB10  7F C3 F3 78 */	mr r3, r30
/* 80C5DB14  38 80 00 00 */	li r4, 0
/* 80C5DB18  4B 3B B1 75 */	bl __dt__10fopAc_ac_cFv
/* 80C5DB1C  7F E0 07 35 */	extsh. r0, r31
/* 80C5DB20  40 81 00 0C */	ble lbl_80C5DB2C
/* 80C5DB24  7F C3 F3 78 */	mr r3, r30
/* 80C5DB28  4B 67 12 15 */	bl __dl__FPv
lbl_80C5DB2C:
/* 80C5DB2C  7F C3 F3 78 */	mr r3, r30
/* 80C5DB30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5DB34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5DB38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5DB3C  7C 08 03 A6 */	mtlr r0
/* 80C5DB40  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5DB44  4E 80 00 20 */	blr 
