lbl_801A4420:
/* 801A4420  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801A4424  7C 08 02 A6 */	mflr r0
/* 801A4428  90 01 00 94 */	stw r0, 0x94(r1)
/* 801A442C  39 61 00 90 */	addi r11, r1, 0x90
/* 801A4430  48 1B DD 91 */	bl _savegpr_22
/* 801A4434  7C 78 1B 78 */	mr r24, r3
/* 801A4438  7C 99 23 79 */	or. r25, r4, r4
/* 801A443C  7C BA 2B 78 */	mr r26, r5
/* 801A4440  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A4444  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A4448  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801A444C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 801A4450  41 82 07 A0 */	beq lbl_801A4BF0
/* 801A4454  A8 19 03 48 */	lha r0, 0x348(r25)
/* 801A4458  98 01 00 08 */	stb r0, 8(r1)
/* 801A445C  A8 19 03 4A */	lha r0, 0x34a(r25)
/* 801A4460  98 01 00 09 */	stb r0, 9(r1)
/* 801A4464  A8 19 03 4C */	lha r0, 0x34c(r25)
/* 801A4468  98 01 00 0A */	stb r0, 0xa(r1)
/* 801A446C  A8 19 03 4E */	lha r0, 0x34e(r25)
/* 801A4470  98 01 00 0B */	stb r0, 0xb(r1)
/* 801A4474  88 19 03 7A */	lbz r0, 0x37a(r25)
/* 801A4478  28 00 00 01 */	cmplwi r0, 1
/* 801A447C  41 80 00 0C */	blt lbl_801A4488
/* 801A4480  28 00 00 07 */	cmplwi r0, 7
/* 801A4484  40 81 00 28 */	ble lbl_801A44AC
lbl_801A4488:
/* 801A4488  28 00 00 05 */	cmplwi r0, 5
/* 801A448C  41 82 00 20 */	beq lbl_801A44AC
/* 801A4490  28 00 00 0F */	cmplwi r0, 0xf
/* 801A4494  41 82 00 18 */	beq lbl_801A44AC
/* 801A4498  28 00 00 09 */	cmplwi r0, 9
/* 801A449C  40 82 01 60 */	bne lbl_801A45FC
/* 801A44A0  48 00 80 DD */	bl dKy_darkworld_check__Fv
/* 801A44A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A44A8  41 82 01 54 */	beq lbl_801A45FC
lbl_801A44AC:
/* 801A44AC  88 19 03 7A */	lbz r0, 0x37a(r25)
/* 801A44B0  28 00 00 02 */	cmplwi r0, 2
/* 801A44B4  41 82 00 0C */	beq lbl_801A44C0
/* 801A44B8  28 00 00 03 */	cmplwi r0, 3
/* 801A44BC  40 82 00 10 */	bne lbl_801A44CC
lbl_801A44C0:
/* 801A44C0  48 00 80 BD */	bl dKy_darkworld_check__Fv
/* 801A44C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A44C8  41 82 01 34 */	beq lbl_801A45FC
lbl_801A44CC:
/* 801A44CC  38 00 00 00 */	li r0, 0
/* 801A44D0  98 01 00 08 */	stb r0, 8(r1)
/* 801A44D4  98 01 00 09 */	stb r0, 9(r1)
/* 801A44D8  98 01 00 0A */	stb r0, 0xa(r1)
/* 801A44DC  98 01 00 0B */	stb r0, 0xb(r1)
/* 801A44E0  88 19 03 7A */	lbz r0, 0x37a(r25)
/* 801A44E4  28 00 00 07 */	cmplwi r0, 7
/* 801A44E8  40 82 00 0C */	bne lbl_801A44F4
/* 801A44EC  38 00 00 04 */	li r0, 4
/* 801A44F0  98 01 00 0B */	stb r0, 0xb(r1)
lbl_801A44F4:
/* 801A44F4  88 19 03 7A */	lbz r0, 0x37a(r25)
/* 801A44F8  28 00 00 03 */	cmplwi r0, 3
/* 801A44FC  40 82 00 18 */	bne lbl_801A4514
/* 801A4500  38 00 00 0C */	li r0, 0xc
/* 801A4504  98 01 00 08 */	stb r0, 8(r1)
/* 801A4508  98 01 00 09 */	stb r0, 9(r1)
/* 801A450C  98 01 00 0A */	stb r0, 0xa(r1)
/* 801A4510  48 00 00 EC */	b lbl_801A45FC
lbl_801A4514:
/* 801A4514  28 00 00 06 */	cmplwi r0, 6
/* 801A4518  40 82 00 64 */	bne lbl_801A457C
/* 801A451C  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 801A4520  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 801A4524  1C 00 02 96 */	mulli r0, r0, 0x296
/* 801A4528  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801A452C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801A4530  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 801A4534  7C 03 04 2E */	lfsx f0, r3, r0
/* 801A4538  FC 00 02 10 */	fabs f0, f0
/* 801A453C  FC 40 00 18 */	frsp f2, f0
/* 801A4540  C0 22 A2 6C */	lfs f1, lit_4732(r2)
/* 801A4544  C0 02 A3 90 */	lfs f0, lit_7186(r2)
/* 801A4548  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A454C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801A4550  FC 00 00 1E */	fctiwz f0, f0
/* 801A4554  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801A4558  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801A455C  98 01 00 08 */	stb r0, 8(r1)
/* 801A4560  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A4564  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A4568  98 01 00 09 */	stb r0, 9(r1)
/* 801A456C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 801A4570  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801A4574  98 01 00 0A */	stb r0, 0xa(r1)
/* 801A4578  48 00 00 84 */	b lbl_801A45FC
lbl_801A457C:
/* 801A457C  28 00 00 02 */	cmplwi r0, 2
/* 801A4580  40 82 00 18 */	bne lbl_801A4598
/* 801A4584  38 00 00 12 */	li r0, 0x12
/* 801A4588  98 01 00 08 */	stb r0, 8(r1)
/* 801A458C  98 01 00 09 */	stb r0, 9(r1)
/* 801A4590  98 01 00 0A */	stb r0, 0xa(r1)
/* 801A4594  48 00 00 68 */	b lbl_801A45FC
lbl_801A4598:
/* 801A4598  28 00 00 04 */	cmplwi r0, 4
/* 801A459C  40 82 00 20 */	bne lbl_801A45BC
/* 801A45A0  38 00 00 FF */	li r0, 0xff
/* 801A45A4  98 01 00 08 */	stb r0, 8(r1)
/* 801A45A8  38 00 00 33 */	li r0, 0x33
/* 801A45AC  98 01 00 09 */	stb r0, 9(r1)
/* 801A45B0  38 00 00 0B */	li r0, 0xb
/* 801A45B4  98 01 00 0A */	stb r0, 0xa(r1)
/* 801A45B8  48 00 00 44 */	b lbl_801A45FC
lbl_801A45BC:
/* 801A45BC  28 00 00 05 */	cmplwi r0, 5
/* 801A45C0  40 82 00 1C */	bne lbl_801A45DC
/* 801A45C4  38 00 00 0A */	li r0, 0xa
/* 801A45C8  98 01 00 08 */	stb r0, 8(r1)
/* 801A45CC  98 01 00 09 */	stb r0, 9(r1)
/* 801A45D0  38 00 00 08 */	li r0, 8
/* 801A45D4  98 01 00 0A */	stb r0, 0xa(r1)
/* 801A45D8  48 00 00 24 */	b lbl_801A45FC
lbl_801A45DC:
/* 801A45DC  28 00 00 0F */	cmplwi r0, 0xf
/* 801A45E0  40 82 00 1C */	bne lbl_801A45FC
/* 801A45E4  38 00 00 19 */	li r0, 0x19
/* 801A45E8  98 01 00 08 */	stb r0, 8(r1)
/* 801A45EC  38 00 00 1E */	li r0, 0x1e
/* 801A45F0  98 01 00 09 */	stb r0, 9(r1)
/* 801A45F4  38 00 00 23 */	li r0, 0x23
/* 801A45F8  98 01 00 0A */	stb r0, 0xa(r1)
lbl_801A45FC:
/* 801A45FC  80 78 00 24 */	lwz r3, 0x24(r24)
/* 801A4600  38 80 00 00 */	li r4, 0
/* 801A4604  38 A1 00 08 */	addi r5, r1, 8
/* 801A4608  81 83 00 00 */	lwz r12, 0(r3)
/* 801A460C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 801A4610  7D 89 03 A6 */	mtctr r12
/* 801A4614  4E 80 04 21 */	bctrl 
/* 801A4618  2C 1A 00 00 */	cmpwi r26, 0
/* 801A461C  41 82 00 3C */	beq lbl_801A4658
/* 801A4620  80 78 00 2C */	lwz r3, 0x2c(r24)
/* 801A4624  38 80 00 00 */	li r4, 0
/* 801A4628  38 B9 03 58 */	addi r5, r25, 0x358
/* 801A462C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4630  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801A4634  7D 89 03 A6 */	mtctr r12
/* 801A4638  4E 80 04 21 */	bctrl 
/* 801A463C  80 78 00 2C */	lwz r3, 0x2c(r24)
/* 801A4640  38 80 00 00 */	li r4, 0
/* 801A4644  38 B9 03 60 */	addi r5, r25, 0x360
/* 801A4648  81 83 00 00 */	lwz r12, 0(r3)
/* 801A464C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801A4650  7D 89 03 A6 */	mtctr r12
/* 801A4654  4E 80 04 21 */	bctrl 
lbl_801A4658:
/* 801A4658  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801A465C  34 63 4A C8 */	addic. r3, r3, 0x80434AC8@l /* 0x80434AC8@l */
/* 801A4660  41 82 00 28 */	beq lbl_801A4688
/* 801A4664  38 99 03 2C */	addi r4, r25, 0x32c
/* 801A4668  38 A1 00 0C */	addi r5, r1, 0xc
/* 801A466C  48 1A 27 01 */	bl PSMTXMultVec
/* 801A4670  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801A4674  D0 19 00 00 */	stfs f0, 0(r25)
/* 801A4678  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801A467C  D0 19 00 04 */	stfs f0, 4(r25)
/* 801A4680  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801A4684  D0 19 00 08 */	stfs f0, 8(r25)
lbl_801A4688:
/* 801A4688  80 78 00 24 */	lwz r3, 0x24(r24)
/* 801A468C  38 80 00 00 */	li r4, 0
/* 801A4690  7F 25 CB 78 */	mr r5, r25
/* 801A4694  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4698  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 801A469C  7D 89 03 A6 */	mtctr r12
/* 801A46A0  4E 80 04 21 */	bctrl 
/* 801A46A4  28 1F 00 00 */	cmplwi r31, 0
/* 801A46A8  41 82 04 44 */	beq lbl_801A4AEC
/* 801A46AC  2C 1A 00 02 */	cmpwi r26, 2
/* 801A46B0  41 82 00 40 */	beq lbl_801A46F0
/* 801A46B4  3A E0 00 00 */	li r23, 0
/* 801A46B8  3A C0 00 00 */	li r22, 0
lbl_801A46BC:
/* 801A46BC  80 78 00 24 */	lwz r3, 0x24(r24)
/* 801A46C0  38 97 00 02 */	addi r4, r23, 2
/* 801A46C4  38 B6 00 74 */	addi r5, r22, 0x74
/* 801A46C8  7C B9 2A 14 */	add r5, r25, r5
/* 801A46CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801A46D0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 801A46D4  7D 89 03 A6 */	mtctr r12
/* 801A46D8  4E 80 04 21 */	bctrl 
/* 801A46DC  3A F7 00 01 */	addi r23, r23, 1
/* 801A46E0  2C 17 00 06 */	cmpwi r23, 6
/* 801A46E4  3A D6 00 74 */	addi r22, r22, 0x74
/* 801A46E8  41 80 FF D4 */	blt lbl_801A46BC
/* 801A46EC  48 00 04 00 */	b lbl_801A4AEC
lbl_801A46F0:
/* 801A46F0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A46F4  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A46F8  88 1F 12 FE */	lbz r0, 0x12fe(r31)
/* 801A46FC  28 00 00 01 */	cmplwi r0, 1
/* 801A4700  41 80 03 EC */	blt lbl_801A4AEC
/* 801A4704  28 00 00 04 */	cmplwi r0, 4
/* 801A4708  41 81 03 E4 */	bgt lbl_801A4AEC
/* 801A470C  4B EB 23 59 */	bl dKyd_maple_col_getp__Fv
/* 801A4710  88 1F 12 FE */	lbz r0, 0x12fe(r31)
/* 801A4714  1C 80 00 03 */	mulli r4, r0, 3
/* 801A4718  38 04 00 15 */	addi r0, r4, 0x15
/* 801A471C  7E C3 00 AE */	lbzx r22, r3, r0
/* 801A4720  4B EB 23 45 */	bl dKyd_maple_col_getp__Fv
/* 801A4724  88 1F 12 FE */	lbz r0, 0x12fe(r31)
/* 801A4728  1C 80 00 03 */	mulli r4, r0, 3
/* 801A472C  38 04 00 16 */	addi r0, r4, 0x16
/* 801A4730  7E E3 00 AE */	lbzx r23, r3, r0
/* 801A4734  4B EB 23 31 */	bl dKyd_maple_col_getp__Fv
/* 801A4738  88 1F 12 FE */	lbz r0, 0x12fe(r31)
/* 801A473C  1C 80 00 03 */	mulli r4, r0, 3
/* 801A4740  38 04 00 17 */	addi r0, r4, 0x17
/* 801A4744  7C 83 00 AE */	lbzx r4, r3, r0
/* 801A4748  38 00 00 0A */	li r0, 0xa
/* 801A474C  98 01 00 08 */	stb r0, 8(r1)
/* 801A4750  98 01 00 09 */	stb r0, 9(r1)
/* 801A4754  98 01 00 0A */	stb r0, 0xa(r1)
/* 801A4758  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A475C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A4760  3C 00 43 30 */	lis r0, 0x4330
/* 801A4764  90 01 00 28 */	stw r0, 0x28(r1)
/* 801A4768  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A476C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A4770  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A4774  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A4778  C0 43 12 00 */	lfs f2, 0x1200(r3)
/* 801A477C  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801A4780  C0 02 A3 28 */	lfs f0, lit_6766(r2)
/* 801A4784  EC 61 00 24 */	fdivs f3, f1, f0
/* 801A4788  EC 63 00 F2 */	fmuls f3, f3, f3
/* 801A478C  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A4790  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801A4794  40 81 00 08 */	ble lbl_801A479C
/* 801A4798  FC 60 00 90 */	fmr f3, f0
lbl_801A479C:
/* 801A479C  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A47A0  92 C1 00 24 */	stw r22, 0x24(r1)
/* 801A47A4  3C 60 43 30 */	lis r3, 0x4330
/* 801A47A8  90 61 00 20 */	stw r3, 0x20(r1)
/* 801A47AC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801A47B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A47B4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801A47B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A47BC  FC 00 00 1E */	fctiwz f0, f0
/* 801A47C0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801A47C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801A47C8  98 01 00 08 */	stb r0, 8(r1)
/* 801A47CC  88 01 00 09 */	lbz r0, 9(r1)
/* 801A47D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A47D4  90 61 00 30 */	stw r3, 0x30(r1)
/* 801A47D8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801A47DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A47E0  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801A47E4  C0 02 A3 28 */	lfs f0, lit_6766(r2)
/* 801A47E8  EC 61 00 24 */	fdivs f3, f1, f0
/* 801A47EC  EC 63 00 F2 */	fmuls f3, f3, f3
/* 801A47F0  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A47F4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801A47F8  40 81 00 08 */	ble lbl_801A4800
/* 801A47FC  FC 60 00 90 */	fmr f3, f0
lbl_801A4800:
/* 801A4800  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A4804  92 E1 00 3C */	stw r23, 0x3c(r1)
/* 801A4808  3C 60 43 30 */	lis r3, 0x4330
/* 801A480C  90 61 00 38 */	stw r3, 0x38(r1)
/* 801A4810  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801A4814  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A4818  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801A481C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A4820  FC 00 00 1E */	fctiwz f0, f0
/* 801A4824  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801A4828  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A482C  98 01 00 09 */	stb r0, 9(r1)
/* 801A4830  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801A4834  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801A4838  90 61 00 48 */	stw r3, 0x48(r1)
/* 801A483C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801A4840  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A4844  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801A4848  C0 02 A3 28 */	lfs f0, lit_6766(r2)
/* 801A484C  EC 61 00 24 */	fdivs f3, f1, f0
/* 801A4850  EC 63 00 F2 */	fmuls f3, f3, f3
/* 801A4854  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A4858  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801A485C  40 81 00 08 */	ble lbl_801A4864
/* 801A4860  FC 60 00 90 */	fmr f3, f0
lbl_801A4864:
/* 801A4864  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A4868  90 81 00 54 */	stw r4, 0x54(r1)
/* 801A486C  3C 00 43 30 */	lis r0, 0x4330
/* 801A4870  90 01 00 50 */	stw r0, 0x50(r1)
/* 801A4874  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801A4878  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A487C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801A4880  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A4884  FC 00 00 1E */	fctiwz f0, f0
/* 801A4888  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 801A488C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 801A4890  98 01 00 0A */	stb r0, 0xa(r1)
/* 801A4894  80 78 00 24 */	lwz r3, 0x24(r24)
/* 801A4898  38 80 00 00 */	li r4, 0
/* 801A489C  38 A1 00 08 */	addi r5, r1, 8
/* 801A48A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801A48A4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 801A48A8  7D 89 03 A6 */	mtctr r12
/* 801A48AC  4E 80 04 21 */	bctrl 
/* 801A48B0  3B A0 00 00 */	li r29, 0
/* 801A48B4  3A E0 00 00 */	li r23, 0
/* 801A48B8  3A C0 00 00 */	li r22, 0
lbl_801A48BC:
/* 801A48BC  2C 1D 00 01 */	cmpwi r29, 1
/* 801A48C0  41 81 01 F8 */	bgt lbl_801A4AB8
/* 801A48C4  2C 1D 00 00 */	cmpwi r29, 0
/* 801A48C8  40 82 00 40 */	bne lbl_801A4908
/* 801A48CC  3B 56 0F 50 */	addi r26, r22, 0xf50
/* 801A48D0  7F 5E D2 14 */	add r26, r30, r26
/* 801A48D4  7F 43 D3 78 */	mr r3, r26
/* 801A48D8  38 96 00 74 */	addi r4, r22, 0x74
/* 801A48DC  7C 99 22 14 */	add r4, r25, r4
/* 801A48E0  48 18 0D E5 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 801A48E4  88 1A 00 18 */	lbz r0, 0x18(r26)
/* 801A48E8  98 1E 0F DC */	stb r0, 0xfdc(r30)
/* 801A48EC  88 1A 00 19 */	lbz r0, 0x19(r26)
/* 801A48F0  98 1E 0F DD */	stb r0, 0xfdd(r30)
/* 801A48F4  88 1A 00 1A */	lbz r0, 0x1a(r26)
/* 801A48F8  98 1E 0F DE */	stb r0, 0xfde(r30)
/* 801A48FC  88 1A 00 1B */	lbz r0, 0x1b(r26)
/* 801A4900  98 1E 0F DF */	stb r0, 0xfdf(r30)
/* 801A4904  48 00 00 0C */	b lbl_801A4910
lbl_801A4908:
/* 801A4908  3B 56 0F 50 */	addi r26, r22, 0xf50
/* 801A490C  7F 5E D2 14 */	add r26, r30, r26
lbl_801A4910:
/* 801A4910  4B EB 21 55 */	bl dKyd_maple_col_getp__Fv
/* 801A4914  88 1F 12 FE */	lbz r0, 0x12fe(r31)
/* 801A4918  7C 80 BA 14 */	add r4, r0, r23
/* 801A491C  38 04 FF FF */	addi r0, r4, -1
/* 801A4920  1C 00 00 03 */	mulli r0, r0, 3
/* 801A4924  7F 83 00 AE */	lbzx r28, r3, r0
/* 801A4928  4B EB 21 3D */	bl dKyd_maple_col_getp__Fv
/* 801A492C  88 1F 12 FE */	lbz r0, 0x12fe(r31)
/* 801A4930  7C 80 BA 14 */	add r4, r0, r23
/* 801A4934  38 04 FF FF */	addi r0, r4, -1
/* 801A4938  1C 80 00 03 */	mulli r4, r0, 3
/* 801A493C  38 04 00 01 */	addi r0, r4, 1
/* 801A4940  7F 63 00 AE */	lbzx r27, r3, r0
/* 801A4944  4B EB 21 21 */	bl dKyd_maple_col_getp__Fv
/* 801A4948  88 1F 12 FE */	lbz r0, 0x12fe(r31)
/* 801A494C  7C 80 BA 14 */	add r4, r0, r23
/* 801A4950  38 04 FF FF */	addi r0, r4, -1
/* 801A4954  1C 80 00 03 */	mulli r4, r0, 3
/* 801A4958  38 04 00 02 */	addi r0, r4, 2
/* 801A495C  7C 83 00 AE */	lbzx r4, r3, r0
/* 801A4960  88 1A 00 18 */	lbz r0, 0x18(r26)
/* 801A4964  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A4968  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801A496C  3C 00 43 30 */	lis r0, 0x4330
/* 801A4970  90 01 00 58 */	stw r0, 0x58(r1)
/* 801A4974  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 801A4978  EC 20 08 28 */	fsubs f1, f0, f1
/* 801A497C  C0 02 A3 94 */	lfs f0, lit_7187(r2)
/* 801A4980  EC 41 00 24 */	fdivs f2, f1, f0
/* 801A4984  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801A4988  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A498C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A4990  40 81 00 08 */	ble lbl_801A4998
/* 801A4994  FC 40 00 90 */	fmr f2, f0
lbl_801A4998:
/* 801A4998  9B 9A 00 18 */	stb r28, 0x18(r26)
/* 801A499C  88 1A 00 18 */	lbz r0, 0x18(r26)
/* 801A49A0  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A49A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A49A8  3C 60 43 30 */	lis r3, 0x4330
/* 801A49AC  90 61 00 50 */	stw r3, 0x50(r1)
/* 801A49B0  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801A49B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A49B8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A49BC  FC 00 00 1E */	fctiwz f0, f0
/* 801A49C0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 801A49C4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 801A49C8  98 1A 00 18 */	stb r0, 0x18(r26)
/* 801A49CC  88 1A 00 19 */	lbz r0, 0x19(r26)
/* 801A49D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A49D4  90 61 00 40 */	stw r3, 0x40(r1)
/* 801A49D8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801A49DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 801A49E0  C0 02 A3 94 */	lfs f0, lit_7187(r2)
/* 801A49E4  EC 41 00 24 */	fdivs f2, f1, f0
/* 801A49E8  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801A49EC  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A49F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A49F4  40 81 00 08 */	ble lbl_801A49FC
/* 801A49F8  FC 40 00 90 */	fmr f2, f0
lbl_801A49FC:
/* 801A49FC  9B 7A 00 19 */	stb r27, 0x19(r26)
/* 801A4A00  88 1A 00 19 */	lbz r0, 0x19(r26)
/* 801A4A04  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A4A08  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801A4A0C  3C 60 43 30 */	lis r3, 0x4330
/* 801A4A10  90 61 00 38 */	stw r3, 0x38(r1)
/* 801A4A14  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801A4A18  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A4A1C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A4A20  FC 00 00 1E */	fctiwz f0, f0
/* 801A4A24  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A4A28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A4A2C  98 1A 00 19 */	stb r0, 0x19(r26)
/* 801A4A30  88 1A 00 1A */	lbz r0, 0x1a(r26)
/* 801A4A34  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A4A38  90 61 00 28 */	stw r3, 0x28(r1)
/* 801A4A3C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A4A40  EC 20 08 28 */	fsubs f1, f0, f1
/* 801A4A44  C0 02 A3 94 */	lfs f0, lit_7187(r2)
/* 801A4A48  EC 41 00 24 */	fdivs f2, f1, f0
/* 801A4A4C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801A4A50  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A4A54  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A4A58  40 81 00 08 */	ble lbl_801A4A60
/* 801A4A5C  FC 40 00 90 */	fmr f2, f0
lbl_801A4A60:
/* 801A4A60  98 9A 00 1A */	stb r4, 0x1a(r26)
/* 801A4A64  88 1A 00 1A */	lbz r0, 0x1a(r26)
/* 801A4A68  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A4A6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A4A70  3C 00 43 30 */	lis r0, 0x4330
/* 801A4A74  90 01 00 20 */	stw r0, 0x20(r1)
/* 801A4A78  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801A4A7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A4A80  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A4A84  FC 00 00 1E */	fctiwz f0, f0
/* 801A4A88  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801A4A8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801A4A90  98 1A 00 1A */	stb r0, 0x1a(r26)
/* 801A4A94  80 78 00 24 */	lwz r3, 0x24(r24)
/* 801A4A98  38 9D 00 02 */	addi r4, r29, 2
/* 801A4A9C  38 B6 0F 50 */	addi r5, r22, 0xf50
/* 801A4AA0  7C BE 2A 14 */	add r5, r30, r5
/* 801A4AA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4AA8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 801A4AAC  7D 89 03 A6 */	mtctr r12
/* 801A4AB0  4E 80 04 21 */	bctrl 
/* 801A4AB4  48 00 00 24 */	b lbl_801A4AD8
lbl_801A4AB8:
/* 801A4AB8  80 78 00 24 */	lwz r3, 0x24(r24)
/* 801A4ABC  38 9D 00 02 */	addi r4, r29, 2
/* 801A4AC0  38 B6 00 74 */	addi r5, r22, 0x74
/* 801A4AC4  7C B9 2A 14 */	add r5, r25, r5
/* 801A4AC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4ACC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 801A4AD0  7D 89 03 A6 */	mtctr r12
/* 801A4AD4  4E 80 04 21 */	bctrl 
lbl_801A4AD8:
/* 801A4AD8  3B BD 00 01 */	addi r29, r29, 1
/* 801A4ADC  2C 1D 00 06 */	cmpwi r29, 6
/* 801A4AE0  3A F7 00 04 */	addi r23, r23, 4
/* 801A4AE4  3A D6 00 74 */	addi r22, r22, 0x74
/* 801A4AE8  41 80 FD D4 */	blt lbl_801A48BC
lbl_801A4AEC:
/* 801A4AEC  80 78 00 34 */	lwz r3, 0x34(r24)
/* 801A4AF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4AF4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801A4AF8  7D 89 03 A6 */	mtctr r12
/* 801A4AFC  4E 80 04 21 */	bctrl 
/* 801A4B00  28 03 00 00 */	cmplwi r3, 0
/* 801A4B04  41 82 00 EC */	beq lbl_801A4BF0
/* 801A4B08  80 78 00 34 */	lwz r3, 0x34(r24)
/* 801A4B0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4B10  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801A4B14  7D 89 03 A6 */	mtctr r12
/* 801A4B18  4E 80 04 21 */	bctrl 
/* 801A4B1C  88 03 00 00 */	lbz r0, 0(r3)
/* 801A4B20  28 00 00 00 */	cmplwi r0, 0
/* 801A4B24  41 82 00 CC */	beq lbl_801A4BF0
/* 801A4B28  C0 19 03 68 */	lfs f0, 0x368(r25)
/* 801A4B2C  D0 03 00 04 */	stfs f0, 4(r3)
/* 801A4B30  C0 19 03 6C */	lfs f0, 0x36c(r25)
/* 801A4B34  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A4B38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A4B3C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A4B40  80 A4 61 B0 */	lwz r5, 0x61b0(r4)
/* 801A4B44  28 05 00 00 */	cmplwi r5, 0
/* 801A4B48  41 82 00 18 */	beq lbl_801A4B60
/* 801A4B4C  C0 05 00 C8 */	lfs f0, 0xc8(r5)
/* 801A4B50  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801A4B54  80 84 61 B0 */	lwz r4, 0x61b0(r4)
/* 801A4B58  C0 04 00 CC */	lfs f0, 0xcc(r4)
/* 801A4B5C  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_801A4B60:
/* 801A4B60  88 03 00 00 */	lbz r0, 0(r3)
/* 801A4B64  28 00 00 07 */	cmplwi r0, 7
/* 801A4B68  40 82 00 20 */	bne lbl_801A4B88
/* 801A4B6C  38 00 00 02 */	li r0, 2
/* 801A4B70  98 03 00 00 */	stb r0, 0(r3)
/* 801A4B74  38 00 00 00 */	li r0, 0
/* 801A4B78  98 03 00 14 */	stb r0, 0x14(r3)
/* 801A4B7C  98 03 00 15 */	stb r0, 0x15(r3)
/* 801A4B80  98 03 00 16 */	stb r0, 0x16(r3)
/* 801A4B84  48 00 00 38 */	b lbl_801A4BBC
lbl_801A4B88:
/* 801A4B88  28 00 00 06 */	cmplwi r0, 6
/* 801A4B8C  40 82 00 18 */	bne lbl_801A4BA4
/* 801A4B90  38 00 00 FF */	li r0, 0xff
/* 801A4B94  98 03 00 14 */	stb r0, 0x14(r3)
/* 801A4B98  98 03 00 15 */	stb r0, 0x15(r3)
/* 801A4B9C  98 03 00 16 */	stb r0, 0x16(r3)
/* 801A4BA0  48 00 00 1C */	b lbl_801A4BBC
lbl_801A4BA4:
/* 801A4BA4  A8 19 03 50 */	lha r0, 0x350(r25)
/* 801A4BA8  98 03 00 14 */	stb r0, 0x14(r3)
/* 801A4BAC  A8 19 03 52 */	lha r0, 0x352(r25)
/* 801A4BB0  98 03 00 15 */	stb r0, 0x15(r3)
/* 801A4BB4  A8 19 03 54 */	lha r0, 0x354(r25)
/* 801A4BB8  98 03 00 16 */	stb r0, 0x16(r3)
lbl_801A4BBC:
/* 801A4BBC  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A4BC0  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A4BC4  88 04 12 CF */	lbz r0, 0x12cf(r4)
/* 801A4BC8  98 03 00 01 */	stb r0, 1(r3)
/* 801A4BCC  88 03 00 01 */	lbz r0, 1(r3)
/* 801A4BD0  28 00 00 01 */	cmplwi r0, 1
/* 801A4BD4  40 82 00 1C */	bne lbl_801A4BF0
/* 801A4BD8  A0 04 12 BC */	lhz r0, 0x12bc(r4)
/* 801A4BDC  B0 03 00 02 */	sth r0, 2(r3)
/* 801A4BE0  38 63 00 18 */	addi r3, r3, 0x18
/* 801A4BE4  38 84 10 AC */	addi r4, r4, 0x10ac
/* 801A4BE8  38 A0 00 14 */	li r5, 0x14
/* 801A4BEC  4B E5 E9 55 */	bl memcpy
lbl_801A4BF0:
/* 801A4BF0  39 61 00 90 */	addi r11, r1, 0x90
/* 801A4BF4  48 1B D6 19 */	bl _restgpr_22
/* 801A4BF8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801A4BFC  7C 08 03 A6 */	mtlr r0
/* 801A4C00  38 21 00 90 */	addi r1, r1, 0x90
/* 801A4C04  4E 80 00 20 */	blr 
