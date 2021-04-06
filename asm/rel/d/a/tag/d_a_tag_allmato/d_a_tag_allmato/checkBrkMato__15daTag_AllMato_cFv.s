lbl_80488F40:
/* 80488F40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488F44  7C 08 02 A6 */	mflr r0
/* 80488F48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80488F4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80488F50  4B ED 92 81 */	bl _savegpr_26
/* 80488F54  7C 7A 1B 78 */	mr r26, r3
/* 80488F58  3B 60 00 00 */	li r27, 0
/* 80488F5C  3B E0 00 00 */	li r31, 0
/* 80488F60  3B C0 00 04 */	li r30, 4
/* 80488F64  48 00 00 4C */	b lbl_80488FB0
lbl_80488F68:
/* 80488F68  3B 9F 05 70 */	addi r28, r31, 0x570
/* 80488F6C  7F 9A E2 14 */	add r28, r26, r28
/* 80488F70  7F 83 E3 78 */	mr r3, r28
/* 80488F74  4B CB C7 95 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80488F78  88 03 0A 15 */	lbz r0, 0xa15(r3)
/* 80488F7C  20 00 00 00 */	subfic r0, r0, 0
/* 80488F80  7C 00 01 10 */	subfe r0, r0, r0
/* 80488F84  7F DD 00 39 */	and. r29, r30, r0
/* 80488F88  41 82 00 20 */	beq lbl_80488FA8
/* 80488F8C  7F 83 E3 78 */	mr r3, r28
/* 80488F90  4B CB C7 79 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80488F94  7C 64 1B 78 */	mr r4, r3
/* 80488F98  38 7A 05 88 */	addi r3, r26, 0x588
/* 80488F9C  4B CB C7 45 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80488FA0  7F A3 EB 78 */	mr r3, r29
/* 80488FA4  48 00 00 1C */	b lbl_80488FC0
lbl_80488FA8:
/* 80488FA8  3B 7B 00 01 */	addi r27, r27, 1
/* 80488FAC  3B FF 00 08 */	addi r31, r31, 8
lbl_80488FB0:
/* 80488FB0  80 1A 1D 04 */	lwz r0, 0x1d04(r26)
/* 80488FB4  7C 1B 00 00 */	cmpw r27, r0
/* 80488FB8  41 80 FF B0 */	blt lbl_80488F68
/* 80488FBC  38 60 00 00 */	li r3, 0
lbl_80488FC0:
/* 80488FC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80488FC4  4B ED 92 59 */	bl _restgpr_26
/* 80488FC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80488FCC  7C 08 03 A6 */	mtlr r0
/* 80488FD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80488FD4  4E 80 00 20 */	blr 
