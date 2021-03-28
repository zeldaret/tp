lbl_8067F6D4:
/* 8067F6D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8067F6D8  7C 08 02 A6 */	mflr r0
/* 8067F6DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8067F6E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8067F6E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8067F6E8  7C 7E 1B 78 */	mr r30, r3
/* 8067F6EC  3C 60 80 68 */	lis r3, lit_3947@ha
/* 8067F6F0  3B E3 23 BC */	addi r31, r3, lit_3947@l
/* 8067F6F4  A8 1E 06 74 */	lha r0, 0x674(r30)
/* 8067F6F8  2C 00 00 01 */	cmpwi r0, 1
/* 8067F6FC  41 82 00 44 */	beq lbl_8067F740
/* 8067F700  40 80 00 88 */	bge lbl_8067F788
/* 8067F704  2C 00 00 00 */	cmpwi r0, 0
/* 8067F708  40 80 00 08 */	bge lbl_8067F710
/* 8067F70C  48 00 00 7C */	b lbl_8067F788
lbl_8067F710:
/* 8067F710  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8067F714  4B BE 82 40 */	b cM_rndF__Ff
/* 8067F718  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8067F71C  EC 40 08 2A */	fadds f2, f0, f1
/* 8067F720  7F C3 F3 78 */	mr r3, r30
/* 8067F724  38 80 00 0A */	li r4, 0xa
/* 8067F728  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8067F72C  38 A0 00 02 */	li r5, 2
/* 8067F730  4B FF F6 61 */	bl anm_init__FP10e_ba_classifUcf
/* 8067F734  38 00 00 01 */	li r0, 1
/* 8067F738  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 8067F73C  48 00 00 4C */	b lbl_8067F788
lbl_8067F740:
/* 8067F740  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 8067F744  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 8067F748  40 82 00 40 */	bne lbl_8067F788
/* 8067F74C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067F750  4B BE 82 04 */	b cM_rndF__Ff
/* 8067F754  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8067F758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067F75C  40 80 00 2C */	bge lbl_8067F788
/* 8067F760  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B3@ha */
/* 8067F764  38 03 00 B3 */	addi r0, r3, 0x00B3 /* 0x000700B3@l */
/* 8067F768  90 01 00 08 */	stw r0, 8(r1)
/* 8067F76C  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 8067F770  38 81 00 08 */	addi r4, r1, 8
/* 8067F774  38 A0 FF FF */	li r5, -1
/* 8067F778  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 8067F77C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8067F780  7D 89 03 A6 */	mtctr r12
/* 8067F784  4E 80 04 21 */	bctrl 
lbl_8067F788:
/* 8067F788  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 8067F78C  FC 00 02 10 */	fabs f0, f0
/* 8067F790  FC 60 00 18 */	frsp f3, f0
/* 8067F794  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8067F798  C0 3E 04 A8 */	lfs f1, 0x4a8(r30)
/* 8067F79C  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 8067F7A0  4B BF 02 9C */	b cLib_addCalc2__FPffff
/* 8067F7A4  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 8067F7A8  FC 00 02 10 */	fabs f0, f0
/* 8067F7AC  FC 60 00 18 */	frsp f3, f0
/* 8067F7B0  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8067F7B4  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 8067F7B8  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 8067F7BC  4B BF 02 80 */	b cLib_addCalc2__FPffff
/* 8067F7C0  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 8067F7C4  FC 00 02 10 */	fabs f0, f0
/* 8067F7C8  FC 60 00 18 */	frsp f3, f0
/* 8067F7CC  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8067F7D0  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 8067F7D4  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 8067F7D8  4B BF 02 64 */	b cLib_addCalc2__FPffff
/* 8067F7DC  7F C3 F3 78 */	mr r3, r30
/* 8067F7E0  C0 3E 06 8C */	lfs f1, 0x68c(r30)
/* 8067F7E4  38 80 00 01 */	li r4, 1
/* 8067F7E8  4B FF F8 11 */	bl pl_check__FP10e_ba_classfs
/* 8067F7EC  2C 03 00 00 */	cmpwi r3, 0
/* 8067F7F0  41 82 00 14 */	beq lbl_8067F804
/* 8067F7F4  38 00 00 01 */	li r0, 1
/* 8067F7F8  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8067F7FC  38 00 00 00 */	li r0, 0
/* 8067F800  B0 1E 06 74 */	sth r0, 0x674(r30)
lbl_8067F804:
/* 8067F804  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8067F808  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8067F80C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067F810  7C 08 03 A6 */	mtlr r0
/* 8067F814  38 21 00 20 */	addi r1, r1, 0x20
/* 8067F818  4E 80 00 20 */	blr 
