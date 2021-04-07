lbl_804D5938:
/* 804D5938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D593C  7C 08 02 A6 */	mflr r0
/* 804D5940  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5948  7C 7F 1B 78 */	mr r31, r3
/* 804D594C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 804D5950  28 00 00 02 */	cmplwi r0, 2
/* 804D5954  40 82 00 10 */	bne lbl_804D5964
/* 804D5958  38 00 00 05 */	li r0, 5
/* 804D595C  98 1F 05 68 */	stb r0, 0x568(r31)
/* 804D5960  48 00 00 28 */	b lbl_804D5988
lbl_804D5964:
/* 804D5964  4B FF FE B5 */	bl getEventNo__10daAlldie_cFv
/* 804D5968  7C 65 1B 78 */	mr r5, r3
/* 804D596C  7F E3 FB 78 */	mr r3, r31
/* 804D5970  A8 9F 05 6C */	lha r4, 0x56c(r31)
/* 804D5974  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804D5978  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804D597C  38 E0 00 00 */	li r7, 0
/* 804D5980  39 00 00 01 */	li r8, 1
/* 804D5984  4B B4 5C F9 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_804D5988:
/* 804D5988  38 60 00 01 */	li r3, 1
/* 804D598C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5994  7C 08 03 A6 */	mtlr r0
/* 804D5998  38 21 00 10 */	addi r1, r1, 0x10
/* 804D599C  4E 80 00 20 */	blr 
