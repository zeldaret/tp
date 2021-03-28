lbl_8058D628:
/* 8058D628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D62C  7C 08 02 A6 */	mflr r0
/* 8058D630  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058D638  93 C1 00 08 */	stw r30, 8(r1)
/* 8058D63C  7C 7E 1B 78 */	mr r30, r3
/* 8058D640  3B E0 00 00 */	li r31, 0
/* 8058D644  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058D648  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058D64C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8058D650  A8 9E 06 1C */	lha r4, 0x61c(r30)
/* 8058D654  4B AB 9E 68 */	b getEventData__16dEvent_manager_cFs
/* 8058D658  28 03 00 00 */	cmplwi r3, 0
/* 8058D65C  41 82 00 60 */	beq lbl_8058D6BC
/* 8058D660  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 8058D664  28 00 00 02 */	cmplwi r0, 2
/* 8058D668  40 82 00 14 */	bne lbl_8058D67C
/* 8058D66C  3B E0 00 01 */	li r31, 1
/* 8058D670  38 00 00 01 */	li r0, 1
/* 8058D674  98 1E 06 1E */	stb r0, 0x61e(r30)
/* 8058D678  48 00 00 48 */	b lbl_8058D6C0
lbl_8058D67C:
/* 8058D67C  7F C3 F3 78 */	mr r3, r30
/* 8058D680  38 80 00 08 */	li r4, 8
/* 8058D684  38 A0 00 10 */	li r5, 0x10
/* 8058D688  48 00 06 8D */	bl func_8058DD14
/* 8058D68C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8058D690  7F C3 F3 78 */	mr r3, r30
/* 8058D694  A8 9E 06 1C */	lha r4, 0x61c(r30)
/* 8058D698  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8058D69C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8058D6A0  38 E0 00 00 */	li r7, 0
/* 8058D6A4  39 00 00 01 */	li r8, 1
/* 8058D6A8  4B A8 DF D4 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8058D6AC  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 8058D6B0  60 00 00 02 */	ori r0, r0, 2
/* 8058D6B4  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 8058D6B8  48 00 00 08 */	b lbl_8058D6C0
lbl_8058D6BC:
/* 8058D6BC  3B E0 00 01 */	li r31, 1
lbl_8058D6C0:
/* 8058D6C0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8058D6C4  41 82 00 0C */	beq lbl_8058D6D0
/* 8058D6C8  7F C3 F3 78 */	mr r3, r30
/* 8058D6CC  48 00 00 1D */	bl mode_vib_init__Q211daObjLadder5Act_cFv
lbl_8058D6D0:
/* 8058D6D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058D6D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058D6D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D6DC  7C 08 03 A6 */	mtlr r0
/* 8058D6E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D6E4  4E 80 00 20 */	blr 
