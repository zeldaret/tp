lbl_80AD2030:
/* 80AD2030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD2034  7C 08 02 A6 */	mflr r0
/* 80AD2038  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD203C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD2040  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD2044  7C 7E 1B 78 */	mr r30, r3
/* 80AD2048  3B E0 00 00 */	li r31, 0
/* 80AD204C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AD2050  28 00 00 00 */	cmplwi r0, 0
/* 80AD2054  40 82 00 1C */	bne lbl_80AD2070
/* 80AD2058  4B 55 D9 FC */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AD205C  2C 03 00 00 */	cmpwi r3, 0
/* 80AD2060  40 82 00 14 */	bne lbl_80AD2074
/* 80AD2064  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AD2068  28 00 00 00 */	cmplwi r0, 0
/* 80AD206C  41 82 00 08 */	beq lbl_80AD2074
lbl_80AD2070:
/* 80AD2070  3B E0 00 01 */	li r31, 1
lbl_80AD2074:
/* 80AD2074  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AD2078  40 82 00 10 */	bne lbl_80AD2088
/* 80AD207C  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80AD2080  28 00 00 00 */	cmplwi r0, 0
/* 80AD2084  41 82 00 0C */	beq lbl_80AD2090
lbl_80AD2088:
/* 80AD2088  38 00 00 00 */	li r0, 0
/* 80AD208C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AD2090:
/* 80AD2090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD2094  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD2098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD209C  7C 08 03 A6 */	mtlr r0
/* 80AD20A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD20A4  4E 80 00 20 */	blr 
