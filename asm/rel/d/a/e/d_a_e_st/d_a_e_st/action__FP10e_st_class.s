lbl_807A421C:
/* 807A421C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 807A4220  7C 08 02 A6 */	mflr r0
/* 807A4224  90 01 01 04 */	stw r0, 0x104(r1)
/* 807A4228  39 61 01 00 */	addi r11, r1, 0x100
/* 807A422C  4B BB DF 90 */	b _savegpr_21
/* 807A4230  7C 7D 1B 78 */	mr r29, r3
/* 807A4234  3C 80 80 7A */	lis r4, lit_3903@ha
/* 807A4238  3B C4 68 24 */	addi r30, r4, lit_3903@l
/* 807A423C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807A4240  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 807A4244  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 807A4248  88 03 05 B4 */	lbz r0, 0x5b4(r3)
/* 807A424C  28 00 00 02 */	cmplwi r0, 2
/* 807A4250  40 82 00 0C */	bne lbl_807A425C
/* 807A4254  4B FF F8 E5 */	bl damage_check_g__FP10e_st_class
/* 807A4258  48 00 00 08 */	b lbl_807A4260
lbl_807A425C:
/* 807A425C  4B FF A4 29 */	bl damage_check__FP10e_st_class
lbl_807A4260:
/* 807A4260  3B 60 00 01 */	li r27, 1
/* 807A4264  3B 40 00 00 */	li r26, 0
/* 807A4268  3B 20 00 00 */	li r25, 0
/* 807A426C  3B 00 00 00 */	li r24, 0
/* 807A4270  3A E0 00 00 */	li r23, 0
/* 807A4274  3A C0 00 00 */	li r22, 0
/* 807A4278  3A A0 00 00 */	li r21, 0
/* 807A427C  38 80 00 00 */	li r4, 0
/* 807A4280  98 9D 05 66 */	stb r4, 0x566(r29)
/* 807A4284  98 9D 0A D3 */	stb r4, 0xad3(r29)
/* 807A4288  A8 1D 06 7E */	lha r0, 0x67e(r29)
/* 807A428C  28 00 00 39 */	cmplwi r0, 0x39
/* 807A4290  41 81 02 6C */	bgt lbl_807A44FC
/* 807A4294  3C 60 80 7A */	lis r3, lit_6487@ha
/* 807A4298  38 63 6A 84 */	addi r3, r3, lit_6487@l
/* 807A429C  54 00 10 3A */	slwi r0, r0, 2
/* 807A42A0  7C 03 00 2E */	lwzx r0, r3, r0
/* 807A42A4  7C 09 03 A6 */	mtctr r0
/* 807A42A8  4E 80 04 20 */	bctr 
lbl_807A42AC:
/* 807A42AC  7F A3 EB 78 */	mr r3, r29
/* 807A42B0  4B FF AF 61 */	bl e_st_wait__FP10e_st_class
/* 807A42B4  3B 40 00 01 */	li r26, 1
/* 807A42B8  48 00 02 44 */	b lbl_807A44FC
lbl_807A42BC:
/* 807A42BC  7F A3 EB 78 */	mr r3, r29
/* 807A42C0  4B FF B2 19 */	bl e_st_move__FP10e_st_class
/* 807A42C4  3B 40 00 01 */	li r26, 1
/* 807A42C8  48 00 02 34 */	b lbl_807A44FC
lbl_807A42CC:
/* 807A42CC  7F A3 EB 78 */	mr r3, r29
/* 807A42D0  4B FF B3 D1 */	bl e_st_pl_search__FP10e_st_class
/* 807A42D4  38 00 00 01 */	li r0, 1
/* 807A42D8  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A42DC  3B 40 00 01 */	li r26, 1
/* 807A42E0  3A A0 00 01 */	li r21, 1
/* 807A42E4  48 00 02 18 */	b lbl_807A44FC
lbl_807A42E8:
/* 807A42E8  7F A3 EB 78 */	mr r3, r29
/* 807A42EC  4B FF B7 2D */	bl e_st_shoot__FP10e_st_class
/* 807A42F0  38 00 00 01 */	li r0, 1
/* 807A42F4  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A42F8  3A A0 00 01 */	li r21, 1
/* 807A42FC  48 00 02 00 */	b lbl_807A44FC
lbl_807A4300:
/* 807A4300  98 9D 0A 58 */	stb r4, 0xa58(r29)
/* 807A4304  7F A3 EB 78 */	mr r3, r29
/* 807A4308  4B FF CC 5D */	bl e_st_hang__FP10e_st_class
/* 807A430C  38 00 00 01 */	li r0, 1
/* 807A4310  98 1D 0B 94 */	stb r0, 0xb94(r29)
/* 807A4314  48 00 01 E8 */	b lbl_807A44FC
lbl_807A4318:
/* 807A4318  98 9D 0A 58 */	stb r4, 0xa58(r29)
/* 807A431C  7F A3 EB 78 */	mr r3, r29
/* 807A4320  4B FF CE CD */	bl e_st_hang_shoot__FP10e_st_class
/* 807A4324  38 00 00 01 */	li r0, 1
/* 807A4328  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A432C  3A A0 00 01 */	li r21, 1
/* 807A4330  48 00 01 CC */	b lbl_807A44FC
lbl_807A4334:
/* 807A4334  7F A3 EB 78 */	mr r3, r29
/* 807A4338  4B FF D2 31 */	bl e_st_hang_drop__FP10e_st_class
/* 807A433C  3B 00 00 01 */	li r24, 1
/* 807A4340  3A A0 00 01 */	li r21, 1
/* 807A4344  48 00 01 B8 */	b lbl_807A44FC
lbl_807A4348:
/* 807A4348  38 00 00 02 */	li r0, 2
/* 807A434C  98 1D 0A 58 */	stb r0, 0xa58(r29)
/* 807A4350  7F A3 EB 78 */	mr r3, r29
/* 807A4354  4B FF D4 89 */	bl e_st_hang_2__FP10e_st_class
/* 807A4358  7C 79 1B 78 */	mr r25, r3
/* 807A435C  38 00 00 01 */	li r0, 1
/* 807A4360  98 1D 0A D3 */	stb r0, 0xad3(r29)
/* 807A4364  98 1D 0B 94 */	stb r0, 0xb94(r29)
/* 807A4368  3B 00 00 01 */	li r24, 1
/* 807A436C  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A4370  3A A0 00 01 */	li r21, 1
/* 807A4374  48 00 01 88 */	b lbl_807A44FC
lbl_807A4378:
/* 807A4378  98 9D 0A 58 */	stb r4, 0xa58(r29)
/* 807A437C  7F A3 EB 78 */	mr r3, r29
/* 807A4380  4B FF DA 39 */	bl e_st_hang_2_shoot__FP10e_st_class
/* 807A4384  38 00 00 01 */	li r0, 1
/* 807A4388  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A438C  3A A0 00 01 */	li r21, 1
/* 807A4390  48 00 01 6C */	b lbl_807A44FC
lbl_807A4394:
/* 807A4394  38 00 00 0C */	li r0, 0xc
/* 807A4398  98 1D 0A D3 */	stb r0, 0xad3(r29)
/* 807A439C  98 9D 0A 58 */	stb r4, 0xa58(r29)
/* 807A43A0  7F A3 EB 78 */	mr r3, r29
/* 807A43A4  4B FF B8 A9 */	bl e_st_jump_attack__FP10e_st_class
/* 807A43A8  38 00 00 01 */	li r0, 1
/* 807A43AC  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A43B0  98 1D 0B 94 */	stb r0, 0xb94(r29)
/* 807A43B4  3A A0 00 01 */	li r21, 1
/* 807A43B8  48 00 01 44 */	b lbl_807A44FC
lbl_807A43BC:
/* 807A43BC  7F A3 EB 78 */	mr r3, r29
/* 807A43C0  4B FF DB E5 */	bl e_st_s_damage__FP10e_st_class
/* 807A43C4  48 00 01 38 */	b lbl_807A44FC
lbl_807A43C8:
/* 807A43C8  7F A3 EB 78 */	mr r3, r29
/* 807A43CC  4B FF DD 45 */	bl e_st_damage__FP10e_st_class
/* 807A43D0  3B 60 00 00 */	li r27, 0
/* 807A43D4  3B 00 00 01 */	li r24, 1
/* 807A43D8  48 00 01 24 */	b lbl_807A44FC
lbl_807A43DC:
/* 807A43DC  7F A3 EB 78 */	mr r3, r29
/* 807A43E0  4B FF E2 8D */	bl e_st_water__FP10e_st_class
/* 807A43E4  48 00 01 18 */	b lbl_807A44FC
lbl_807A43E8:
/* 807A43E8  7F A3 EB 78 */	mr r3, r29
/* 807A43EC  4B FF E7 15 */	bl e_st_g_normal__FP10e_st_class
/* 807A43F0  3A E0 00 01 */	li r23, 1
/* 807A43F4  38 00 00 01 */	li r0, 1
/* 807A43F8  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A43FC  3B 40 00 01 */	li r26, 1
/* 807A4400  3B 00 00 01 */	li r24, 1
/* 807A4404  48 00 00 F8 */	b lbl_807A44FC
lbl_807A4408:
/* 807A4408  7F A3 EB 78 */	mr r3, r29
/* 807A440C  4B FF E9 1D */	bl e_st_g_fight__FP10e_st_class
/* 807A4410  7C 76 1B 78 */	mr r22, r3
/* 807A4414  3A E0 00 01 */	li r23, 1
/* 807A4418  38 00 00 01 */	li r0, 1
/* 807A441C  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A4420  3B 40 00 01 */	li r26, 1
/* 807A4424  3B 00 00 01 */	li r24, 1
/* 807A4428  3A A0 00 01 */	li r21, 1
/* 807A442C  48 00 00 D0 */	b lbl_807A44FC
lbl_807A4430:
/* 807A4430  7F A3 EB 78 */	mr r3, r29
/* 807A4434  4B FF ED 15 */	bl e_st_g_def__FP10e_st_class
/* 807A4438  7C 76 1B 78 */	mr r22, r3
/* 807A443C  3A E0 00 01 */	li r23, 1
/* 807A4440  38 00 00 01 */	li r0, 1
/* 807A4444  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A4448  3B 40 00 01 */	li r26, 1
/* 807A444C  3B 00 00 01 */	li r24, 1
/* 807A4450  3A A0 00 01 */	li r21, 1
/* 807A4454  48 00 00 A8 */	b lbl_807A44FC
lbl_807A4458:
/* 807A4458  7F A3 EB 78 */	mr r3, r29
/* 807A445C  4B FF ED E5 */	bl e_st_g_damage__FP10e_st_class
/* 807A4460  3A E0 00 01 */	li r23, 1
/* 807A4464  38 00 00 01 */	li r0, 1
/* 807A4468  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A446C  3B 40 00 01 */	li r26, 1
/* 807A4470  3B 00 00 01 */	li r24, 1
/* 807A4474  3A A0 00 01 */	li r21, 1
/* 807A4478  48 00 00 84 */	b lbl_807A44FC
lbl_807A447C:
/* 807A447C  7F A3 EB 78 */	mr r3, r29
/* 807A4480  4B FF EE E1 */	bl e_st_g_s_damage__FP10e_st_class
/* 807A4484  3A E0 00 01 */	li r23, 1
/* 807A4488  38 00 00 01 */	li r0, 1
/* 807A448C  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A4490  3B 40 00 01 */	li r26, 1
/* 807A4494  3A A0 00 01 */	li r21, 1
/* 807A4498  48 00 00 64 */	b lbl_807A44FC
lbl_807A449C:
/* 807A449C  7F A3 EB 78 */	mr r3, r29
/* 807A44A0  4B FF EF B1 */	bl e_st_g_wind__FP10e_st_class
/* 807A44A4  3A E0 00 01 */	li r23, 1
/* 807A44A8  38 00 00 01 */	li r0, 1
/* 807A44AC  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A44B0  3B 40 00 01 */	li r26, 1
/* 807A44B4  3A A0 00 01 */	li r21, 1
/* 807A44B8  48 00 00 44 */	b lbl_807A44FC
lbl_807A44BC:
/* 807A44BC  7F A3 EB 78 */	mr r3, r29
/* 807A44C0  4B FF F0 89 */	bl e_st_g_chance__FP10e_st_class
/* 807A44C4  3A E0 00 01 */	li r23, 1
/* 807A44C8  3B 40 00 01 */	li r26, 1
/* 807A44CC  3B 00 00 01 */	li r24, 1
/* 807A44D0  38 00 00 02 */	li r0, 2
/* 807A44D4  98 1D 0A 58 */	stb r0, 0xa58(r29)
/* 807A44D8  48 00 00 24 */	b lbl_807A44FC
lbl_807A44DC:
/* 807A44DC  7F A3 EB 78 */	mr r3, r29
/* 807A44E0  4B FF F3 79 */	bl e_st_g_end__FP10e_st_class
/* 807A44E4  7C 7B 1B 78 */	mr r27, r3
/* 807A44E8  3A E0 00 01 */	li r23, 1
/* 807A44EC  3B 40 00 01 */	li r26, 1
/* 807A44F0  3B 00 00 01 */	li r24, 1
/* 807A44F4  38 00 00 02 */	li r0, 2
/* 807A44F8  98 1D 0A 58 */	stb r0, 0xa58(r29)
lbl_807A44FC:
/* 807A44FC  7E A0 07 75 */	extsb. r0, r21
/* 807A4500  41 82 00 14 */	beq lbl_807A4514
/* 807A4504  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807A4508  38 80 00 01 */	li r4, 1
/* 807A450C  4B B1 D6 70 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 807A4510  48 00 00 10 */	b lbl_807A4520
lbl_807A4514:
/* 807A4514  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807A4518  38 80 00 00 */	li r4, 0
/* 807A451C  4B B1 D6 60 */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_807A4520:
/* 807A4520  7E E0 07 75 */	extsb. r0, r23
/* 807A4524  41 82 02 FC */	beq lbl_807A4820
/* 807A4528  38 61 00 54 */	addi r3, r1, 0x54
/* 807A452C  4B 8D 37 3C */	b __ct__11dBgS_LinChkFv
/* 807A4530  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807A4534  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807A4538  80 63 00 00 */	lwz r3, 0(r3)
/* 807A453C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 807A4540  4B 86 7E 9C */	b mDoMtx_YrotS__FPA4_fs
/* 807A4544  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807A4548  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807A454C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A4550  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807A4554  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807A4558  38 61 00 48 */	addi r3, r1, 0x48
/* 807A455C  38 81 00 3C */	addi r4, r1, 0x3c
/* 807A4560  4B AC C9 8C */	b MtxPosition__FP4cXyzP4cXyz
/* 807A4564  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807A4568  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 807A456C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807A4570  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 807A4574  38 61 00 24 */	addi r3, r1, 0x24
/* 807A4578  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 807A457C  3C A0 80 7A */	lis r5, l_HIO@ha
/* 807A4580  38 A5 6D F4 */	addi r5, r5, l_HIO@l
/* 807A4584  C0 25 00 08 */	lfs f1, 8(r5)
/* 807A4588  4B AC 25 FC */	b __ml__4cXyzCFf
/* 807A458C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807A4590  38 81 00 24 */	addi r4, r1, 0x24
/* 807A4594  7C 65 1B 78 */	mr r5, r3
/* 807A4598  4B BA 2A F8 */	b PSVECAdd
/* 807A459C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 807A45A0  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807A45A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A45A8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807A45AC  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 807A45B0  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 807A45B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A45B8  40 80 00 08 */	bge lbl_807A45C0
/* 807A45BC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_807A45C0:
/* 807A45C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807A45C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807A45C8  80 63 00 00 */	lwz r3, 0(r3)
/* 807A45CC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807A45D0  4B 86 7E 0C */	b mDoMtx_YrotS__FPA4_fs
/* 807A45D4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A45D8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807A45DC  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807A45E0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807A45E4  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 807A45E8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807A45EC  38 61 00 48 */	addi r3, r1, 0x48
/* 807A45F0  38 81 00 3C */	addi r4, r1, 0x3c
/* 807A45F4  4B AC C8 F8 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A45F8  38 61 00 3C */	addi r3, r1, 0x3c
/* 807A45FC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807A4600  7C 65 1B 78 */	mr r5, r3
/* 807A4604  4B BA 2A 8C */	b PSVECAdd
/* 807A4608  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A460C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807A4610  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A4614  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 807A4618  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807A461C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807A4620  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807A4624  EC 01 00 2A */	fadds f0, f1, f0
/* 807A4628  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807A462C  38 61 00 54 */	addi r3, r1, 0x54
/* 807A4630  38 81 00 48 */	addi r4, r1, 0x48
/* 807A4634  38 A1 00 3C */	addi r5, r1, 0x3c
/* 807A4638  38 C0 00 00 */	li r6, 0
/* 807A463C  4B 8D 37 28 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807A4640  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A4644  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A4648  3A A3 0F 38 */	addi r21, r3, 0xf38
/* 807A464C  7E A3 AB 78 */	mr r3, r21
/* 807A4650  38 81 00 54 */	addi r4, r1, 0x54
/* 807A4654  4B 8C FD 60 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807A4658  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A465C  41 82 00 44 */	beq lbl_807A46A0
/* 807A4660  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A4664  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807A4668  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807A466C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807A4670  FC 00 02 10 */	fabs f0, f0
/* 807A4674  FC 20 00 18 */	frsp f1, f0
/* 807A4678  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807A467C  EC 00 08 2A */	fadds f0, f0, f1
/* 807A4680  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807A4684  38 61 00 48 */	addi r3, r1, 0x48
/* 807A4688  38 81 00 3C */	addi r4, r1, 0x3c
/* 807A468C  4B AC C8 60 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A4690  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807A4694  38 81 00 3C */	addi r4, r1, 0x3c
/* 807A4698  7C 65 1B 78 */	mr r5, r3
/* 807A469C  4B BA 29 F4 */	b PSVECAdd
lbl_807A46A0:
/* 807A46A0  38 7D 08 00 */	addi r3, r29, 0x800
/* 807A46A4  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 807A46A8  C0 5E 01 5C */	lfs f2, 0x15c(r30)
/* 807A46AC  4B 8D 18 AC */	b SetWall__12dBgS_AcchCirFff
/* 807A46B0  88 1D 0A 58 */	lbz r0, 0xa58(r29)
/* 807A46B4  2C 00 00 01 */	cmpwi r0, 1
/* 807A46B8  40 82 00 60 */	bne lbl_807A4718
/* 807A46BC  34 7D 0A 1C */	addic. r3, r29, 0xa1c
/* 807A46C0  41 82 00 58 */	beq lbl_807A4718
/* 807A46C4  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 807A46C8  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 807A46CC  C0 03 00 00 */	lfs f0, 0(r3)
/* 807A46D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A46D4  EC 01 00 2A */	fadds f0, f1, f0
/* 807A46D8  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 807A46DC  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 807A46E0  C0 03 00 08 */	lfs f0, 8(r3)
/* 807A46E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A46E8  EC 01 00 2A */	fadds f0, f1, f0
/* 807A46EC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 807A46F0  C0 3D 06 90 */	lfs f1, 0x690(r29)
/* 807A46F4  C0 03 00 00 */	lfs f0, 0(r3)
/* 807A46F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A46FC  EC 01 00 2A */	fadds f0, f1, f0
/* 807A4700  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807A4704  C0 3D 06 98 */	lfs f1, 0x698(r29)
/* 807A4708  C0 03 00 08 */	lfs f0, 8(r3)
/* 807A470C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A4710  EC 01 00 2A */	fadds f0, f1, f0
/* 807A4714  D0 1D 06 98 */	stfs f0, 0x698(r29)
lbl_807A4718:
/* 807A4718  38 7D 08 40 */	addi r3, r29, 0x840
/* 807A471C  7E A4 AB 78 */	mr r4, r21
/* 807A4720  4B 8D 23 8C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 807A4724  7F A3 EB 78 */	mr r3, r29
/* 807A4728  4B FF F7 1D */	bl ground_angle_set__FP10e_st_class
/* 807A472C  7F 40 07 75 */	extsb. r0, r26
/* 807A4730  41 82 00 2C */	beq lbl_807A475C
/* 807A4734  38 7D 06 B4 */	addi r3, r29, 0x6b4
/* 807A4738  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A473C  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 807A4740  C0 7E 01 60 */	lfs f3, 0x160(r30)
/* 807A4744  4B AC B2 F8 */	b cLib_addCalc2__FPffff
/* 807A4748  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A474C  D0 1D 06 B0 */	stfs f0, 0x6b0(r29)
/* 807A4750  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807A4754  D0 1D 06 B8 */	stfs f0, 0x6b8(r29)
/* 807A4758  48 00 00 1C */	b lbl_807A4774
lbl_807A475C:
/* 807A475C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A4760  D0 1D 06 B0 */	stfs f0, 0x6b0(r29)
/* 807A4764  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807A4768  D0 1D 06 B4 */	stfs f0, 0x6b4(r29)
/* 807A476C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807A4770  D0 1D 06 B8 */	stfs f0, 0x6b8(r29)
lbl_807A4774:
/* 807A4774  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807A4778  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 807A477C  7E C0 07 75 */	extsb. r0, r22
/* 807A4780  41 82 00 54 */	beq lbl_807A47D4
/* 807A4784  A8 1D 06 7C */	lha r0, 0x67c(r29)
/* 807A4788  54 00 06 B7 */	rlwinm. r0, r0, 0, 0x1a, 0x1b
/* 807A478C  41 82 00 48 */	beq lbl_807A47D4
/* 807A4790  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807A4794  88 03 05 68 */	lbz r0, 0x568(r3)
/* 807A4798  28 00 00 29 */	cmplwi r0, 0x29
/* 807A479C  41 82 00 38 */	beq lbl_807A47D4
/* 807A47A0  80 03 05 70 */	lwz r0, 0x570(r3)
/* 807A47A4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 807A47A8  41 82 00 2C */	beq lbl_807A47D4
/* 807A47AC  3C 60 80 7A */	lis r3, small@ha
/* 807A47B0  80 03 6D E0 */	lwz r0, small@l(r3)
/* 807A47B4  2C 00 00 00 */	cmpwi r0, 0
/* 807A47B8  40 82 00 1C */	bne lbl_807A47D4
/* 807A47BC  38 00 00 34 */	li r0, 0x34
/* 807A47C0  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807A47C4  38 00 00 00 */	li r0, 0
/* 807A47C8  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A47CC  38 00 00 01 */	li r0, 1
/* 807A47D0  98 1D 0C F4 */	stb r0, 0xcf4(r29)
lbl_807A47D4:
/* 807A47D4  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 807A47D8  38 80 00 00 */	li r4, 0
/* 807A47DC  38 A0 00 04 */	li r5, 4
/* 807A47E0  38 C0 08 00 */	li r6, 0x800
/* 807A47E4  4B AC BE 24 */	b cLib_addCalcAngleS2__FPssss
/* 807A47E8  38 7D 06 9E */	addi r3, r29, 0x69e
/* 807A47EC  38 80 00 00 */	li r4, 0
/* 807A47F0  38 A0 00 01 */	li r5, 1
/* 807A47F4  38 C0 08 00 */	li r6, 0x800
/* 807A47F8  4B AC BE 10 */	b cLib_addCalcAngleS2__FPssss
/* 807A47FC  38 7D 06 9C */	addi r3, r29, 0x69c
/* 807A4800  38 80 00 00 */	li r4, 0
/* 807A4804  38 A0 00 01 */	li r5, 1
/* 807A4808  38 C0 08 00 */	li r6, 0x800
/* 807A480C  4B AC BD FC */	b cLib_addCalcAngleS2__FPssss
/* 807A4810  38 61 00 54 */	addi r3, r1, 0x54
/* 807A4814  38 80 FF FF */	li r4, -1
/* 807A4818  4B 8D 34 C4 */	b __dt__11dBgS_LinChkFv
/* 807A481C  48 00 00 78 */	b lbl_807A4894
lbl_807A4820:
/* 807A4820  7F 40 07 75 */	extsb. r0, r26
/* 807A4824  41 82 00 58 */	beq lbl_807A487C
/* 807A4828  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 807A482C  2C 00 00 00 */	cmpwi r0, 0
/* 807A4830  40 82 00 4C */	bne lbl_807A487C
/* 807A4834  38 7D 06 B4 */	addi r3, r29, 0x6b4
/* 807A4838  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A483C  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 807A4840  C0 7E 01 60 */	lfs f3, 0x160(r30)
/* 807A4844  4B AC B1 F8 */	b cLib_addCalc2__FPffff
/* 807A4848  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A484C  D0 1D 06 B0 */	stfs f0, 0x6b0(r29)
/* 807A4850  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807A4854  D0 1D 06 B8 */	stfs f0, 0x6b8(r29)
/* 807A4858  7F A3 EB 78 */	mr r3, r29
/* 807A485C  4B FF E1 15 */	bl gr_check__FP10e_st_class
/* 807A4860  2C 03 00 00 */	cmpwi r3, 0
/* 807A4864  41 82 00 30 */	beq lbl_807A4894
/* 807A4868  38 00 00 0C */	li r0, 0xc
/* 807A486C  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807A4870  38 00 00 00 */	li r0, 0
/* 807A4874  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A4878  48 00 00 1C */	b lbl_807A4894
lbl_807A487C:
/* 807A487C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A4880  D0 1D 06 B0 */	stfs f0, 0x6b0(r29)
/* 807A4884  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807A4888  D0 1D 06 B4 */	stfs f0, 0x6b4(r29)
/* 807A488C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807A4890  D0 1D 06 B8 */	stfs f0, 0x6b8(r29)
lbl_807A4894:
/* 807A4894  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 807A4898  28 00 00 00 */	cmplwi r0, 0
/* 807A489C  40 82 00 2C */	bne lbl_807A48C8
/* 807A48A0  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 807A48A4  28 00 00 01 */	cmplwi r0, 1
/* 807A48A8  40 82 00 20 */	bne lbl_807A48C8
/* 807A48AC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A48B0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807A48B4  EC 21 00 28 */	fsubs f1, f1, f0
/* 807A48B8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A48BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A48C0  40 80 00 08 */	bge lbl_807A48C8
/* 807A48C4  3B 60 00 00 */	li r27, 0
lbl_807A48C8:
/* 807A48C8  7F 60 07 75 */	extsb. r0, r27
/* 807A48CC  41 82 00 10 */	beq lbl_807A48DC
/* 807A48D0  38 00 00 04 */	li r0, 4
/* 807A48D4  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807A48D8  48 00 00 18 */	b lbl_807A48F0
lbl_807A48DC:
/* 807A48DC  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 807A48E0  54 00 00 3E */	slwi r0, r0, 0
/* 807A48E4  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 807A48E8  38 00 00 00 */	li r0, 0
/* 807A48EC  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_807A48F0:
/* 807A48F0  7F 00 07 75 */	extsb. r0, r24
/* 807A48F4  41 82 00 84 */	beq lbl_807A4978
/* 807A48F8  7F A3 EB 78 */	mr r3, r29
/* 807A48FC  4B FF DF A5 */	bl water_check__FP10e_st_class
/* 807A4900  2C 03 00 00 */	cmpwi r3, 0
/* 807A4904  41 82 00 74 */	beq lbl_807A4978
/* 807A4908  38 00 00 15 */	li r0, 0x15
/* 807A490C  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807A4910  38 00 00 00 */	li r0, 0
/* 807A4914  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A4918  C0 3D 0A 18 */	lfs f1, 0xa18(r29)
/* 807A491C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807A4920  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A4924  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807A4928  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 807A492C  3C 60 80 7A */	lis r3, small@ha
/* 807A4930  80 03 6D E0 */	lwz r0, small@l(r3)
/* 807A4934  2C 00 00 00 */	cmpwi r0, 0
/* 807A4938  41 82 00 08 */	beq lbl_807A4940
/* 807A493C  C0 3E 01 64 */	lfs f1, 0x164(r30)
lbl_807A4940:
/* 807A4940  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807A4944  38 80 00 00 */	li r4, 0
/* 807A4948  4B 87 AF 34 */	b fopKyM_createWpillar__FPC4cXyzfi
/* 807A494C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 807A4950  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 807A4954  90 01 00 20 */	stw r0, 0x20(r1)
/* 807A4958  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807A495C  38 81 00 20 */	addi r4, r1, 0x20
/* 807A4960  38 A0 00 00 */	li r5, 0
/* 807A4964  38 C0 FF FF */	li r6, -1
/* 807A4968  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 807A496C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A4970  7D 89 03 A6 */	mtctr r12
/* 807A4974  4E 80 04 21 */	bctrl 
lbl_807A4978:
/* 807A4978  7F 20 07 75 */	extsb. r0, r25
/* 807A497C  41 82 00 88 */	beq lbl_807A4A04
/* 807A4980  3B 40 00 00 */	li r26, 0
/* 807A4984  3A A0 00 00 */	li r21, 0
/* 807A4988  3A C0 00 00 */	li r22, 0
/* 807A498C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A4990  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 807A4994  3C 60 80 7A */	lis r3, p_name@ha
/* 807A4998  3A E3 6A 80 */	addi r23, r3, p_name@l
lbl_807A499C:
/* 807A499C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807A49A0  38 00 00 FF */	li r0, 0xff
/* 807A49A4  90 01 00 08 */	stw r0, 8(r1)
/* 807A49A8  38 80 00 00 */	li r4, 0
/* 807A49AC  90 81 00 0C */	stw r4, 0xc(r1)
/* 807A49B0  38 00 FF FF */	li r0, -1
/* 807A49B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A49B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 807A49BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 807A49C0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807A49C4  3B 36 0F 74 */	addi r25, r22, 0xf74
/* 807A49C8  7C 9D C8 2E */	lwzx r4, r29, r25
/* 807A49CC  38 A0 00 00 */	li r5, 0
/* 807A49D0  7C D7 AA 2E */	lhzx r6, r23, r21
/* 807A49D4  38 FD 07 04 */	addi r7, r29, 0x704
/* 807A49D8  39 00 00 00 */	li r8, 0
/* 807A49DC  39 20 00 00 */	li r9, 0
/* 807A49E0  39 40 00 00 */	li r10, 0
/* 807A49E4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807A49E8  4B 8A 8A E4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A49EC  7C 7D C9 2E */	stwx r3, r29, r25
/* 807A49F0  3B 5A 00 01 */	addi r26, r26, 1
/* 807A49F4  2C 1A 00 02 */	cmpwi r26, 2
/* 807A49F8  3A B5 00 02 */	addi r21, r21, 2
/* 807A49FC  3A D6 00 04 */	addi r22, r22, 4
/* 807A4A00  41 80 FF 9C */	blt lbl_807A499C
lbl_807A4A04:
/* 807A4A04  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 807A4A08  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807A4A0C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807A4A10  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807A4A14  7F A3 EB 78 */	mr r3, r29
/* 807A4A18  38 9D 05 D0 */	addi r4, r29, 0x5d0
/* 807A4A1C  38 BD 05 38 */	addi r5, r29, 0x538
/* 807A4A20  38 C1 00 30 */	addi r6, r1, 0x30
/* 807A4A24  48 00 19 81 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 807A4A28  39 61 01 00 */	addi r11, r1, 0x100
/* 807A4A2C  4B BB D7 DC */	b _restgpr_21
/* 807A4A30  80 01 01 04 */	lwz r0, 0x104(r1)
/* 807A4A34  7C 08 03 A6 */	mtlr r0
/* 807A4A38  38 21 01 00 */	addi r1, r1, 0x100
/* 807A4A3C  4E 80 00 20 */	blr 
