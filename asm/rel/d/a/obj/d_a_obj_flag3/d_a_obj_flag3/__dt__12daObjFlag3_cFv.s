lbl_80BEF700:
/* 80BEF700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEF704  7C 08 02 A6 */	mflr r0
/* 80BEF708  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEF70C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEF710  93 C1 00 08 */	stw r30, 8(r1)
/* 80BEF714  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BEF718  7C 9F 23 78 */	mr r31, r4
/* 80BEF71C  41 82 00 58 */	beq lbl_80BEF774
/* 80BEF720  88 1E 13 2C */	lbz r0, 0x132c(r30)
/* 80BEF724  28 00 00 00 */	cmplwi r0, 0
/* 80BEF728  41 82 00 10 */	beq lbl_80BEF738
/* 80BEF72C  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80BEF730  38 9E 13 2D */	addi r4, r30, 0x132d
/* 80BEF734  4B 43 D8 D4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80BEF738:
/* 80BEF738  7F C3 F3 78 */	mr r3, r30
/* 80BEF73C  4B 44 21 34 */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80BEF740  7C 64 1B 78 */	mr r4, r3
/* 80BEF744  38 7E 05 74 */	addi r3, r30, 0x574
/* 80BEF748  4B 43 D8 C0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BEF74C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80BEF750  38 80 FF FF */	li r4, -1
/* 80BEF754  48 00 00 3D */	bl __dt__12FlagCloth2_cFv
/* 80BEF758  7F C3 F3 78 */	mr r3, r30
/* 80BEF75C  38 80 00 00 */	li r4, 0
/* 80BEF760  4B 42 95 2C */	b __dt__10fopAc_ac_cFv
/* 80BEF764  7F E0 07 35 */	extsh. r0, r31
/* 80BEF768  40 81 00 0C */	ble lbl_80BEF774
/* 80BEF76C  7F C3 F3 78 */	mr r3, r30
/* 80BEF770  4B 6D F5 CC */	b __dl__FPv
lbl_80BEF774:
/* 80BEF774  7F C3 F3 78 */	mr r3, r30
/* 80BEF778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEF77C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BEF780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEF784  7C 08 03 A6 */	mtlr r0
/* 80BEF788  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEF78C  4E 80 00 20 */	blr 
