lbl_8094C298:
/* 8094C298  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8094C29C  7C 08 02 A6 */	mflr r0
/* 8094C2A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8094C2A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8094C2A8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8094C2AC  7C 7F 1B 78 */	mr r31, r3
/* 8094C2B0  3C 60 80 95 */	lis r3, lit_3958@ha /* 0x809511C0@ha */
/* 8094C2B4  3B C3 11 C0 */	addi r30, r3, lit_3958@l /* 0x809511C0@l */
/* 8094C2B8  A8 1F 06 0C */	lha r0, 0x60c(r31)
/* 8094C2BC  2C 00 00 00 */	cmpwi r0, 0
/* 8094C2C0  40 82 01 D8 */	bne lbl_8094C498
/* 8094C2C4  38 7F 08 68 */	addi r3, r31, 0x868
/* 8094C2C8  4B 73 75 69 */	bl Move__10dCcD_GSttsFv
/* 8094C2CC  38 7F 08 88 */	addi r3, r31, 0x888
/* 8094C2D0  4B 73 81 91 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8094C2D4  28 03 00 00 */	cmplwi r3, 0
/* 8094C2D8  41 82 01 C0 */	beq lbl_8094C498
/* 8094C2DC  38 00 00 06 */	li r0, 6
/* 8094C2E0  B0 1F 06 0C */	sth r0, 0x60c(r31)
/* 8094C2E4  38 7F 08 88 */	addi r3, r31, 0x888
/* 8094C2E8  4B 73 82 11 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8094C2EC  90 7F 09 C0 */	stw r3, 0x9c0(r31)
/* 8094C2F0  7F E3 FB 78 */	mr r3, r31
/* 8094C2F4  38 80 00 09 */	li r4, 9
/* 8094C2F8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8094C2FC  38 A0 00 02 */	li r5, 2
/* 8094C300  FC 40 08 90 */	fmr f2, f1
/* 8094C304  4B FF F9 A5 */	bl anm_init__FP8ni_classifUcf
/* 8094C308  80 7F 09 C0 */	lwz r3, 0x9c0(r31)
/* 8094C30C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8094C310  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8094C314  41 82 00 44 */	beq lbl_8094C358
/* 8094C318  38 00 00 09 */	li r0, 9
/* 8094C31C  B0 1F 05 FA */	sth r0, 0x5fa(r31)
/* 8094C320  38 00 00 00 */	li r0, 0
/* 8094C324  B0 1F 05 FC */	sth r0, 0x5fc(r31)
/* 8094C328  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050007@ha */
/* 8094C32C  38 03 00 07 */	addi r0, r3, 0x0007 /* 0x00050007@l */
/* 8094C330  90 01 00 0C */	stw r0, 0xc(r1)
/* 8094C334  38 7F 0A 28 */	addi r3, r31, 0xa28
/* 8094C338  38 81 00 0C */	addi r4, r1, 0xc
/* 8094C33C  38 A0 00 00 */	li r5, 0
/* 8094C340  38 C0 FF FF */	li r6, -1
/* 8094C344  81 9F 0A 38 */	lwz r12, 0xa38(r31)
/* 8094C348  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8094C34C  7D 89 03 A6 */	mtctr r12
/* 8094C350  4E 80 04 21 */	bctrl 
/* 8094C354  48 00 01 44 */	b lbl_8094C498
lbl_8094C358:
/* 8094C358  38 7F 09 C0 */	addi r3, r31, 0x9c0
/* 8094C35C  4B 73 B6 FD */	bl at_power_check__FP11dCcU_AtInfo
/* 8094C360  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050007@ha */
/* 8094C364  38 03 00 07 */	addi r0, r3, 0x0007 /* 0x00050007@l */
/* 8094C368  90 01 00 08 */	stw r0, 8(r1)
/* 8094C36C  38 7F 0A 28 */	addi r3, r31, 0xa28
/* 8094C370  38 81 00 08 */	addi r4, r1, 8
/* 8094C374  38 A0 00 00 */	li r5, 0
/* 8094C378  38 C0 FF FF */	li r6, -1
/* 8094C37C  81 9F 0A 38 */	lwz r12, 0xa38(r31)
/* 8094C380  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8094C384  7D 89 03 A6 */	mtctr r12
/* 8094C388  4E 80 04 21 */	bctrl 
/* 8094C38C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8094C390  4B 91 B5 FD */	bl cM_rndFX__Ff
/* 8094C394  A8 1F 05 E4 */	lha r0, 0x5e4(r31)
/* 8094C398  C8 5E 00 40 */	lfd f2, 0x40(r30)
/* 8094C39C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8094C3A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094C3A4  3C 00 43 30 */	lis r0, 0x4330
/* 8094C3A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8094C3AC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8094C3B0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8094C3B4  EC 00 08 2A */	fadds f0, f0, f1
/* 8094C3B8  FC 00 00 1E */	fctiwz f0, f0
/* 8094C3BC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8094C3C0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8094C3C4  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8094C3C8  A8 1F 05 FA */	lha r0, 0x5fa(r31)
/* 8094C3CC  2C 00 00 0F */	cmpwi r0, 0xf
/* 8094C3D0  40 82 00 18 */	bne lbl_8094C3E8
/* 8094C3D4  38 00 00 01 */	li r0, 1
/* 8094C3D8  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 8094C3DC  38 00 00 00 */	li r0, 0
/* 8094C3E0  B0 1F 06 0C */	sth r0, 0x60c(r31)
/* 8094C3E4  48 00 00 B4 */	b lbl_8094C498
lbl_8094C3E8:
/* 8094C3E8  88 1F 09 E0 */	lbz r0, 0x9e0(r31)
/* 8094C3EC  28 00 00 01 */	cmplwi r0, 1
/* 8094C3F0  40 82 00 20 */	bne lbl_8094C410
/* 8094C3F4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8094C3F8  D0 1F 06 10 */	stfs f0, 0x610(r31)
/* 8094C3FC  7F E3 FB 78 */	mr r3, r31
/* 8094C400  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8094C404  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8094C408  4B FF F9 61 */	bl hane_set__FP8ni_classff
/* 8094C40C  48 00 00 18 */	b lbl_8094C424
lbl_8094C410:
/* 8094C410  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8094C414  D0 5F 06 10 */	stfs f2, 0x610(r31)
/* 8094C418  7F E3 FB 78 */	mr r3, r31
/* 8094C41C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8094C420  4B FF F9 49 */	bl hane_set__FP8ni_classff
lbl_8094C424:
/* 8094C424  38 00 00 08 */	li r0, 8
/* 8094C428  B0 1F 05 FA */	sth r0, 0x5fa(r31)
/* 8094C42C  38 80 00 00 */	li r4, 0
/* 8094C430  B0 9F 05 FC */	sth r4, 0x5fc(r31)
/* 8094C434  A8 7F 05 62 */	lha r3, 0x562(r31)
/* 8094C438  38 03 FF FF */	addi r0, r3, -1
/* 8094C43C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8094C440  88 1F 09 E0 */	lbz r0, 0x9e0(r31)
/* 8094C444  28 00 00 01 */	cmplwi r0, 1
/* 8094C448  40 82 00 50 */	bne lbl_8094C498
/* 8094C44C  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 8094C450  2C 00 00 00 */	cmpwi r0, 0
/* 8094C454  41 81 00 44 */	bgt lbl_8094C498
/* 8094C458  B0 9F 05 62 */	sth r4, 0x562(r31)
/* 8094C45C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094C460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094C464  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8094C468  28 00 00 00 */	cmplwi r0, 0
/* 8094C46C  40 82 00 2C */	bne lbl_8094C498
/* 8094C470  3C 60 80 95 */	lis r3, s_play_sub__FPvPv@ha /* 0x8094C240@ha */
/* 8094C474  38 63 C2 40 */	addi r3, r3, s_play_sub__FPvPv@l /* 0x8094C240@l */
/* 8094C478  7F E4 FB 78 */	mr r4, r31
/* 8094C47C  4B 6D 4E BD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8094C480  28 03 00 00 */	cmplwi r3, 0
/* 8094C484  40 82 00 14 */	bne lbl_8094C498
/* 8094C488  38 00 00 0F */	li r0, 0xf
/* 8094C48C  B0 1F 05 FA */	sth r0, 0x5fa(r31)
/* 8094C490  38 00 00 00 */	li r0, 0
/* 8094C494  B0 1F 05 FC */	sth r0, 0x5fc(r31)
lbl_8094C498:
/* 8094C498  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8094C49C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8094C4A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8094C4A4  7C 08 03 A6 */	mtlr r0
/* 8094C4A8  38 21 00 30 */	addi r1, r1, 0x30
/* 8094C4AC  4E 80 00 20 */	blr 
