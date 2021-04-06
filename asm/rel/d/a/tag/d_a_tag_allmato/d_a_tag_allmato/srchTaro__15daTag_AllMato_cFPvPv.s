lbl_80487D9C:
/* 80487D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80487DA0  7C 08 02 A6 */	mflr r0
/* 80487DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487DA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487DAC  7C 7F 1B 78 */	mr r31, r3
/* 80487DB0  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80487DB4  80 03 9A 10 */	lwz r0, l_findCount@l(r3)  /* 0x80489A10@l */
/* 80487DB8  28 00 00 64 */	cmplwi r0, 0x64
/* 80487DBC  40 80 00 64 */	bge lbl_80487E20
/* 80487DC0  28 1F 00 00 */	cmplwi r31, 0
/* 80487DC4  41 82 00 5C */	beq lbl_80487E20
/* 80487DC8  7C 1F 20 40 */	cmplw r31, r4
/* 80487DCC  41 82 00 54 */	beq lbl_80487E20
/* 80487DD0  28 1F 00 00 */	cmplwi r31, 0
/* 80487DD4  41 82 00 0C */	beq lbl_80487DE0
/* 80487DD8  80 7F 00 04 */	lwz r3, 4(r31)
/* 80487DDC  48 00 00 08 */	b lbl_80487DE4
lbl_80487DE0:
/* 80487DE0  38 60 FF FF */	li r3, -1
lbl_80487DE4:
/* 80487DE4  4B B9 95 B9 */	bl fpcEx_IsExist__FUi
/* 80487DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80487DEC  41 82 00 34 */	beq lbl_80487E20
/* 80487DF0  A8 1F 00 08 */	lha r0, 8(r31)
/* 80487DF4  2C 00 02 6E */	cmpwi r0, 0x26e
/* 80487DF8  40 82 00 28 */	bne lbl_80487E20
/* 80487DFC  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80487E00  38 A3 9A 10 */	addi r5, r3, l_findCount@l /* 0x80489A10@l */
/* 80487E04  80 85 00 00 */	lwz r4, 0(r5)
/* 80487E08  54 80 10 3A */	slwi r0, r4, 2
/* 80487E0C  3C 60 80 49 */	lis r3, l_findActorPtrs@ha /* 0x80489880@ha */
/* 80487E10  38 63 98 80 */	addi r3, r3, l_findActorPtrs@l /* 0x80489880@l */
/* 80487E14  7F E3 01 2E */	stwx r31, r3, r0
/* 80487E18  38 04 00 01 */	addi r0, r4, 1
/* 80487E1C  90 05 00 00 */	stw r0, 0(r5)
lbl_80487E20:
/* 80487E20  38 60 00 00 */	li r3, 0
/* 80487E24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487E2C  7C 08 03 A6 */	mtlr r0
/* 80487E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80487E34  4E 80 00 20 */	blr 
