lbl_807AC31C:
/* 807AC31C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807AC320  7C 08 02 A6 */	mflr r0
/* 807AC324  90 01 00 44 */	stw r0, 0x44(r1)
/* 807AC328  39 61 00 40 */	addi r11, r1, 0x40
/* 807AC32C  4B BB 5E AC */	b _savegpr_28
/* 807AC330  7C 7D 1B 78 */	mr r29, r3
/* 807AC334  3C 80 80 7B */	lis r4, lit_3909@ha
/* 807AC338  3B E4 FD 2C */	addi r31, r4, lit_3909@l
/* 807AC33C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807AC340  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807AC344  40 82 01 00 */	bne lbl_807AC444
/* 807AC348  7F A0 EB 79 */	or. r0, r29, r29
/* 807AC34C  41 82 00 EC */	beq lbl_807AC438
/* 807AC350  7C 1E 03 78 */	mr r30, r0
/* 807AC354  4B 86 C8 10 */	b __ct__10fopAc_ac_cFv
/* 807AC358  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807AC35C  4B B1 4C 08 */	b __ct__15Z2CreatureEnemyFv
/* 807AC360  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 807AC364  3C 80 80 07 */	lis r4, __ct__12dBgS_AcchCirFv@ha
/* 807AC368  38 84 5E AC */	addi r4, r4, __ct__12dBgS_AcchCirFv@l
/* 807AC36C  3C A0 80 7B */	lis r5, __dt__12dBgS_AcchCirFv@ha
/* 807AC370  38 A5 C9 B0 */	addi r5, r5, __dt__12dBgS_AcchCirFv@l
/* 807AC374  38 C0 00 40 */	li r6, 0x40
/* 807AC378  38 E0 00 02 */	li r7, 2
/* 807AC37C  4B BB 59 E4 */	b __construct_array
/* 807AC380  3B 9E 07 78 */	addi r28, r30, 0x778
/* 807AC384  7F 83 E3 78 */	mr r3, r28
/* 807AC388  4B 8C 9D 18 */	b __ct__9dBgS_AcchFv
/* 807AC38C  3C 60 80 7B */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 807AC390  38 63 01 80 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 807AC394  90 7C 00 10 */	stw r3, 0x10(r28)
/* 807AC398  38 03 00 0C */	addi r0, r3, 0xc
/* 807AC39C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 807AC3A0  38 03 00 18 */	addi r0, r3, 0x18
/* 807AC3A4  90 1C 00 24 */	stw r0, 0x24(r28)
/* 807AC3A8  38 7C 00 14 */	addi r3, r28, 0x14
/* 807AC3AC  4B 8C CA BC */	b SetObj__16dBgS_PolyPassChkFv
/* 807AC3B0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 807AC3B4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 807AC3B8  90 1E 09 68 */	stw r0, 0x968(r30)
/* 807AC3BC  38 7E 09 6C */	addi r3, r30, 0x96c
/* 807AC3C0  4B 8D 73 A0 */	b __ct__10dCcD_GSttsFv
/* 807AC3C4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 807AC3C8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 807AC3CC  90 7E 09 68 */	stw r3, 0x968(r30)
/* 807AC3D0  38 03 00 20 */	addi r0, r3, 0x20
/* 807AC3D4  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 807AC3D8  3B 9E 09 8C */	addi r28, r30, 0x98c
/* 807AC3DC  7F 83 E3 78 */	mr r3, r28
/* 807AC3E0  4B 8D 76 48 */	b __ct__12dCcD_GObjInfFv
/* 807AC3E4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807AC3E8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807AC3EC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807AC3F0  3C 60 80 7B */	lis r3, __vt__8cM3dGAab@ha
/* 807AC3F4  38 03 01 74 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807AC3F8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 807AC3FC  3C 60 80 7B */	lis r3, __vt__8cM3dGSph@ha
/* 807AC400  38 03 01 68 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807AC404  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807AC408  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807AC40C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807AC410  90 7C 01 20 */	stw r3, 0x120(r28)
/* 807AC414  38 03 00 58 */	addi r0, r3, 0x58
/* 807AC418  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807AC41C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807AC420  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807AC424  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 807AC428  38 03 00 2C */	addi r0, r3, 0x2c
/* 807AC42C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807AC430  38 03 00 84 */	addi r0, r3, 0x84
/* 807AC434  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_807AC438:
/* 807AC438  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 807AC43C  60 00 00 08 */	ori r0, r0, 8
/* 807AC440  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_807AC444:
/* 807AC444  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807AC448  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 807AC44C  98 1D 06 8C */	stb r0, 0x68c(r29)
/* 807AC450  88 1D 06 8C */	lbz r0, 0x68c(r29)
/* 807AC454  28 00 00 0F */	cmplwi r0, 0xf
/* 807AC458  40 82 00 0C */	bne lbl_807AC464
/* 807AC45C  38 00 00 00 */	li r0, 0
/* 807AC460  98 1D 06 8C */	stb r0, 0x68c(r29)
lbl_807AC464:
/* 807AC464  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807AC468  54 00 E6 3E */	rlwinm r0, r0, 0x1c, 0x18, 0x1f
/* 807AC46C  28 00 00 FF */	cmplwi r0, 0xff
/* 807AC470  40 82 00 10 */	bne lbl_807AC480
/* 807AC474  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 807AC478  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807AC47C  48 00 00 28 */	b lbl_807AC4A4
lbl_807AC480:
/* 807AC480  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807AC484  C8 3F 01 30 */	lfd f1, 0x130(r31)
/* 807AC488  90 01 00 24 */	stw r0, 0x24(r1)
/* 807AC48C  3C 00 43 30 */	lis r0, 0x4330
/* 807AC490  90 01 00 20 */	stw r0, 0x20(r1)
/* 807AC494  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 807AC498  EC 00 08 28 */	fsubs f0, f0, f1
/* 807AC49C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807AC4A0  D0 1D 06 90 */	stfs f0, 0x690(r29)
lbl_807AC4A4:
/* 807AC4A4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807AC4A8  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 807AC4AC  98 1D 06 94 */	stb r0, 0x694(r29)
/* 807AC4B0  88 1D 06 94 */	lbz r0, 0x694(r29)
/* 807AC4B4  28 00 00 0F */	cmplwi r0, 0xf
/* 807AC4B8  40 82 00 0C */	bne lbl_807AC4C4
/* 807AC4BC  38 00 00 00 */	li r0, 0
/* 807AC4C0  98 1D 06 94 */	stb r0, 0x694(r29)
lbl_807AC4C4:
/* 807AC4C4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807AC4C8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 807AC4CC  98 1D 06 95 */	stb r0, 0x695(r29)
/* 807AC4D0  88 1D 06 95 */	lbz r0, 0x695(r29)
/* 807AC4D4  28 00 00 FF */	cmplwi r0, 0xff
/* 807AC4D8  41 82 00 0C */	beq lbl_807AC4E4
/* 807AC4DC  28 00 00 00 */	cmplwi r0, 0
/* 807AC4E0  40 82 00 0C */	bne lbl_807AC4EC
lbl_807AC4E4:
/* 807AC4E4  38 00 00 01 */	li r0, 1
/* 807AC4E8  98 1D 06 95 */	stb r0, 0x695(r29)
lbl_807AC4EC:
/* 807AC4EC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807AC4F0  54 00 46 3E */	srwi r0, r0, 0x18
/* 807AC4F4  28 00 00 FF */	cmplwi r0, 0xff
/* 807AC4F8  40 82 00 08 */	bne lbl_807AC500
/* 807AC4FC  38 00 00 00 */	li r0, 0
lbl_807AC500:
/* 807AC500  98 1D 06 E8 */	stb r0, 0x6e8(r29)
/* 807AC504  38 00 00 00 */	li r0, 0
/* 807AC508  98 1D 0A F8 */	stb r0, 0xaf8(r29)
/* 807AC50C  88 1D 06 94 */	lbz r0, 0x694(r29)
/* 807AC510  28 00 00 00 */	cmplwi r0, 0
/* 807AC514  40 82 00 3C */	bne lbl_807AC550
/* 807AC518  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 807AC51C  98 1D 06 96 */	stb r0, 0x696(r29)
/* 807AC520  88 9D 06 96 */	lbz r4, 0x696(r29)
/* 807AC524  28 04 00 FF */	cmplwi r4, 0xff
/* 807AC528  41 82 00 30 */	beq lbl_807AC558
/* 807AC52C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807AC530  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807AC534  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807AC538  7C 05 07 74 */	extsb r5, r0
/* 807AC53C  4B 88 8E 24 */	b isSwitch__10dSv_info_cCFii
/* 807AC540  2C 03 00 00 */	cmpwi r3, 0
/* 807AC544  41 82 00 14 */	beq lbl_807AC558
/* 807AC548  38 60 00 05 */	li r3, 5
/* 807AC54C  48 00 02 F0 */	b lbl_807AC83C
lbl_807AC550:
/* 807AC550  38 00 00 FF */	li r0, 0xff
/* 807AC554  98 1D 06 96 */	stb r0, 0x696(r29)
lbl_807AC558:
/* 807AC558  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 807AC55C  3C 80 80 7B */	lis r4, stringBase0@ha
/* 807AC560  38 84 FE 70 */	addi r4, r4, stringBase0@l
/* 807AC564  4B 88 09 58 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807AC568  7C 7E 1B 78 */	mr r30, r3
/* 807AC56C  2C 1E 00 04 */	cmpwi r30, 4
/* 807AC570  40 82 02 C8 */	bne lbl_807AC838
/* 807AC574  38 00 00 00 */	li r0, 0
/* 807AC578  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 807AC57C  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 807AC580  88 1D 06 94 */	lbz r0, 0x694(r29)
/* 807AC584  28 00 00 01 */	cmplwi r0, 1
/* 807AC588  41 82 00 28 */	beq lbl_807AC5B0
/* 807AC58C  7F A3 EB 78 */	mr r3, r29
/* 807AC590  3C 80 80 7B */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807AC594  38 84 C2 FC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807AC598  38 A0 14 00 */	li r5, 0x1400
/* 807AC59C  4B 86 DF 14 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807AC5A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807AC5A4  40 82 00 0C */	bne lbl_807AC5B0
/* 807AC5A8  38 60 00 05 */	li r3, 5
/* 807AC5AC  48 00 02 90 */	b lbl_807AC83C
lbl_807AC5B0:
/* 807AC5B0  3C 60 80 7B */	lis r3, struct_807B0200+0x3@ha
/* 807AC5B4  8C 03 02 03 */	lbzu r0, struct_807B0200+0x3@l(r3)
/* 807AC5B8  28 00 00 00 */	cmplwi r0, 0
/* 807AC5BC  40 82 00 20 */	bne lbl_807AC5DC
/* 807AC5C0  38 00 00 01 */	li r0, 1
/* 807AC5C4  98 1D 0A F9 */	stb r0, 0xaf9(r29)
/* 807AC5C8  98 03 00 00 */	stb r0, 0(r3)
/* 807AC5CC  38 00 FF FF */	li r0, -1
/* 807AC5D0  3C 60 80 7B */	lis r3, l_HIO@ha
/* 807AC5D4  38 63 02 10 */	addi r3, r3, l_HIO@l
/* 807AC5D8  98 03 00 04 */	stb r0, 4(r3)
lbl_807AC5DC:
/* 807AC5DC  38 00 00 04 */	li r0, 4
/* 807AC5E0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807AC5E4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807AC5E8  28 03 00 00 */	cmplwi r3, 0
/* 807AC5EC  41 82 00 10 */	beq lbl_807AC5FC
/* 807AC5F0  80 63 00 04 */	lwz r3, 4(r3)
/* 807AC5F4  38 03 00 24 */	addi r0, r3, 0x24
/* 807AC5F8  90 1D 05 04 */	stw r0, 0x504(r29)
lbl_807AC5FC:
/* 807AC5FC  7F A3 EB 78 */	mr r3, r29
/* 807AC600  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 807AC604  FC 40 08 90 */	fmr f2, f1
/* 807AC608  FC 60 08 90 */	fmr f3, f1
/* 807AC60C  4B 86 DF 1C */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807AC610  7F A3 EB 78 */	mr r3, r29
/* 807AC614  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 807AC618  FC 40 08 90 */	fmr f2, f1
/* 807AC61C  FC 60 08 90 */	fmr f3, f1
/* 807AC620  4B 86 DF 18 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807AC624  38 00 00 00 */	li r0, 0
/* 807AC628  90 01 00 08 */	stw r0, 8(r1)
/* 807AC62C  38 7D 07 78 */	addi r3, r29, 0x778
/* 807AC630  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807AC634  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 807AC638  7F A6 EB 78 */	mr r6, r29
/* 807AC63C  38 E0 00 02 */	li r7, 2
/* 807AC640  39 1D 06 F8 */	addi r8, r29, 0x6f8
/* 807AC644  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 807AC648  39 40 00 00 */	li r10, 0
/* 807AC64C  4B 8C 9B FC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807AC650  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 807AC654  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807AC658  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 807AC65C  4B 8C 98 FC */	b SetWall__12dBgS_AcchCirFff
/* 807AC660  38 7D 07 38 */	addi r3, r29, 0x738
/* 807AC664  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 807AC668  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 807AC66C  4B 8C 98 EC */	b SetWall__12dBgS_AcchCirFff
/* 807AC670  38 00 00 0A */	li r0, 0xa
/* 807AC674  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807AC678  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 807AC67C  38 7D 09 50 */	addi r3, r29, 0x950
/* 807AC680  38 80 00 64 */	li r4, 0x64
/* 807AC684  38 A0 00 00 */	li r5, 0
/* 807AC688  7F A6 EB 78 */	mr r6, r29
/* 807AC68C  4B 8D 71 D4 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807AC690  38 7D 09 8C */	addi r3, r29, 0x98c
/* 807AC694  3C 80 80 7B */	lis r4, data_807AFEB4@ha
/* 807AC698  38 84 FE B4 */	addi r4, r4, data_807AFEB4@l
/* 807AC69C  4B 8D 83 98 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807AC6A0  38 1D 09 50 */	addi r0, r29, 0x950
/* 807AC6A4  90 1D 09 D0 */	stw r0, 0x9d0(r29)
/* 807AC6A8  38 00 00 01 */	li r0, 1
/* 807AC6AC  98 1D 0A F8 */	stb r0, 0xaf8(r29)
/* 807AC6B0  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807AC6B4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807AC6B8  38 BD 05 38 */	addi r5, r29, 0x538
/* 807AC6BC  38 C0 00 03 */	li r6, 3
/* 807AC6C0  38 E0 00 01 */	li r7, 1
/* 807AC6C4  4B B1 49 D0 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807AC6C8  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 807AC6CC  3C 80 80 7B */	lis r4, stringBase0@ha
/* 807AC6D0  38 84 FE 70 */	addi r4, r4, stringBase0@l
/* 807AC6D4  38 84 00 05 */	addi r4, r4, 5
/* 807AC6D8  4B B1 54 B8 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 807AC6DC  38 1D 05 B8 */	addi r0, r29, 0x5b8
/* 807AC6E0  90 1D 0A CC */	stw r0, 0xacc(r29)
/* 807AC6E4  38 60 00 01 */	li r3, 1
/* 807AC6E8  98 7D 0A E2 */	stb r3, 0xae2(r29)
/* 807AC6EC  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807AC6F0  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 807AC6F4  88 1D 06 E8 */	lbz r0, 0x6e8(r29)
/* 807AC6F8  2C 00 00 02 */	cmpwi r0, 2
/* 807AC6FC  41 82 00 3C */	beq lbl_807AC738
/* 807AC700  40 80 00 14 */	bge lbl_807AC714
/* 807AC704  2C 00 00 00 */	cmpwi r0, 0
/* 807AC708  41 82 00 18 */	beq lbl_807AC720
/* 807AC70C  40 80 00 40 */	bge lbl_807AC74C
/* 807AC710  48 00 00 70 */	b lbl_807AC780
lbl_807AC714:
/* 807AC714  2C 00 00 04 */	cmpwi r0, 4
/* 807AC718  40 80 00 68 */	bge lbl_807AC780
/* 807AC71C  48 00 00 4C */	b lbl_807AC768
lbl_807AC720:
/* 807AC720  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807AC724  D0 1D 06 DC */	stfs f0, 0x6dc(r29)
/* 807AC728  90 7D 06 98 */	stw r3, 0x698(r29)
/* 807AC72C  38 00 00 02 */	li r0, 2
/* 807AC730  98 1D 06 E9 */	stb r0, 0x6e9(r29)
/* 807AC734  48 00 00 4C */	b lbl_807AC780
lbl_807AC738:
/* 807AC738  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807AC73C  D0 1D 06 DC */	stfs f0, 0x6dc(r29)
/* 807AC740  90 7D 06 98 */	stw r3, 0x698(r29)
/* 807AC744  98 7D 06 E9 */	stb r3, 0x6e9(r29)
/* 807AC748  48 00 00 38 */	b lbl_807AC780
lbl_807AC74C:
/* 807AC74C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 807AC750  D0 1D 06 DC */	stfs f0, 0x6dc(r29)
/* 807AC754  38 00 00 02 */	li r0, 2
/* 807AC758  90 1D 06 98 */	stw r0, 0x698(r29)
/* 807AC75C  38 00 00 03 */	li r0, 3
/* 807AC760  98 1D 06 E9 */	stb r0, 0x6e9(r29)
/* 807AC764  48 00 00 1C */	b lbl_807AC780
lbl_807AC768:
/* 807AC768  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807AC76C  D0 1D 06 DC */	stfs f0, 0x6dc(r29)
/* 807AC770  38 00 00 05 */	li r0, 5
/* 807AC774  90 1D 06 98 */	stw r0, 0x698(r29)
/* 807AC778  38 00 00 03 */	li r0, 3
/* 807AC77C  98 1D 06 E9 */	stb r0, 0x6e9(r29)
lbl_807AC780:
/* 807AC780  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 807AC784  D0 1D 06 D8 */	stfs f0, 0x6d8(r29)
/* 807AC788  88 1D 06 94 */	lbz r0, 0x694(r29)
/* 807AC78C  28 00 00 00 */	cmplwi r0, 0
/* 807AC790  40 82 00 50 */	bne lbl_807AC7E0
/* 807AC794  80 1D 07 A4 */	lwz r0, 0x7a4(r29)
/* 807AC798  60 00 20 00 */	ori r0, r0, 0x2000
/* 807AC79C  90 1D 07 A4 */	stw r0, 0x7a4(r29)
/* 807AC7A0  38 00 00 02 */	li r0, 2
/* 807AC7A4  90 1D 06 98 */	stw r0, 0x698(r29)
/* 807AC7A8  38 00 00 03 */	li r0, 3
/* 807AC7AC  98 1D 05 46 */	stb r0, 0x546(r29)
/* 807AC7B0  3C 60 80 7B */	lis r3, lit_5983@ha
/* 807AC7B4  38 83 FF 68 */	addi r4, r3, lit_5983@l
/* 807AC7B8  80 64 00 00 */	lwz r3, 0(r4)
/* 807AC7BC  80 04 00 04 */	lwz r0, 4(r4)
/* 807AC7C0  90 61 00 10 */	stw r3, 0x10(r1)
/* 807AC7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AC7C8  80 04 00 08 */	lwz r0, 8(r4)
/* 807AC7CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 807AC7D0  7F A3 EB 78 */	mr r3, r29
/* 807AC7D4  38 81 00 10 */	addi r4, r1, 0x10
/* 807AC7D8  48 00 02 69 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807AC7DC  48 00 00 4C */	b lbl_807AC828
lbl_807AC7E0:
/* 807AC7E0  38 00 00 04 */	li r0, 4
/* 807AC7E4  98 1D 05 46 */	stb r0, 0x546(r29)
/* 807AC7E8  C0 3D 06 DC */	lfs f1, 0x6dc(r29)
/* 807AC7EC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807AC7F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AC7F4  40 81 00 10 */	ble lbl_807AC804
/* 807AC7F8  38 00 00 01 */	li r0, 1
/* 807AC7FC  98 1D 0A 03 */	stb r0, 0xa03(r29)
/* 807AC800  48 00 00 0C */	b lbl_807AC80C
lbl_807AC804:
/* 807AC804  38 00 00 00 */	li r0, 0
/* 807AC808  98 1D 0A 03 */	stb r0, 0xa03(r29)
lbl_807AC80C:
/* 807AC80C  88 1D 06 94 */	lbz r0, 0x694(r29)
/* 807AC810  28 00 00 01 */	cmplwi r0, 1
/* 807AC814  40 82 00 14 */	bne lbl_807AC828
/* 807AC818  7F A3 EB 78 */	mr r3, r29
/* 807AC81C  38 80 00 0B */	li r4, 0xb
/* 807AC820  38 A0 00 00 */	li r5, 0
/* 807AC824  4B FF B3 41 */	bl setActionMode__8daE_SW_cFss
lbl_807AC828:
/* 807AC828  7F A3 EB 78 */	mr r3, r29
/* 807AC82C  4B FF F9 1D */	bl daE_SW_Execute__FP8daE_SW_c
/* 807AC830  38 00 00 01 */	li r0, 1
/* 807AC834  98 1D 06 84 */	stb r0, 0x684(r29)
lbl_807AC838:
/* 807AC838  7F C3 F3 78 */	mr r3, r30
lbl_807AC83C:
/* 807AC83C  39 61 00 40 */	addi r11, r1, 0x40
/* 807AC840  4B BB 59 E4 */	b _restgpr_28
/* 807AC844  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807AC848  7C 08 03 A6 */	mtlr r0
/* 807AC84C  38 21 00 40 */	addi r1, r1, 0x40
/* 807AC850  4E 80 00 20 */	blr 
