lbl_80AA9D04:
/* 80AA9D04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA9D08  7C 08 02 A6 */	mflr r0
/* 80AA9D0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA9D10  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA9D14  4B 8B 84 C5 */	bl _savegpr_28
/* 80AA9D18  7C 7C 1B 78 */	mr r28, r3
/* 80AA9D1C  88 03 0F 8C */	lbz r0, 0xf8c(r3)
/* 80AA9D20  2C 00 00 01 */	cmpwi r0, 1
/* 80AA9D24  41 82 00 10 */	beq lbl_80AA9D34
/* 80AA9D28  40 80 00 58 */	bge lbl_80AA9D80
/* 80AA9D2C  48 00 00 54 */	b lbl_80AA9D80
/* 80AA9D30  48 00 00 50 */	b lbl_80AA9D80
lbl_80AA9D34:
/* 80AA9D34  3B A0 00 00 */	li r29, 0
/* 80AA9D38  3B E0 00 00 */	li r31, 0
lbl_80AA9D3C:
/* 80AA9D3C  3B DF 0F 90 */	addi r30, r31, 0xf90
/* 80AA9D40  7F DC F2 14 */	add r30, r28, r30
/* 80AA9D44  7F C3 F3 78 */	mr r3, r30
/* 80AA9D48  4B 69 B9 C1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80AA9D4C  28 03 00 00 */	cmplwi r3, 0
/* 80AA9D50  40 82 00 20 */	bne lbl_80AA9D70
/* 80AA9D54  7F 83 E3 78 */	mr r3, r28
/* 80AA9D58  38 80 00 15 */	li r4, 0x15
/* 80AA9D5C  7F A5 EB 78 */	mr r5, r29
/* 80AA9D60  4B 6A 21 85 */	bl getEvtAreaTagP__8daNpcT_cFii
/* 80AA9D64  7C 64 1B 78 */	mr r4, r3
/* 80AA9D68  7F C3 F3 78 */	mr r3, r30
/* 80AA9D6C  4B 69 B9 75 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80AA9D70:
/* 80AA9D70  3B BD 00 01 */	addi r29, r29, 1
/* 80AA9D74  2C 1D 00 04 */	cmpwi r29, 4
/* 80AA9D78  3B FF 00 08 */	addi r31, r31, 8
/* 80AA9D7C  41 80 FF C0 */	blt lbl_80AA9D3C
lbl_80AA9D80:
/* 80AA9D80  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA9D84  4B 8B 84 A1 */	bl _restgpr_28
/* 80AA9D88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA9D8C  7C 08 03 A6 */	mtlr r0
/* 80AA9D90  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA9D94  4E 80 00 20 */	blr 
