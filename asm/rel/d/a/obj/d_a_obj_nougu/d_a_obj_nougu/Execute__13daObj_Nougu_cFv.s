lbl_80CA43D4:
/* 80CA43D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CA43D8  7C 08 02 A6 */	mflr r0
/* 80CA43DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CA43E0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80CA43E4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80CA43E8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80CA43EC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80CA43F0  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80CA43F4  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80CA43F8  39 61 00 40 */	addi r11, r1, 0x40
/* 80CA43FC  4B 6B DD CD */	bl _savegpr_24
/* 80CA4400  7C 7E 1B 78 */	mr r30, r3
/* 80CA4404  3C 60 80 CA */	lis r3, m__19daObj_Nougu_Param_c@ha /* 0x80CA49B8@ha */
/* 80CA4408  3B E3 49 B8 */	addi r31, r3, m__19daObj_Nougu_Param_c@l /* 0x80CA49B8@l */
/* 80CA440C  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CA4410  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA4414  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA4418  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CA441C  4B 3D 26 91 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80CA4420  80 1E 06 54 */	lwz r0, 0x654(r30)
/* 80CA4424  90 1E 07 CC */	stw r0, 0x7cc(r30)
/* 80CA4428  80 1E 06 58 */	lwz r0, 0x658(r30)
/* 80CA442C  90 1E 07 D0 */	stw r0, 0x7d0(r30)
/* 80CA4430  80 1E 06 5C */	lwz r0, 0x65c(r30)
/* 80CA4434  90 1E 07 D4 */	stw r0, 0x7d4(r30)
/* 80CA4438  88 1E 06 60 */	lbz r0, 0x660(r30)
/* 80CA443C  98 1E 07 D8 */	stb r0, 0x7d8(r30)
/* 80CA4440  A0 1E 06 68 */	lhz r0, 0x668(r30)
/* 80CA4444  B0 1E 07 E0 */	sth r0, 0x7e0(r30)
/* 80CA4448  A0 1E 06 6A */	lhz r0, 0x66a(r30)
/* 80CA444C  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80CA4450  80 1E 06 6C */	lwz r0, 0x66c(r30)
/* 80CA4454  90 1E 07 E4 */	stw r0, 0x7e4(r30)
/* 80CA4458  80 1E 06 70 */	lwz r0, 0x670(r30)
/* 80CA445C  90 1E 07 E8 */	stw r0, 0x7e8(r30)
/* 80CA4460  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 80CA4464  D0 1E 07 F0 */	stfs f0, 0x7f0(r30)
/* 80CA4468  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 80CA446C  D0 1E 07 F4 */	stfs f0, 0x7f4(r30)
/* 80CA4470  C0 1E 06 80 */	lfs f0, 0x680(r30)
/* 80CA4474  D0 1E 07 F8 */	stfs f0, 0x7f8(r30)
/* 80CA4478  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 80CA447C  90 1E 07 FC */	stw r0, 0x7fc(r30)
/* 80CA4480  C0 1E 06 88 */	lfs f0, 0x688(r30)
/* 80CA4484  D0 1E 08 00 */	stfs f0, 0x800(r30)
/* 80CA4488  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 80CA448C  90 1E 08 04 */	stw r0, 0x804(r30)
/* 80CA4490  C0 1E 06 10 */	lfs f0, 0x610(r30)
/* 80CA4494  D0 1E 0E 20 */	stfs f0, 0xe20(r30)
/* 80CA4498  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CA449C  C0 1E 0E 20 */	lfs f0, 0xe20(r30)
/* 80CA44A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CA44A4  41 82 00 14 */	beq lbl_80CA44B8
/* 80CA44A8  7F C3 F3 78 */	mr r3, r30
/* 80CA44AC  48 00 02 5D */	bl setEnvTevColor__13daObj_Nougu_cFv
/* 80CA44B0  7F C3 F3 78 */	mr r3, r30
/* 80CA44B4  48 00 02 B1 */	bl setRoomNo__13daObj_Nougu_cFv
lbl_80CA44B8:
/* 80CA44B8  7F C3 F3 78 */	mr r3, r30
/* 80CA44BC  48 00 02 E9 */	bl setMtx__13daObj_Nougu_cFv
/* 80CA44C0  C3 BF 00 2C */	lfs f29, 0x2c(r31)
/* 80CA44C4  3B 00 00 00 */	li r24, 0
/* 80CA44C8  3B A0 00 00 */	li r29, 0
/* 80CA44CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA44D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA44D4  3B 63 23 3C */	addi r27, r3, 0x233c
/* 80CA44D8  C3 DF 00 30 */	lfs f30, 0x30(r31)
/* 80CA44DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA44E0  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA44E4  C3 FF 00 34 */	lfs f31, 0x34(r31)
lbl_80CA44E8:
/* 80CA44E8  D3 C1 00 08 */	stfs f30, 8(r1)
/* 80CA44EC  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 80CA44F0  D3 A1 00 10 */	stfs f29, 0x10(r1)
/* 80CA44F4  7F 83 E3 78 */	mr r3, r28
/* 80CA44F8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80CA44FC  4B 36 7E E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CA4500  7F 83 E3 78 */	mr r3, r28
/* 80CA4504  38 81 00 08 */	addi r4, r1, 8
/* 80CA4508  7C 85 23 78 */	mr r5, r4
/* 80CA450C  4B 6A 28 61 */	bl PSMTXMultVec
/* 80CA4510  38 61 00 08 */	addi r3, r1, 8
/* 80CA4514  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CA4518  7C 65 1B 78 */	mr r5, r3
/* 80CA451C  4B 6A 2B 75 */	bl PSVECAdd
/* 80CA4520  7F 3E EA 14 */	add r25, r30, r29
/* 80CA4524  3B 59 09 2C */	addi r26, r25, 0x92c
/* 80CA4528  7F 43 D3 78 */	mr r3, r26
/* 80CA452C  38 81 00 08 */	addi r4, r1, 8
/* 80CA4530  4B 5C B1 19 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80CA4534  7F 43 D3 78 */	mr r3, r26
/* 80CA4538  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CA453C  4B 5C B1 CD */	bl SetR__8cM3dGSphFf
/* 80CA4540  7F 63 DB 78 */	mr r3, r27
/* 80CA4544  3B 39 08 08 */	addi r25, r25, 0x808
/* 80CA4548  7F 24 CB 78 */	mr r4, r25
/* 80CA454C  4B 5C 06 5D */	bl Set__4cCcSFP8cCcD_Obj
/* 80CA4550  7F 23 CB 78 */	mr r3, r25
/* 80CA4554  81 99 00 3C */	lwz r12, 0x3c(r25)
/* 80CA4558  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80CA455C  7D 89 03 A6 */	mtctr r12
/* 80CA4560  4E 80 04 21 */	bctrl 
/* 80CA4564  EF BD F8 28 */	fsubs f29, f29, f31
/* 80CA4568  3B 18 00 01 */	addi r24, r24, 1
/* 80CA456C  2C 18 00 05 */	cmpwi r24, 5
/* 80CA4570  3B BD 01 38 */	addi r29, r29, 0x138
/* 80CA4574  41 80 FF 74 */	blt lbl_80CA44E8
/* 80CA4578  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CA457C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80CA4580  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CA4584  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CA4588  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CA458C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80CA4590  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80CA4594  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CA4598  EC 01 00 2A */	fadds f0, f1, f0
/* 80CA459C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CA45A0  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80CA45A4  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80CA45A8  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80CA45AC  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80CA45B0  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80CA45B4  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80CA45B8  38 00 00 00 */	li r0, 0
/* 80CA45BC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80CA45C0  38 60 00 01 */	li r3, 1
/* 80CA45C4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80CA45C8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80CA45CC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80CA45D0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80CA45D4  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80CA45D8  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80CA45DC  39 61 00 40 */	addi r11, r1, 0x40
/* 80CA45E0  4B 6B DC 35 */	bl _restgpr_24
/* 80CA45E4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CA45E8  7C 08 03 A6 */	mtlr r0
/* 80CA45EC  38 21 00 70 */	addi r1, r1, 0x70
/* 80CA45F0  4E 80 00 20 */	blr 
