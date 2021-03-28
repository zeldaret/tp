lbl_80AA0088:
/* 80AA0088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA008C  7C 08 02 A6 */	mflr r0
/* 80AA0090  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA0098  3B E0 00 00 */	li r31, 0
/* 80AA009C  80 04 00 00 */	lwz r0, 0(r4)
/* 80AA00A0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80AA00A4  41 82 00 2C */	beq lbl_80AA00D0
/* 80AA00A8  40 80 00 48 */	bge lbl_80AA00F0
/* 80AA00AC  2C 00 00 05 */	cmpwi r0, 5
/* 80AA00B0  41 82 00 08 */	beq lbl_80AA00B8
/* 80AA00B4  48 00 00 3C */	b lbl_80AA00F0
lbl_80AA00B8:
/* 80AA00B8  38 80 0C 00 */	li r4, 0xc00
/* 80AA00BC  4B FF E1 69 */	bl _turn_to_link__18daNpc_Pachi_Taro_cFs
/* 80AA00C0  2C 03 00 00 */	cmpwi r3, 0
/* 80AA00C4  41 82 00 2C */	beq lbl_80AA00F0
/* 80AA00C8  3B E0 00 01 */	li r31, 1
/* 80AA00CC  48 00 00 24 */	b lbl_80AA00F0
lbl_80AA00D0:
/* 80AA00D0  38 80 00 00 */	li r4, 0
/* 80AA00D4  38 A0 00 00 */	li r5, 0
/* 80AA00D8  38 C0 00 00 */	li r6, 0
/* 80AA00DC  38 E0 00 00 */	li r7, 0
/* 80AA00E0  4B 6A BB 98 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AA00E4  2C 03 00 00 */	cmpwi r3, 0
/* 80AA00E8  41 82 00 08 */	beq lbl_80AA00F0
/* 80AA00EC  3B E0 00 01 */	li r31, 1
lbl_80AA00F0:
/* 80AA00F0  7F E3 FB 78 */	mr r3, r31
/* 80AA00F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA00F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA00FC  7C 08 03 A6 */	mtlr r0
/* 80AA0100  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0104  4E 80 00 20 */	blr 
