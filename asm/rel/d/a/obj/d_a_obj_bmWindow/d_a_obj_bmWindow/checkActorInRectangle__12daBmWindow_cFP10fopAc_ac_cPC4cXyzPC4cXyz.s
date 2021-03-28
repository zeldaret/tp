lbl_80BB8FDC:
/* 80BB8FDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BB8FE0  7C 08 02 A6 */	mflr r0
/* 80BB8FE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BB8FE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB8FEC  4B 7A 91 F0 */	b _savegpr_29
/* 80BB8FF0  7C 7D 1B 78 */	mr r29, r3
/* 80BB8FF4  7C BE 2B 78 */	mr r30, r5
/* 80BB8FF8  7C DF 33 78 */	mr r31, r6
/* 80BB8FFC  38 61 00 08 */	addi r3, r1, 8
/* 80BB9000  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80BB9004  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BB9008  4B 6A DB 2C */	b __mi__4cXyzCFRC3Vec
/* 80BB900C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BB9010  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BB9014  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BB9018  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BB901C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BB9020  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BB9024  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB9028  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB902C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80BB9030  7C 00 00 D0 */	neg r0, r0
/* 80BB9034  7C 04 07 34 */	extsh r4, r0
/* 80BB9038  4B 45 33 A4 */	b mDoMtx_YrotS__FPA4_fs
/* 80BB903C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB9040  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB9044  38 81 00 14 */	addi r4, r1, 0x14
/* 80BB9048  7C 85 23 78 */	mr r5, r4
/* 80BB904C  4B 78 DD 20 */	b PSMTXMultVec
/* 80BB9050  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80BB9054  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80BB9058  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BB905C  4C 40 13 82 */	cror 2, 0, 2
/* 80BB9060  40 82 00 64 */	bne lbl_80BB90C4
/* 80BB9064  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BB9068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BB906C  4C 40 13 82 */	cror 2, 0, 2
/* 80BB9070  40 82 00 54 */	bne lbl_80BB90C4
/* 80BB9074  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80BB9078  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80BB907C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BB9080  4C 40 13 82 */	cror 2, 0, 2
/* 80BB9084  40 82 00 40 */	bne lbl_80BB90C4
/* 80BB9088  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BB908C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BB9090  4C 40 13 82 */	cror 2, 0, 2
/* 80BB9094  40 82 00 30 */	bne lbl_80BB90C4
/* 80BB9098  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80BB909C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80BB90A0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BB90A4  4C 40 13 82 */	cror 2, 0, 2
/* 80BB90A8  40 82 00 1C */	bne lbl_80BB90C4
/* 80BB90AC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BB90B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BB90B4  4C 40 13 82 */	cror 2, 0, 2
/* 80BB90B8  40 82 00 0C */	bne lbl_80BB90C4
/* 80BB90BC  38 60 00 01 */	li r3, 1
/* 80BB90C0  48 00 00 08 */	b lbl_80BB90C8
lbl_80BB90C4:
/* 80BB90C4  38 60 00 00 */	li r3, 0
lbl_80BB90C8:
/* 80BB90C8  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB90CC  4B 7A 91 5C */	b _restgpr_29
/* 80BB90D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BB90D4  7C 08 03 A6 */	mtlr r0
/* 80BB90D8  38 21 00 30 */	addi r1, r1, 0x30
/* 80BB90DC  4E 80 00 20 */	blr 
