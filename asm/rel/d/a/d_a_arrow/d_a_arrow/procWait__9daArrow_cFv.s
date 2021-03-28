lbl_8049B45C:
/* 8049B45C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049B460  7C 08 02 A6 */	mflr r0
/* 8049B464  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049B468  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8049B46C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8049B470  7C 7E 1B 78 */	mr r30, r3
/* 8049B474  4B FF FB 79 */	bl setKeepMatrix__9daArrow_cFv
/* 8049B478  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8049B47C  28 00 00 01 */	cmplwi r0, 1
/* 8049B480  41 82 00 0C */	beq lbl_8049B48C
/* 8049B484  28 00 00 02 */	cmplwi r0, 2
/* 8049B488  40 82 00 E4 */	bne lbl_8049B56C
lbl_8049B48C:
/* 8049B48C  38 80 00 00 */	li r4, 0
/* 8049B490  B0 9E 04 64 */	sth r4, 0x464(r30)
/* 8049B494  B0 9E 04 66 */	sth r4, 0x466(r30)
/* 8049B498  B0 9E 04 68 */	sth r4, 0x468(r30)
/* 8049B49C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049B4A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049B4A4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8049B4A8  88 1E 09 3C */	lbz r0, 0x93c(r30)
/* 8049B4AC  28 00 00 01 */	cmplwi r0, 1
/* 8049B4B0  40 82 00 24 */	bne lbl_8049B4D4
/* 8049B4B4  98 9E 06 9C */	stb r4, 0x69c(r30)
/* 8049B4B8  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 8049B4BC  28 00 00 2D */	cmplwi r0, 0x2d
/* 8049B4C0  41 82 00 1C */	beq lbl_8049B4DC
/* 8049B4C4  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 8049B4C8  60 00 00 20 */	ori r0, r0, 0x20
/* 8049B4CC  90 1E 06 88 */	stw r0, 0x688(r30)
/* 8049B4D0  48 00 00 0C */	b lbl_8049B4DC
lbl_8049B4D4:
/* 8049B4D4  38 00 00 02 */	li r0, 2
/* 8049B4D8  98 1E 06 9C */	stb r0, 0x69c(r30)
lbl_8049B4DC:
/* 8049B4DC  38 9E 09 A4 */	addi r4, r30, 0x9a4
/* 8049B4E0  38 BE 09 9C */	addi r5, r30, 0x99c
/* 8049B4E4  38 C0 00 00 */	li r6, 0
/* 8049B4E8  4B C4 31 64 */	b getArrowFlyData__9daAlink_cCFPfPfi
/* 8049B4EC  3C 60 80 4A */	lis r3, lit_4868@ha
/* 8049B4F0  C0 23 DD BC */	lfs f1, lit_4868@l(r3)
/* 8049B4F4  C0 1E 09 9C */	lfs f0, 0x99c(r30)
/* 8049B4F8  EC 01 00 24 */	fdivs f0, f1, f0
/* 8049B4FC  D0 1E 09 A0 */	stfs f0, 0x9a0(r30)
/* 8049B500  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 8049B504  38 9E 09 D8 */	addi r4, r30, 0x9d8
/* 8049B508  38 BE 09 E4 */	addi r5, r30, 0x9e4
/* 8049B50C  4B BB 41 AC */	b setOldPosP__22dPa_hermiteEcallBack_cFPC4cXyzPC4cXyz
/* 8049B510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049B514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049B518  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8049B51C  38 63 02 10 */	addi r3, r3, 0x210
/* 8049B520  80 9E 09 64 */	lwz r4, 0x964(r30)
/* 8049B524  4B BB 03 F4 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8049B528  28 03 00 00 */	cmplwi r3, 0
/* 8049B52C  41 82 00 0C */	beq lbl_8049B538
/* 8049B530  38 00 00 00 */	li r0, 0
/* 8049B534  90 03 00 F0 */	stw r0, 0xf0(r3)
lbl_8049B538:
/* 8049B538  3C 60 80 4A */	lis r3, lit_4777@ha
/* 8049B53C  38 83 DE 2C */	addi r4, r3, lit_4777@l
/* 8049B540  80 64 00 00 */	lwz r3, 0(r4)
/* 8049B544  80 04 00 04 */	lwz r0, 4(r4)
/* 8049B548  90 7E 0A 28 */	stw r3, 0xa28(r30)
/* 8049B54C  90 1E 0A 2C */	stw r0, 0xa2c(r30)
/* 8049B550  80 04 00 08 */	lwz r0, 8(r4)
/* 8049B554  90 1E 0A 30 */	stw r0, 0xa30(r30)
/* 8049B558  7F C3 F3 78 */	mr r3, r30
/* 8049B55C  4B FF F4 71 */	bl arrowShooting__9daArrow_cFv
/* 8049B560  7F C3 F3 78 */	mr r3, r30
/* 8049B564  4B FF FC B1 */	bl setBombMoveEffect__9daArrow_cFv
/* 8049B568  48 00 01 A8 */	b lbl_8049B710
lbl_8049B56C:
/* 8049B56C  88 1E 09 3C */	lbz r0, 0x93c(r30)
/* 8049B570  28 00 00 01 */	cmplwi r0, 1
/* 8049B574  40 82 01 9C */	bne lbl_8049B710
/* 8049B578  7F C3 F3 78 */	mr r3, r30
/* 8049B57C  4B FF F9 9D */	bl setSmokePos__9daArrow_cFv
/* 8049B580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049B584  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8049B588  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8049B58C  38 00 00 FF */	li r0, 0xff
/* 8049B590  90 01 00 08 */	stw r0, 8(r1)
/* 8049B594  38 80 00 00 */	li r4, 0
/* 8049B598  90 81 00 0C */	stw r4, 0xc(r1)
/* 8049B59C  38 00 FF FF */	li r0, -1
/* 8049B5A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049B5A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8049B5A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8049B5AC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8049B5B0  80 9E 09 64 */	lwz r4, 0x964(r30)
/* 8049B5B4  38 A0 00 00 */	li r5, 0
/* 8049B5B8  38 C0 01 DF */	li r6, 0x1df
/* 8049B5BC  38 FE 09 CC */	addi r7, r30, 0x9cc
/* 8049B5C0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8049B5C4  39 3E 09 58 */	addi r9, r30, 0x958
/* 8049B5C8  39 40 00 00 */	li r10, 0
/* 8049B5CC  3D 60 80 4A */	lis r11, lit_4187@ha
/* 8049B5D0  C0 2B DD 3C */	lfs f1, lit_4187@l(r11)
/* 8049B5D4  4B BB 1E F8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8049B5D8  90 7E 09 64 */	stw r3, 0x964(r30)
/* 8049B5DC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8049B5E0  38 63 02 10 */	addi r3, r3, 0x210
/* 8049B5E4  80 9E 09 64 */	lwz r4, 0x964(r30)
/* 8049B5E8  4B BB 02 CC */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 8049B5EC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8049B5F0  38 63 02 10 */	addi r3, r3, 0x210
/* 8049B5F4  80 9E 09 64 */	lwz r4, 0x964(r30)
/* 8049B5F8  4B BB 03 20 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8049B5FC  28 03 00 00 */	cmplwi r3, 0
/* 8049B600  41 82 00 40 */	beq lbl_8049B640
/* 8049B604  3C 80 80 45 */	lis r4, mParticleTracePCB__13dPa_control_c@ha
/* 8049B608  38 04 0E C8 */	addi r0, r4, mParticleTracePCB__13dPa_control_c@l
/* 8049B60C  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 8049B610  38 1E 09 F0 */	addi r0, r30, 0x9f0
/* 8049B614  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 8049B618  88 1E 09 42 */	lbz r0, 0x942(r30)
/* 8049B61C  28 00 00 00 */	cmplwi r0, 0
/* 8049B620  41 82 00 14 */	beq lbl_8049B634
/* 8049B624  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8049B628  60 00 00 04 */	ori r0, r0, 4
/* 8049B62C  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8049B630  48 00 00 10 */	b lbl_8049B640
lbl_8049B634:
/* 8049B634  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8049B638  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8049B63C  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8049B640:
/* 8049B640  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8049B644  38 00 00 FF */	li r0, 0xff
/* 8049B648  90 01 00 08 */	stw r0, 8(r1)
/* 8049B64C  38 80 00 00 */	li r4, 0
/* 8049B650  90 81 00 0C */	stw r4, 0xc(r1)
/* 8049B654  38 00 FF FF */	li r0, -1
/* 8049B658  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049B65C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8049B660  90 81 00 18 */	stw r4, 0x18(r1)
/* 8049B664  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8049B668  80 9E 09 68 */	lwz r4, 0x968(r30)
/* 8049B66C  38 A0 00 00 */	li r5, 0
/* 8049B670  38 C0 01 DE */	li r6, 0x1de
/* 8049B674  38 FE 09 CC */	addi r7, r30, 0x9cc
/* 8049B678  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8049B67C  39 3E 09 58 */	addi r9, r30, 0x958
/* 8049B680  39 40 00 00 */	li r10, 0
/* 8049B684  3D 60 80 4A */	lis r11, lit_4187@ha
/* 8049B688  C0 2B DD 3C */	lfs f1, lit_4187@l(r11)
/* 8049B68C  4B BB 1E 40 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8049B690  90 7E 09 68 */	stw r3, 0x968(r30)
/* 8049B694  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8049B698  38 63 02 10 */	addi r3, r3, 0x210
/* 8049B69C  80 9E 09 68 */	lwz r4, 0x968(r30)
/* 8049B6A0  4B BB 02 14 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 8049B6A4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8049B6A8  38 63 02 10 */	addi r3, r3, 0x210
/* 8049B6AC  80 9E 09 68 */	lwz r4, 0x968(r30)
/* 8049B6B0  4B BB 02 68 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8049B6B4  28 03 00 00 */	cmplwi r3, 0
/* 8049B6B8  41 82 00 2C */	beq lbl_8049B6E4
/* 8049B6BC  88 1E 09 42 */	lbz r0, 0x942(r30)
/* 8049B6C0  28 00 00 00 */	cmplwi r0, 0
/* 8049B6C4  41 82 00 14 */	beq lbl_8049B6D8
/* 8049B6C8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8049B6CC  60 00 00 04 */	ori r0, r0, 4
/* 8049B6D0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8049B6D4  48 00 00 10 */	b lbl_8049B6E4
lbl_8049B6D8:
/* 8049B6D8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8049B6DC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8049B6E0  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8049B6E4:
/* 8049B6E4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000A@ha */
/* 8049B6E8  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0008000A@l */
/* 8049B6EC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8049B6F0  38 7E 09 04 */	addi r3, r30, 0x904
/* 8049B6F4  38 81 00 20 */	addi r4, r1, 0x20
/* 8049B6F8  38 A0 00 00 */	li r5, 0
/* 8049B6FC  88 DE 09 48 */	lbz r6, 0x948(r30)
/* 8049B700  81 9E 09 14 */	lwz r12, 0x914(r30)
/* 8049B704  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8049B708  7D 89 03 A6 */	mtctr r12
/* 8049B70C  4E 80 04 21 */	bctrl 
lbl_8049B710:
/* 8049B710  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049B714  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049B718  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8049B71C  7C 00 07 74 */	extsb r0, r0
/* 8049B720  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8049B724  7C 63 02 14 */	add r3, r3, r0
/* 8049B728  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 8049B72C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8049B730  41 82 00 10 */	beq lbl_8049B740
/* 8049B734  38 00 00 03 */	li r0, 3
/* 8049B738  98 1E 09 42 */	stb r0, 0x942(r30)
/* 8049B73C  48 00 00 0C */	b lbl_8049B748
lbl_8049B740:
/* 8049B740  38 00 00 00 */	li r0, 0
/* 8049B744  98 1E 09 42 */	stb r0, 0x942(r30)
lbl_8049B748:
/* 8049B748  38 60 00 01 */	li r3, 1
/* 8049B74C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8049B750  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8049B754  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049B758  7C 08 03 A6 */	mtlr r0
/* 8049B75C  38 21 00 30 */	addi r1, r1, 0x30
/* 8049B760  4E 80 00 20 */	blr 
