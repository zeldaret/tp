lbl_80D68130:
/* 80D68130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D68134  7C 08 02 A6 */	mflr r0
/* 80D68138  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6813C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D68140  93 C1 00 08 */	stw r30, 8(r1)
/* 80D68144  7C 7E 1B 78 */	mr r30, r3
/* 80D68148  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D6814C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D68150  40 82 00 1C */	bne lbl_80D6816C
/* 80D68154  28 1E 00 00 */	cmplwi r30, 0
/* 80D68158  41 82 00 08 */	beq lbl_80D68160
/* 80D6815C  4B 2B 0A 09 */	bl __ct__10fopAc_ac_cFv
lbl_80D68160:
/* 80D68160  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D68164  60 00 00 08 */	ori r0, r0, 8
/* 80D68168  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D6816C:
/* 80D6816C  38 7E 05 74 */	addi r3, r30, 0x574
/* 80D68170  3C 80 80 D7 */	lis r4, l_arcName@ha /* 0x80D68208@ha */
/* 80D68174  38 84 82 08 */	addi r4, r4, l_arcName@l /* 0x80D68208@l */
/* 80D68178  80 84 00 00 */	lwz r4, 0(r4)
/* 80D6817C  4B 2C 4D 41 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D68180  7C 7F 1B 78 */	mr r31, r3
/* 80D68184  2C 1F 00 04 */	cmpwi r31, 4
/* 80D68188  40 82 00 30 */	bne lbl_80D681B8
/* 80D6818C  7F C3 F3 78 */	mr r3, r30
/* 80D68190  3C 80 80 D6 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha /* 0x80D67E3C@ha */
/* 80D68194  38 84 7E 3C */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l /* 0x80D67E3C@l */
/* 80D68198  38 A0 40 00 */	li r5, 0x4000
/* 80D6819C  4B 2B 23 15 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D681A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D681A4  40 82 00 0C */	bne lbl_80D681B0
/* 80D681A8  3B E0 00 05 */	li r31, 5
/* 80D681AC  48 00 00 0C */	b lbl_80D681B8
lbl_80D681B0:
/* 80D681B0  7F C3 F3 78 */	mr r3, r30
/* 80D681B4  4B FF FC 85 */	bl create_init__11daWarpBug_cFv
lbl_80D681B8:
/* 80D681B8  7F E3 FB 78 */	mr r3, r31
/* 80D681BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D681C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D681C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D681C8  7C 08 03 A6 */	mtlr r0
/* 80D681CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D681D0  4E 80 00 20 */	blr 
