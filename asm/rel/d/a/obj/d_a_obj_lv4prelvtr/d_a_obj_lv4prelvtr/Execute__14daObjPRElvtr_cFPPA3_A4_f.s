lbl_80C68844:
/* 80C68844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C68848  7C 08 02 A6 */	mflr r0
/* 80C6884C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C68850  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C68854  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C68858  7C 7E 1B 78 */	mr r30, r3
/* 80C6885C  7C 9F 23 78 */	mr r31, r4
/* 80C68860  3C 60 80 C7 */	lis r3, searchObjSwTurn__FPvPv@ha /* 0x80C687D0@ha */
/* 80C68864  38 63 87 D0 */	addi r3, r3, searchObjSwTurn__FPvPv@l /* 0x80C687D0@l */
/* 80C68868  7F C4 F3 78 */	mr r4, r30
/* 80C6886C  4B 3B 0F 8D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C68870  28 03 00 00 */	cmplwi r3, 0
/* 80C68874  41 82 00 94 */	beq lbl_80C68908
/* 80C68878  88 03 05 AD */	lbz r0, 0x5ad(r3)
/* 80C6887C  28 00 00 00 */	cmplwi r0, 0
/* 80C68880  40 82 00 18 */	bne lbl_80C68898
/* 80C68884  A8 83 05 BA */	lha r4, 0x5ba(r3)
/* 80C68888  A8 03 05 C4 */	lha r0, 0x5c4(r3)
/* 80C6888C  54 00 70 22 */	slwi r0, r0, 0xe
/* 80C68890  7C 04 02 14 */	add r0, r4, r0
/* 80C68894  48 00 00 1C */	b lbl_80C688B0
lbl_80C68898:
/* 80C68898  A8 A3 05 BA */	lha r5, 0x5ba(r3)
/* 80C6889C  A8 03 05 C4 */	lha r0, 0x5c4(r3)
/* 80C688A0  54 04 70 22 */	slwi r4, r0, 0xe
/* 80C688A4  38 00 00 03 */	li r0, 3
/* 80C688A8  7C 04 03 D6 */	divw r0, r4, r0
/* 80C688AC  7C 05 02 14 */	add r0, r5, r0
lbl_80C688B0:
/* 80C688B0  90 1E 06 0C */	stw r0, 0x60c(r30)
/* 80C688B4  3C 80 80 C7 */	lis r4, lit_3694@ha /* 0x80C68B80@ha */
/* 80C688B8  C0 44 8B 80 */	lfs f2, lit_3694@l(r4)  /* 0x80C68B80@l */
/* 80C688BC  80 1E 06 0C */	lwz r0, 0x60c(r30)
/* 80C688C0  3C 80 80 C7 */	lis r4, lit_3697@ha /* 0x80C68B88@ha */
/* 80C688C4  C8 24 8B 88 */	lfd f1, lit_3697@l(r4)  /* 0x80C68B88@l */
/* 80C688C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C688CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C688D0  3C 00 43 30 */	lis r0, 0x4330
/* 80C688D4  90 01 00 08 */	stw r0, 8(r1)
/* 80C688D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C688DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C688E0  3C 80 80 C7 */	lis r4, lit_3695@ha /* 0x80C68B84@ha */
/* 80C688E4  C0 04 8B 84 */	lfs f0, lit_3695@l(r4)  /* 0x80C68B84@l */
/* 80C688E8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C688EC  EC 22 00 32 */	fmuls f1, f2, f0
/* 80C688F0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80C688F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C688F8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C688FC  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80C68900  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C68904  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
lbl_80C68908:
/* 80C68908  7F C3 F3 78 */	mr r3, r30
/* 80C6890C  4B FF FD 7D */	bl setMtx__14daObjPRElvtr_cFv
/* 80C68910  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80C68914  80 9E 06 08 */	lwz r4, 0x608(r30)
/* 80C68918  38 84 00 24 */	addi r4, r4, 0x24
/* 80C6891C  4B 6D DB 95 */	bl PSMTXCopy
/* 80C68920  38 1E 05 A8 */	addi r0, r30, 0x5a8
/* 80C68924  90 1F 00 00 */	stw r0, 0(r31)
/* 80C68928  38 60 00 01 */	li r3, 1
/* 80C6892C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C68930  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C68934  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C68938  7C 08 03 A6 */	mtlr r0
/* 80C6893C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C68940  4E 80 00 20 */	blr 
