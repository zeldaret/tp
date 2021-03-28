lbl_80C0F6E0:
/* 80C0F6E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C0F6E4  7C 08 02 A6 */	mflr r0
/* 80C0F6E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C0F6EC  39 61 00 60 */	addi r11, r1, 0x60
/* 80C0F6F0  4B 75 2A EC */	b _savegpr_29
/* 80C0F6F4  7C 7D 1B 78 */	mr r29, r3
/* 80C0F6F8  7C 80 23 78 */	mr r0, r4
/* 80C0F6FC  7C BE 2B 78 */	mr r30, r5
/* 80C0F700  3C 60 80 C1 */	lis r3, lit_10293@ha
/* 80C0F704  C0 03 FD E4 */	lfs f0, lit_10293@l(r3)
/* 80C0F708  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0F70C  40 80 00 C4 */	bge lbl_80C0F7D0
/* 80C0F710  3C 60 80 C1 */	lis r3, lit_5966@ha
/* 80C0F714  C0 03 FC C0 */	lfs f0, lit_5966@l(r3)
/* 80C0F718  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C0F71C  FC 00 00 1E */	fctiwz f0, f0
/* 80C0F720  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80C0F724  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 80C0F728  38 61 00 28 */	addi r3, r1, 0x28
/* 80C0F72C  7F A4 EB 78 */	mr r4, r29
/* 80C0F730  7C 05 03 78 */	mr r5, r0
/* 80C0F734  48 00 00 B9 */	bl getAttentionPos__11daObj_GrA_cFP10fopAc_ac_c
/* 80C0F738  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C0F73C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C0F740  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C0F744  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C0F748  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C0F74C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C0F750  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C0F754  38 9D 05 50 */	addi r4, r29, 0x550
/* 80C0F758  38 A1 00 34 */	addi r5, r1, 0x34
/* 80C0F75C  4B 65 73 D8 */	b __mi__4cXyzCFRC3Vec
/* 80C0F760  38 61 00 14 */	addi r3, r1, 0x14
/* 80C0F764  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C0F768  4B 66 21 18 */	b __ct__7cSGlobeFRC4cXyz
/* 80C0F76C  38 61 00 1A */	addi r3, r1, 0x1a
/* 80C0F770  4B 66 19 78 */	b Inv__7cSAngleCFv
/* 80C0F774  7C 64 1B 78 */	mr r4, r3
/* 80C0F778  38 61 00 0C */	addi r3, r1, 0xc
/* 80C0F77C  4B 66 18 1C */	b __ct__7cSAngleFs
/* 80C0F780  38 61 00 08 */	addi r3, r1, 8
/* 80C0F784  38 81 00 0C */	addi r4, r1, 0xc
/* 80C0F788  7F C5 07 34 */	extsh r5, r30
/* 80C0F78C  4B 66 1A 9C */	b __mi__7cSAngleCFs
/* 80C0F790  38 61 00 10 */	addi r3, r1, 0x10
/* 80C0F794  38 81 00 08 */	addi r4, r1, 8
/* 80C0F798  4B 66 17 D0 */	b __ct__7cSAngleFRC7cSAngle
/* 80C0F79C  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80C0F7A0  7C 00 07 35 */	extsh. r0, r0
/* 80C0F7A4  40 80 00 0C */	bge lbl_80C0F7B0
/* 80C0F7A8  7C 00 00 D0 */	neg r0, r0
/* 80C0F7AC  7C 00 07 34 */	extsh r0, r0
lbl_80C0F7B0:
/* 80C0F7B0  7C 05 07 34 */	extsh r5, r0
/* 80C0F7B4  7F E0 07 34 */	extsh r0, r31
/* 80C0F7B8  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 80C0F7BC  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 80C0F7C0  7C 05 00 10 */	subfc r0, r5, r0
/* 80C0F7C4  7C 04 19 14 */	adde r0, r4, r3
/* 80C0F7C8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80C0F7CC  48 00 00 08 */	b lbl_80C0F7D4
lbl_80C0F7D0:
/* 80C0F7D0  38 60 00 01 */	li r3, 1
lbl_80C0F7D4:
/* 80C0F7D4  39 61 00 60 */	addi r11, r1, 0x60
/* 80C0F7D8  4B 75 2A 50 */	b _restgpr_29
/* 80C0F7DC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C0F7E0  7C 08 03 A6 */	mtlr r0
/* 80C0F7E4  38 21 00 60 */	addi r1, r1, 0x60
/* 80C0F7E8  4E 80 00 20 */	blr 
