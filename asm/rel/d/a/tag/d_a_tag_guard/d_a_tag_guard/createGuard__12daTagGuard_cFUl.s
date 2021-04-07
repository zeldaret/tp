lbl_80D5985C:
/* 80D5985C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D59860  7C 08 02 A6 */	mflr r0
/* 80D59864  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D59868  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D5986C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D59870  7C 7E 1B 78 */	mr r30, r3
/* 80D59874  7C 9F 23 78 */	mr r31, r4
/* 80D59878  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D5987C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D59880  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D59884  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D59888  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D5988C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D59890  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D59894  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D59898  28 00 00 FF */	cmplwi r0, 0xff
/* 80D5989C  41 82 00 34 */	beq lbl_80D598D0
/* 80D598A0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D598A4  38 80 00 00 */	li r4, 0
/* 80D598A8  4B 2F 7F 09 */	bl dPath_GetPnt__FPC5dPathi
/* 80D598AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D598B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D598B4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D598B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D598BC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D598C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D598C4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D598C8  54 00 42 1E */	rlwinm r0, r0, 8, 8, 0xf
/* 80D598CC  7F FF 03 78 */	or r31, r31, r0
lbl_80D598D0:
/* 80D598D0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D598D4  7C 07 07 74 */	extsb r7, r0
/* 80D598D8  38 00 00 00 */	li r0, 0
/* 80D598DC  90 01 00 08 */	stw r0, 8(r1)
/* 80D598E0  38 60 02 97 */	li r3, 0x297
/* 80D598E4  28 1E 00 00 */	cmplwi r30, 0
/* 80D598E8  41 82 00 0C */	beq lbl_80D598F4
/* 80D598EC  80 9E 00 04 */	lwz r4, 4(r30)
/* 80D598F0  48 00 00 08 */	b lbl_80D598F8
lbl_80D598F4:
/* 80D598F4  38 80 FF FF */	li r4, -1
lbl_80D598F8:
/* 80D598F8  7F E5 FB 78 */	mr r5, r31
/* 80D598FC  38 C1 00 10 */	addi r6, r1, 0x10
/* 80D59900  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80D59904  39 20 00 00 */	li r9, 0
/* 80D59908  39 40 FF FF */	li r10, -1
/* 80D5990C  4B 2C 05 E5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80D59910  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D59914  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D59918  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D5991C  7C 08 03 A6 */	mtlr r0
/* 80D59920  38 21 00 30 */	addi r1, r1, 0x30
/* 80D59924  4E 80 00 20 */	blr 
