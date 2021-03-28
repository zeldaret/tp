lbl_80D5B0F4:
/* 80D5B0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B0F8  7C 08 02 A6 */	mflr r0
/* 80D5B0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5B104  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5B108  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D5B10C  7C 9F 23 78 */	mr r31, r4
/* 80D5B110  41 82 00 28 */	beq lbl_80D5B138
/* 80D5B114  3C 80 80 D6 */	lis r4, __vt__15daTag_Lv5Soup_c@ha
/* 80D5B118  38 04 B1 DC */	addi r0, r4, __vt__15daTag_Lv5Soup_c@l
/* 80D5B11C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D5B120  38 80 00 00 */	li r4, 0
/* 80D5B124  4B 2B DB 68 */	b __dt__10fopAc_ac_cFv
/* 80D5B128  7F E0 07 35 */	extsh. r0, r31
/* 80D5B12C  40 81 00 0C */	ble lbl_80D5B138
/* 80D5B130  7F C3 F3 78 */	mr r3, r30
/* 80D5B134  4B 57 3C 08 */	b __dl__FPv
lbl_80D5B138:
/* 80D5B138  7F C3 F3 78 */	mr r3, r30
/* 80D5B13C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5B140  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5B144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B148  7C 08 03 A6 */	mtlr r0
/* 80D5B14C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B150  4E 80 00 20 */	blr 
