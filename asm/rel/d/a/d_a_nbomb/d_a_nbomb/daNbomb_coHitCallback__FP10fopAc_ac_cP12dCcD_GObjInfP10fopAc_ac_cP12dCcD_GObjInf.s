lbl_804C6E10:
/* 804C6E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C6E14  7C 08 02 A6 */	mflr r0
/* 804C6E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C6E1C  7C A4 2B 78 */	mr r4, r5
/* 804C6E20  4B FF FF AD */	bl coHitCallback__9daNbomb_cFP10fopAc_ac_c
/* 804C6E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6E28  7C 08 03 A6 */	mtlr r0
/* 804C6E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C6E30  4E 80 00 20 */	blr 
