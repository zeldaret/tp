lbl_805849CC:
/* 805849CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805849D0  7C 08 02 A6 */	mflr r0
/* 805849D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805849D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805849DC  7C 7F 1B 78 */	mr r31, r3
/* 805849E0  38 7F 06 70 */	addi r3, r31, 0x670
/* 805849E4  3C 80 80 58 */	lis r4, lit_4015@ha
/* 805849E8  C0 24 56 2C */	lfs f1, lit_4015@l(r4)
/* 805849EC  4B AF 27 28 */	b SetGroundUpY__9dBgS_AcchFf
/* 805849F0  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 805849F4  2C 00 00 02 */	cmpwi r0, 2
/* 805849F8  41 82 00 7C */	beq lbl_80584A74
/* 805849FC  40 80 00 14 */	bge lbl_80584A10
/* 80584A00  2C 00 00 00 */	cmpwi r0, 0
/* 80584A04  41 82 00 18 */	beq lbl_80584A1C
/* 80584A08  40 80 00 20 */	bge lbl_80584A28
/* 80584A0C  48 00 00 7C */	b lbl_80584A88
lbl_80584A10:
/* 80584A10  2C 00 00 04 */	cmpwi r0, 4
/* 80584A14  40 80 00 74 */	bge lbl_80584A88
/* 80584A18  48 00 00 68 */	b lbl_80584A80
lbl_80584A1C:
/* 80584A1C  7F E3 FB 78 */	mr r3, r31
/* 80584A20  4B FF E9 45 */	bl executeNormal__15daObj_Kanban2_cFv
/* 80584A24  48 00 00 64 */	b lbl_80584A88
lbl_80584A28:
/* 80584A28  7F E3 FB 78 */	mr r3, r31
/* 80584A2C  4B FF F0 01 */	bl executePart__15daObj_Kanban2_cFv
/* 80584A30  A8 7F 05 E8 */	lha r3, 0x5e8(r31)
/* 80584A34  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80584A38  7C 03 00 50 */	subf r0, r3, r0
/* 80584A3C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80584A40  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80584A44  A8 1F 05 EA */	lha r0, 0x5ea(r31)
/* 80584A48  7C 03 02 14 */	add r0, r3, r0
/* 80584A4C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80584A50  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80584A54  38 80 00 00 */	li r4, 0
/* 80584A58  38 A0 01 00 */	li r5, 0x100
/* 80584A5C  4B CE C1 34 */	b cLib_chaseAngleS__FPsss
/* 80584A60  38 7F 05 EA */	addi r3, r31, 0x5ea
/* 80584A64  38 80 00 00 */	li r4, 0
/* 80584A68  38 A0 01 00 */	li r5, 0x100
/* 80584A6C  4B CE C1 24 */	b cLib_chaseAngleS__FPsss
/* 80584A70  48 00 00 18 */	b lbl_80584A88
lbl_80584A74:
/* 80584A74  7F E3 FB 78 */	mr r3, r31
/* 80584A78  4B FF F9 05 */	bl executeFloat__15daObj_Kanban2_cFv
/* 80584A7C  48 00 00 0C */	b lbl_80584A88
lbl_80584A80:
/* 80584A80  7F E3 FB 78 */	mr r3, r31
/* 80584A84  4B FF FE 01 */	bl executeCarry__15daObj_Kanban2_cFv
lbl_80584A88:
/* 80584A88  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80584A8C  2C 00 00 00 */	cmpwi r0, 0
/* 80584A90  40 82 00 14 */	bne lbl_80584AA4
/* 80584A94  7F E3 FB 78 */	mr r3, r31
/* 80584A98  38 80 00 00 */	li r4, 0
/* 80584A9C  4B A9 5C 30 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80584AA0  48 00 00 24 */	b lbl_80584AC4
lbl_80584AA4:
/* 80584AA4  7F E3 FB 78 */	mr r3, r31
/* 80584AA8  38 9F 08 48 */	addi r4, r31, 0x848
/* 80584AAC  4B A9 5C 20 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80584AB0  38 7F 06 70 */	addi r3, r31, 0x670
/* 80584AB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80584AB8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80584ABC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80584AC0  4B AF 1F EC */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_80584AC4:
/* 80584AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80584AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80584ACC  7C 08 03 A6 */	mtlr r0
/* 80584AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80584AD4  4E 80 00 20 */	blr 
