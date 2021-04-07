lbl_80487F80:
/* 80487F80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80487F84  7C 08 02 A6 */	mflr r0
/* 80487F88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80487F8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80487F90  4B ED A2 41 */	bl _savegpr_26
/* 80487F94  7C 7A 1B 78 */	mr r26, r3
/* 80487F98  38 7A 05 70 */	addi r3, r26, 0x570
/* 80487F9C  4B CB D7 61 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80487FA0  38 00 00 00 */	li r0, 0
/* 80487FA4  90 1A 1D 00 */	stw r0, 0x1d00(r26)
/* 80487FA8  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80487FAC  90 03 9A 10 */	stw r0, l_findCount@l(r3)  /* 0x80489A10@l */
/* 80487FB0  3C 60 80 48 */	lis r3, srchBouMato__15daTag_AllMato_cFPvPv@ha /* 0x80487C64@ha */
/* 80487FB4  38 63 7C 64 */	addi r3, r3, srchBouMato__15daTag_AllMato_cFPvPv@l /* 0x80487C64@l */
/* 80487FB8  7F 44 D3 78 */	mr r4, r26
/* 80487FBC  4B B9 93 7D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80487FC0  3B 60 00 00 */	li r27, 0
/* 80487FC4  3B E0 00 00 */	li r31, 0
/* 80487FC8  3B C0 00 00 */	li r30, 0
/* 80487FCC  3C 60 80 49 */	lis r3, l_findActorPtrs@ha /* 0x80489880@ha */
/* 80487FD0  3B 83 98 80 */	addi r28, r3, l_findActorPtrs@l /* 0x80489880@l */
/* 80487FD4  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80487FD8  3B A3 9A 10 */	addi r29, r3, l_findCount@l /* 0x80489A10@l */
/* 80487FDC  48 00 00 2C */	b lbl_80488008
lbl_80487FE0:
/* 80487FE0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80487FE4  7C 7A 1A 14 */	add r3, r26, r3
/* 80487FE8  7C 9C F8 2E */	lwzx r4, r28, r31
/* 80487FEC  4B CB D6 F5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80487FF0  80 7A 1D 00 */	lwz r3, 0x1d00(r26)
/* 80487FF4  38 03 00 01 */	addi r0, r3, 1
/* 80487FF8  90 1A 1D 00 */	stw r0, 0x1d00(r26)
/* 80487FFC  3B 7B 00 01 */	addi r27, r27, 1
/* 80488000  3B FF 00 04 */	addi r31, r31, 4
/* 80488004  3B DE 00 08 */	addi r30, r30, 8
lbl_80488008:
/* 80488008  80 1D 00 00 */	lwz r0, 0(r29)
/* 8048800C  7C 1B 00 00 */	cmpw r27, r0
/* 80488010  40 80 00 0C */	bge lbl_8048801C
/* 80488014  2C 1B 00 01 */	cmpwi r27, 1
/* 80488018  41 80 FF C8 */	blt lbl_80487FE0
lbl_8048801C:
/* 8048801C  39 61 00 20 */	addi r11, r1, 0x20
/* 80488020  4B ED A1 FD */	bl _restgpr_26
/* 80488024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80488028  7C 08 03 A6 */	mtlr r0
/* 8048802C  38 21 00 20 */	addi r1, r1, 0x20
/* 80488030  4E 80 00 20 */	blr 
