lbl_80AA4128:
/* 80AA4128  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA412C  7C 08 02 A6 */	mflr r0
/* 80AA4130  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA4134  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AA4138  7C 7F 1B 78 */	mr r31, r3
/* 80AA413C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AA4140  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80AA4144  41 82 00 08 */	beq lbl_80AA414C
/* 80AA4148  4B 57 5B 35 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80AA414C:
/* 80AA414C  7F E3 FB 78 */	mr r3, r31
/* 80AA4150  4B 6B 56 C9 */	bl checkFearSituation__10daNpcCd2_cFv
/* 80AA4154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA4158  41 82 00 64 */	beq lbl_80AA41BC
/* 80AA415C  80 1F 0B 00 */	lwz r0, 0xb00(r31)
/* 80AA4160  2C 00 00 02 */	cmpwi r0, 2
/* 80AA4164  40 82 00 28 */	bne lbl_80AA418C
/* 80AA4168  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 80AA416C  2C 00 00 00 */	cmpwi r0, 0
/* 80AA4170  41 82 00 0C */	beq lbl_80AA417C
/* 80AA4174  2C 00 00 01 */	cmpwi r0, 1
/* 80AA4178  40 82 00 14 */	bne lbl_80AA418C
lbl_80AA417C:
/* 80AA417C  7F E3 FB 78 */	mr r3, r31
/* 80AA4180  38 80 00 03 */	li r4, 3
/* 80AA4184  4B FF F0 69 */	bl setAction__13daNpcPasser_cFQ213daNpcPasser_c6Mode_e
/* 80AA4188  48 00 00 10 */	b lbl_80AA4198
lbl_80AA418C:
/* 80AA418C  7F E3 FB 78 */	mr r3, r31
/* 80AA4190  38 80 00 01 */	li r4, 1
/* 80AA4194  4B FF F0 59 */	bl setAction__13daNpcPasser_cFQ213daNpcPasser_c6Mode_e
lbl_80AA4198:
/* 80AA4198  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 80AA419C  90 01 00 08 */	stw r0, 8(r1)
/* 80AA41A0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80AA41A4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80AA41A8  38 81 00 08 */	addi r4, r1, 8
/* 80AA41AC  4B 57 56 4D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80AA41B0  28 03 00 00 */	cmplwi r3, 0
/* 80AA41B4  41 82 00 08 */	beq lbl_80AA41BC
/* 80AA41B8  4B 57 5A C5 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80AA41BC:
/* 80AA41BC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80AA41C0  A8 9F 0B 20 */	lha r4, 0xb20(r31)
/* 80AA41C4  38 A0 00 03 */	li r5, 3
/* 80AA41C8  38 C0 06 00 */	li r6, 0x600
/* 80AA41CC  4B 7C C4 3D */	bl cLib_addCalcAngleS2__FPssss
/* 80AA41D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AA41D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA41D8  7C 08 03 A6 */	mtlr r0
/* 80AA41DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA41E0  4E 80 00 20 */	blr 
