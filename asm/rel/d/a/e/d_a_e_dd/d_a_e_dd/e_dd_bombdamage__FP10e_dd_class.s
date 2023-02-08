lbl_806A43C0:
/* 806A43C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A43C4  7C 08 02 A6 */	mflr r0
/* 806A43C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A43CC  39 61 00 40 */	addi r11, r1, 0x40
/* 806A43D0  4B CB DE 0D */	bl _savegpr_29
/* 806A43D4  7C 7E 1B 78 */	mr r30, r3
/* 806A43D8  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A43DC  3B E3 71 C4 */	addi r31, r3, lit_3903@l /* 0x806A71C4@l */
/* 806A43E0  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806A43E4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806A43E8  FC 00 00 1E */	fctiwz f0, f0
/* 806A43EC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806A43F0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 806A43F4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806A43F8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A43FC  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806A4400  4B BC B6 81 */	bl cLib_addCalc0__FPfff
/* 806A4404  38 00 00 05 */	li r0, 5
/* 806A4408  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 806A440C  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 806A4410  2C 00 00 01 */	cmpwi r0, 1
/* 806A4414  41 82 00 6C */	beq lbl_806A4480
/* 806A4418  40 80 00 10 */	bge lbl_806A4428
/* 806A441C  2C 00 00 00 */	cmpwi r0, 0
/* 806A4420  40 80 00 14 */	bge lbl_806A4434
/* 806A4424  48 00 01 D0 */	b lbl_806A45F4
lbl_806A4428:
/* 806A4428  2C 00 00 03 */	cmpwi r0, 3
/* 806A442C  40 80 01 C8 */	bge lbl_806A45F4
/* 806A4430  48 00 01 B0 */	b lbl_806A45E0
lbl_806A4434:
/* 806A4434  7F C3 F3 78 */	mr r3, r30
/* 806A4438  38 80 00 09 */	li r4, 9
/* 806A443C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806A4440  38 A0 00 00 */	li r5, 0
/* 806A4444  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A4448  4B FF DE 85 */	bl anm_init__FP10e_dd_classifUcf
/* 806A444C  38 00 00 01 */	li r0, 1
/* 806A4450  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A4454  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007026F@ha */
/* 806A4458  38 03 02 6F */	addi r0, r3, 0x026F /* 0x0007026F@l */
/* 806A445C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A4460  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806A4464  38 81 00 10 */	addi r4, r1, 0x10
/* 806A4468  38 A0 FF FF */	li r5, -1
/* 806A446C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806A4470  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A4474  7D 89 03 A6 */	mtctr r12
/* 806A4478  4E 80 04 21 */	bctrl 
/* 806A447C  48 00 01 78 */	b lbl_806A45F4
lbl_806A4480:
/* 806A4480  2C 1D 00 32 */	cmpwi r29, 0x32
/* 806A4484  40 82 00 30 */	bne lbl_806A44B4
/* 806A4488  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070270@ha */
/* 806A448C  38 03 02 70 */	addi r0, r3, 0x0270 /* 0x00070270@l */
/* 806A4490  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A4494  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806A4498  38 81 00 0C */	addi r4, r1, 0xc
/* 806A449C  38 A0 00 00 */	li r5, 0
/* 806A44A0  38 C0 FF FF */	li r6, -1
/* 806A44A4  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806A44A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A44AC  7D 89 03 A6 */	mtctr r12
/* 806A44B0  4E 80 04 21 */	bctrl 
lbl_806A44B4:
/* 806A44B4  2C 1D 00 41 */	cmpwi r29, 0x41
/* 806A44B8  40 82 00 30 */	bne lbl_806A44E8
/* 806A44BC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 806A44C0  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 806A44C4  90 01 00 08 */	stw r0, 8(r1)
/* 806A44C8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806A44CC  38 81 00 08 */	addi r4, r1, 8
/* 806A44D0  38 A0 00 00 */	li r5, 0
/* 806A44D4  38 C0 FF FF */	li r6, -1
/* 806A44D8  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806A44DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A44E0  7D 89 03 A6 */	mtctr r12
/* 806A44E4  4E 80 04 21 */	bctrl 
lbl_806A44E8:
/* 806A44E8  88 1E 06 D4 */	lbz r0, 0x6d4(r30)
/* 806A44EC  7C 00 07 75 */	extsb. r0, r0
/* 806A44F0  41 82 00 98 */	beq lbl_806A4588
/* 806A44F4  2C 1D 00 38 */	cmpwi r29, 0x38
/* 806A44F8  40 82 00 90 */	bne lbl_806A4588
/* 806A44FC  38 00 00 0A */	li r0, 0xa
/* 806A4500  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 806A4504  38 00 00 00 */	li r0, 0
/* 806A4508  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A450C  7F C3 F3 78 */	mr r3, r30
/* 806A4510  38 80 00 0C */	li r4, 0xc
/* 806A4514  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806A4518  38 A0 00 00 */	li r5, 0
/* 806A451C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A4520  4B FF DD AD */	bl anm_init__FP10e_dd_classifUcf
/* 806A4524  88 1E 06 D4 */	lbz r0, 0x6d4(r30)
/* 806A4528  2C 00 00 05 */	cmpwi r0, 5
/* 806A452C  41 82 00 4C */	beq lbl_806A4578
/* 806A4530  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A4534  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A4538  80 63 00 00 */	lwz r3, 0(r3)
/* 806A453C  A8 9E 06 D8 */	lha r4, 0x6d8(r30)
/* 806A4540  4B 96 7E 9D */	bl mDoMtx_YrotS__FPA4_fs
/* 806A4544  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A4548  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A454C  80 63 00 00 */	lwz r3, 0(r3)
/* 806A4550  A8 9E 06 D6 */	lha r4, 0x6d6(r30)
/* 806A4554  4B 96 7E 49 */	bl mDoMtx_XrotM__FPA4_fs
/* 806A4558  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A455C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806A4560  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806A4564  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A4568  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806A456C  38 61 00 14 */	addi r3, r1, 0x14
/* 806A4570  38 9E 06 DC */	addi r4, r30, 0x6dc
/* 806A4574  4B BC C9 79 */	bl MtxPosition__FP4cXyzP4cXyz
lbl_806A4578:
/* 806A4578  38 00 00 00 */	li r0, 0
/* 806A457C  98 1E 06 D4 */	stb r0, 0x6d4(r30)
/* 806A4580  90 1E 06 B4 */	stw r0, 0x6b4(r30)
/* 806A4584  48 00 00 70 */	b lbl_806A45F4
lbl_806A4588:
/* 806A4588  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806A458C  38 80 00 01 */	li r4, 1
/* 806A4590  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806A4594  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A4598  40 82 00 18 */	bne lbl_806A45B0
/* 806A459C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A45A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A45A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A45A8  41 82 00 08 */	beq lbl_806A45B0
/* 806A45AC  38 80 00 00 */	li r4, 0
lbl_806A45B0:
/* 806A45B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806A45B4  41 82 00 40 */	beq lbl_806A45F4
/* 806A45B8  38 00 00 02 */	li r0, 2
/* 806A45BC  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A45C0  38 00 00 28 */	li r0, 0x28
/* 806A45C4  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A45C8  38 00 00 04 */	li r0, 4
/* 806A45CC  90 1E 06 7C */	stw r0, 0x67c(r30)
/* 806A45D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A45D4  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 806A45D8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806A45DC  48 00 00 18 */	b lbl_806A45F4
lbl_806A45E0:
/* 806A45E0  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 806A45E4  2C 00 00 00 */	cmpwi r0, 0
/* 806A45E8  40 82 00 0C */	bne lbl_806A45F4
/* 806A45EC  38 00 00 01 */	li r0, 1
/* 806A45F0  98 1E 05 B6 */	stb r0, 0x5b6(r30)
lbl_806A45F4:
/* 806A45F4  39 61 00 40 */	addi r11, r1, 0x40
/* 806A45F8  4B CB DC 31 */	bl _restgpr_29
/* 806A45FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A4600  7C 08 03 A6 */	mtlr r0
/* 806A4604  38 21 00 40 */	addi r1, r1, 0x40
/* 806A4608  4E 80 00 20 */	blr 
