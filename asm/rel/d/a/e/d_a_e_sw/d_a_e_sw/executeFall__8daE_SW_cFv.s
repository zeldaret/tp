lbl_807AB5C4:
/* 807AB5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AB5C8  7C 08 02 A6 */	mflr r0
/* 807AB5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AB5D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AB5D4  93 C1 00 08 */	stw r30, 8(r1)
/* 807AB5D8  7C 7E 1B 78 */	mr r30, r3
/* 807AB5DC  3C 60 80 7B */	lis r3, lit_3909@ha /* 0x807AFD2C@ha */
/* 807AB5E0  3B E3 FD 2C */	addi r31, r3, lit_3909@l /* 0x807AFD2C@l */
/* 807AB5E4  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807AB5E8  2C 00 00 01 */	cmpwi r0, 1
/* 807AB5EC  41 82 00 70 */	beq lbl_807AB65C
/* 807AB5F0  40 80 00 A8 */	bge lbl_807AB698
/* 807AB5F4  2C 00 00 00 */	cmpwi r0, 0
/* 807AB5F8  40 80 00 08 */	bge lbl_807AB600
/* 807AB5FC  48 00 00 9C */	b lbl_807AB698
lbl_807AB600:
/* 807AB600  38 00 00 00 */	li r0, 0
/* 807AB604  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807AB608  98 1E 06 84 */	stb r0, 0x684(r30)
/* 807AB60C  38 7E 09 8C */	addi r3, r30, 0x98c
/* 807AB610  81 9E 09 C8 */	lwz r12, 0x9c8(r30)
/* 807AB614  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807AB618  7D 89 03 A6 */	mtctr r12
/* 807AB61C  4E 80 04 21 */	bctrl 
/* 807AB620  80 1E 09 A4 */	lwz r0, 0x9a4(r30)
/* 807AB624  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807AB628  90 1E 09 A4 */	stw r0, 0x9a4(r30)
/* 807AB62C  38 00 00 5A */	li r0, 0x5a
/* 807AB630  B0 1E 06 EA */	sth r0, 0x6ea(r30)
/* 807AB634  38 00 00 01 */	li r0, 1
/* 807AB638  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AB63C  38 00 00 00 */	li r0, 0
/* 807AB640  98 1E 06 E5 */	stb r0, 0x6e5(r30)
/* 807AB644  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AB648  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 807AB64C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 807AB650  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807AB654  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 807AB658  D0 1E 05 34 */	stfs f0, 0x534(r30)
lbl_807AB65C:
/* 807AB65C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807AB660  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AB664  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AB668  4B AC 50 D9 */	bl cLib_chaseF__FPfff
/* 807AB66C  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 807AB670  2C 00 00 00 */	cmpwi r0, 0
/* 807AB674  40 82 00 24 */	bne lbl_807AB698
/* 807AB678  7F C3 F3 78 */	mr r3, r30
/* 807AB67C  38 80 00 0C */	li r4, 0xc
/* 807AB680  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807AB684  38 A0 00 02 */	li r5, 2
/* 807AB688  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AB68C  4B FF BD D5 */	bl bckSet__8daE_SW_cFifUcf
/* 807AB690  7F C3 F3 78 */	mr r3, r30
/* 807AB694  4B 86 E5 E9 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_807AB698:
/* 807AB698  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807AB69C  C0 5E 04 FC */	lfs f2, 0x4fc(r30)
/* 807AB6A0  4B AB BF D5 */	bl cM_atan2s__Fff
/* 807AB6A4  38 03 C0 00 */	addi r0, r3, -16384
/* 807AB6A8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807AB6AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AB6B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 807AB6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AB6B8  7C 08 03 A6 */	mtlr r0
/* 807AB6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 807AB6C0  4E 80 00 20 */	blr 
