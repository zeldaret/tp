lbl_80662710:
/* 80662710  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80662714  7C 08 02 A6 */	mflr r0
/* 80662718  90 01 00 64 */	stw r0, 0x64(r1)
/* 8066271C  39 61 00 60 */	addi r11, r1, 0x60
/* 80662720  4B CF FA B8 */	b _savegpr_28
/* 80662724  7C 7E 1B 78 */	mr r30, r3
/* 80662728  7C BC 2B 78 */	mr r28, r5
/* 8066272C  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 80662730  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80662734  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80662738  1F BF 00 30 */	mulli r29, r31, 0x30
/* 8066273C  7C 60 EA 14 */	add r3, r0, r29
/* 80662740  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80662744  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80662748  4B CE 3D 68 */	b PSMTXCopy
/* 8066274C  2C 1F 00 08 */	cmpwi r31, 8
/* 80662750  41 82 00 28 */	beq lbl_80662778
/* 80662754  40 80 00 44 */	bge lbl_80662798
/* 80662758  2C 1F 00 01 */	cmpwi r31, 1
/* 8066275C  41 82 00 08 */	beq lbl_80662764
/* 80662760  48 00 00 38 */	b lbl_80662798
lbl_80662764:
/* 80662764  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80662768  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8066276C  A8 9E 0C 3A */	lha r4, 0xc3a(r30)
/* 80662770  4B 9A 9C C4 */	b mDoMtx_YrotM__FPA4_fs
/* 80662774  48 00 00 24 */	b lbl_80662798
lbl_80662778:
/* 80662778  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8066277C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80662780  A8 9E 0C 42 */	lha r4, 0xc42(r30)
/* 80662784  4B 9A 9D 48 */	b mDoMtx_ZrotM__FPA4_fs
/* 80662788  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8066278C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80662790  A8 9E 0C 40 */	lha r4, 0xc40(r30)
/* 80662794  4B 9A 9C A0 */	b mDoMtx_YrotM__FPA4_fs
lbl_80662798:
/* 80662798  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8066279C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806627A0  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 806627A4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806627A8  7C 80 EA 14 */	add r4, r0, r29
/* 806627AC  4B CE 3D 04 */	b PSMTXCopy
/* 806627B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806627B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806627B8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 806627BC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 806627C0  4B CE 3C F0 */	b PSMTXCopy
/* 806627C4  2C 1F 00 00 */	cmpwi r31, 0
/* 806627C8  40 82 01 3C */	bne lbl_80662904
/* 806627CC  88 1E 0C 62 */	lbz r0, 0xc62(r30)
/* 806627D0  2C 00 00 02 */	cmpwi r0, 2
/* 806627D4  41 82 00 44 */	beq lbl_80662818
/* 806627D8  40 80 00 10 */	bge lbl_806627E8
/* 806627DC  2C 00 00 01 */	cmpwi r0, 1
/* 806627E0  40 80 00 14 */	bge lbl_806627F4
/* 806627E4  48 00 01 20 */	b lbl_80662904
lbl_806627E8:
/* 806627E8  2C 00 00 04 */	cmpwi r0, 4
/* 806627EC  40 80 01 18 */	bge lbl_80662904
/* 806627F0  48 00 00 D8 */	b lbl_806628C8
lbl_806627F4:
/* 806627F4  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 806627F8  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 806627FC  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 80662800  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80662804  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80662808  D0 1E 0C 14 */	stfs f0, 0xc14(r30)
/* 8066280C  D0 3E 0C 18 */	stfs f1, 0xc18(r30)
/* 80662810  D0 5E 0C 1C */	stfs f2, 0xc1c(r30)
/* 80662814  48 00 00 F0 */	b lbl_80662904
lbl_80662818:
/* 80662818  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8066281C  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 80662820  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80662824  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80662828  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8066282C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80662830  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80662834  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80662838  38 61 00 20 */	addi r3, r1, 0x20
/* 8066283C  38 9E 0C 14 */	addi r4, r30, 0xc14
/* 80662840  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80662844  4B C0 42 F0 */	b __mi__4cXyzCFRC3Vec
/* 80662848  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8066284C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80662850  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80662854  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80662858  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8066285C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80662860  38 61 00 14 */	addi r3, r1, 0x14
/* 80662864  38 9E 0C 14 */	addi r4, r30, 0xc14
/* 80662868  38 A1 00 38 */	addi r5, r1, 0x38
/* 8066286C  4B C0 42 C8 */	b __mi__4cXyzCFRC3Vec
/* 80662870  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80662874  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80662878  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8066287C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80662880  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80662884  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80662888  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8066288C  38 81 00 38 */	addi r4, r1, 0x38
/* 80662890  7C 65 1B 78 */	mr r5, r3
/* 80662894  4B CE 48 20 */	b PSVECSubtract
/* 80662898  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8066289C  D0 1E 0C 14 */	stfs f0, 0xc14(r30)
/* 806628A0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806628A4  D0 1E 0C 18 */	stfs f0, 0xc18(r30)
/* 806628A8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806628AC  D0 1E 0C 1C */	stfs f0, 0xc1c(r30)
/* 806628B0  C0 3E 0C 18 */	lfs f1, 0xc18(r30)
/* 806628B4  3C 60 80 66 */	lis r3, lit_5656@ha
/* 806628B8  C0 03 2E 88 */	lfs f0, lit_5656@l(r3)
/* 806628BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 806628C0  D0 1E 0C 18 */	stfs f0, 0xc18(r30)
/* 806628C4  48 00 00 40 */	b lbl_80662904
lbl_806628C8:
/* 806628C8  38 61 00 08 */	addi r3, r1, 8
/* 806628CC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806628D0  38 BE 0C 14 */	addi r5, r30, 0xc14
/* 806628D4  4B C0 42 10 */	b __pl__4cXyzCFRC3Vec
/* 806628D8  C0 41 00 08 */	lfs f2, 8(r1)
/* 806628DC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 806628E0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 806628E4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 806628E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806628EC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806628F0  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 806628F4  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 806628F8  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 806628FC  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80662900  D0 03 00 2C */	stfs f0, 0x2c(r3)
lbl_80662904:
/* 80662904  38 60 00 01 */	li r3, 1
/* 80662908  39 61 00 60 */	addi r11, r1, 0x60
/* 8066290C  4B CF F9 18 */	b _restgpr_28
/* 80662910  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80662914  7C 08 03 A6 */	mtlr r0
/* 80662918  38 21 00 60 */	addi r1, r1, 0x60
/* 8066291C  4E 80 00 20 */	blr 
