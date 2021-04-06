lbl_800A4068:
/* 800A4068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A406C  7C 08 02 A6 */	mflr r0
/* 800A4070  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A4074  39 61 00 20 */	addi r11, r1, 0x20
/* 800A4078  48 2B E1 5D */	bl _savegpr_27
/* 800A407C  7C 7F 1B 78 */	mr r31, r3
/* 800A4080  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A4084  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A4088  38 63 03 34 */	addi r3, r3, 0x334
/* 800A408C  38 80 00 5D */	li r4, 0x5d
/* 800A4090  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A4094  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A4098  3F C5 00 02 */	addis r30, r5, 2
/* 800A409C  3B DE C2 F8 */	addi r30, r30, -15624
/* 800A40A0  7F C5 F3 78 */	mr r5, r30
/* 800A40A4  38 C0 00 80 */	li r6, 0x80
/* 800A40A8  4B F9 82 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800A40AC  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800A40B0  7C 03 02 14 */	add r0, r3, r0
/* 800A40B4  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 800A40B8  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 800A40BC  88 03 61 94 */	lbz r0, mDemoArcName__20dStage_roomControl_c@l(r3)  /* 0x80406194@l */
/* 800A40C0  7C 00 07 75 */	extsb. r0, r0
/* 800A40C4  41 82 01 88 */	beq lbl_800A424C
/* 800A40C8  7F E3 FB 78 */	mr r3, r31
/* 800A40CC  38 9F 06 A0 */	addi r4, r31, 0x6a0
/* 800A40D0  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A40D4  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A40D8  38 A5 03 3B */	addi r5, r5, 0x33b
/* 800A40DC  3C C0 01 00 */	lis r6, 0x100
/* 800A40E0  4B FF FE 21 */	bl initDemoModel__9daAlink_cFPP8J3DModelPCcUl
/* 800A40E4  2C 03 00 00 */	cmpwi r3, 0
/* 800A40E8  40 82 00 0C */	bne lbl_800A40F4
/* 800A40EC  38 60 00 00 */	li r3, 0
/* 800A40F0  48 00 07 18 */	b lbl_800A4808
lbl_800A40F4:
/* 800A40F4  80 1F 06 A0 */	lwz r0, 0x6a0(r31)
/* 800A40F8  28 00 00 00 */	cmplwi r0, 0
/* 800A40FC  41 82 00 28 */	beq lbl_800A4124
/* 800A4100  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 800A4104  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A4108  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A410C  38 84 03 58 */	addi r4, r4, 0x358
/* 800A4110  4B FF FE 89 */	bl initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc
/* 800A4114  2C 03 00 00 */	cmpwi r3, 0
/* 800A4118  40 82 00 0C */	bne lbl_800A4124
/* 800A411C  38 60 00 00 */	li r3, 0
/* 800A4120  48 00 06 E8 */	b lbl_800A4808
lbl_800A4124:
/* 800A4124  7F E3 FB 78 */	mr r3, r31
/* 800A4128  38 9F 06 A8 */	addi r4, r31, 0x6a8
/* 800A412C  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A4130  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A4134  38 A5 03 75 */	addi r5, r5, 0x375
/* 800A4138  38 C0 00 00 */	li r6, 0
/* 800A413C  4B FF FD C5 */	bl initDemoModel__9daAlink_cFPP8J3DModelPCcUl
/* 800A4140  2C 03 00 00 */	cmpwi r3, 0
/* 800A4144  40 82 00 0C */	bne lbl_800A4150
/* 800A4148  38 60 00 00 */	li r3, 0
/* 800A414C  48 00 06 BC */	b lbl_800A4808
lbl_800A4150:
/* 800A4150  80 1F 06 A8 */	lwz r0, 0x6a8(r31)
/* 800A4154  28 00 00 00 */	cmplwi r0, 0
/* 800A4158  41 82 00 28 */	beq lbl_800A4180
/* 800A415C  38 7F 06 AC */	addi r3, r31, 0x6ac
/* 800A4160  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A4164  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A4168  38 84 03 92 */	addi r4, r4, 0x392
/* 800A416C  4B FF FE 2D */	bl initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc
/* 800A4170  2C 03 00 00 */	cmpwi r3, 0
/* 800A4174  40 82 00 0C */	bne lbl_800A4180
/* 800A4178  38 60 00 00 */	li r3, 0
/* 800A417C  48 00 06 8C */	b lbl_800A4808
lbl_800A4180:
/* 800A4180  7F E3 FB 78 */	mr r3, r31
/* 800A4184  38 9F 06 84 */	addi r4, r31, 0x684
/* 800A4188  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A418C  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A4190  38 A5 03 AF */	addi r5, r5, 0x3af
/* 800A4194  38 C0 00 00 */	li r6, 0
/* 800A4198  4B FF FD 69 */	bl initDemoModel__9daAlink_cFPP8J3DModelPCcUl
/* 800A419C  2C 03 00 00 */	cmpwi r3, 0
/* 800A41A0  40 82 00 0C */	bne lbl_800A41AC
/* 800A41A4  38 60 00 00 */	li r3, 0
/* 800A41A8  48 00 06 60 */	b lbl_800A4808
lbl_800A41AC:
/* 800A41AC  7F E3 FB 78 */	mr r3, r31
/* 800A41B0  38 9F 06 88 */	addi r4, r31, 0x688
/* 800A41B4  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A41B8  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A41BC  38 A5 03 CE */	addi r5, r5, 0x3ce
/* 800A41C0  38 C0 02 00 */	li r6, 0x200
/* 800A41C4  4B FF FD 3D */	bl initDemoModel__9daAlink_cFPP8J3DModelPCcUl
/* 800A41C8  2C 03 00 00 */	cmpwi r3, 0
/* 800A41CC  40 82 00 0C */	bne lbl_800A41D8
/* 800A41D0  38 60 00 00 */	li r3, 0
/* 800A41D4  48 00 06 34 */	b lbl_800A4808
lbl_800A41D8:
/* 800A41D8  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 800A41DC  28 00 00 00 */	cmplwi r0, 0
/* 800A41E0  41 82 00 28 */	beq lbl_800A4208
/* 800A41E4  38 7F 06 90 */	addi r3, r31, 0x690
/* 800A41E8  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A41EC  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A41F0  38 84 03 EE */	addi r4, r4, 0x3ee
/* 800A41F4  4B FF FD A5 */	bl initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc
/* 800A41F8  2C 03 00 00 */	cmpwi r3, 0
/* 800A41FC  40 82 00 0C */	bne lbl_800A4208
/* 800A4200  38 60 00 00 */	li r3, 0
/* 800A4204  48 00 06 04 */	b lbl_800A4808
lbl_800A4208:
/* 800A4208  38 7F 06 B0 */	addi r3, r31, 0x6b0
/* 800A420C  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A4210  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A4214  38 84 04 0B */	addi r4, r4, 0x40b
/* 800A4218  4B FF FD 81 */	bl initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc
/* 800A421C  2C 03 00 00 */	cmpwi r3, 0
/* 800A4220  40 82 00 0C */	bne lbl_800A422C
/* 800A4224  38 60 00 00 */	li r3, 0
/* 800A4228  48 00 05 E0 */	b lbl_800A4808
lbl_800A422C:
/* 800A422C  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 800A4230  28 03 00 00 */	cmplwi r3, 0
/* 800A4234  41 82 00 18 */	beq lbl_800A424C
/* 800A4238  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800A423C  90 1F 06 B4 */	stw r0, 0x6b4(r31)
/* 800A4240  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 800A4244  38 80 00 00 */	li r4, 0
/* 800A4248  4B F6 97 49 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
lbl_800A424C:
/* 800A424C  38 7F 20 64 */	addi r3, r31, 0x2064
/* 800A4250  48 08 24 01 */	bl create__15daAlink_sight_cFv
/* 800A4254  2C 03 00 00 */	cmpwi r3, 0
/* 800A4258  40 82 00 0C */	bne lbl_800A4264
/* 800A425C  38 60 00 00 */	li r3, 0
/* 800A4260  48 00 05 A8 */	b lbl_800A4808
lbl_800A4264:
/* 800A4264  38 60 00 6C */	li r3, 0x6c
/* 800A4268  48 22 A9 E5 */	bl __nw__FUl
/* 800A426C  7C 60 1B 79 */	or. r0, r3, r3
/* 800A4270  41 82 00 0C */	beq lbl_800A427C
/* 800A4274  48 09 C9 15 */	bl __ct__12daAlinkHIO_cFv
/* 800A4278  7C 60 1B 78 */	mr r0, r3
lbl_800A427C:
/* 800A427C  90 1F 21 EC */	stw r0, 0x21ec(r31)
/* 800A4280  80 1F 21 EC */	lwz r0, 0x21ec(r31)
/* 800A4284  28 00 00 00 */	cmplwi r0, 0
/* 800A4288  40 82 00 0C */	bne lbl_800A4294
/* 800A428C  38 60 00 00 */	li r3, 0
/* 800A4290  48 00 05 78 */	b lbl_800A4808
lbl_800A4294:
/* 800A4294  7F E3 FB 78 */	mr r3, r31
/* 800A4298  38 80 00 2F */	li r4, 0x2f
/* 800A429C  38 A0 00 00 */	li r5, 0
/* 800A42A0  4B FF FB 91 */	bl initModel__9daAlink_cFUsUl
/* 800A42A4  90 7F 06 74 */	stw r3, 0x674(r31)
/* 800A42A8  28 03 00 00 */	cmplwi r3, 0
/* 800A42AC  40 82 00 0C */	bne lbl_800A42B8
/* 800A42B0  38 60 00 00 */	li r3, 0
/* 800A42B4  48 00 05 54 */	b lbl_800A4808
lbl_800A42B8:
/* 800A42B8  7F E3 FB 78 */	mr r3, r31
/* 800A42BC  38 80 00 3C */	li r4, 0x3c
/* 800A42C0  38 A0 02 00 */	li r5, 0x200
/* 800A42C4  4B FF FB 6D */	bl initModel__9daAlink_cFUsUl
/* 800A42C8  90 7F 06 60 */	stw r3, 0x660(r31)
/* 800A42CC  28 03 00 00 */	cmplwi r3, 0
/* 800A42D0  40 82 00 0C */	bne lbl_800A42DC
/* 800A42D4  38 60 00 00 */	li r3, 0
/* 800A42D8  48 00 05 30 */	b lbl_800A4808
lbl_800A42DC:
/* 800A42DC  7F E3 FB 78 */	mr r3, r31
/* 800A42E0  38 80 00 38 */	li r4, 0x38
/* 800A42E4  3C A0 01 00 */	lis r5, 0x0100 /* 0x01000200@ha */
/* 800A42E8  38 A5 02 00 */	addi r5, r5, 0x0200 /* 0x01000200@l */
/* 800A42EC  4B FF FB AD */	bl initModelEnv__9daAlink_cFUsUl
/* 800A42F0  90 7F 06 68 */	stw r3, 0x668(r31)
/* 800A42F4  28 03 00 00 */	cmplwi r3, 0
/* 800A42F8  40 82 00 0C */	bne lbl_800A4304
/* 800A42FC  38 60 00 00 */	li r3, 0
/* 800A4300  48 00 05 08 */	b lbl_800A4808
lbl_800A4304:
/* 800A4304  7F E3 FB 78 */	mr r3, r31
/* 800A4308  38 80 00 3B */	li r4, 0x3b
/* 800A430C  38 A0 00 00 */	li r5, 0
/* 800A4310  4B FF FB 21 */	bl initModel__9daAlink_cFUsUl
/* 800A4314  90 7F 06 64 */	stw r3, 0x664(r31)
/* 800A4318  28 03 00 00 */	cmplwi r3, 0
/* 800A431C  40 82 00 0C */	bne lbl_800A4328
/* 800A4320  38 60 00 00 */	li r3, 0
/* 800A4324  48 00 04 E4 */	b lbl_800A4808
lbl_800A4328:
/* 800A4328  7F E3 FB 78 */	mr r3, r31
/* 800A432C  38 80 00 37 */	li r4, 0x37
/* 800A4330  38 A0 00 00 */	li r5, 0
/* 800A4334  4B FF FB 65 */	bl initModelEnv__9daAlink_cFUsUl
/* 800A4338  90 7F 06 6C */	stw r3, 0x66c(r31)
/* 800A433C  28 03 00 00 */	cmplwi r3, 0
/* 800A4340  40 82 00 0C */	bne lbl_800A434C
/* 800A4344  38 60 00 00 */	li r3, 0
/* 800A4348  48 00 04 C0 */	b lbl_800A4808
lbl_800A434C:
/* 800A434C  38 60 05 10 */	li r3, 0x510
/* 800A4350  48 22 A9 75 */	bl __nwa__FUl
/* 800A4354  38 80 00 00 */	li r4, 0
/* 800A4358  38 A0 00 00 */	li r5, 0
/* 800A435C  38 C0 00 20 */	li r6, 0x20
/* 800A4360  38 E0 00 28 */	li r7, 0x28
/* 800A4364  48 2B DB B1 */	bl __construct_new_array
/* 800A4368  7C 7C 1B 79 */	or. r28, r3, r3
/* 800A436C  40 82 00 0C */	bne lbl_800A4378
/* 800A4370  38 60 00 00 */	li r3, 0
/* 800A4374  48 00 04 94 */	b lbl_800A4808
lbl_800A4378:
/* 800A4378  38 60 02 80 */	li r3, 0x280
/* 800A437C  48 22 A9 49 */	bl __nwa__FUl
/* 800A4380  7C 7B 1B 79 */	or. r27, r3, r3
/* 800A4384  40 82 00 0C */	bne lbl_800A4390
/* 800A4388  38 60 00 00 */	li r3, 0
/* 800A438C  48 00 04 7C */	b lbl_800A4808
lbl_800A4390:
/* 800A4390  38 60 00 24 */	li r3, 0x24
/* 800A4394  48 22 A8 B9 */	bl __nw__FUl
/* 800A4398  28 03 00 00 */	cmplwi r3, 0
/* 800A439C  41 82 00 34 */	beq lbl_800A43D0
/* 800A43A0  93 83 00 1C */	stw r28, 0x1c(r3)
/* 800A43A4  93 63 00 20 */	stw r27, 0x20(r3)
/* 800A43A8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A43AC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 800A43B0  38 00 00 00 */	li r0, 0
/* 800A43B4  98 03 00 00 */	stb r0, 0(r3)
/* 800A43B8  B0 03 00 18 */	sth r0, 0x18(r3)
/* 800A43BC  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 800A43C0  D0 03 00 04 */	stfs f0, 4(r3)
/* 800A43C4  D0 03 00 08 */	stfs f0, 8(r3)
/* 800A43C8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800A43CC  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_800A43D0:
/* 800A43D0  90 7F 20 60 */	stw r3, 0x2060(r31)
/* 800A43D4  80 1F 20 60 */	lwz r0, 0x2060(r31)
/* 800A43D8  28 00 00 00 */	cmplwi r0, 0
/* 800A43DC  40 82 00 0C */	bne lbl_800A43E8
/* 800A43E0  38 60 00 00 */	li r3, 0
/* 800A43E4  48 00 04 24 */	b lbl_800A4808
lbl_800A43E8:
/* 800A43E8  38 60 00 10 */	li r3, 0x10
/* 800A43EC  48 22 A8 61 */	bl __nw__FUl
/* 800A43F0  28 03 00 00 */	cmplwi r3, 0
/* 800A43F4  41 82 00 94 */	beq lbl_800A4488
/* 800A43F8  80 BF 20 60 */	lwz r5, 0x2060(r31)
/* 800A43FC  3C 80 80 3A */	lis r4, __vt__10J3DMtxCalc@ha /* 0x803A3468@ha */
/* 800A4400  38 04 34 68 */	addi r0, r4, __vt__10J3DMtxCalc@l /* 0x803A3468@l */
/* 800A4404  90 03 00 00 */	stw r0, 0(r3)
/* 800A4408  3C 80 80 3A */	lis r4, __vt__19J3DMtxCalcNoAnmBase@ha /* 0x803A338C@ha */
/* 800A440C  38 04 33 8C */	addi r0, r4, __vt__19J3DMtxCalcNoAnmBase@l /* 0x803A338C@l */
/* 800A4410  90 03 00 00 */	stw r0, 0(r3)
/* 800A4414  3C 80 80 3A */	lis r4, data_803A3360@ha /* 0x803A3360@ha */
/* 800A4418  38 04 33 60 */	addi r0, r4, data_803A3360@l /* 0x803A3360@l */
/* 800A441C  90 03 00 00 */	stw r0, 0(r3)
/* 800A4420  3C 80 80 3A */	lis r4, __vt__25mDoExt_MtxCalcAnmBlendTbl@ha /* 0x803A33E4@ha */
/* 800A4424  38 04 33 E4 */	addi r0, r4, __vt__25mDoExt_MtxCalcAnmBlendTbl@l /* 0x803A33E4@l */
/* 800A4428  90 03 00 00 */	stw r0, 0(r3)
/* 800A442C  38 00 00 03 */	li r0, 3
/* 800A4430  90 03 00 04 */	stw r0, 4(r3)
/* 800A4434  38 1F 1F 28 */	addi r0, r31, 0x1f28
/* 800A4438  90 03 00 08 */	stw r0, 8(r3)
/* 800A443C  38 C0 00 00 */	li r6, 0
/* 800A4440  7C C4 33 78 */	mr r4, r6
/* 800A4444  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A4448  48 00 00 24 */	b lbl_800A446C
lbl_800A444C:
/* 800A444C  80 03 00 08 */	lwz r0, 8(r3)
/* 800A4450  7C E0 22 14 */	add r7, r0, r4
/* 800A4454  80 07 00 04 */	lwz r0, 4(r7)
/* 800A4458  28 00 00 00 */	cmplwi r0, 0
/* 800A445C  40 82 00 08 */	bne lbl_800A4464
/* 800A4460  D0 07 00 00 */	stfs f0, 0(r7)
lbl_800A4464:
/* 800A4464  38 C6 00 01 */	addi r6, r6, 1
/* 800A4468  38 84 00 08 */	addi r4, r4, 8
lbl_800A446C:
/* 800A446C  80 03 00 04 */	lwz r0, 4(r3)
/* 800A4470  7C 06 00 00 */	cmpw r6, r0
/* 800A4474  41 80 FF D8 */	blt lbl_800A444C
/* 800A4478  3C 80 80 3A */	lis r4, __vt__28mDoExt_MtxCalcAnmBlendTblOld@ha /* 0x803A33B8@ha */
/* 800A447C  38 04 33 B8 */	addi r0, r4, __vt__28mDoExt_MtxCalcAnmBlendTblOld@l /* 0x803A33B8@l */
/* 800A4480  90 03 00 00 */	stw r0, 0(r3)
/* 800A4484  90 A3 00 0C */	stw r5, 0xc(r3)
lbl_800A4488:
/* 800A4488  90 7F 1F 20 */	stw r3, 0x1f20(r31)
/* 800A448C  80 1F 1F 20 */	lwz r0, 0x1f20(r31)
/* 800A4490  28 00 00 00 */	cmplwi r0, 0
/* 800A4494  40 82 00 0C */	bne lbl_800A44A0
/* 800A4498  38 60 00 00 */	li r3, 0
/* 800A449C  48 00 03 6C */	b lbl_800A4808
lbl_800A44A0:
/* 800A44A0  38 60 00 10 */	li r3, 0x10
/* 800A44A4  48 22 A7 A9 */	bl __nw__FUl
/* 800A44A8  28 03 00 00 */	cmplwi r3, 0
/* 800A44AC  41 82 00 94 */	beq lbl_800A4540
/* 800A44B0  80 BF 20 60 */	lwz r5, 0x2060(r31)
/* 800A44B4  3C 80 80 3A */	lis r4, __vt__10J3DMtxCalc@ha /* 0x803A3468@ha */
/* 800A44B8  38 04 34 68 */	addi r0, r4, __vt__10J3DMtxCalc@l /* 0x803A3468@l */
/* 800A44BC  90 03 00 00 */	stw r0, 0(r3)
/* 800A44C0  3C 80 80 3A */	lis r4, __vt__19J3DMtxCalcNoAnmBase@ha /* 0x803A338C@ha */
/* 800A44C4  38 04 33 8C */	addi r0, r4, __vt__19J3DMtxCalcNoAnmBase@l /* 0x803A338C@l */
/* 800A44C8  90 03 00 00 */	stw r0, 0(r3)
/* 800A44CC  3C 80 80 3A */	lis r4, data_803A3360@ha /* 0x803A3360@ha */
/* 800A44D0  38 04 33 60 */	addi r0, r4, data_803A3360@l /* 0x803A3360@l */
/* 800A44D4  90 03 00 00 */	stw r0, 0(r3)
/* 800A44D8  3C 80 80 3A */	lis r4, __vt__25mDoExt_MtxCalcAnmBlendTbl@ha /* 0x803A33E4@ha */
/* 800A44DC  38 04 33 E4 */	addi r0, r4, __vt__25mDoExt_MtxCalcAnmBlendTbl@l /* 0x803A33E4@l */
/* 800A44E0  90 03 00 00 */	stw r0, 0(r3)
/* 800A44E4  38 00 00 03 */	li r0, 3
/* 800A44E8  90 03 00 04 */	stw r0, 4(r3)
/* 800A44EC  38 1F 1F 40 */	addi r0, r31, 0x1f40
/* 800A44F0  90 03 00 08 */	stw r0, 8(r3)
/* 800A44F4  38 C0 00 00 */	li r6, 0
/* 800A44F8  38 80 00 00 */	li r4, 0
/* 800A44FC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A4500  48 00 00 24 */	b lbl_800A4524
lbl_800A4504:
/* 800A4504  80 03 00 08 */	lwz r0, 8(r3)
/* 800A4508  7C E0 22 14 */	add r7, r0, r4
/* 800A450C  80 07 00 04 */	lwz r0, 4(r7)
/* 800A4510  28 00 00 00 */	cmplwi r0, 0
/* 800A4514  40 82 00 08 */	bne lbl_800A451C
/* 800A4518  D0 07 00 00 */	stfs f0, 0(r7)
lbl_800A451C:
/* 800A451C  38 C6 00 01 */	addi r6, r6, 1
/* 800A4520  38 84 00 08 */	addi r4, r4, 8
lbl_800A4524:
/* 800A4524  80 03 00 04 */	lwz r0, 4(r3)
/* 800A4528  7C 06 00 00 */	cmpw r6, r0
/* 800A452C  41 80 FF D8 */	blt lbl_800A4504
/* 800A4530  3C 80 80 3A */	lis r4, __vt__28mDoExt_MtxCalcAnmBlendTblOld@ha /* 0x803A33B8@ha */
/* 800A4534  38 04 33 B8 */	addi r0, r4, __vt__28mDoExt_MtxCalcAnmBlendTblOld@l /* 0x803A33B8@l */
/* 800A4538  90 03 00 00 */	stw r0, 0(r3)
/* 800A453C  90 A3 00 0C */	stw r5, 0xc(r3)
lbl_800A4540:
/* 800A4540  90 7F 1F 24 */	stw r3, 0x1f24(r31)
/* 800A4544  80 1F 1F 24 */	lwz r0, 0x1f24(r31)
/* 800A4548  28 00 00 00 */	cmplwi r0, 0
/* 800A454C  40 82 00 0C */	bne lbl_800A4558
/* 800A4550  38 60 00 00 */	li r3, 0
/* 800A4554  48 00 02 B4 */	b lbl_800A4808
lbl_800A4558:
/* 800A4558  3B 80 00 00 */	li r28, 0
/* 800A455C  3B 60 00 00 */	li r27, 0
lbl_800A4560:
/* 800A4560  38 60 01 08 */	li r3, 0x108
/* 800A4564  48 22 A6 E9 */	bl __nw__FUl
/* 800A4568  7C 7D 1B 79 */	or. r29, r3, r3
/* 800A456C  41 82 00 CC */	beq lbl_800A4638
/* 800A4570  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 800A4574  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 800A4578  90 1D 00 00 */	stw r0, 0(r29)
/* 800A457C  38 7D 00 04 */	addi r3, r29, 4
/* 800A4580  3C 80 80 04 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x8003B2F4@ha */
/* 800A4584  38 84 B2 F4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x8003B2F4@l */
/* 800A4588  3C A0 80 04 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x8003B2B8@ha */
/* 800A458C  38 A5 B2 B8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x8003B2B8@l */
/* 800A4590  38 C0 00 08 */	li r6, 8
/* 800A4594  38 E0 00 02 */	li r7, 2
/* 800A4598  48 2B D7 C9 */	bl __construct_array
/* 800A459C  38 7D 00 14 */	addi r3, r29, 0x14
/* 800A45A0  3C 80 80 04 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x8003B2A0@ha */
/* 800A45A4  38 84 B2 A0 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x8003B2A0@l */
/* 800A45A8  3C A0 80 04 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x8003B264@ha */
/* 800A45AC  38 A5 B2 64 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x8003B264@l */
/* 800A45B0  38 C0 00 08 */	li r6, 8
/* 800A45B4  38 E0 00 08 */	li r7, 8
/* 800A45B8  48 2B D7 A9 */	bl __construct_array
/* 800A45BC  38 7D 00 54 */	addi r3, r29, 0x54
/* 800A45C0  3C 80 80 04 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x8003B240@ha */
/* 800A45C4  38 84 B2 40 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x8003B240@l */
/* 800A45C8  3C A0 80 04 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x8003B1F8@ha */
/* 800A45CC  38 A5 B1 F8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x8003B1F8@l */
/* 800A45D0  38 C0 00 0C */	li r6, 0xc
/* 800A45D4  38 E0 00 08 */	li r7, 8
/* 800A45D8  48 2B D7 89 */	bl __construct_array
/* 800A45DC  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 800A45E0  3C 80 80 04 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x8003B1E0@ha */
/* 800A45E4  38 84 B1 E0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x8003B1E0@l */
/* 800A45E8  3C A0 80 04 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x8003B1A4@ha */
/* 800A45EC  38 A5 B1 A4 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x8003B1A4@l */
/* 800A45F0  38 C0 00 08 */	li r6, 8
/* 800A45F4  38 E0 00 04 */	li r7, 4
/* 800A45F8  48 2B D7 69 */	bl __construct_array
/* 800A45FC  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 800A4600  3C 80 80 04 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x8003B18C@ha */
/* 800A4604  38 84 B1 8C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x8003B18C@l */
/* 800A4608  3C A0 80 04 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x8003B150@ha */
/* 800A460C  38 A5 B1 50 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x8003B150@l */
/* 800A4610  38 C0 00 08 */	li r6, 8
/* 800A4614  38 E0 00 04 */	li r7, 4
/* 800A4618  48 2B D7 49 */	bl __construct_array
/* 800A461C  7F A3 EB 78 */	mr r3, r29
/* 800A4620  48 28 7D 01 */	bl initialize__14J3DMaterialAnmFv
/* 800A4624  3C 60 80 3B */	lis r3, __vt__16daAlink_matAnm_c@ha /* 0x803B3564@ha */
/* 800A4628  38 03 35 64 */	addi r0, r3, __vt__16daAlink_matAnm_c@l /* 0x803B3564@l */
/* 800A462C  90 1D 00 00 */	stw r0, 0(r29)
/* 800A4630  7F A3 EB 78 */	mr r3, r29
/* 800A4634  4B FF 92 B1 */	bl init__16daAlink_matAnm_cFv
lbl_800A4638:
/* 800A4638  38 1B 21 80 */	addi r0, r27, 0x2180
/* 800A463C  7F BF 01 2E */	stwx r29, r31, r0
/* 800A4640  7C 1F 00 2E */	lwzx r0, r31, r0
/* 800A4644  28 00 00 00 */	cmplwi r0, 0
/* 800A4648  40 82 00 0C */	bne lbl_800A4654
/* 800A464C  38 60 00 00 */	li r3, 0
/* 800A4650  48 00 01 B8 */	b lbl_800A4808
lbl_800A4654:
/* 800A4654  3B 9C 00 01 */	addi r28, r28, 1
/* 800A4658  2C 1C 00 02 */	cmpwi r28, 2
/* 800A465C  3B 7B 00 04 */	addi r27, r27, 4
/* 800A4660  41 80 FF 00 */	blt lbl_800A4560
/* 800A4664  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010800@ha */
/* 800A4668  38 03 08 00 */	addi r0, r3, 0x0800 /* 0x00010800@l */
/* 800A466C  90 1F 1F 60 */	stw r0, 0x1f60(r31)
/* 800A4670  38 7F 1F 58 */	addi r3, r31, 0x1f58
/* 800A4674  48 0B A7 51 */	bl mallocBuffer__14daPy_anmHeap_cFv
/* 800A4678  28 03 00 00 */	cmplwi r3, 0
/* 800A467C  40 82 00 0C */	bne lbl_800A4688
/* 800A4680  38 60 00 00 */	li r3, 0
/* 800A4684  48 00 01 84 */	b lbl_800A4808
lbl_800A4688:
/* 800A4688  38 60 08 00 */	li r3, 0x800
/* 800A468C  38 80 00 20 */	li r4, 0x20
/* 800A4690  48 22 A6 5D */	bl __nwa__FUli
/* 800A4694  90 7F 2D 78 */	stw r3, 0x2d78(r31)
/* 800A4698  80 1F 2D 78 */	lwz r0, 0x2d78(r31)
/* 800A469C  28 00 00 00 */	cmplwi r0, 0
/* 800A46A0  40 82 00 0C */	bne lbl_800A46AC
/* 800A46A4  38 60 00 00 */	li r3, 0
/* 800A46A8  48 00 01 60 */	b lbl_800A4808
lbl_800A46AC:
/* 800A46AC  38 7F 21 18 */	addi r3, r31, 0x2118
/* 800A46B0  48 0B A7 15 */	bl mallocBuffer__14daPy_anmHeap_cFv
/* 800A46B4  28 03 00 00 */	cmplwi r3, 0
/* 800A46B8  40 82 00 0C */	bne lbl_800A46C4
/* 800A46BC  38 60 00 00 */	li r3, 0
/* 800A46C0  48 00 01 48 */	b lbl_800A4808
lbl_800A46C4:
/* 800A46C4  38 7F 21 2C */	addi r3, r31, 0x212c
/* 800A46C8  48 0B A6 FD */	bl mallocBuffer__14daPy_anmHeap_cFv
/* 800A46CC  28 03 00 00 */	cmplwi r3, 0
/* 800A46D0  40 82 00 0C */	bne lbl_800A46DC
/* 800A46D4  38 60 00 00 */	li r3, 0
/* 800A46D8  48 00 01 30 */	b lbl_800A4808
lbl_800A46DC:
/* 800A46DC  38 7F 21 40 */	addi r3, r31, 0x2140
/* 800A46E0  48 0B A6 E5 */	bl mallocBuffer__14daPy_anmHeap_cFv
/* 800A46E4  28 03 00 00 */	cmplwi r3, 0
/* 800A46E8  40 82 00 0C */	bne lbl_800A46F4
/* 800A46EC  38 60 00 00 */	li r3, 0
/* 800A46F0  48 00 01 18 */	b lbl_800A4808
lbl_800A46F4:
/* 800A46F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A46F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A46FC  80 63 5C AC */	lwz r3, 0x5cac(r3)
/* 800A4700  80 9F 21 4C */	lwz r4, 0x214c(r31)
/* 800A4704  38 A0 0C 00 */	li r5, 0xc00
/* 800A4708  38 C0 00 E8 */	li r6, 0xe8
/* 800A470C  48 23 17 C1 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 800A4710  80 7F 21 4C */	lwz r3, 0x214c(r31)
/* 800A4714  38 80 00 00 */	li r4, 0
/* 800A4718  48 29 34 29 */	bl load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 800A471C  7C 64 1B 78 */	mr r4, r3
/* 800A4720  38 7F 21 64 */	addi r3, r31, 0x2164
/* 800A4724  38 A0 00 00 */	li r5, 0
/* 800A4728  38 C0 00 02 */	li r6, 2
/* 800A472C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800A4730  38 E0 00 00 */	li r7, 0
/* 800A4734  39 00 FF FF */	li r8, -1
/* 800A4738  39 20 00 00 */	li r9, 0
/* 800A473C  4B F6 90 A1 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 800A4740  2C 03 00 00 */	cmpwi r3, 0
/* 800A4744  40 82 00 0C */	bne lbl_800A4750
/* 800A4748  38 60 00 00 */	li r3, 0
/* 800A474C  48 00 00 BC */	b lbl_800A4808
lbl_800A4750:
/* 800A4750  38 7F 21 D8 */	addi r3, r31, 0x21d8
/* 800A4754  48 0B A6 71 */	bl mallocBuffer__14daPy_anmHeap_cFv
/* 800A4758  28 03 00 00 */	cmplwi r3, 0
/* 800A475C  40 82 00 0C */	bne lbl_800A4768
/* 800A4760  38 60 00 00 */	li r3, 0
/* 800A4764  48 00 00 A4 */	b lbl_800A4808
lbl_800A4768:
/* 800A4768  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 800A476C  28 00 00 00 */	cmplwi r0, 0
/* 800A4770  41 82 00 94 */	beq lbl_800A4804
/* 800A4774  38 60 00 18 */	li r3, 0x18
/* 800A4778  48 22 A4 D5 */	bl __nw__FUl
/* 800A477C  7C 7B 1B 79 */	or. r27, r3, r3
/* 800A4780  41 82 00 20 */	beq lbl_800A47A0
/* 800A4784  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 800A4788  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 800A478C  90 1B 00 00 */	stw r0, 0(r27)
/* 800A4790  38 80 00 00 */	li r4, 0
/* 800A4794  48 28 3C 69 */	bl init__12J3DFrameCtrlFs
/* 800A4798  38 00 00 00 */	li r0, 0
/* 800A479C  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_800A47A0:
/* 800A47A0  93 7F 06 9C */	stw r27, 0x69c(r31)
/* 800A47A4  80 1F 06 9C */	lwz r0, 0x69c(r31)
/* 800A47A8  28 00 00 00 */	cmplwi r0, 0
/* 800A47AC  40 82 00 0C */	bne lbl_800A47B8
/* 800A47B0  38 60 00 00 */	li r3, 0
/* 800A47B4  48 00 00 54 */	b lbl_800A4808
lbl_800A47B8:
/* 800A47B8  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 800A47BC  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 800A47C0  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A47C4  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A47C8  38 84 04 28 */	addi r4, r4, 0x428
/* 800A47CC  7F C5 F3 78 */	mr r5, r30
/* 800A47D0  38 C0 00 80 */	li r6, 0x80
/* 800A47D4  4B F9 7B A9 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 800A47D8  90 7F 06 94 */	stw r3, 0x694(r31)
/* 800A47DC  80 9F 06 94 */	lwz r4, 0x694(r31)
/* 800A47E0  28 04 00 00 */	cmplwi r4, 0
/* 800A47E4  41 82 00 20 */	beq lbl_800A4804
/* 800A47E8  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 800A47EC  38 A0 00 01 */	li r5, 1
/* 800A47F0  48 28 32 3D */	bl setDeformData__8J3DModelFP13J3DDeformDataUl
/* 800A47F4  2C 03 00 00 */	cmpwi r3, 0
/* 800A47F8  41 82 00 0C */	beq lbl_800A4804
/* 800A47FC  38 60 00 00 */	li r3, 0
/* 800A4800  48 00 00 08 */	b lbl_800A4808
lbl_800A4804:
/* 800A4804  38 60 00 01 */	li r3, 1
lbl_800A4808:
/* 800A4808  39 61 00 20 */	addi r11, r1, 0x20
/* 800A480C  48 2B DA 15 */	bl _restgpr_27
/* 800A4810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A4814  7C 08 03 A6 */	mtlr r0
/* 800A4818  38 21 00 20 */	addi r1, r1, 0x20
/* 800A481C  4E 80 00 20 */	blr 
