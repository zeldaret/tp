lbl_80D4E194:
/* 80D4E194  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D4E198  7C 08 02 A6 */	mflr r0
/* 80D4E19C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D4E1A0  39 61 00 40 */	addi r11, r1, 0x40
/* 80D4E1A4  4B 61 40 34 */	b _savegpr_28
/* 80D4E1A8  7C 7C 1B 78 */	mr r28, r3
/* 80D4E1AC  3B A0 00 00 */	li r29, 0
/* 80D4E1B0  3B E0 00 00 */	li r31, 0
/* 80D4E1B4  3B C1 00 0C */	addi r30, r1, 0xc
lbl_80D4E1B8:
/* 80D4E1B8  38 1F 05 68 */	addi r0, r31, 0x568
/* 80D4E1BC  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80D4E1C0  3C 03 00 01 */	addis r0, r3, 1
/* 80D4E1C4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D4E1C8  41 82 00 24 */	beq lbl_80D4E1EC
/* 80D4E1CC  90 61 00 08 */	stw r3, 8(r1)
/* 80D4E1D0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80D4E1D4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80D4E1D8  38 81 00 08 */	addi r4, r1, 8
/* 80D4E1DC  4B 2C B6 1C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80D4E1E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80D4E1E4  7C 64 F9 2E */	stwx r3, r4, r31
/* 80D4E1E8  48 00 00 10 */	b lbl_80D4E1F8
lbl_80D4E1EC:
/* 80D4E1EC  38 00 00 00 */	li r0, 0
/* 80D4E1F0  38 61 00 0C */	addi r3, r1, 0xc
/* 80D4E1F4  7C 03 F9 2E */	stwx r0, r3, r31
lbl_80D4E1F8:
/* 80D4E1F8  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80D4E1FC  28 04 00 00 */	cmplwi r4, 0
/* 80D4E200  41 82 00 1C */	beq lbl_80D4E21C
/* 80D4E204  7F 83 E3 78 */	mr r3, r28
/* 80D4E208  4B FF FE 4D */	bl checkArea_sub__10daSwBall_cFP10fopAc_ac_c
/* 80D4E20C  2C 03 00 00 */	cmpwi r3, 0
/* 80D4E210  41 82 00 0C */	beq lbl_80D4E21C
/* 80D4E214  38 60 00 01 */	li r3, 1
/* 80D4E218  48 00 00 18 */	b lbl_80D4E230
lbl_80D4E21C:
/* 80D4E21C  3B BD 00 01 */	addi r29, r29, 1
/* 80D4E220  2C 1D 00 08 */	cmpwi r29, 8
/* 80D4E224  3B FF 00 04 */	addi r31, r31, 4
/* 80D4E228  41 80 FF 90 */	blt lbl_80D4E1B8
/* 80D4E22C  38 60 00 00 */	li r3, 0
lbl_80D4E230:
/* 80D4E230  39 61 00 40 */	addi r11, r1, 0x40
/* 80D4E234  4B 61 3F F0 */	b _restgpr_28
/* 80D4E238  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D4E23C  7C 08 03 A6 */	mtlr r0
/* 80D4E240  38 21 00 40 */	addi r1, r1, 0x40
/* 80D4E244  4E 80 00 20 */	blr 
