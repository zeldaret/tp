lbl_80C04A0C:
/* 80C04A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04A10  7C 08 02 A6 */	mflr r0
/* 80C04A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04A18  A0 03 0A 92 */	lhz r0, 0xa92(r3)
/* 80C04A1C  2C 00 00 07 */	cmpwi r0, 7
/* 80C04A20  41 82 00 2C */	beq lbl_80C04A4C
/* 80C04A24  40 80 00 40 */	bge lbl_80C04A64
/* 80C04A28  2C 00 00 06 */	cmpwi r0, 6
/* 80C04A2C  40 80 00 08 */	bge lbl_80C04A34
/* 80C04A30  48 00 00 34 */	b lbl_80C04A64
lbl_80C04A34:
/* 80C04A34  38 80 00 04 */	li r4, 4
/* 80C04A38  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha
/* 80C04A3C  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l
/* 80C04A40  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C04A44  4B FF CD 69 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C04A48  48 00 00 30 */	b lbl_80C04A78
lbl_80C04A4C:
/* 80C04A4C  38 80 00 05 */	li r4, 5
/* 80C04A50  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha
/* 80C04A54  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l
/* 80C04A58  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C04A5C  4B FF CD 51 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C04A60  48 00 00 18 */	b lbl_80C04A78
lbl_80C04A64:
/* 80C04A64  38 80 00 00 */	li r4, 0
/* 80C04A68  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha
/* 80C04A6C  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l
/* 80C04A70  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C04A74  4B FF CD 39 */	bl setFaceMotion__11daObj_GrA_cFif
lbl_80C04A78:
/* 80C04A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04A7C  7C 08 03 A6 */	mtlr r0
/* 80C04A80  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04A84  4E 80 00 20 */	blr 
