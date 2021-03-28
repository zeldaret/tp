lbl_804C70C0:
/* 804C70C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C70C4  7C 08 02 A6 */	mflr r0
/* 804C70C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C70CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C70D0  7C 7F 1B 78 */	mr r31, r3
/* 804C70D4  88 03 04 96 */	lbz r0, 0x496(r3)
/* 804C70D8  28 00 00 02 */	cmplwi r0, 2
/* 804C70DC  40 82 00 20 */	bne lbl_804C70FC
/* 804C70E0  7C 83 23 78 */	mr r3, r4
/* 804C70E4  7F E4 FB 78 */	mr r4, r31
/* 804C70E8  4B FF FE F1 */	bl searchEnemy__9daNbomb_cFP10fopAc_ac_c
/* 804C70EC  2C 03 00 00 */	cmpwi r3, 0
/* 804C70F0  41 82 00 0C */	beq lbl_804C70FC
/* 804C70F4  7F E3 FB 78 */	mr r3, r31
/* 804C70F8  48 00 00 08 */	b lbl_804C7100
lbl_804C70FC:
/* 804C70FC  38 60 00 00 */	li r3, 0
lbl_804C7100:
/* 804C7100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C7104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C7108  7C 08 03 A6 */	mtlr r0
/* 804C710C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C7110  4E 80 00 20 */	blr 
