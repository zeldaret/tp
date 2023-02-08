lbl_806A460C:
/* 806A460C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806A4610  7C 08 02 A6 */	mflr r0
/* 806A4614  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A4618  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806A461C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806A4620  7C 7E 1B 78 */	mr r30, r3
/* 806A4624  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A4628  3B E3 71 C4 */	addi r31, r3, lit_3903@l /* 0x806A71C4@l */
/* 806A462C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806A4630  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A4634  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806A4638  4B BC B4 49 */	bl cLib_addCalc0__FPfff
/* 806A463C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806A4640  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 806A4644  7C 03 00 50 */	subf r0, r3, r0
/* 806A4648  7C 03 07 34 */	extsh r3, r0
/* 806A464C  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 806A4650  2C 00 00 01 */	cmpwi r0, 1
/* 806A4654  41 82 01 48 */	beq lbl_806A479C
/* 806A4658  40 80 00 10 */	bge lbl_806A4668
/* 806A465C  2C 00 00 00 */	cmpwi r0, 0
/* 806A4660  40 80 00 14 */	bge lbl_806A4674
/* 806A4664  48 00 02 60 */	b lbl_806A48C4
lbl_806A4668:
/* 806A4668  2C 00 00 05 */	cmpwi r0, 5
/* 806A466C  41 82 01 74 */	beq lbl_806A47E0
/* 806A4670  48 00 02 54 */	b lbl_806A48C4
lbl_806A4674:
/* 806A4674  88 1E 06 D4 */	lbz r0, 0x6d4(r30)
/* 806A4678  7C 00 07 75 */	extsb. r0, r0
/* 806A467C  41 82 00 64 */	beq lbl_806A46E0
/* 806A4680  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 806A4684  2C 00 00 00 */	cmpwi r0, 0
/* 806A4688  41 81 00 58 */	bgt lbl_806A46E0
/* 806A468C  38 00 00 64 */	li r0, 0x64
/* 806A4690  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 806A4694  38 00 00 05 */	li r0, 5
/* 806A4698  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A469C  A8 1E 06 D6 */	lha r0, 0x6d6(r30)
/* 806A46A0  2C 00 80 00 */	cmpwi r0, -32768
/* 806A46A4  40 82 00 20 */	bne lbl_806A46C4
/* 806A46A8  7F C3 F3 78 */	mr r3, r30
/* 806A46AC  38 80 00 0A */	li r4, 0xa
/* 806A46B0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806A46B4  38 A0 00 00 */	li r5, 0
/* 806A46B8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A46BC  4B FF DC 11 */	bl anm_init__FP10e_dd_classifUcf
/* 806A46C0  48 00 02 04 */	b lbl_806A48C4
lbl_806A46C4:
/* 806A46C4  7F C3 F3 78 */	mr r3, r30
/* 806A46C8  38 80 00 0B */	li r4, 0xb
/* 806A46CC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806A46D0  38 A0 00 00 */	li r5, 0
/* 806A46D4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A46D8  4B FF DB F5 */	bl anm_init__FP10e_dd_classifUcf
/* 806A46DC  48 00 01 E8 */	b lbl_806A48C4
lbl_806A46E0:
/* 806A46E0  88 1E 06 D3 */	lbz r0, 0x6d3(r30)
/* 806A46E4  7C 00 07 75 */	extsb. r0, r0
/* 806A46E8  40 82 00 5C */	bne lbl_806A4744
/* 806A46EC  7C 60 07 35 */	extsh. r0, r3
/* 806A46F0  40 81 00 28 */	ble lbl_806A4718
/* 806A46F4  7F C3 F3 78 */	mr r3, r30
/* 806A46F8  38 80 00 06 */	li r4, 6
/* 806A46FC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806A4700  38 A0 00 00 */	li r5, 0
/* 806A4704  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A4708  4B FF DB C5 */	bl anm_init__FP10e_dd_classifUcf
/* 806A470C  38 00 00 00 */	li r0, 0
/* 806A4710  98 1E 06 D2 */	stb r0, 0x6d2(r30)
/* 806A4714  48 00 00 24 */	b lbl_806A4738
lbl_806A4718:
/* 806A4718  7F C3 F3 78 */	mr r3, r30
/* 806A471C  38 80 00 05 */	li r4, 5
/* 806A4720  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806A4724  38 A0 00 00 */	li r5, 0
/* 806A4728  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A472C  4B FF DB A1 */	bl anm_init__FP10e_dd_classifUcf
/* 806A4730  38 00 00 01 */	li r0, 1
/* 806A4734  98 1E 06 D2 */	stb r0, 0x6d2(r30)
lbl_806A4738:
/* 806A4738  38 00 00 14 */	li r0, 0x14
/* 806A473C  98 1E 06 D3 */	stb r0, 0x6d3(r30)
/* 806A4740  48 00 00 50 */	b lbl_806A4790
lbl_806A4744:
/* 806A4744  88 1E 06 D2 */	lbz r0, 0x6d2(r30)
/* 806A4748  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A474C  41 82 00 20 */	beq lbl_806A476C
/* 806A4750  7F C3 F3 78 */	mr r3, r30
/* 806A4754  38 80 00 06 */	li r4, 6
/* 806A4758  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806A475C  38 A0 00 00 */	li r5, 0
/* 806A4760  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A4764  4B FF DB 69 */	bl anm_init__FP10e_dd_classifUcf
/* 806A4768  48 00 00 1C */	b lbl_806A4784
lbl_806A476C:
/* 806A476C  7F C3 F3 78 */	mr r3, r30
/* 806A4770  38 80 00 05 */	li r4, 5
/* 806A4774  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806A4778  38 A0 00 00 */	li r5, 0
/* 806A477C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A4780  4B FF DB 4D */	bl anm_init__FP10e_dd_classifUcf
lbl_806A4784:
/* 806A4784  88 7E 06 D2 */	lbz r3, 0x6d2(r30)
/* 806A4788  38 03 00 01 */	addi r0, r3, 1
/* 806A478C  98 1E 06 D2 */	stb r0, 0x6d2(r30)
lbl_806A4790:
/* 806A4790  38 00 00 01 */	li r0, 1
/* 806A4794  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A4798  48 00 01 2C */	b lbl_806A48C4
lbl_806A479C:
/* 806A479C  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806A47A0  38 80 00 01 */	li r4, 1
/* 806A47A4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806A47A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A47AC  40 82 00 18 */	bne lbl_806A47C4
/* 806A47B0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A47B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A47B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A47BC  41 82 00 08 */	beq lbl_806A47C4
/* 806A47C0  38 80 00 00 */	li r4, 0
lbl_806A47C4:
/* 806A47C4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806A47C8  41 82 00 FC */	beq lbl_806A48C4
/* 806A47CC  38 00 00 03 */	li r0, 3
/* 806A47D0  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 806A47D4  38 00 00 00 */	li r0, 0
/* 806A47D8  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A47DC  48 00 00 E8 */	b lbl_806A48C4
lbl_806A47E0:
/* 806A47E0  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806A47E4  38 80 00 01 */	li r4, 1
/* 806A47E8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806A47EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A47F0  40 82 00 18 */	bne lbl_806A4808
/* 806A47F4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A47F8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A47FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A4800  41 82 00 08 */	beq lbl_806A4808
/* 806A4804  38 80 00 00 */	li r4, 0
lbl_806A4808:
/* 806A4808  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806A480C  41 82 00 B8 */	beq lbl_806A48C4
/* 806A4810  38 00 00 0A */	li r0, 0xa
/* 806A4814  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 806A4818  38 00 00 00 */	li r0, 0
/* 806A481C  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A4820  7F C3 F3 78 */	mr r3, r30
/* 806A4824  38 80 00 0C */	li r4, 0xc
/* 806A4828  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806A482C  38 A0 00 00 */	li r5, 0
/* 806A4830  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A4834  4B FF DA 99 */	bl anm_init__FP10e_dd_classifUcf
/* 806A4838  88 1E 06 D4 */	lbz r0, 0x6d4(r30)
/* 806A483C  2C 00 00 05 */	cmpwi r0, 5
/* 806A4840  41 82 00 4C */	beq lbl_806A488C
/* 806A4844  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A4848  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A484C  80 63 00 00 */	lwz r3, 0(r3)
/* 806A4850  A8 9E 06 D8 */	lha r4, 0x6d8(r30)
/* 806A4854  4B 96 7B 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 806A4858  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A485C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A4860  80 63 00 00 */	lwz r3, 0(r3)
/* 806A4864  A8 9E 06 D6 */	lha r4, 0x6d6(r30)
/* 806A4868  4B 96 7B 35 */	bl mDoMtx_XrotM__FPA4_fs
/* 806A486C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A4870  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806A4874  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806A4878  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806A487C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806A4880  38 61 00 0C */	addi r3, r1, 0xc
/* 806A4884  38 9E 06 DC */	addi r4, r30, 0x6dc
/* 806A4888  4B BC C6 65 */	bl MtxPosition__FP4cXyzP4cXyz
lbl_806A488C:
/* 806A488C  38 00 00 00 */	li r0, 0
/* 806A4890  98 1E 06 D4 */	stb r0, 0x6d4(r30)
/* 806A4894  90 1E 06 B4 */	stw r0, 0x6b4(r30)
/* 806A4898  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007027A@ha */
/* 806A489C  38 03 02 7A */	addi r0, r3, 0x027A /* 0x0007027A@l */
/* 806A48A0  90 01 00 08 */	stw r0, 8(r1)
/* 806A48A4  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806A48A8  38 81 00 08 */	addi r4, r1, 8
/* 806A48AC  38 A0 00 00 */	li r5, 0
/* 806A48B0  38 C0 FF FF */	li r6, -1
/* 806A48B4  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806A48B8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A48BC  7D 89 03 A6 */	mtctr r12
/* 806A48C0  4E 80 04 21 */	bctrl 
lbl_806A48C4:
/* 806A48C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806A48C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806A48CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806A48D0  7C 08 03 A6 */	mtlr r0
/* 806A48D4  38 21 00 20 */	addi r1, r1, 0x20
/* 806A48D8  4E 80 00 20 */	blr 
