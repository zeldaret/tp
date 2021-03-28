lbl_809A43DC:
/* 809A43DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809A43E0  7C 08 02 A6 */	mflr r0
/* 809A43E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809A43E8  39 61 00 30 */	addi r11, r1, 0x30
/* 809A43EC  4B 9B DD F0 */	b _savegpr_29
/* 809A43F0  7C 7F 1B 78 */	mr r31, r3
/* 809A43F4  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha
/* 809A43F8  3B A3 4E D0 */	addi r29, r3, M_attr__12daNpcCoach_c@l
/* 809A43FC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809A4400  4B 66 89 64 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809A4404  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 809A4408  4B 66 8B 3C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 809A440C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A4410  80 83 00 04 */	lwz r4, 4(r3)
/* 809A4414  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A4418  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A441C  38 84 00 24 */	addi r4, r4, 0x24
/* 809A4420  4B 9A 20 90 */	b PSMTXCopy
/* 809A4424  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A4428  80 63 00 04 */	lwz r3, 4(r3)
/* 809A442C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809A4430  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809A4434  38 63 03 00 */	addi r3, r3, 0x300
/* 809A4438  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809A443C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809A4440  4B 9A 20 70 */	b PSMTXCopy
/* 809A4444  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A4448  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 809A444C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809A4450  D0 1F 0C D8 */	stfs f0, 0xcd8(r31)
/* 809A4454  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809A4458  D0 1F 0C DC */	stfs f0, 0xcdc(r31)
/* 809A445C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809A4460  D0 1F 0C E0 */	stfs f0, 0xce0(r31)
/* 809A4464  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809A4468  4B 66 88 FC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809A446C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A4470  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4474  A8 9F 15 7E */	lha r4, 0x157e(r31)
/* 809A4478  4B 66 7F BC */	b mDoMtx_YrotM__FPA4_fs
/* 809A447C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A4480  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4484  A8 9F 15 7C */	lha r4, 0x157c(r31)
/* 809A4488  4B 66 7F 14 */	b mDoMtx_XrotM__FPA4_fs
/* 809A448C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A4490  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4494  A8 9F 15 80 */	lha r4, 0x1580(r31)
/* 809A4498  4B 66 80 34 */	b mDoMtx_ZrotM__FPA4_fs
/* 809A449C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A44A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A44A4  80 9F 0E 7C */	lwz r4, 0xe7c(r31)
/* 809A44A8  38 84 00 24 */	addi r4, r4, 0x24
/* 809A44AC  4B 9A 20 04 */	b PSMTXCopy
/* 809A44B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A44B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A44B8  38 9F 15 20 */	addi r4, r31, 0x1520
/* 809A44BC  4B 9A 1F F4 */	b PSMTXCopy
/* 809A44C0  80 7F 15 1C */	lwz r3, 0x151c(r31)
/* 809A44C4  4B 6D 74 FC */	b Move__4dBgWFv
/* 809A44C8  80 7F 0E 7C */	lwz r3, 0xe7c(r31)
/* 809A44CC  81 83 00 00 */	lwz r12, 0(r3)
/* 809A44D0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 809A44D4  7D 89 03 A6 */	mtctr r12
/* 809A44D8  4E 80 04 21 */	bctrl 
/* 809A44DC  80 7F 0E 7C */	lwz r3, 0xe7c(r31)
/* 809A44E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809A44E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809A44E8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809A44EC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809A44F0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809A44F4  4B 9A 1F BC */	b PSMTXCopy
/* 809A44F8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809A44FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 809A4500  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809A4504  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809A4508  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809A450C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809A4510  38 61 00 08 */	addi r3, r1, 8
/* 809A4514  4B 66 88 50 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809A4518  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A451C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4520  A8 9F 1D 6C */	lha r4, 0x1d6c(r31)
/* 809A4524  4B 66 7F 10 */	b mDoMtx_YrotM__FPA4_fs
/* 809A4528  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A452C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4530  A8 9F 1D 6A */	lha r4, 0x1d6a(r31)
/* 809A4534  4B 66 7E 68 */	b mDoMtx_XrotM__FPA4_fs
/* 809A4538  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A453C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4540  A8 9F 1D 6E */	lha r4, 0x1d6e(r31)
/* 809A4544  4B 66 7F 88 */	b mDoMtx_ZrotM__FPA4_fs
/* 809A4548  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A454C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4550  80 9F 15 D0 */	lwz r4, 0x15d0(r31)
/* 809A4554  38 84 00 24 */	addi r4, r4, 0x24
/* 809A4558  4B 9A 1F 58 */	b PSMTXCopy
/* 809A455C  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 809A4560  C0 5F 1D 5C */	lfs f2, 0x1d5c(r31)
/* 809A4564  FC 60 08 90 */	fmr f3, f1
/* 809A4568  4B 66 88 34 */	b transM__14mDoMtx_stack_cFfff
/* 809A456C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A4570  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4574  A8 9F 1D 68 */	lha r4, 0x1d68(r31)
/* 809A4578  4B 66 7F 54 */	b mDoMtx_ZrotM__FPA4_fs
/* 809A457C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A4580  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4584  38 9F 1B 38 */	addi r4, r31, 0x1b38
/* 809A4588  4B 9A 1F 28 */	b PSMTXCopy
/* 809A458C  80 7F 1B 34 */	lwz r3, 0x1b34(r31)
/* 809A4590  4B 6D 74 30 */	b Move__4dBgWFv
/* 809A4594  80 7F 15 D0 */	lwz r3, 0x15d0(r31)
/* 809A4598  81 83 00 00 */	lwz r12, 0(r3)
/* 809A459C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 809A45A0  7D 89 03 A6 */	mtctr r12
/* 809A45A4  4E 80 04 21 */	bctrl 
/* 809A45A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A45AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A45B0  38 9F 24 90 */	addi r4, r31, 0x2490
/* 809A45B4  4B 9A 1E FC */	b PSMTXCopy
/* 809A45B8  C0 1D 01 C0 */	lfs f0, 0x1c0(r29)
/* 809A45BC  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 809A45C0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 809A45C4  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 809A45C8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 809A45CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A45D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A45D4  38 9F 05 38 */	addi r4, r31, 0x538
/* 809A45D8  7C 85 23 78 */	mr r5, r4
/* 809A45DC  4B 9A 27 90 */	b PSMTXMultVec
/* 809A45E0  C0 1D 01 70 */	lfs f0, 0x170(r29)
/* 809A45E4  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 809A45E8  C0 1D 01 C4 */	lfs f0, 0x1c4(r29)
/* 809A45EC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 809A45F0  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 809A45F4  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 809A45F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A45FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4600  38 9F 05 50 */	addi r4, r31, 0x550
/* 809A4604  7C 85 23 78 */	mr r5, r4
/* 809A4608  4B 9A 27 64 */	b PSMTXMultVec
/* 809A460C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A4610  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4614  7C 64 1B 78 */	mr r4, r3
/* 809A4618  4B 9A 1F 98 */	b PSMTXInverse
/* 809A461C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A4620  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A4624  38 9F 1B 68 */	addi r4, r31, 0x1b68
/* 809A4628  4B 9A 1E 88 */	b PSMTXCopy
/* 809A462C  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 809A4630  4B 67 CD 28 */	b fpcEx_SearchByID__FUi
/* 809A4634  28 03 00 00 */	cmplwi r3, 0
/* 809A4638  41 82 00 28 */	beq lbl_809A4660
/* 809A463C  80 9F 15 D0 */	lwz r4, 0x15d0(r31)
/* 809A4640  80 84 00 84 */	lwz r4, 0x84(r4)
/* 809A4644  80 84 00 0C */	lwz r4, 0xc(r4)
/* 809A4648  38 04 00 F0 */	addi r0, r4, 0xf0
/* 809A464C  80 63 05 68 */	lwz r3, 0x568(r3)
/* 809A4650  80 83 00 04 */	lwz r4, 4(r3)
/* 809A4654  7C 03 03 78 */	mr r3, r0
/* 809A4658  38 84 00 24 */	addi r4, r4, 0x24
/* 809A465C  4B 9A 1E 54 */	b PSMTXCopy
lbl_809A4660:
/* 809A4660  80 7F 15 D0 */	lwz r3, 0x15d0(r31)
/* 809A4664  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809A4668  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809A466C  38 63 01 20 */	addi r3, r3, 0x120
/* 809A4670  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809A4674  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809A4678  4B 9A 1E 38 */	b PSMTXCopy
/* 809A467C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809A4680  D0 1F 24 5C */	stfs f0, 0x245c(r31)
/* 809A4684  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809A4688  D0 1F 24 60 */	stfs f0, 0x2460(r31)
/* 809A468C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809A4690  D0 1F 24 64 */	stfs f0, 0x2464(r31)
/* 809A4694  80 7F 1D C8 */	lwz r3, 0x1dc8(r31)
/* 809A4698  80 83 00 04 */	lwz r4, 4(r3)
/* 809A469C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A46A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A46A4  38 84 00 24 */	addi r4, r4, 0x24
/* 809A46A8  4B 9A 1E 08 */	b PSMTXCopy
/* 809A46AC  39 61 00 30 */	addi r11, r1, 0x30
/* 809A46B0  4B 9B DB 78 */	b _restgpr_29
/* 809A46B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A46B8  7C 08 03 A6 */	mtlr r0
/* 809A46BC  38 21 00 30 */	addi r1, r1, 0x30
/* 809A46C0  4E 80 00 20 */	blr 
