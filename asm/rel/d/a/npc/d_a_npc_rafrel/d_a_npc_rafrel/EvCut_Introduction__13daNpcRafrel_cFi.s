lbl_80ABCD74:
/* 80ABCD74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ABCD78  7C 08 02 A6 */	mflr r0
/* 80ABCD7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ABCD80  39 61 00 20 */	addi r11, r1, 0x20
/* 80ABCD84  4B 8A 54 54 */	b _savegpr_28
/* 80ABCD88  7C 7C 1B 78 */	mr r28, r3
/* 80ABCD8C  7C 9D 23 78 */	mr r29, r4
/* 80ABCD90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABCD94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ABCD98  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80ABCD9C  7F C3 F3 78 */	mr r3, r30
/* 80ABCDA0  3C A0 80 AC */	lis r5, struct_80ABFDBC+0x0@ha
/* 80ABCDA4  38 A5 FD BC */	addi r5, r5, struct_80ABFDBC+0x0@l
/* 80ABCDA8  38 A5 00 BE */	addi r5, r5, 0xbe
/* 80ABCDAC  38 C0 00 03 */	li r6, 3
/* 80ABCDB0  4B 58 B3 3C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ABCDB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABCDB8  40 82 00 0C */	bne lbl_80ABCDC4
/* 80ABCDBC  38 60 00 00 */	li r3, 0
/* 80ABCDC0  48 00 00 9C */	b lbl_80ABCE5C
lbl_80ABCDC4:
/* 80ABCDC4  7F C3 F3 78 */	mr r3, r30
/* 80ABCDC8  7F A4 EB 78 */	mr r4, r29
/* 80ABCDCC  4B 58 AF 80 */	b getIsAddvance__16dEvent_manager_cFi
/* 80ABCDD0  2C 03 00 00 */	cmpwi r3, 0
/* 80ABCDD4  41 82 00 84 */	beq lbl_80ABCE58
/* 80ABCDD8  80 1F 00 00 */	lwz r0, 0(r31)
/* 80ABCDDC  2C 00 00 01 */	cmpwi r0, 1
/* 80ABCDE0  41 82 00 48 */	beq lbl_80ABCE28
/* 80ABCDE4  40 80 00 10 */	bge lbl_80ABCDF4
/* 80ABCDE8  2C 00 00 00 */	cmpwi r0, 0
/* 80ABCDEC  40 80 00 10 */	bge lbl_80ABCDFC
/* 80ABCDF0  48 00 00 68 */	b lbl_80ABCE58
lbl_80ABCDF4:
/* 80ABCDF4  2C 00 00 03 */	cmpwi r0, 3
/* 80ABCDF8  40 80 00 60 */	bge lbl_80ABCE58
lbl_80ABCDFC:
/* 80ABCDFC  A8 1C 0E 0E */	lha r0, 0xe0e(r28)
/* 80ABCE00  2C 00 00 00 */	cmpwi r0, 0
/* 80ABCE04  40 82 00 10 */	bne lbl_80ABCE14
/* 80ABCE08  80 1C 0C 9C */	lwz r0, 0xc9c(r28)
/* 80ABCE0C  28 00 00 00 */	cmplwi r0, 0
/* 80ABCE10  41 82 00 10 */	beq lbl_80ABCE20
lbl_80ABCE14:
/* 80ABCE14  38 00 00 00 */	li r0, 0
/* 80ABCE18  B0 1C 0E 0E */	sth r0, 0xe0e(r28)
/* 80ABCE1C  90 1C 0C 9C */	stw r0, 0xc9c(r28)
lbl_80ABCE20:
/* 80ABCE20  38 60 00 01 */	li r3, 1
/* 80ABCE24  48 00 00 38 */	b lbl_80ABCE5C
lbl_80ABCE28:
/* 80ABCE28  A8 1C 0E 0E */	lha r0, 0xe0e(r28)
/* 80ABCE2C  2C 00 00 02 */	cmpwi r0, 2
/* 80ABCE30  40 82 00 10 */	bne lbl_80ABCE40
/* 80ABCE34  80 1C 0C 9C */	lwz r0, 0xc9c(r28)
/* 80ABCE38  28 00 00 00 */	cmplwi r0, 0
/* 80ABCE3C  41 82 00 14 */	beq lbl_80ABCE50
lbl_80ABCE40:
/* 80ABCE40  38 00 00 02 */	li r0, 2
/* 80ABCE44  B0 1C 0E 0E */	sth r0, 0xe0e(r28)
/* 80ABCE48  38 00 00 00 */	li r0, 0
/* 80ABCE4C  90 1C 0C 9C */	stw r0, 0xc9c(r28)
lbl_80ABCE50:
/* 80ABCE50  38 60 00 01 */	li r3, 1
/* 80ABCE54  48 00 00 08 */	b lbl_80ABCE5C
lbl_80ABCE58:
/* 80ABCE58  38 60 00 00 */	li r3, 0
lbl_80ABCE5C:
/* 80ABCE5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80ABCE60  4B 8A 53 C4 */	b _restgpr_28
/* 80ABCE64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ABCE68  7C 08 03 A6 */	mtlr r0
/* 80ABCE6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80ABCE70  4E 80 00 20 */	blr 
