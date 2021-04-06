lbl_80487D00:
/* 80487D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80487D04  7C 08 02 A6 */	mflr r0
/* 80487D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487D0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487D10  7C 7F 1B 78 */	mr r31, r3
/* 80487D14  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80487D18  80 03 9A 10 */	lwz r0, l_findCount@l(r3)  /* 0x80489A10@l */
/* 80487D1C  28 00 00 64 */	cmplwi r0, 0x64
/* 80487D20  40 80 00 64 */	bge lbl_80487D84
/* 80487D24  28 1F 00 00 */	cmplwi r31, 0
/* 80487D28  41 82 00 5C */	beq lbl_80487D84
/* 80487D2C  7C 1F 20 40 */	cmplw r31, r4
/* 80487D30  41 82 00 54 */	beq lbl_80487D84
/* 80487D34  28 1F 00 00 */	cmplwi r31, 0
/* 80487D38  41 82 00 0C */	beq lbl_80487D44
/* 80487D3C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80487D40  48 00 00 08 */	b lbl_80487D48
lbl_80487D44:
/* 80487D44  38 60 FF FF */	li r3, -1
lbl_80487D48:
/* 80487D48  4B B9 96 55 */	bl fpcEx_IsExist__FUi
/* 80487D4C  2C 03 00 00 */	cmpwi r3, 0
/* 80487D50  41 82 00 34 */	beq lbl_80487D84
/* 80487D54  A8 1F 00 08 */	lha r0, 8(r31)
/* 80487D58  2C 00 01 2E */	cmpwi r0, 0x12e
/* 80487D5C  40 82 00 28 */	bne lbl_80487D84
/* 80487D60  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80487D64  38 A3 9A 10 */	addi r5, r3, l_findCount@l /* 0x80489A10@l */
/* 80487D68  80 85 00 00 */	lwz r4, 0(r5)
/* 80487D6C  54 80 10 3A */	slwi r0, r4, 2
/* 80487D70  3C 60 80 49 */	lis r3, l_findActorPtrs@ha /* 0x80489880@ha */
/* 80487D74  38 63 98 80 */	addi r3, r3, l_findActorPtrs@l /* 0x80489880@l */
/* 80487D78  7F E3 01 2E */	stwx r31, r3, r0
/* 80487D7C  38 04 00 01 */	addi r0, r4, 1
/* 80487D80  90 05 00 00 */	stw r0, 0(r5)
lbl_80487D84:
/* 80487D84  38 60 00 00 */	li r3, 0
/* 80487D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487D90  7C 08 03 A6 */	mtlr r0
/* 80487D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80487D98  4E 80 00 20 */	blr 
