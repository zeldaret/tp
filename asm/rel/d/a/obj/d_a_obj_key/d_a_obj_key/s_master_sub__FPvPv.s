lbl_80C3F540:
/* 80C3F540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3F544  7C 08 02 A6 */	mflr r0
/* 80C3F548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3F54C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3F550  93 C1 00 08 */	stw r30, 8(r1)
/* 80C3F554  7C 7E 1B 78 */	mr r30, r3
/* 80C3F558  7C 9F 23 78 */	mr r31, r4
/* 80C3F55C  4B 3D 97 85 */	bl fopAc_IsActor__FPv
/* 80C3F560  2C 03 00 00 */	cmpwi r3, 0
/* 80C3F564  41 82 00 10 */	beq lbl_80C3F574
/* 80C3F568  A8 1E 00 08 */	lha r0, 8(r30)
/* 80C3F56C  2C 00 01 B3 */	cmpwi r0, 0x1b3
/* 80C3F570  41 82 00 38 */	beq lbl_80C3F5A8
lbl_80C3F574:
/* 80C3F574  A8 1E 00 08 */	lha r0, 8(r30)
/* 80C3F578  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 80C3F57C  41 82 00 2C */	beq lbl_80C3F5A8
/* 80C3F580  2C 00 01 D5 */	cmpwi r0, 0x1d5
/* 80C3F584  41 82 00 24 */	beq lbl_80C3F5A8
/* 80C3F588  2C 00 01 C5 */	cmpwi r0, 0x1c5
/* 80C3F58C  41 82 00 1C */	beq lbl_80C3F5A8
/* 80C3F590  2C 00 01 C9 */	cmpwi r0, 0x1c9
/* 80C3F594  41 82 00 14 */	beq lbl_80C3F5A8
/* 80C3F598  2C 00 01 FE */	cmpwi r0, 0x1fe
/* 80C3F59C  41 82 00 0C */	beq lbl_80C3F5A8
/* 80C3F5A0  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C3F5A4  40 82 00 40 */	bne lbl_80C3F5E4
lbl_80C3F5A8:
/* 80C3F5A8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C3F5AC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C3F5B0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80C3F5B4  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80C3F5B8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C3F5BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C3F5C0  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80C3F5C4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80C3F5C8  EC 21 00 2A */	fadds f1, f1, f0
/* 80C3F5CC  3C 60 80 C4 */	lis r3, lit_3836@ha /* 0x80C40FF4@ha */
/* 80C3F5D0  C0 03 0F F4 */	lfs f0, lit_3836@l(r3)  /* 0x80C40FF4@l */
/* 80C3F5D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3F5D8  40 80 00 0C */	bge lbl_80C3F5E4
/* 80C3F5DC  7F C3 F3 78 */	mr r3, r30
/* 80C3F5E0  48 00 00 08 */	b lbl_80C3F5E8
lbl_80C3F5E4:
/* 80C3F5E4  38 60 00 00 */	li r3, 0
lbl_80C3F5E8:
/* 80C3F5E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3F5EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C3F5F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3F5F4  7C 08 03 A6 */	mtlr r0
/* 80C3F5F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3F5FC  4E 80 00 20 */	blr 
