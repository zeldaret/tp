lbl_80C0F860:
/* 80C0F860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C0F864  7C 08 02 A6 */	mflr r0
/* 80C0F868  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0F86C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C0F870  93 C1 00 08 */	stw r30, 8(r1)
/* 80C0F874  7C 7F 1B 78 */	mr r31, r3
/* 80C0F878  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C0F87C  2C 00 00 01 */	cmpwi r0, 1
/* 80C0F880  41 82 00 24 */	beq lbl_80C0F8A4
/* 80C0F884  40 80 01 C8 */	bge lbl_80C0FA4C
/* 80C0F888  2C 00 00 00 */	cmpwi r0, 0
/* 80C0F88C  40 80 00 0C */	bge lbl_80C0F898
/* 80C0F890  48 00 01 BC */	b lbl_80C0FA4C
/* 80C0F894  48 00 01 B8 */	b lbl_80C0FA4C
lbl_80C0F898:
/* 80C0F898  38 00 00 00 */	li r0, 0
/* 80C0F89C  90 1F 1F CC */	stw r0, 0x1fcc(r31)
/* 80C0F8A0  48 00 01 AC */	b lbl_80C0FA4C
lbl_80C0F8A4:
/* 80C0F8A4  4B FF 15 6D */	bl getJumpType__11daObj_GrA_cFv
/* 80C0F8A8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80C0F8AC  28 00 00 01 */	cmplwi r0, 1
/* 80C0F8B0  40 82 00 B0 */	bne lbl_80C0F960
/* 80C0F8B4  7F E3 FB 78 */	mr r3, r31
/* 80C0F8B8  38 80 00 00 */	li r4, 0
/* 80C0F8BC  4B FF 32 19 */	bl setLookMode__11daObj_GrA_cFi
/* 80C0F8C0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80C0F8C4  A8 1F 09 1C */	lha r0, 0x91c(r31)
/* 80C0F8C8  7C 04 00 00 */	cmpw r4, r0
/* 80C0F8CC  41 82 00 58 */	beq lbl_80C0F924
/* 80C0F8D0  7F E3 FB 78 */	mr r3, r31
/* 80C0F8D4  38 A0 00 00 */	li r5, 0
/* 80C0F8D8  38 C0 00 13 */	li r6, 0x13
/* 80C0F8DC  38 E0 00 14 */	li r7, 0x14
/* 80C0F8E0  4B FF F8 9D */	bl turn_step__11daObj_GrA_cFsiii
/* 80C0F8E4  2C 03 00 00 */	cmpwi r3, 0
/* 80C0F8E8  41 82 01 64 */	beq lbl_80C0FA4C
/* 80C0F8EC  38 00 00 00 */	li r0, 0
/* 80C0F8F0  90 1F 1F CC */	stw r0, 0x1fcc(r31)
/* 80C0F8F4  7F E3 FB 78 */	mr r3, r31
/* 80C0F8F8  38 80 00 15 */	li r4, 0x15
/* 80C0F8FC  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha
/* 80C0F900  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l
/* 80C0F904  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0F908  4B FF 1E 85 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0F90C  7F E3 FB 78 */	mr r3, r31
/* 80C0F910  38 80 00 00 */	li r4, 0
/* 80C0F914  3C A0 80 C1 */	lis r5, lit_4618@ha
/* 80C0F918  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)
/* 80C0F91C  4B FF 1E 91 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0F920  48 00 01 2C */	b lbl_80C0FA4C
lbl_80C0F924:
/* 80C0F924  A0 1F 0A 90 */	lhz r0, 0xa90(r31)
/* 80C0F928  28 00 00 15 */	cmplwi r0, 0x15
/* 80C0F92C  41 82 01 20 */	beq lbl_80C0FA4C
/* 80C0F930  7F E3 FB 78 */	mr r3, r31
/* 80C0F934  38 80 00 15 */	li r4, 0x15
/* 80C0F938  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha
/* 80C0F93C  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l
/* 80C0F940  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0F944  4B FF 1E 49 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0F948  7F E3 FB 78 */	mr r3, r31
/* 80C0F94C  38 80 00 00 */	li r4, 0
/* 80C0F950  3C A0 80 C1 */	lis r5, lit_4618@ha
/* 80C0F954  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)
/* 80C0F958  4B FF 1E 55 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0F95C  48 00 00 F0 */	b lbl_80C0FA4C
lbl_80C0F960:
/* 80C0F960  38 7F 14 F8 */	addi r3, r31, 0x14f8
/* 80C0F964  4B 53 DE D4 */	b getActor__18daBaseNpc_acMngr_cFv
/* 80C0F968  30 03 FF FF */	addic r0, r3, -1
/* 80C0F96C  7C 00 19 10 */	subfe r0, r0, r3
/* 80C0F970  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80C0F974  7F E3 FB 78 */	mr r3, r31
/* 80C0F978  7F C4 F3 78 */	mr r4, r30
/* 80C0F97C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C0F980  4B FF F9 B1 */	bl chkFindPlayer2__11daObj_GrA_cFis
/* 80C0F984  2C 03 00 00 */	cmpwi r3, 0
/* 80C0F988  41 82 00 24 */	beq lbl_80C0F9AC
/* 80C0F98C  2C 1E 00 00 */	cmpwi r30, 0
/* 80C0F990  40 82 00 30 */	bne lbl_80C0F9C0
/* 80C0F994  38 7F 14 F8 */	addi r3, r31, 0x14f8
/* 80C0F998  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C0F99C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C0F9A0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C0F9A4  4B 53 DE 78 */	b entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
/* 80C0F9A8  48 00 00 18 */	b lbl_80C0F9C0
lbl_80C0F9AC:
/* 80C0F9AC  2C 1E 00 00 */	cmpwi r30, 0
/* 80C0F9B0  41 82 00 10 */	beq lbl_80C0F9C0
/* 80C0F9B4  38 7F 14 F8 */	addi r3, r31, 0x14f8
/* 80C0F9B8  38 80 00 00 */	li r4, 0
/* 80C0F9BC  4B 53 DE 60 */	b entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
lbl_80C0F9C0:
/* 80C0F9C0  38 7F 14 F8 */	addi r3, r31, 0x14f8
/* 80C0F9C4  4B 53 DE 74 */	b getActor__18daBaseNpc_acMngr_cFv
/* 80C0F9C8  28 03 00 00 */	cmplwi r3, 0
/* 80C0F9CC  41 82 00 14 */	beq lbl_80C0F9E0
/* 80C0F9D0  7F E3 FB 78 */	mr r3, r31
/* 80C0F9D4  38 80 00 01 */	li r4, 1
/* 80C0F9D8  4B FF 30 FD */	bl setLookMode__11daObj_GrA_cFi
/* 80C0F9DC  48 00 00 70 */	b lbl_80C0FA4C
lbl_80C0F9E0:
/* 80C0F9E0  7F E3 FB 78 */	mr r3, r31
/* 80C0F9E4  38 80 00 00 */	li r4, 0
/* 80C0F9E8  4B FF 30 ED */	bl setLookMode__11daObj_GrA_cFi
/* 80C0F9EC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80C0F9F0  A8 1F 09 1C */	lha r0, 0x91c(r31)
/* 80C0F9F4  7C 04 00 00 */	cmpw r4, r0
/* 80C0F9F8  41 82 00 54 */	beq lbl_80C0FA4C
/* 80C0F9FC  7F E3 FB 78 */	mr r3, r31
/* 80C0FA00  38 A0 00 00 */	li r5, 0
/* 80C0FA04  38 C0 00 13 */	li r6, 0x13
/* 80C0FA08  38 E0 00 14 */	li r7, 0x14
/* 80C0FA0C  4B FF F7 71 */	bl turn_step__11daObj_GrA_cFsiii
/* 80C0FA10  2C 03 00 00 */	cmpwi r3, 0
/* 80C0FA14  41 82 00 38 */	beq lbl_80C0FA4C
/* 80C0FA18  38 00 00 00 */	li r0, 0
/* 80C0FA1C  90 1F 1F CC */	stw r0, 0x1fcc(r31)
/* 80C0FA20  7F E3 FB 78 */	mr r3, r31
/* 80C0FA24  38 80 00 00 */	li r4, 0
/* 80C0FA28  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha
/* 80C0FA2C  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l
/* 80C0FA30  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0FA34  4B FF 1D 59 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0FA38  7F E3 FB 78 */	mr r3, r31
/* 80C0FA3C  38 80 00 00 */	li r4, 0
/* 80C0FA40  3C A0 80 C1 */	lis r5, lit_4618@ha
/* 80C0FA44  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)
/* 80C0FA48  4B FF 1D 65 */	bl setFaceMotion__11daObj_GrA_cFif
lbl_80C0FA4C:
/* 80C0FA4C  38 60 00 01 */	li r3, 1
/* 80C0FA50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C0FA54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C0FA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C0FA5C  7C 08 03 A6 */	mtlr r0
/* 80C0FA60  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0FA64  4E 80 00 20 */	blr 
