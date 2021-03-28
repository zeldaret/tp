lbl_80A49848:
/* 80A49848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A4984C  7C 08 02 A6 */	mflr r0
/* 80A49850  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A49854  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A49858  7C 7F 1B 78 */	mr r31, r3
/* 80A4985C  4B 5C F4 84 */	b fopAc_IsActor__FPv
/* 80A49860  2C 03 00 00 */	cmpwi r3, 0
/* 80A49864  41 82 00 38 */	beq lbl_80A4989C
/* 80A49868  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A4986C  2C 00 00 60 */	cmpwi r0, 0x60
/* 80A49870  40 82 00 2C */	bne lbl_80A4989C
/* 80A49874  3C 60 80 A6 */	lis r3, lit_4318@ha
/* 80A49878  C0 23 DF 3C */	lfs f1, lit_4318@l(r3)
/* 80A4987C  4B 81 E0 D8 */	b cM_rndF__Ff
/* 80A49880  3C 60 80 A6 */	lis r3, lit_4317@ha
/* 80A49884  C0 03 DF 38 */	lfs f0, lit_4317@l(r3)
/* 80A49888  EC 00 08 2A */	fadds f0, f0, f1
/* 80A4988C  FC 00 00 1E */	fctiwz f0, f0
/* 80A49890  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A49894  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A49898  B0 1F 09 4C */	sth r0, 0x94c(r31)
lbl_80A4989C:
/* 80A4989C  38 60 00 00 */	li r3, 0
/* 80A498A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A498A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A498A8  7C 08 03 A6 */	mtlr r0
/* 80A498AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A498B0  4E 80 00 20 */	blr 
