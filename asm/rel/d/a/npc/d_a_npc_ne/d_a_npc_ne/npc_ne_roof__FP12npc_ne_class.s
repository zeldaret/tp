lbl_80A8C8F8:
/* 80A8C8F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A8C8FC  7C 08 02 A6 */	mflr r0
/* 80A8C900  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A8C904  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A8C908  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A8C90C  7C 7E 1B 78 */	mr r30, r3
/* 80A8C910  3C 80 80 A9 */	lis r4, lit_3990@ha /* 0x80A9241C@ha */
/* 80A8C914  3B E4 24 1C */	addi r31, r4, lit_3990@l /* 0x80A9241C@l */
/* 80A8C918  38 00 00 05 */	li r0, 5
/* 80A8C91C  B0 03 06 56 */	sth r0, 0x656(r3)
/* 80A8C920  38 00 00 01 */	li r0, 1
/* 80A8C924  98 03 06 68 */	stb r0, 0x668(r3)
/* 80A8C928  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80A8C92C  2C 00 00 01 */	cmpwi r0, 1
/* 80A8C930  41 82 00 54 */	beq lbl_80A8C984
/* 80A8C934  40 80 00 88 */	bge lbl_80A8C9BC
/* 80A8C938  2C 00 00 00 */	cmpwi r0, 0
/* 80A8C93C  40 80 00 08 */	bge lbl_80A8C944
/* 80A8C940  48 00 00 7C */	b lbl_80A8C9BC
lbl_80A8C944:
/* 80A8C944  38 80 00 18 */	li r4, 0x18
/* 80A8C948  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8C94C  38 A0 00 02 */	li r5, 2
/* 80A8C950  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C954  4B FF C3 C1 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8C958  38 00 00 01 */	li r0, 1
/* 80A8C95C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8C960  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80A8C964  4B 7D AF F1 */	bl cM_rndF__Ff
/* 80A8C968  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A8C96C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8C970  FC 00 00 1E */	fctiwz f0, f0
/* 80A8C974  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8C978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8C97C  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 80A8C980  48 00 00 3C */	b lbl_80A8C9BC
lbl_80A8C984:
/* 80A8C984  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 80A8C988  2C 00 00 01 */	cmpwi r0, 1
/* 80A8C98C  40 82 00 18 */	bne lbl_80A8C9A4
/* 80A8C990  38 80 00 13 */	li r4, 0x13
/* 80A8C994  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A8C998  38 A0 00 00 */	li r5, 0
/* 80A8C99C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C9A0  4B FF C3 75 */	bl anm_init__FP12npc_ne_classifUcf
lbl_80A8C9A4:
/* 80A8C9A4  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8C9A8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80A8C9AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8C9B0  40 80 00 0C */	bge lbl_80A8C9BC
/* 80A8C9B4  38 00 00 00 */	li r0, 0
/* 80A8C9B8  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8C9BC:
/* 80A8C9BC  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8C9C0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A8C9C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8C9C8  40 80 00 40 */	bge lbl_80A8CA08
/* 80A8C9CC  38 00 00 04 */	li r0, 4
/* 80A8C9D0  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8C9D4  38 00 00 00 */	li r0, 0
/* 80A8C9D8  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8C9DC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050003@ha */
/* 80A8C9E0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0x00050003@l */
/* 80A8C9E4  90 01 00 08 */	stw r0, 8(r1)
/* 80A8C9E8  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80A8C9EC  38 81 00 08 */	addi r4, r1, 8
/* 80A8C9F0  38 A0 00 00 */	li r5, 0
/* 80A8C9F4  38 C0 FF FF */	li r6, -1
/* 80A8C9F8  81 9E 06 1C */	lwz r12, 0x61c(r30)
/* 80A8C9FC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8CA00  7D 89 03 A6 */	mtctr r12
/* 80A8CA04  4E 80 04 21 */	bctrl 
lbl_80A8CA08:
/* 80A8CA08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A8CA0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A8CA10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A8CA14  7C 08 03 A6 */	mtlr r0
/* 80A8CA18  38 21 00 20 */	addi r1, r1, 0x20
/* 80A8CA1C  4E 80 00 20 */	blr 
