lbl_80D23A0C:
/* 80D23A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D23A10  7C 08 02 A6 */	mflr r0
/* 80D23A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D23A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D23A1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D23A20  7C 7E 1B 78 */	mr r30, r3
/* 80D23A24  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80D23A28  3C 80 80 D2 */	lis r4, l_arcName@ha
/* 80D23A2C  38 84 3E AC */	addi r4, r4, l_arcName@l
/* 80D23A30  80 84 00 00 */	lwz r4, 0(r4)
/* 80D23A34  4B 30 95 D4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D23A38  88 1E 06 00 */	lbz r0, 0x600(r30)
/* 80D23A3C  28 00 00 00 */	cmplwi r0, 0
/* 80D23A40  41 82 00 18 */	beq lbl_80D23A58
/* 80D23A44  28 00 00 01 */	cmplwi r0, 1
/* 80D23A48  40 82 00 24 */	bne lbl_80D23A6C
/* 80D23A4C  88 1E 29 26 */	lbz r0, 0x2926(r30)
/* 80D23A50  28 00 00 00 */	cmplwi r0, 0
/* 80D23A54  41 82 00 18 */	beq lbl_80D23A6C
lbl_80D23A58:
/* 80D23A58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D23A5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D23A60  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80D23A64  38 80 00 1F */	li r4, 0x1f
/* 80D23A68  4B 34 C3 2C */	b StopQuake__12dVibration_cFi
lbl_80D23A6C:
/* 80D23A6C  3B E0 00 00 */	li r31, 0
lbl_80D23A70:
/* 80D23A70  7F C3 F3 78 */	mr r3, r30
/* 80D23A74  7F E4 FB 78 */	mr r4, r31
/* 80D23A78  4B FF F5 55 */	bl endFallEffect__15daObjVolcBall_cFi
/* 80D23A7C  3B FF 00 01 */	addi r31, r31, 1
/* 80D23A80  2C 1F 00 09 */	cmpwi r31, 9
/* 80D23A84  41 80 FF EC */	blt lbl_80D23A70
/* 80D23A88  38 60 00 01 */	li r3, 1
/* 80D23A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D23A90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D23A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D23A98  7C 08 03 A6 */	mtlr r0
/* 80D23A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D23AA0  4E 80 00 20 */	blr 
