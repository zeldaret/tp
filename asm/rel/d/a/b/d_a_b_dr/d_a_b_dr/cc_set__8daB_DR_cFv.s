lbl_805C46E0:
/* 805C46E0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805C46E4  7C 08 02 A6 */	mflr r0
/* 805C46E8  90 01 00 74 */	stw r0, 0x74(r1)
/* 805C46EC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805C46F0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805C46F4  39 61 00 60 */	addi r11, r1, 0x60
/* 805C46F8  4B D9 DA D5 */	bl _savegpr_25
/* 805C46FC  7C 7F 1B 78 */	mr r31, r3
/* 805C4700  3C 60 80 5C */	lis r3, lit_3800@ha /* 0x805C6C74@ha */
/* 805C4704  3B C3 6C 74 */	addi r30, r3, lit_3800@l /* 0x805C6C74@l */
/* 805C4708  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805C470C  83 A3 00 04 */	lwz r29, 4(r3)
/* 805C4710  80 1F 07 08 */	lwz r0, 0x708(r31)
/* 805C4714  2C 00 00 09 */	cmpwi r0, 9
/* 805C4718  41 82 00 0C */	beq lbl_805C4724
/* 805C471C  2C 00 00 07 */	cmpwi r0, 7
/* 805C4720  40 82 00 40 */	bne lbl_805C4760
lbl_805C4724:
/* 805C4724  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805C4728  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C472C  38 63 03 90 */	addi r3, r3, 0x390
/* 805C4730  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4734  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4738  4B D8 1D 79 */	bl PSMTXCopy
/* 805C473C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4740  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4744  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805C4748  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805C474C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C4750  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805C4754  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805C4758  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 805C475C  48 00 00 90 */	b lbl_805C47EC
lbl_805C4760:
/* 805C4760  88 1F 07 D1 */	lbz r0, 0x7d1(r31)
/* 805C4764  28 00 00 02 */	cmplwi r0, 2
/* 805C4768  41 82 00 40 */	beq lbl_805C47A8
/* 805C476C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805C4770  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C4774  38 63 09 30 */	addi r3, r3, 0x930
/* 805C4778  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C477C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4780  4B D8 1D 31 */	bl PSMTXCopy
/* 805C4784  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4788  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C478C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805C4790  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805C4794  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C4798  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805C479C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805C47A0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 805C47A4  48 00 00 48 */	b lbl_805C47EC
lbl_805C47A8:
/* 805C47A8  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 805C47AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C47B0  41 82 00 3C */	beq lbl_805C47EC
/* 805C47B4  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805C47B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C47BC  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 805C47C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C47C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C47C8  4B D8 1C E9 */	bl PSMTXCopy
/* 805C47CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C47D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C47D4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805C47D8  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805C47DC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C47E0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805C47E4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805C47E8  D0 1F 05 40 */	stfs f0, 0x540(r31)
lbl_805C47EC:
/* 805C47EC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805C47F0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805C47F4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805C47F8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805C47FC  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805C4800  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805C4804  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 805C4808  C0 1E 03 74 */	lfs f0, 0x374(r30)
/* 805C480C  EC 01 00 2A */	fadds f0, f1, f0
/* 805C4810  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805C4814  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805C4818  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C481C  38 63 09 30 */	addi r3, r3, 0x930
/* 805C4820  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4824  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4828  4B D8 1C 89 */	bl PSMTXCopy
/* 805C482C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C4830  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805C4834  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C4838  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805C483C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C4840  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4844  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4848  38 81 00 28 */	addi r4, r1, 0x28
/* 805C484C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805C4850  4B D8 25 1D */	bl PSMTXMultVec
/* 805C4854  38 7F 15 2C */	addi r3, r31, 0x152c
/* 805C4858  38 81 00 1C */	addi r4, r1, 0x1c
/* 805C485C  4B CA AD ED */	bl SetC__8cM3dGSphFRC4cXyz
/* 805C4860  38 7F 15 2C */	addi r3, r31, 0x152c
/* 805C4864  C0 3E 04 64 */	lfs f1, 0x464(r30)
/* 805C4868  4B CA AE A1 */	bl SetR__8cM3dGSphFf
/* 805C486C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C4870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C4874  3B 83 23 3C */	addi r28, r3, 0x233c
/* 805C4878  7F 83 E3 78 */	mr r3, r28
/* 805C487C  38 9F 14 08 */	addi r4, r31, 0x1408
/* 805C4880  4B CA 03 29 */	bl Set__4cCcSFP8cCcD_Obj
/* 805C4884  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805C4888  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C488C  38 63 03 90 */	addi r3, r3, 0x390
/* 805C4890  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4894  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4898  4B D8 1C 19 */	bl PSMTXCopy
/* 805C489C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C48A0  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C48A4  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 805C48A8  D0 1F 07 60 */	stfs f0, 0x760(r31)
/* 805C48AC  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 805C48B0  D0 1F 07 64 */	stfs f0, 0x764(r31)
/* 805C48B4  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 805C48B8  D0 1F 07 68 */	stfs f0, 0x768(r31)
/* 805C48BC  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 805C48C0  D0 1F 07 90 */	stfs f0, 0x790(r31)
/* 805C48C4  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 805C48C8  D0 1F 07 94 */	stfs f0, 0x794(r31)
/* 805C48CC  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 805C48D0  D0 1F 07 98 */	stfs f0, 0x798(r31)
/* 805C48D4  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805C48D8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C48DC  38 63 03 C0 */	addi r3, r3, 0x3c0
/* 805C48E0  7F 64 DB 78 */	mr r4, r27
/* 805C48E4  4B D8 1B CD */	bl PSMTXCopy
/* 805C48E8  C0 1E 03 74 */	lfs f0, 0x374(r30)
/* 805C48EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805C48F0  C0 1E 04 2C */	lfs f0, 0x42c(r30)
/* 805C48F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C48F8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C48FC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C4900  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4904  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4908  38 81 00 28 */	addi r4, r1, 0x28
/* 805C490C  38 BF 07 78 */	addi r5, r31, 0x778
/* 805C4910  4B D8 24 5D */	bl PSMTXMultVec
/* 805C4914  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805C4918  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805C491C  3B 43 00 04 */	addi r26, r3, 4
/* 805C4920  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805C4924  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805C4928  7C 3A 04 2E */	lfsx f1, r26, r0
/* 805C492C  7C 03 04 2E */	lfsx f0, r3, r0
/* 805C4930  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805C4934  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805C4938  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 805C493C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C4940  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C4944  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C4948  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C494C  EC 02 00 72 */	fmuls f0, f2, f1
/* 805C4950  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C4954  3B 20 00 00 */	li r25, 0
/* 805C4958  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 805C495C  28 00 00 00 */	cmplwi r0, 0
/* 805C4960  40 82 00 6C */	bne lbl_805C49CC
/* 805C4964  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805C4968  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C496C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4970  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4974  4B D8 1B 3D */	bl PSMTXCopy
/* 805C4978  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 805C497C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C4980  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 805C4984  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C4988  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 805C498C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805C4990  38 7F 11 84 */	addi r3, r31, 0x1184
/* 805C4994  38 81 00 1C */	addi r4, r1, 0x1c
/* 805C4998  4B CA AC B1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805C499C  38 7F 11 84 */	addi r3, r31, 0x1184
/* 805C49A0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805C49A4  4B CA AD 65 */	bl SetR__8cM3dGSphFf
/* 805C49A8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805C49AC  D0 1F 10 E4 */	stfs f0, 0x10e4(r31)
/* 805C49B0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805C49B4  D0 1F 10 E8 */	stfs f0, 0x10e8(r31)
/* 805C49B8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805C49BC  D0 1F 10 EC */	stfs f0, 0x10ec(r31)
/* 805C49C0  7F 83 E3 78 */	mr r3, r28
/* 805C49C4  38 9F 10 60 */	addi r4, r31, 0x1060
/* 805C49C8  4B CA 01 E1 */	bl Set__4cCcSFP8cCcD_Obj
lbl_805C49CC:
/* 805C49CC  80 1F 07 08 */	lwz r0, 0x708(r31)
/* 805C49D0  2C 00 00 07 */	cmpwi r0, 7
/* 805C49D4  40 82 01 38 */	bne lbl_805C4B0C
/* 805C49D8  C0 1F 07 9C */	lfs f0, 0x79c(r31)
/* 805C49DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C49E0  C0 1F 07 A0 */	lfs f0, 0x7a0(r31)
/* 805C49E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C49E8  C0 1F 07 A4 */	lfs f0, 0x7a4(r31)
/* 805C49EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805C49F0  C0 1F 07 9C */	lfs f0, 0x79c(r31)
/* 805C49F4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C49F8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805C49FC  40 82 00 24 */	bne lbl_805C4A20
/* 805C4A00  C0 1F 07 A0 */	lfs f0, 0x7a0(r31)
/* 805C4A04  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805C4A08  40 82 00 18 */	bne lbl_805C4A20
/* 805C4A0C  C0 1F 07 A4 */	lfs f0, 0x7a4(r31)
/* 805C4A10  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805C4A14  40 82 00 0C */	bne lbl_805C4A20
/* 805C4A18  FF E0 08 90 */	fmr f31, f1
/* 805C4A1C  48 00 00 88 */	b lbl_805C4AA4
lbl_805C4A20:
/* 805C4A20  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805C4A24  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805C4A28  7C 3A 04 2E */	lfsx f1, r26, r0
/* 805C4A2C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805C4A30  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805C4A34  7C 03 04 2E */	lfsx f0, r3, r0
/* 805C4A38  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805C4A3C  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805C4A40  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 805C4A44  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C4A48  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C4A4C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C4A50  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C4A54  EC 02 00 72 */	fmuls f0, f2, f1
/* 805C4A58  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C4A5C  C3 FE 00 0C */	lfs f31, 0xc(r30)
/* 805C4A60  C0 1F 07 9C */	lfs f0, 0x79c(r31)
/* 805C4A64  D0 1F 07 84 */	stfs f0, 0x784(r31)
/* 805C4A68  C0 1F 07 A0 */	lfs f0, 0x7a0(r31)
/* 805C4A6C  D0 1F 07 88 */	stfs f0, 0x788(r31)
/* 805C4A70  C0 1F 07 A4 */	lfs f0, 0x7a4(r31)
/* 805C4A74  D0 1F 07 8C */	stfs f0, 0x78c(r31)
/* 805C4A78  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007048E@ha */
/* 805C4A7C  38 03 04 8E */	addi r0, r3, 0x048E /* 0x0007048E@l */
/* 805C4A80  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C4A84  38 7F 06 64 */	addi r3, r31, 0x664
/* 805C4A88  38 81 00 0C */	addi r4, r1, 0xc
/* 805C4A8C  38 A0 00 00 */	li r5, 0
/* 805C4A90  38 C0 FF FF */	li r6, -1
/* 805C4A94  81 9F 06 64 */	lwz r12, 0x664(r31)
/* 805C4A98  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805C4A9C  7D 89 03 A6 */	mtctr r12
/* 805C4AA0  4E 80 04 21 */	bctrl 
lbl_805C4AA4:
/* 805C4AA4  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805C4AA8  2C 00 00 45 */	cmpwi r0, 0x45
/* 805C4AAC  40 82 00 24 */	bne lbl_805C4AD0
/* 805C4AB0  C0 3E 03 68 */	lfs f1, 0x368(r30)
/* 805C4AB4  C0 1F 08 C8 */	lfs f0, 0x8c8(r31)
/* 805C4AB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C4ABC  41 82 00 14 */	beq lbl_805C4AD0
/* 805C4AC0  88 1F 07 E5 */	lbz r0, 0x7e5(r31)
/* 805C4AC4  28 00 00 00 */	cmplwi r0, 0
/* 805C4AC8  41 82 00 08 */	beq lbl_805C4AD0
/* 805C4ACC  3B 20 00 01 */	li r25, 1
lbl_805C4AD0:
/* 805C4AD0  38 7F 12 BC */	addi r3, r31, 0x12bc
/* 805C4AD4  38 81 00 1C */	addi r4, r1, 0x1c
/* 805C4AD8  4B CA AB 71 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805C4ADC  38 7F 12 BC */	addi r3, r31, 0x12bc
/* 805C4AE0  FC 20 F8 90 */	fmr f1, f31
/* 805C4AE4  4B CA AC 25 */	bl SetR__8cM3dGSphFf
/* 805C4AE8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805C4AEC  D0 1F 12 1C */	stfs f0, 0x121c(r31)
/* 805C4AF0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805C4AF4  D0 1F 12 20 */	stfs f0, 0x1220(r31)
/* 805C4AF8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805C4AFC  D0 1F 12 24 */	stfs f0, 0x1224(r31)
/* 805C4B00  7F 83 E3 78 */	mr r3, r28
/* 805C4B04  38 9F 11 98 */	addi r4, r31, 0x1198
/* 805C4B08  4B CA 00 A1 */	bl Set__4cCcSFP8cCcD_Obj
lbl_805C4B0C:
/* 805C4B0C  88 1F 07 D3 */	lbz r0, 0x7d3(r31)
/* 805C4B10  28 00 00 00 */	cmplwi r0, 0
/* 805C4B14  41 82 00 E8 */	beq lbl_805C4BFC
/* 805C4B18  7F E3 FB 78 */	mr r3, r31
/* 805C4B1C  4B FF 85 41 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805C4B20  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805C4B24  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C4B28  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805C4B2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C4B30  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805C4B34  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805C4B38  C0 3E 04 68 */	lfs f1, 0x468(r30)
/* 805C4B3C  C0 1F 07 34 */	lfs f0, 0x734(r31)
/* 805C4B40  EC 01 00 2A */	fadds f0, f1, f0
/* 805C4B44  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C4B48  38 7F 13 F4 */	addi r3, r31, 0x13f4
/* 805C4B4C  38 81 00 1C */	addi r4, r1, 0x1c
/* 805C4B50  4B CA AA F9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805C4B54  38 7F 13 F4 */	addi r3, r31, 0x13f4
/* 805C4B58  C0 3E 04 24 */	lfs f1, 0x424(r30)
/* 805C4B5C  4B CA AB AD */	bl SetR__8cM3dGSphFf
/* 805C4B60  88 1F 07 D3 */	lbz r0, 0x7d3(r31)
/* 805C4B64  28 00 00 02 */	cmplwi r0, 2
/* 805C4B68  40 82 00 44 */	bne lbl_805C4BAC
/* 805C4B6C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805C4B70  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805C4B74  7C 3A 04 2E */	lfsx f1, r26, r0
/* 805C4B78  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805C4B7C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805C4B80  7C 03 04 2E */	lfsx f0, r3, r0
/* 805C4B84  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805C4B88  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805C4B8C  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 805C4B90  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C4B94  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C4B98  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C4B9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C4BA0  EC 02 00 72 */	fmuls f0, f2, f1
/* 805C4BA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C4BA8  3B 20 00 01 */	li r25, 1
lbl_805C4BAC:
/* 805C4BAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070484@ha */
/* 805C4BB0  38 03 04 84 */	addi r0, r3, 0x0484 /* 0x00070484@l */
/* 805C4BB4  90 01 00 08 */	stw r0, 8(r1)
/* 805C4BB8  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805C4BBC  38 81 00 08 */	addi r4, r1, 8
/* 805C4BC0  38 A0 00 00 */	li r5, 0
/* 805C4BC4  38 C0 FF FF */	li r6, -1
/* 805C4BC8  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 805C4BCC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805C4BD0  7D 89 03 A6 */	mtctr r12
/* 805C4BD4  4E 80 04 21 */	bctrl 
/* 805C4BD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805C4BDC  D0 1F 13 54 */	stfs f0, 0x1354(r31)
/* 805C4BE0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805C4BE4  D0 1F 13 58 */	stfs f0, 0x1358(r31)
/* 805C4BE8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805C4BEC  D0 1F 13 5C */	stfs f0, 0x135c(r31)
/* 805C4BF0  7F 83 E3 78 */	mr r3, r28
/* 805C4BF4  38 9F 12 D0 */	addi r4, r31, 0x12d0
/* 805C4BF8  4B C9 FF B1 */	bl Set__4cCcSFP8cCcD_Obj
lbl_805C4BFC:
/* 805C4BFC  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 805C4C00  40 82 00 20 */	bne lbl_805C4C20
/* 805C4C04  38 7F 07 38 */	addi r3, r31, 0x738
/* 805C4C08  C0 3E 04 6C */	lfs f1, 0x46c(r30)
/* 805C4C0C  C0 5E 04 70 */	lfs f2, 0x470(r30)
/* 805C4C10  C0 7E 04 74 */	lfs f3, 0x474(r30)
/* 805C4C14  C0 9E 04 78 */	lfs f4, 0x478(r30)
/* 805C4C18  4B CA AD 65 */	bl cLib_addCalc__FPfffff
/* 805C4C1C  48 00 00 28 */	b lbl_805C4C44
lbl_805C4C20:
/* 805C4C20  38 7F 07 38 */	addi r3, r31, 0x738
/* 805C4C24  C0 3E 04 7C */	lfs f1, 0x47c(r30)
/* 805C4C28  C0 5E 03 DC */	lfs f2, 0x3dc(r30)
/* 805C4C2C  C0 7E 04 50 */	lfs f3, 0x450(r30)
/* 805C4C30  C0 9E 04 80 */	lfs f4, 0x480(r30)
/* 805C4C34  4B CA AD 49 */	bl cLib_addCalc__FPfffff
/* 805C4C38  38 60 00 00 */	li r3, 0
/* 805C4C3C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805C4C40  4B A9 69 DD */	bl dKyw_evt_wind_set__Fss
lbl_805C4C44:
/* 805C4C44  C0 3F 07 38 */	lfs f1, 0x738(r31)
/* 805C4C48  4B A9 69 C5 */	bl dKyw_custom_windpower__Ff
/* 805C4C4C  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805C4C50  2C 00 00 45 */	cmpwi r0, 0x45
/* 805C4C54  40 82 01 30 */	bne lbl_805C4D84
/* 805C4C58  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805C4C5C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805C4C60  7C 5A 04 2E */	lfsx f2, r26, r0
/* 805C4C64  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805C4C68  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805C4C6C  7C 03 04 2E */	lfsx f0, r3, r0
/* 805C4C70  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 805C4C74  EC 01 00 32 */	fmuls f0, f1, f0
/* 805C4C78  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C4C7C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C4C80  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C4C84  EC 01 00 B2 */	fmuls f0, f1, f2
/* 805C4C88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C4C8C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805C4C90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C4C94  38 63 05 70 */	addi r3, r3, 0x570
/* 805C4C98  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4C9C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4CA0  4B D8 18 11 */	bl PSMTXCopy
/* 805C4CA4  C0 1E 03 CC */	lfs f0, 0x3cc(r30)
/* 805C4CA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805C4CAC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C4CB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C4CB4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C4CB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4CBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4CC0  38 81 00 28 */	addi r4, r1, 0x28
/* 805C4CC4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805C4CC8  4B D8 20 A5 */	bl PSMTXMultVec
/* 805C4CCC  38 7F 0C A4 */	addi r3, r31, 0xca4
/* 805C4CD0  38 81 00 1C */	addi r4, r1, 0x1c
/* 805C4CD4  4B CA A9 75 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805C4CD8  38 7F 0C A4 */	addi r3, r31, 0xca4
/* 805C4CDC  C0 3E 03 BC */	lfs f1, 0x3bc(r30)
/* 805C4CE0  4B CA AA 29 */	bl SetR__8cM3dGSphFf
/* 805C4CE4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805C4CE8  D0 1F 0C 04 */	stfs f0, 0xc04(r31)
/* 805C4CEC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805C4CF0  D0 1F 0C 08 */	stfs f0, 0xc08(r31)
/* 805C4CF4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805C4CF8  D0 1F 0C 0C */	stfs f0, 0xc0c(r31)
/* 805C4CFC  7F 83 E3 78 */	mr r3, r28
/* 805C4D00  38 9F 0B 80 */	addi r4, r31, 0xb80
/* 805C4D04  4B C9 FE A5 */	bl Set__4cCcSFP8cCcD_Obj
/* 805C4D08  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805C4D0C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C4D10  38 63 06 F0 */	addi r3, r3, 0x6f0
/* 805C4D14  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4D18  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4D1C  4B D8 17 95 */	bl PSMTXCopy
/* 805C4D20  C0 1E 03 CC */	lfs f0, 0x3cc(r30)
/* 805C4D24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805C4D28  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C4D2C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C4D30  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C4D34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4D38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4D3C  38 81 00 28 */	addi r4, r1, 0x28
/* 805C4D40  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805C4D44  4B D8 20 29 */	bl PSMTXMultVec
/* 805C4D48  38 7F 0D DC */	addi r3, r31, 0xddc
/* 805C4D4C  38 81 00 1C */	addi r4, r1, 0x1c
/* 805C4D50  4B CA A8 F9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805C4D54  38 7F 0D DC */	addi r3, r31, 0xddc
/* 805C4D58  C0 3E 03 BC */	lfs f1, 0x3bc(r30)
/* 805C4D5C  4B CA A9 AD */	bl SetR__8cM3dGSphFf
/* 805C4D60  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805C4D64  D0 1F 0D 3C */	stfs f0, 0xd3c(r31)
/* 805C4D68  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805C4D6C  D0 1F 0D 40 */	stfs f0, 0xd40(r31)
/* 805C4D70  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805C4D74  D0 1F 0D 44 */	stfs f0, 0xd44(r31)
/* 805C4D78  7F 83 E3 78 */	mr r3, r28
/* 805C4D7C  38 9F 0C B8 */	addi r4, r31, 0xcb8
/* 805C4D80  4B C9 FE 29 */	bl Set__4cCcSFP8cCcD_Obj
lbl_805C4D84:
/* 805C4D84  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805C4D88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C4D8C  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 805C4D90  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4D94  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4D98  4B D8 17 19 */	bl PSMTXCopy
/* 805C4D9C  C0 1E 04 2C */	lfs f0, 0x42c(r30)
/* 805C4DA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805C4DA4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C4DA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C4DAC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C4DB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4DB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4DB8  38 81 00 28 */	addi r4, r1, 0x28
/* 805C4DBC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805C4DC0  4B D8 1F AD */	bl PSMTXMultVec
/* 805C4DC4  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 805C4DC8  38 81 00 1C */	addi r4, r1, 0x1c
/* 805C4DCC  4B CA A4 11 */	bl SetC__8cM3dGCylFRC4cXyz
/* 805C4DD0  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 805C4DD4  C0 3E 03 6C */	lfs f1, 0x36c(r30)
/* 805C4DD8  4B CA A4 21 */	bl SetH__8cM3dGCylFf
/* 805C4DDC  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 805C4DE0  C0 3E 03 BC */	lfs f1, 0x3bc(r30)
/* 805C4DE4  4B CA A4 1D */	bl SetR__8cM3dGCylFf
/* 805C4DE8  7F 83 E3 78 */	mr r3, r28
/* 805C4DEC  38 9F 0A 44 */	addi r4, r31, 0xa44
/* 805C4DF0  4B C9 FD B9 */	bl Set__4cCcSFP8cCcD_Obj
/* 805C4DF4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805C4DF8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805C4DFC  39 61 00 60 */	addi r11, r1, 0x60
/* 805C4E00  4B D9 D4 19 */	bl _restgpr_25
/* 805C4E04  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805C4E08  7C 08 03 A6 */	mtlr r0
/* 805C4E0C  38 21 00 70 */	addi r1, r1, 0x70
/* 805C4E10  4E 80 00 20 */	blr 
