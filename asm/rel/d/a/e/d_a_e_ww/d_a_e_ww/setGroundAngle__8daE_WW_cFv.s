lbl_807E804C:
/* 807E804C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807E8050  7C 08 02 A6 */	mflr r0
/* 807E8054  90 01 00 94 */	stw r0, 0x94(r1)
/* 807E8058  39 61 00 90 */	addi r11, r1, 0x90
/* 807E805C  4B B7 A1 81 */	bl _savegpr_29
/* 807E8060  7C 7F 1B 78 */	mr r31, r3
/* 807E8064  3C 60 80 7F */	lis r3, lit_3905@ha /* 0x807EF770@ha */
/* 807E8068  3B C3 F7 70 */	addi r30, r3, lit_3905@l /* 0x807EF770@l */
/* 807E806C  88 1F 07 5B */	lbz r0, 0x75b(r31)
/* 807E8070  28 00 00 00 */	cmplwi r0, 0
/* 807E8074  41 82 00 5C */	beq lbl_807E80D0
/* 807E8078  80 1F 07 CC */	lwz r0, 0x7cc(r31)
/* 807E807C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807E8080  40 82 00 50 */	bne lbl_807E80D0
/* 807E8084  38 7F 06 74 */	addi r3, r31, 0x674
/* 807E8088  38 80 00 00 */	li r4, 0
/* 807E808C  38 A0 00 04 */	li r5, 4
/* 807E8090  38 C0 10 00 */	li r6, 0x1000
/* 807E8094  38 E0 02 00 */	li r7, 0x200
/* 807E8098  4B A8 84 A9 */	bl cLib_addCalcAngleS__FPsssss
/* 807E809C  38 7F 06 78 */	addi r3, r31, 0x678
/* 807E80A0  38 80 00 00 */	li r4, 0
/* 807E80A4  38 A0 00 04 */	li r5, 4
/* 807E80A8  38 C0 10 00 */	li r6, 0x1000
/* 807E80AC  38 E0 02 00 */	li r7, 0x200
/* 807E80B0  4B A8 84 91 */	bl cLib_addCalcAngleS__FPsssss
/* 807E80B4  38 7F 06 CE */	addi r3, r31, 0x6ce
/* 807E80B8  38 80 00 00 */	li r4, 0
/* 807E80BC  38 A0 00 04 */	li r5, 4
/* 807E80C0  38 C0 10 00 */	li r6, 0x1000
/* 807E80C4  38 E0 02 00 */	li r7, 0x200
/* 807E80C8  4B A8 84 79 */	bl cLib_addCalcAngleS__FPsssss
/* 807E80CC  48 00 02 28 */	b lbl_807E82F4
lbl_807E80D0:
/* 807E80D0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807E80D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E80D8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807E80DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E80E0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807E80E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E80E8  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 807E80EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E80F0  38 61 00 20 */	addi r3, r1, 0x20
/* 807E80F4  4B 88 F4 89 */	bl __ct__11dBgS_GndChkFv
/* 807E80F8  88 1F 07 5C */	lbz r0, 0x75c(r31)
/* 807E80FC  28 00 00 00 */	cmplwi r0, 0
/* 807E8100  40 82 00 F0 */	bne lbl_807E81F0
/* 807E8104  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807E8108  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807E810C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807E8110  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807E8114  7C 03 04 2E */	lfsx f0, r3, r0
/* 807E8118  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 807E811C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807E8120  EC 02 00 32 */	fmuls f0, f2, f0
/* 807E8124  EC 01 00 2A */	fadds f0, f1, f0
/* 807E8128  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E812C  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 807E8130  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807E8134  EC 01 00 2A */	fadds f0, f1, f0
/* 807E8138  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E813C  7C 63 02 14 */	add r3, r3, r0
/* 807E8140  C0 03 00 04 */	lfs f0, 4(r3)
/* 807E8144  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 807E8148  EC 02 00 32 */	fmuls f0, f2, f0
/* 807E814C  EC 01 00 2A */	fadds f0, f1, f0
/* 807E8150  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E8154  38 61 00 20 */	addi r3, r1, 0x20
/* 807E8158  38 81 00 08 */	addi r4, r1, 8
/* 807E815C  4B A7 FB B1 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 807E8160  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E8164  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E8168  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807E816C  38 81 00 20 */	addi r4, r1, 0x20
/* 807E8170  4B 88 C3 31 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807E8174  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807E8178  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 807E817C  FC 00 08 18 */	frsp f0, f1
/* 807E8180  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 807E8184  40 82 00 0C */	bne lbl_807E8190
/* 807E8188  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807E818C  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_807E8190:
/* 807E8190  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 807E8194  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 807E8198  EC 02 08 28 */	fsubs f0, f2, f1
/* 807E819C  FC 00 02 10 */	fabs f0, f0
/* 807E81A0  FC 60 00 18 */	frsp f3, f0
/* 807E81A4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 807E81A8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 807E81AC  40 81 00 20 */	ble lbl_807E81CC
/* 807E81B0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 807E81B4  40 81 00 10 */	ble lbl_807E81C4
/* 807E81B8  EC 00 08 2A */	fadds f0, f0, f1
/* 807E81BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E81C0  48 00 00 0C */	b lbl_807E81CC
lbl_807E81C4:
/* 807E81C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807E81C8  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_807E81CC:
/* 807E81CC  38 61 00 14 */	addi r3, r1, 0x14
/* 807E81D0  38 81 00 08 */	addi r4, r1, 8
/* 807E81D4  4B A8 8A A1 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 807E81D8  7C 03 00 D0 */	neg r0, r3
/* 807E81DC  B0 1F 06 CE */	sth r0, 0x6ce(r31)
/* 807E81E0  38 00 00 00 */	li r0, 0
/* 807E81E4  B0 1F 06 74 */	sth r0, 0x674(r31)
/* 807E81E8  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 807E81EC  48 00 00 FC */	b lbl_807E82E8
lbl_807E81F0:
/* 807E81F0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807E81F4  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E81F8  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 807E81FC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807E8200  EC 01 00 2A */	fadds f0, f1, f0
/* 807E8204  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E8208  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807E820C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807E8210  EC 01 00 2A */	fadds f0, f1, f0
/* 807E8214  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E8218  38 61 00 20 */	addi r3, r1, 0x20
/* 807E821C  38 81 00 08 */	addi r4, r1, 8
/* 807E8220  4B A7 FA ED */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 807E8224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E8228  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E822C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 807E8230  7F A3 EB 78 */	mr r3, r29
/* 807E8234  38 81 00 20 */	addi r4, r1, 0x20
/* 807E8238  4B 88 C2 69 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807E823C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807E8240  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 807E8244  FC 20 08 18 */	frsp f1, f1
/* 807E8248  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807E824C  41 82 00 24 */	beq lbl_807E8270
/* 807E8250  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807E8254  EC 21 00 28 */	fsubs f1, f1, f0
/* 807E8258  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807E825C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807E8260  EC 42 00 28 */	fsubs f2, f2, f0
/* 807E8264  4B A7 F4 11 */	bl cM_atan2s__Fff
/* 807E8268  7C 03 00 D0 */	neg r0, r3
/* 807E826C  B0 1F 06 74 */	sth r0, 0x674(r31)
lbl_807E8270:
/* 807E8270  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 807E8274  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807E8278  EC 01 00 2A */	fadds f0, f1, f0
/* 807E827C  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E8280  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 807E8284  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807E8288  EC 01 00 2A */	fadds f0, f1, f0
/* 807E828C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E8290  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807E8294  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E8298  38 61 00 20 */	addi r3, r1, 0x20
/* 807E829C  38 81 00 08 */	addi r4, r1, 8
/* 807E82A0  4B A7 FA 6D */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 807E82A4  7F A3 EB 78 */	mr r3, r29
/* 807E82A8  38 81 00 20 */	addi r4, r1, 0x20
/* 807E82AC  4B 88 C1 F5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807E82B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807E82B4  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 807E82B8  FC 20 08 18 */	frsp f1, f1
/* 807E82BC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807E82C0  41 82 00 20 */	beq lbl_807E82E0
/* 807E82C4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807E82C8  EC 21 00 28 */	fsubs f1, f1, f0
/* 807E82CC  C0 41 00 08 */	lfs f2, 8(r1)
/* 807E82D0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807E82D4  EC 42 00 28 */	fsubs f2, f2, f0
/* 807E82D8  4B A7 F3 9D */	bl cM_atan2s__Fff
/* 807E82DC  B0 7F 06 78 */	sth r3, 0x678(r31)
lbl_807E82E0:
/* 807E82E0  38 00 00 00 */	li r0, 0
/* 807E82E4  B0 1F 06 CE */	sth r0, 0x6ce(r31)
lbl_807E82E8:
/* 807E82E8  38 61 00 20 */	addi r3, r1, 0x20
/* 807E82EC  38 80 FF FF */	li r4, -1
/* 807E82F0  4B 88 F3 01 */	bl __dt__11dBgS_GndChkFv
lbl_807E82F4:
/* 807E82F4  39 61 00 90 */	addi r11, r1, 0x90
/* 807E82F8  4B B7 9F 31 */	bl _restgpr_29
/* 807E82FC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807E8300  7C 08 03 A6 */	mtlr r0
/* 807E8304  38 21 00 90 */	addi r1, r1, 0x90
/* 807E8308  4E 80 00 20 */	blr 
