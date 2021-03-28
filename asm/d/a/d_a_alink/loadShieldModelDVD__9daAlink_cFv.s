lbl_80140274:
/* 80140274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140278  7C 08 02 A6 */	mflr r0
/* 8014027C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140284  7C 7F 1B 78 */	mr r31, r3
/* 80140288  88 63 2F D1 */	lbz r3, 0x2fd1(r3)
/* 8014028C  28 03 00 00 */	cmplwi r3, 0
/* 80140290  41 82 00 88 */	beq lbl_80140318
/* 80140294  38 03 FF FF */	addi r0, r3, -1
/* 80140298  98 1F 2F D1 */	stb r0, 0x2fd1(r31)
/* 8014029C  88 1F 2F D1 */	lbz r0, 0x2fd1(r31)
/* 801402A0  28 00 00 02 */	cmplwi r0, 2
/* 801402A4  40 82 00 34 */	bne lbl_801402D8
/* 801402A8  38 00 00 00 */	li r0, 0
/* 801402AC  90 1F 06 78 */	stw r0, 0x678(r31)
/* 801402B0  38 7F 06 3C */	addi r3, r31, 0x63c
/* 801402B4  80 9F 06 44 */	lwz r4, 0x644(r31)
/* 801402B8  4B EE CD 51 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 801402BC  38 7F 06 3C */	addi r3, r31, 0x63c
/* 801402C0  48 12 63 65 */	bl cPhs_Reset__FP30request_of_phase_process_class
/* 801402C4  80 7F 06 48 */	lwz r3, 0x648(r31)
/* 801402C8  48 18 E3 05 */	bl freeAll__7JKRHeapFv
/* 801402CC  7F E3 FB 78 */	mr r3, r31
/* 801402D0  4B FF FC C1 */	bl setShieldArcName__9daAlink_cFv
/* 801402D4  48 00 00 4C */	b lbl_80140320
lbl_801402D8:
/* 801402D8  28 00 00 01 */	cmplwi r0, 1
/* 801402DC  40 82 00 44 */	bne lbl_80140320
/* 801402E0  38 7F 06 3C */	addi r3, r31, 0x63c
/* 801402E4  80 9F 06 44 */	lwz r4, 0x644(r31)
/* 801402E8  80 BF 06 48 */	lwz r5, 0x648(r31)
/* 801402EC  4B EE CC D5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCcP7JKRHeap
/* 801402F0  2C 03 00 04 */	cmpwi r3, 4
/* 801402F4  40 82 00 18 */	bne lbl_8014030C
/* 801402F8  38 00 00 00 */	li r0, 0
/* 801402FC  98 1F 2F D1 */	stb r0, 0x2fd1(r31)
/* 80140300  7F E3 FB 78 */	mr r3, r31
/* 80140304  4B FF FE F5 */	bl setShieldModel__9daAlink_cFv
/* 80140308  48 00 00 18 */	b lbl_80140320
lbl_8014030C:
/* 8014030C  38 00 00 02 */	li r0, 2
/* 80140310  98 1F 2F D1 */	stb r0, 0x2fd1(r31)
/* 80140314  48 00 00 0C */	b lbl_80140320
lbl_80140318:
/* 80140318  38 60 00 01 */	li r3, 1
/* 8014031C  48 00 00 08 */	b lbl_80140324
lbl_80140320:
/* 80140320  38 60 00 00 */	li r3, 0
lbl_80140324:
/* 80140324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80140328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014032C  7C 08 03 A6 */	mtlr r0
/* 80140330  38 21 00 10 */	addi r1, r1, 0x10
/* 80140334  4E 80 00 20 */	blr 
