lbl_80756DE8:
/* 80756DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80756DEC  7C 08 02 A6 */	mflr r0
/* 80756DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80756DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80756DF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80756DFC  41 82 00 1C */	beq lbl_80756E18
/* 80756E00  3C A0 80 75 */	lis r5, __vt__12daE_PO_HIO_c@ha
/* 80756E04  38 05 7D FC */	addi r0, r5, __vt__12daE_PO_HIO_c@l
/* 80756E08  90 1F 00 00 */	stw r0, 0(r31)
/* 80756E0C  7C 80 07 35 */	extsh. r0, r4
/* 80756E10  40 81 00 08 */	ble lbl_80756E18
/* 80756E14  4B B7 7F 28 */	b __dl__FPv
lbl_80756E18:
/* 80756E18  7F E3 FB 78 */	mr r3, r31
/* 80756E1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80756E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80756E24  7C 08 03 A6 */	mtlr r0
/* 80756E28  38 21 00 10 */	addi r1, r1, 0x10
/* 80756E2C  4E 80 00 20 */	blr 
