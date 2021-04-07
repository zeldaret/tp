lbl_80BF43F4:
/* 80BF43F4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BF43F8  7C 08 02 A6 */	mflr r0
/* 80BF43FC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BF4400  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80BF4404  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80BF4408  39 61 00 70 */	addi r11, r1, 0x70
/* 80BF440C  4B 76 DD C1 */	bl _savegpr_25
/* 80BF4410  7C 79 1B 78 */	mr r25, r3
/* 80BF4414  7C BA 2B 78 */	mr r26, r5
/* 80BF4418  3C 60 80 BF */	lis r3, m__20daObj_Gadget_Param_c@ha /* 0x80BF4944@ha */
/* 80BF441C  3B A3 49 44 */	addi r29, r3, m__20daObj_Gadget_Param_c@l /* 0x80BF4944@l */
/* 80BF4420  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF4424  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF4428  4B 41 7F B5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BF442C  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF4430  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BF4434  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BF4438  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80BF443C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BF4440  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF4444  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF4448  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF444C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80BF4450  4B 75 29 1D */	bl PSMTXMultVec
/* 80BF4454  38 61 00 20 */	addi r3, r1, 0x20
/* 80BF4458  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80BF445C  7C 65 1B 78 */	mr r5, r3
/* 80BF4460  4B 75 2C 31 */	bl PSVECAdd
/* 80BF4464  C0 1D 00 CC */	lfs f0, 0xcc(r29)
/* 80BF4468  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BF446C  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF4470  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BF4474  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 80BF4478  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BF447C  3B 60 00 00 */	li r27, 0
/* 80BF4480  3B E0 00 00 */	li r31, 0
/* 80BF4484  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF4488  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF448C  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80BF4490  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF4494  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF4498  C3 FD 00 D4 */	lfs f31, 0xd4(r29)
lbl_80BF449C:
/* 80BF449C  7F C3 F3 78 */	mr r3, r30
/* 80BF44A0  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF44A4  3B A1 00 2C */	addi r29, r1, 0x2c
/* 80BF44A8  7F BD FA 14 */	add r29, r29, r31
/* 80BF44AC  7F A5 EB 78 */	mr r5, r29
/* 80BF44B0  4B 75 28 BD */	bl PSMTXMultVec
/* 80BF44B4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BF44B8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80BF44BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BF44C0  7F A3 EB 78 */	mr r3, r29
/* 80BF44C4  38 81 00 20 */	addi r4, r1, 0x20
/* 80BF44C8  7F A5 EB 78 */	mr r5, r29
/* 80BF44CC  4B 75 2B C5 */	bl PSVECAdd
/* 80BF44D0  38 79 09 60 */	addi r3, r25, 0x960
/* 80BF44D4  38 81 00 20 */	addi r4, r1, 0x20
/* 80BF44D8  7F A5 EB 78 */	mr r5, r29
/* 80BF44DC  7F 26 CB 78 */	mr r6, r25
/* 80BF44E0  4B 48 38 85 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BF44E4  7F 83 E3 78 */	mr r3, r28
/* 80BF44E8  38 99 09 60 */	addi r4, r25, 0x960
/* 80BF44EC  4B 47 FE C9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80BF44F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF44F4  41 82 00 20 */	beq lbl_80BF4514
/* 80BF44F8  C0 19 09 90 */	lfs f0, 0x990(r25)
/* 80BF44FC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80BF4500  C0 19 09 94 */	lfs f0, 0x994(r25)
/* 80BF4504  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BF4508  C0 19 09 98 */	lfs f0, 0x998(r25)
/* 80BF450C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80BF4510  48 00 00 0C */	b lbl_80BF451C
lbl_80BF4514:
/* 80BF4514  38 60 00 00 */	li r3, 0
/* 80BF4518  48 00 00 4C */	b lbl_80BF4564
lbl_80BF451C:
/* 80BF451C  3B 7B 00 01 */	addi r27, r27, 1
/* 80BF4520  2C 1B 00 02 */	cmpwi r27, 2
/* 80BF4524  3B FF 00 0C */	addi r31, r31, 0xc
/* 80BF4528  41 80 FF 74 */	blt lbl_80BF449C
/* 80BF452C  38 61 00 08 */	addi r3, r1, 8
/* 80BF4530  38 81 00 38 */	addi r4, r1, 0x38
/* 80BF4534  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80BF4538  4B 67 25 FD */	bl __mi__4cXyzCFRC3Vec
/* 80BF453C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BF4540  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BF4544  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BF4548  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BF454C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80BF4550  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BF4554  4B 67 31 21 */	bl cM_atan2s__Fff
/* 80BF4558  38 03 40 00 */	addi r0, r3, 0x4000
/* 80BF455C  B0 1A 00 00 */	sth r0, 0(r26)
/* 80BF4560  38 60 00 01 */	li r3, 1
lbl_80BF4564:
/* 80BF4564  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80BF4568  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80BF456C  39 61 00 70 */	addi r11, r1, 0x70
/* 80BF4570  4B 76 DC A9 */	bl _restgpr_25
/* 80BF4574  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BF4578  7C 08 03 A6 */	mtlr r0
/* 80BF457C  38 21 00 80 */	addi r1, r1, 0x80
/* 80BF4580  4E 80 00 20 */	blr 
