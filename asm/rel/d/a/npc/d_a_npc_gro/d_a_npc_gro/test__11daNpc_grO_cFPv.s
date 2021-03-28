lbl_809DE4EC:
/* 809DE4EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DE4F0  7C 08 02 A6 */	mflr r0
/* 809DE4F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DE4F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DE4FC  7C 7F 1B 78 */	mr r31, r3
/* 809DE500  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809DE504  2C 00 00 02 */	cmpwi r0, 2
/* 809DE508  41 82 00 38 */	beq lbl_809DE540
/* 809DE50C  40 80 00 AC */	bge lbl_809DE5B8
/* 809DE510  2C 00 00 00 */	cmpwi r0, 0
/* 809DE514  41 82 00 0C */	beq lbl_809DE520
/* 809DE518  48 00 00 A0 */	b lbl_809DE5B8
/* 809DE51C  48 00 00 9C */	b lbl_809DE5B8
lbl_809DE520:
/* 809DE520  3C 60 80 9E */	lis r3, lit_4553@ha
/* 809DE524  C0 03 F0 0C */	lfs f0, lit_4553@l(r3)
/* 809DE528  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809DE52C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809DE530  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809DE534  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809DE538  38 00 00 02 */	li r0, 2
/* 809DE53C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809DE540:
/* 809DE540  3C 60 80 9E */	lis r3, m__17daNpc_grO_Param_c@ha
/* 809DE544  38 A3 EF 7C */	addi r5, r3, m__17daNpc_grO_Param_c@l
/* 809DE548  A8 85 00 64 */	lha r4, 0x64(r5)
/* 809DE54C  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 809DE550  7C 04 00 00 */	cmpw r4, r0
/* 809DE554  41 82 00 1C */	beq lbl_809DE570
/* 809DE558  7F E3 FB 78 */	mr r3, r31
/* 809DE55C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809DE560  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809DE564  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809DE568  7D 89 03 A6 */	mtctr r12
/* 809DE56C  4E 80 04 21 */	bctrl 
lbl_809DE570:
/* 809DE570  7F E3 FB 78 */	mr r3, r31
/* 809DE574  3C 80 80 9E */	lis r4, m__17daNpc_grO_Param_c@ha
/* 809DE578  38 A4 EF 7C */	addi r5, r4, m__17daNpc_grO_Param_c@l
/* 809DE57C  A8 85 00 66 */	lha r4, 0x66(r5)
/* 809DE580  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809DE584  38 A0 00 00 */	li r5, 0
/* 809DE588  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809DE58C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809DE590  7D 89 03 A6 */	mtctr r12
/* 809DE594  4E 80 04 21 */	bctrl 
/* 809DE598  7F E3 FB 78 */	mr r3, r31
/* 809DE59C  3C 80 80 9E */	lis r4, m__17daNpc_grO_Param_c@ha
/* 809DE5A0  38 84 EF 7C */	addi r4, r4, m__17daNpc_grO_Param_c@l
/* 809DE5A4  A8 84 00 68 */	lha r4, 0x68(r4)
/* 809DE5A8  4B FF EE 31 */	bl setLookMode__11daNpc_grO_cFi
/* 809DE5AC  38 00 00 00 */	li r0, 0
/* 809DE5B0  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809DE5B4  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_809DE5B8:
/* 809DE5B8  38 60 00 01 */	li r3, 1
/* 809DE5BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DE5C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DE5C4  7C 08 03 A6 */	mtlr r0
/* 809DE5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809DE5CC  4E 80 00 20 */	blr 
