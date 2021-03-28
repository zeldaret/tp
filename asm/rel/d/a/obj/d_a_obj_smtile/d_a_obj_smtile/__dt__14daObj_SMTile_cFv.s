lbl_80CDD2AC:
/* 80CDD2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDD2B0  7C 08 02 A6 */	mflr r0
/* 80CDD2B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD2B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDD2BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDD2C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CDD2C4  7C 9F 23 78 */	mr r31, r4
/* 80CDD2C8  41 82 00 C8 */	beq lbl_80CDD390
/* 80CDD2CC  3C 60 80 CE */	lis r3, __vt__14daObj_SMTile_c@ha
/* 80CDD2D0  38 03 E4 54 */	addi r0, r3, __vt__14daObj_SMTile_c@l
/* 80CDD2D4  90 1E 0B 2C */	stw r0, 0xb2c(r30)
/* 80CDD2D8  38 7E 05 84 */	addi r3, r30, 0x584
/* 80CDD2DC  3C 80 80 CE */	lis r4, l_bmdData@ha
/* 80CDD2E0  38 84 E3 94 */	addi r4, r4, l_bmdData@l
/* 80CDD2E4  88 1E 0B 28 */	lbz r0, 0xb28(r30)
/* 80CDD2E8  54 00 18 38 */	slwi r0, r0, 3
/* 80CDD2EC  7C 84 02 14 */	add r4, r4, r0
/* 80CDD2F0  80 04 00 04 */	lwz r0, 4(r4)
/* 80CDD2F4  54 00 10 3A */	slwi r0, r0, 2
/* 80CDD2F8  3C 80 80 CE */	lis r4, l_resNameList@ha
/* 80CDD2FC  38 84 E3 9C */	addi r4, r4, l_resNameList@l
/* 80CDD300  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CDD304  4B 34 FD 04 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CDD308  38 7E 07 88 */	addi r3, r30, 0x788
/* 80CDD30C  3C 80 80 CE */	lis r4, __dt__4cXyzFv@ha
/* 80CDD310  38 84 D3 AC */	addi r4, r4, __dt__4cXyzFv@l
/* 80CDD314  38 A0 00 0C */	li r5, 0xc
/* 80CDD318  38 C0 00 2A */	li r6, 0x2a
/* 80CDD31C  4B 68 49 CC */	b __destroy_arr
/* 80CDD320  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80CDD324  3C 80 80 CE */	lis r4, __dt__4cXyzFv@ha
/* 80CDD328  38 84 D3 AC */	addi r4, r4, __dt__4cXyzFv@l
/* 80CDD32C  38 A0 00 0C */	li r5, 0xc
/* 80CDD330  38 C0 00 15 */	li r6, 0x15
/* 80CDD334  4B 68 49 B4 */	b __destroy_arr
/* 80CDD338  38 7E 05 90 */	addi r3, r30, 0x590
/* 80CDD33C  3C 80 80 CE */	lis r4, __dt__4cXyzFv@ha
/* 80CDD340  38 84 D3 AC */	addi r4, r4, __dt__4cXyzFv@l
/* 80CDD344  38 A0 00 0C */	li r5, 0xc
/* 80CDD348  38 C0 00 15 */	li r6, 0x15
/* 80CDD34C  4B 68 49 9C */	b __destroy_arr
/* 80CDD350  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80CDD354  41 82 00 20 */	beq lbl_80CDD374
/* 80CDD358  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80CDD35C  41 82 00 18 */	beq lbl_80CDD374
/* 80CDD360  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80CDD364  41 82 00 10 */	beq lbl_80CDD374
/* 80CDD368  3C 60 80 CE */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CDD36C  38 03 E4 48 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CDD370  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80CDD374:
/* 80CDD374  7F C3 F3 78 */	mr r3, r30
/* 80CDD378  38 80 00 00 */	li r4, 0
/* 80CDD37C  4B 33 B9 10 */	b __dt__10fopAc_ac_cFv
/* 80CDD380  7F E0 07 35 */	extsh. r0, r31
/* 80CDD384  40 81 00 0C */	ble lbl_80CDD390
/* 80CDD388  7F C3 F3 78 */	mr r3, r30
/* 80CDD38C  4B 5F 19 B0 */	b __dl__FPv
lbl_80CDD390:
/* 80CDD390  7F C3 F3 78 */	mr r3, r30
/* 80CDD394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDD398  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDD39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDD3A0  7C 08 03 A6 */	mtlr r0
/* 80CDD3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDD3A8  4E 80 00 20 */	blr 
