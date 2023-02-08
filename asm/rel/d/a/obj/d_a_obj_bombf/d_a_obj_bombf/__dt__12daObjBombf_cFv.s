lbl_80BBABBC:
/* 80BBABBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBABC0  7C 08 02 A6 */	mflr r0
/* 80BBABC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBABC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBABCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BBABD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BBABD4  7C 9F 23 78 */	mr r31, r4
/* 80BBABD8  41 82 00 30 */	beq lbl_80BBAC08
/* 80BBABDC  38 7E 05 68 */	addi r3, r30, 0x568
/* 80BBABE0  3C 80 80 BC */	lis r4, l_arcName@ha /* 0x80BBAE84@ha */
/* 80BBABE4  38 84 AE 84 */	addi r4, r4, l_arcName@l /* 0x80BBAE84@l */
/* 80BBABE8  4B 47 24 21 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BBABEC  7F C3 F3 78 */	mr r3, r30
/* 80BBABF0  38 80 00 00 */	li r4, 0
/* 80BBABF4  4B 45 E0 99 */	bl __dt__10fopAc_ac_cFv
/* 80BBABF8  7F E0 07 35 */	extsh. r0, r31
/* 80BBABFC  40 81 00 0C */	ble lbl_80BBAC08
/* 80BBAC00  7F C3 F3 78 */	mr r3, r30
/* 80BBAC04  4B 71 41 39 */	bl __dl__FPv
lbl_80BBAC08:
/* 80BBAC08  7F C3 F3 78 */	mr r3, r30
/* 80BBAC0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBAC10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BBAC14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBAC18  7C 08 03 A6 */	mtlr r0
/* 80BBAC1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBAC20  4E 80 00 20 */	blr 
