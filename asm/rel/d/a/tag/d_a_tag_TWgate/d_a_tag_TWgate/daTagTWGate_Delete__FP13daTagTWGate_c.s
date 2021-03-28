lbl_80D55388:
/* 80D55388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5538C  7C 08 02 A6 */	mflr r0
/* 80D55390  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D55398  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5539C  41 82 00 88 */	beq lbl_80D55424
/* 80D553A0  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80D553A4  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D553A8  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D553AC  3C 80 80 D5 */	lis r4, l_zevParamTbl@ha
/* 80D553B0  38 84 57 B0 */	addi r4, r4, l_zevParamTbl@l
/* 80D553B4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D553B8  4B 2D 7C 50 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D553BC  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80D553C0  2C 00 00 00 */	cmpwi r0, 0
/* 80D553C4  41 82 00 18 */	beq lbl_80D553DC
/* 80D553C8  38 7F 05 74 */	addi r3, r31, 0x574
/* 80D553CC  3C 80 80 D5 */	lis r4, struct_80D55848+0x0@ha
/* 80D553D0  38 84 58 48 */	addi r4, r4, struct_80D55848+0x0@l
/* 80D553D4  38 84 01 0B */	addi r4, r4, 0x10b
/* 80D553D8  4B 2D 7C 30 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80D553DC:
/* 80D553DC  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80D553E0  2C 00 00 00 */	cmpwi r0, 0
/* 80D553E4  41 82 00 28 */	beq lbl_80D5540C
/* 80D553E8  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80D553EC  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80D553F0  28 00 00 00 */	cmplwi r0, 0
/* 80D553F4  3C 80 80 D5 */	lis r4, struct_80D55848+0x0@ha
/* 80D553F8  38 A4 58 48 */	addi r5, r4, struct_80D55848+0x0@l
/* 80D553FC  38 85 01 1F */	addi r4, r5, 0x11f
/* 80D55400  41 82 00 08 */	beq lbl_80D55408
/* 80D55404  38 85 01 15 */	addi r4, r5, 0x115
lbl_80D55408:
/* 80D55408  4B 2D 7C 00 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80D5540C:
/* 80D5540C  38 7F 05 8C */	addi r3, r31, 0x58c
/* 80D55410  38 80 FF FF */	li r4, -1
/* 80D55414  4B 4F 4B 34 */	b __dt__10dMsgFlow_cFv
/* 80D55418  7F E3 FB 78 */	mr r3, r31
/* 80D5541C  38 80 00 00 */	li r4, 0
/* 80D55420  4B 2C 38 6C */	b __dt__10fopAc_ac_cFv
lbl_80D55424:
/* 80D55424  38 60 00 01 */	li r3, 1
/* 80D55428  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5542C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55430  7C 08 03 A6 */	mtlr r0
/* 80D55434  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55438  4E 80 00 20 */	blr 
