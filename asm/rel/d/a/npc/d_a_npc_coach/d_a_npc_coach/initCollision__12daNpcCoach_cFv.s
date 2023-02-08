lbl_809A4078:
/* 809A4078  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809A407C  7C 08 02 A6 */	mflr r0
/* 809A4080  90 01 00 34 */	stw r0, 0x34(r1)
/* 809A4084  39 61 00 30 */	addi r11, r1, 0x30
/* 809A4088  4B 9B E1 41 */	bl _savegpr_24
/* 809A408C  7C 7D 1B 78 */	mr r29, r3
/* 809A4090  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 809A4094  3B E3 4E D0 */	addi r31, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 809A4098  38 7D 24 CC */	addi r3, r29, 0x24cc
/* 809A409C  C0 3F 02 3C */	lfs f1, 0x23c(r31)
/* 809A40A0  C0 5F 02 40 */	lfs f2, 0x240(r31)
/* 809A40A4  4B 6D 1E B5 */	bl SetWall__12dBgS_AcchCirFff
/* 809A40A8  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 809A40AC  90 01 00 08 */	stw r0, 8(r1)
/* 809A40B0  38 7D 05 74 */	addi r3, r29, 0x574
/* 809A40B4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809A40B8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 809A40BC  7F A6 EB 78 */	mr r6, r29
/* 809A40C0  38 E0 00 01 */	li r7, 1
/* 809A40C4  39 1D 24 CC */	addi r8, r29, 0x24cc
/* 809A40C8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 809A40CC  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 809A40D0  4B 6D 21 79 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809A40D4  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 809A40D8  60 00 00 08 */	ori r0, r0, 8
/* 809A40DC  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 809A40E0  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 809A40E4  60 00 04 00 */	ori r0, r0, 0x400
/* 809A40E8  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 809A40EC  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 809A40F0  60 00 00 04 */	ori r0, r0, 4
/* 809A40F4  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 809A40F8  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 809A40FC  60 00 40 00 */	ori r0, r0, 0x4000
/* 809A4100  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 809A4104  38 7D 05 74 */	addi r3, r29, 0x574
/* 809A4108  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A410C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A4110  3B C4 0F 38 */	addi r30, r4, 0xf38
/* 809A4114  7F C4 F3 78 */	mr r4, r30
/* 809A4118  4B 6D 29 95 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809A411C  38 7D 25 0C */	addi r3, r29, 0x250c
/* 809A4120  38 80 00 FF */	li r4, 0xff
/* 809A4124  38 A0 00 FF */	li r5, 0xff
/* 809A4128  7F A6 EB 78 */	mr r6, r29
/* 809A412C  4B 6D F7 35 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809A4130  3B 00 00 00 */	li r24, 0
/* 809A4134  3B 80 00 00 */	li r28, 0
/* 809A4138  3C 60 80 9A */	lis r3, data_809A4F78@ha /* 0x809A4F78@ha */
/* 809A413C  3B 43 4F 78 */	addi r26, r3, data_809A4F78@l /* 0x809A4F78@l */
/* 809A4140  3B 7D 25 0C */	addi r27, r29, 0x250c
lbl_809A4144:
/* 809A4144  7F 3D E2 14 */	add r25, r29, r28
/* 809A4148  38 79 07 4C */	addi r3, r25, 0x74c
/* 809A414C  7F 44 D3 78 */	mr r4, r26
/* 809A4150  4B 6E 07 65 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809A4154  93 79 07 90 */	stw r27, 0x790(r25)
/* 809A4158  3B 39 08 70 */	addi r25, r25, 0x870
/* 809A415C  7F 23 CB 78 */	mr r3, r25
/* 809A4160  C0 3F 02 3C */	lfs f1, 0x23c(r31)
/* 809A4164  4B 8C B0 9D */	bl SetR__8cM3dGCylFf
/* 809A4168  7F 23 CB 78 */	mr r3, r25
/* 809A416C  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 809A4170  4B 8C B0 89 */	bl SetH__8cM3dGCylFf
/* 809A4174  3B 18 00 01 */	addi r24, r24, 1
/* 809A4178  2C 18 00 04 */	cmpwi r24, 4
/* 809A417C  3B 9C 01 3C */	addi r28, r28, 0x13c
/* 809A4180  41 80 FF C4 */	blt lbl_809A4144
/* 809A4184  39 5D 15 7C */	addi r10, r29, 0x157c
/* 809A4188  91 41 00 08 */	stw r10, 8(r1)
/* 809A418C  38 7D 12 08 */	addi r3, r29, 0x1208
/* 809A4190  38 9D 15 5C */	addi r4, r29, 0x155c
/* 809A4194  38 BD 15 68 */	addi r5, r29, 0x1568
/* 809A4198  7F A6 EB 78 */	mr r6, r29
/* 809A419C  38 E0 00 01 */	li r7, 1
/* 809A41A0  39 1D 24 CC */	addi r8, r29, 0x24cc
/* 809A41A4  39 3D 15 50 */	addi r9, r29, 0x1550
/* 809A41A8  4B 6D 20 A1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809A41AC  80 1D 12 34 */	lwz r0, 0x1234(r29)
/* 809A41B0  60 00 00 08 */	ori r0, r0, 8
/* 809A41B4  90 1D 12 34 */	stw r0, 0x1234(r29)
/* 809A41B8  80 1D 12 34 */	lwz r0, 0x1234(r29)
/* 809A41BC  60 00 04 00 */	ori r0, r0, 0x400
/* 809A41C0  90 1D 12 34 */	stw r0, 0x1234(r29)
/* 809A41C4  80 1D 12 34 */	lwz r0, 0x1234(r29)
/* 809A41C8  60 00 00 04 */	ori r0, r0, 4
/* 809A41CC  90 1D 12 34 */	stw r0, 0x1234(r29)
/* 809A41D0  80 1D 12 34 */	lwz r0, 0x1234(r29)
/* 809A41D4  60 00 40 00 */	ori r0, r0, 0x4000
/* 809A41D8  90 1D 12 34 */	stw r0, 0x1234(r29)
/* 809A41DC  80 1D 12 34 */	lwz r0, 0x1234(r29)
/* 809A41E0  60 00 80 00 */	ori r0, r0, 0x8000
/* 809A41E4  90 1D 12 34 */	stw r0, 0x1234(r29)
/* 809A41E8  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 809A41EC  D0 1D 12 A4 */	stfs f0, 0x12a4(r29)
/* 809A41F0  38 7D 12 08 */	addi r3, r29, 0x1208
/* 809A41F4  7F C4 F3 78 */	mr r4, r30
/* 809A41F8  4B 6D 28 B5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809A41FC  38 7D 13 E0 */	addi r3, r29, 0x13e0
/* 809A4200  3C 80 80 9A */	lis r4, data_809A4F78@ha /* 0x809A4F78@ha */
/* 809A4204  38 84 4F 78 */	addi r4, r4, data_809A4F78@l /* 0x809A4F78@l */
/* 809A4208  4B 6E 06 AD */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809A420C  38 1D 25 0C */	addi r0, r29, 0x250c
/* 809A4210  90 1D 14 24 */	stw r0, 0x1424(r29)
/* 809A4214  38 7D 15 04 */	addi r3, r29, 0x1504
/* 809A4218  C0 3F 02 48 */	lfs f1, 0x248(r31)
/* 809A421C  4B 8C AF E5 */	bl SetR__8cM3dGCylFf
/* 809A4220  38 7D 15 04 */	addi r3, r29, 0x1504
/* 809A4224  C0 3F 02 4C */	lfs f1, 0x24c(r31)
/* 809A4228  4B 8C AF D1 */	bl SetH__8cM3dGCylFf
/* 809A422C  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 809A4230  38 03 5A D8 */	addi r0, r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 809A4234  80 7D 15 1C */	lwz r3, 0x151c(r29)
/* 809A4238  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 809A423C  7F C3 F3 78 */	mr r3, r30
/* 809A4240  80 9D 15 1C */	lwz r4, 0x151c(r29)
/* 809A4244  7F A5 EB 78 */	mr r5, r29
/* 809A4248  4B 6D 07 C1 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 809A424C  39 5D 1D 6A */	addi r10, r29, 0x1d6a
/* 809A4250  91 41 00 08 */	stw r10, 8(r1)
/* 809A4254  38 7D 19 5C */	addi r3, r29, 0x195c
/* 809A4258  38 9D 1B B0 */	addi r4, r29, 0x1bb0
/* 809A425C  38 BD 1B BC */	addi r5, r29, 0x1bbc
/* 809A4260  7F A6 EB 78 */	mr r6, r29
/* 809A4264  38 E0 00 01 */	li r7, 1
/* 809A4268  39 1D 24 CC */	addi r8, r29, 0x24cc
/* 809A426C  39 3D 1B 98 */	addi r9, r29, 0x1b98
/* 809A4270  4B 6D 1F D9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809A4274  80 1D 19 88 */	lwz r0, 0x1988(r29)
/* 809A4278  60 00 00 08 */	ori r0, r0, 8
/* 809A427C  90 1D 19 88 */	stw r0, 0x1988(r29)
/* 809A4280  80 1D 19 88 */	lwz r0, 0x1988(r29)
/* 809A4284  60 00 04 00 */	ori r0, r0, 0x400
/* 809A4288  90 1D 19 88 */	stw r0, 0x1988(r29)
/* 809A428C  80 1D 19 88 */	lwz r0, 0x1988(r29)
/* 809A4290  60 00 00 04 */	ori r0, r0, 4
/* 809A4294  90 1D 19 88 */	stw r0, 0x1988(r29)
/* 809A4298  80 1D 19 88 */	lwz r0, 0x1988(r29)
/* 809A429C  60 00 40 00 */	ori r0, r0, 0x4000
/* 809A42A0  90 1D 19 88 */	stw r0, 0x1988(r29)
/* 809A42A4  80 1D 19 88 */	lwz r0, 0x1988(r29)
/* 809A42A8  60 00 80 00 */	ori r0, r0, 0x8000
/* 809A42AC  90 1D 19 88 */	stw r0, 0x1988(r29)
/* 809A42B0  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 809A42B4  D0 1D 19 F8 */	stfs f0, 0x19f8(r29)
/* 809A42B8  38 7D 19 5C */	addi r3, r29, 0x195c
/* 809A42BC  7F C4 F3 78 */	mr r4, r30
/* 809A42C0  4B 6D 27 ED */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809A42C4  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 809A42C8  38 03 5A D8 */	addi r0, r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 809A42CC  80 7D 1B 34 */	lwz r3, 0x1b34(r29)
/* 809A42D0  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 809A42D4  3C 60 80 9A */	lis r3, arrowStickCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_cR4cXyz@ha /* 0x8099D9AC@ha */
/* 809A42D8  38 03 D9 AC */	addi r0, r3, arrowStickCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_cR4cXyz@l /* 0x8099D9AC@l */
/* 809A42DC  80 7D 1B 34 */	lwz r3, 0x1b34(r29)
/* 809A42E0  90 03 00 B8 */	stw r0, 0xb8(r3)
/* 809A42E4  7F C3 F3 78 */	mr r3, r30
/* 809A42E8  80 9D 1B 34 */	lwz r4, 0x1b34(r29)
/* 809A42EC  7F A5 EB 78 */	mr r5, r29
/* 809A42F0  4B 6D 07 19 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 809A42F4  38 7D 1C 14 */	addi r3, r29, 0x1c14
/* 809A42F8  3C 80 80 9A */	lis r4, data_809A4FBC@ha /* 0x809A4FBC@ha */
/* 809A42FC  38 84 4F BC */	addi r4, r4, data_809A4FBC@l /* 0x809A4FBC@l */
/* 809A4300  4B 6E 07 35 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 809A4304  38 1D 25 0C */	addi r0, r29, 0x250c
/* 809A4308  90 1D 1C 58 */	stw r0, 0x1c58(r29)
/* 809A430C  38 7D 1D 38 */	addi r3, r29, 0x1d38
/* 809A4310  38 9D 05 38 */	addi r4, r29, 0x538
/* 809A4314  4B 8C B3 35 */	bl SetC__8cM3dGSphFRC4cXyz
/* 809A4318  38 7D 1D 38 */	addi r3, r29, 0x1d38
/* 809A431C  C0 3F 02 40 */	lfs f1, 0x240(r31)
/* 809A4320  4B 8C B3 E9 */	bl SetR__8cM3dGSphFf
/* 809A4324  3B 00 00 00 */	li r24, 0
/* 809A4328  3B C0 00 00 */	li r30, 0
/* 809A432C  3C 60 80 9A */	lis r3, data_809A4F78@ha /* 0x809A4F78@ha */
/* 809A4330  3B 63 4F 78 */	addi r27, r3, data_809A4F78@l /* 0x809A4F78@l */
/* 809A4334  3B 9D 25 0C */	addi r28, r29, 0x250c
lbl_809A4338:
/* 809A4338  7F 3D F2 14 */	add r25, r29, r30
/* 809A433C  38 79 21 E4 */	addi r3, r25, 0x21e4
/* 809A4340  7F 64 DB 78 */	mr r4, r27
/* 809A4344  4B 6E 05 71 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809A4348  93 99 22 28 */	stw r28, 0x2228(r25)
/* 809A434C  3B 39 23 08 */	addi r25, r25, 0x2308
/* 809A4350  7F 23 CB 78 */	mr r3, r25
/* 809A4354  C0 3F 02 3C */	lfs f1, 0x23c(r31)
/* 809A4358  4B 8C AE A9 */	bl SetR__8cM3dGCylFf
/* 809A435C  7F 23 CB 78 */	mr r3, r25
/* 809A4360  2C 18 00 00 */	cmpwi r24, 0
/* 809A4364  40 82 00 0C */	bne lbl_809A4370
/* 809A4368  C0 3F 02 20 */	lfs f1, 0x220(r31)
/* 809A436C  48 00 00 08 */	b lbl_809A4374
lbl_809A4370:
/* 809A4370  C0 3F 02 40 */	lfs f1, 0x240(r31)
lbl_809A4374:
/* 809A4374  4B 8C AE 85 */	bl SetH__8cM3dGCylFf
/* 809A4378  3B 18 00 01 */	addi r24, r24, 1
/* 809A437C  2C 18 00 02 */	cmpwi r24, 2
/* 809A4380  3B DE 01 3C */	addi r30, r30, 0x13c
/* 809A4384  41 80 FF B4 */	blt lbl_809A4338
/* 809A4388  39 61 00 30 */	addi r11, r1, 0x30
/* 809A438C  4B 9B DE 89 */	bl _restgpr_24
/* 809A4390  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A4394  7C 08 03 A6 */	mtlr r0
/* 809A4398  38 21 00 30 */	addi r1, r1, 0x30
/* 809A439C  4E 80 00 20 */	blr 
