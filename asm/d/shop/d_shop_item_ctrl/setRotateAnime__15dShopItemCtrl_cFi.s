lbl_80196AF0:
/* 80196AF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80196AF4  7C 08 02 A6 */	mflr r0
/* 80196AF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80196AFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80196B00  48 1C B6 D5 */	bl _savegpr_27
/* 80196B04  7C 7B 1B 78 */	mr r27, r3
/* 80196B08  7C 9C 23 78 */	mr r28, r4
/* 80196B0C  3B A0 00 00 */	li r29, 0
/* 80196B10  3B E0 00 00 */	li r31, 0
lbl_80196B14:
/* 80196B14  38 1F 00 04 */	addi r0, r31, 4
/* 80196B18  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80196B1C  3C 03 00 01 */	addis r0, r3, 1
/* 80196B20  28 00 FF FF */	cmplwi r0, 0xffff
/* 80196B24  41 82 00 58 */	beq lbl_80196B7C
/* 80196B28  90 61 00 08 */	stw r3, 8(r1)
/* 80196B2C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80196B30  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80196B34  38 81 00 08 */	addi r4, r1, 8
/* 80196B38  4B E8 2C C1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80196B3C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80196B40  41 82 00 3C */	beq lbl_80196B7C
/* 80196B44  4B EA 10 D1 */	bl getRotateP__12daShopItem_cFv
/* 80196B48  38 1C FF FF */	addi r0, r28, -1
/* 80196B4C  7C 1D 00 00 */	cmpw r29, r0
/* 80196B50  40 82 00 14 */	bne lbl_80196B64
/* 80196B54  A8 83 00 02 */	lha r4, 2(r3)
/* 80196B58  38 04 02 00 */	addi r0, r4, 0x200
/* 80196B5C  B0 03 00 02 */	sth r0, 2(r3)
/* 80196B60  48 00 00 1C */	b lbl_80196B7C
lbl_80196B64:
/* 80196B64  38 63 00 02 */	addi r3, r3, 2
/* 80196B68  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80196B6C  38 A0 00 04 */	li r5, 4
/* 80196B70  38 C0 08 00 */	li r6, 0x800
/* 80196B74  38 E0 00 80 */	li r7, 0x80
/* 80196B78  48 0D 99 C9 */	bl cLib_addCalcAngleS__FPsssss
lbl_80196B7C:
/* 80196B7C  3B BD 00 01 */	addi r29, r29, 1
/* 80196B80  2C 1D 00 07 */	cmpwi r29, 7
/* 80196B84  3B FF 00 04 */	addi r31, r31, 4
/* 80196B88  41 80 FF 8C */	blt lbl_80196B14
/* 80196B8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80196B90  48 1C B6 91 */	bl _restgpr_27
/* 80196B94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80196B98  7C 08 03 A6 */	mtlr r0
/* 80196B9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80196BA0  4E 80 00 20 */	blr 
