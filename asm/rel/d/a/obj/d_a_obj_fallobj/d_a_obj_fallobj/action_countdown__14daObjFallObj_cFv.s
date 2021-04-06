lbl_80BE43E4:
/* 80BE43E4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BE43E8  7C 08 02 A6 */	mflr r0
/* 80BE43EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BE43F0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80BE43F4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80BE43F8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BE43FC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BE4400  7C 7E 1B 78 */	mr r30, r3
/* 80BE4404  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE4408  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE440C  83 E4 5D AC */	lwz r31, 0x5dac(r4)
/* 80BE4410  4B FF F7 99 */	bl getFallTime__14daObjFallObj_cFv
/* 80BE4414  7C 60 07 34 */	extsh r0, r3
/* 80BE4418  3C 60 80 BE */	lis r3, lit_3930@ha /* 0x80BE4B00@ha */
/* 80BE441C  C8 23 4B 00 */	lfd f1, lit_3930@l(r3)  /* 0x80BE4B00@l */
/* 80BE4420  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE4424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4428  3C 00 43 30 */	lis r0, 0x4330
/* 80BE442C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE4430  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BE4434  EF E0 08 28 */	fsubs f31, f0, f1
/* 80BE4438  7F C3 F3 78 */	mr r3, r30
/* 80BE443C  4B FF F7 99 */	bl getFallHeight__14daObjFallObj_cFv
/* 80BE4440  3C 60 80 BE */	lis r3, lit_3707@ha /* 0x80BE4AC4@ha */
/* 80BE4444  C0 03 4A C4 */	lfs f0, lit_3707@l(r3)  /* 0x80BE4AC4@l */
/* 80BE4448  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BE444C  FC 00 00 50 */	fneg f0, f0
/* 80BE4450  EC 00 F8 24 */	fdivs f0, f0, f31
/* 80BE4454  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BE4458  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BE445C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80BE4460  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE4464  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BE4468  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008025E@ha */
/* 80BE446C  38 03 02 5E */	addi r0, r3, 0x025E /* 0x0008025E@l */
/* 80BE4470  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BE4474  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 80BE4478  38 81 00 0C */	addi r4, r1, 0xc
/* 80BE447C  38 A0 00 00 */	li r5, 0
/* 80BE4480  38 C0 FF FF */	li r6, -1
/* 80BE4484  81 9E 06 04 */	lwz r12, 0x604(r30)
/* 80BE4488  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80BE448C  7D 89 03 A6 */	mtctr r12
/* 80BE4490  4E 80 04 21 */	bctrl 
/* 80BE4494  38 7E 05 DA */	addi r3, r30, 0x5da
/* 80BE4498  48 00 05 D9 */	bl func_80BE4A70
/* 80BE449C  7C 60 07 35 */	extsh. r0, r3
/* 80BE44A0  40 82 00 24 */	bne lbl_80BE44C4
/* 80BE44A4  38 00 00 00 */	li r0, 0
/* 80BE44A8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BE44AC  98 03 00 14 */	stb r0, 0x14(r3)
/* 80BE44B0  3C 60 80 BE */	lis r3, lit_3677@ha /* 0x80BE4AB0@ha */
/* 80BE44B4  C0 03 4A B0 */	lfs f0, lit_3677@l(r3)  /* 0x80BE4AB0@l */
/* 80BE44B8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BE44BC  38 00 00 02 */	li r0, 2
/* 80BE44C0  98 1E 05 F0 */	stb r0, 0x5f0(r30)
lbl_80BE44C4:
/* 80BE44C4  3C 60 80 BE */	lis r3, lit_3677@ha /* 0x80BE4AB0@ha */
/* 80BE44C8  C0 23 4A B0 */	lfs f1, lit_3677@l(r3)  /* 0x80BE4AB0@l */
/* 80BE44CC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80BE44D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BE44D4  41 82 00 10 */	beq lbl_80BE44E4
/* 80BE44D8  38 00 00 00 */	li r0, 0
/* 80BE44DC  B0 1E 05 DE */	sth r0, 0x5de(r30)
/* 80BE44E0  48 00 00 0C */	b lbl_80BE44EC
lbl_80BE44E4:
/* 80BE44E4  38 00 00 00 */	li r0, 0
/* 80BE44E8  B0 1E 05 DE */	sth r0, 0x5de(r30)
lbl_80BE44EC:
/* 80BE44EC  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80BE44F0  A8 9E 05 DE */	lha r4, 0x5de(r30)
/* 80BE44F4  38 A0 00 32 */	li r5, 0x32
/* 80BE44F8  4B 68 C1 D9 */	bl cLib_chaseS__FPsss
/* 80BE44FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BE4500  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BE4504  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 80BE4508  1C 00 05 DC */	mulli r0, r0, 0x5dc
/* 80BE450C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BE4510  7C 64 02 14 */	add r3, r4, r0
/* 80BE4514  C0 43 00 04 */	lfs f2, 4(r3)
/* 80BE4518  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 80BE451C  3C 60 80 BE */	lis r3, lit_3930@ha /* 0x80BE4B00@ha */
/* 80BE4520  C8 23 4B 00 */	lfd f1, lit_3930@l(r3)  /* 0x80BE4B00@l */
/* 80BE4524  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE4528  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE452C  3C 60 43 30 */	lis r3, 0x4330
/* 80BE4530  90 61 00 10 */	stw r3, 0x10(r1)
/* 80BE4534  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BE4538  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BE453C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BE4540  FC 00 00 1E */	fctiwz f0, f0
/* 80BE4544  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BE4548  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BE454C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80BE4550  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 80BE4554  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 80BE4558  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BE455C  7C 44 04 2E */	lfsx f2, r4, r0
/* 80BE4560  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 80BE4564  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE4568  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE456C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80BE4570  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BE4574  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BE4578  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BE457C  FC 00 00 1E */	fctiwz f0, f0
/* 80BE4580  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BE4584  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BE4588  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80BE458C  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80BE4590  3C 03 00 01 */	addis r0, r3, 1
/* 80BE4594  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BE4598  41 82 00 3C */	beq lbl_80BE45D4
/* 80BE459C  90 61 00 08 */	stw r3, 8(r1)
/* 80BE45A0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80BE45A4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80BE45A8  38 81 00 08 */	addi r4, r1, 8
/* 80BE45AC  4B 43 52 4D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80BE45B0  28 03 00 00 */	cmplwi r3, 0
/* 80BE45B4  41 82 00 20 */	beq lbl_80BE45D4
/* 80BE45B8  3C 80 80 BE */	lis r4, lit_3677@ha /* 0x80BE4AB0@ha */
/* 80BE45BC  C0 24 4A B0 */	lfs f1, lit_3677@l(r4)  /* 0x80BE4AB0@l */
/* 80BE45C0  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80BE45C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BE45C8  41 82 00 0C */	beq lbl_80BE45D4
/* 80BE45CC  38 00 00 05 */	li r0, 5
/* 80BE45D0  98 1E 05 F0 */	stb r0, 0x5f0(r30)
lbl_80BE45D4:
/* 80BE45D4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80BE45D8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80BE45DC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BE45E0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BE45E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BE45E8  7C 08 03 A6 */	mtlr r0
/* 80BE45EC  38 21 00 50 */	addi r1, r1, 0x50
/* 80BE45F0  4E 80 00 20 */	blr 
