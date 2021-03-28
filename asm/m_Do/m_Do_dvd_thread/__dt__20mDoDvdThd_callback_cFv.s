lbl_80015BB8:
/* 80015BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015BBC  7C 08 02 A6 */	mflr r0
/* 80015BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80015BC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80015BCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80015BD0  7C 9F 23 78 */	mr r31, r4
/* 80015BD4  41 82 00 28 */	beq lbl_80015BFC
/* 80015BD8  3C 80 80 3A */	lis r4, __vt__20mDoDvdThd_callback_c@ha
/* 80015BDC  38 04 34 D8 */	addi r0, r4, __vt__20mDoDvdThd_callback_c@l
/* 80015BE0  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80015BE4  38 80 00 00 */	li r4, 0
/* 80015BE8  4B FF FD 15 */	bl __dt__19mDoDvdThd_command_cFv
/* 80015BEC  7F E0 07 35 */	extsh. r0, r31
/* 80015BF0  40 81 00 0C */	ble lbl_80015BFC
/* 80015BF4  7F C3 F3 78 */	mr r3, r30
/* 80015BF8  48 2B 91 45 */	bl __dl__FPv
lbl_80015BFC:
/* 80015BFC  7F C3 F3 78 */	mr r3, r30
/* 80015C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015C04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80015C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015C0C  7C 08 03 A6 */	mtlr r0
/* 80015C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80015C14  4E 80 00 20 */	blr 
