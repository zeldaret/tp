lbl_8026E6F0:
/* 8026E6F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026E6F4  7C 08 02 A6 */	mflr r0
/* 8026E6F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026E6FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8026E700  48 0F 3A DD */	bl _savegpr_29
/* 8026E704  7C 7D 1B 78 */	mr r29, r3
/* 8026E708  7C 9E 23 78 */	mr r30, r4
/* 8026E70C  7C BF 2B 78 */	mr r31, r5
/* 8026E710  38 A1 00 08 */	addi r5, r1, 8
/* 8026E714  48 0D 8A A1 */	bl PSVECCrossProduct
/* 8026E718  C0 01 00 08 */	lfs f0, 8(r1)
/* 8026E71C  FC 00 02 10 */	fabs f0, f0
/* 8026E720  FC 00 00 18 */	frsp f0, f0
/* 8026E724  C0 2D 8C 00 */	lfs f1, G_CM3D_F_ABS_MIN(r13)
/* 8026E728  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026E72C  40 80 00 34 */	bge lbl_8026E760
/* 8026E730  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8026E734  FC 00 02 10 */	fabs f0, f0
/* 8026E738  FC 00 00 18 */	frsp f0, f0
/* 8026E73C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026E740  40 80 00 20 */	bge lbl_8026E760
/* 8026E744  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8026E748  FC 00 02 10 */	fabs f0, f0
/* 8026E74C  FC 00 00 18 */	frsp f0, f0
/* 8026E750  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026E754  40 80 00 0C */	bge lbl_8026E760
/* 8026E758  38 60 00 00 */	li r3, 0
/* 8026E75C  48 00 01 2C */	b lbl_8026E888
lbl_8026E760:
/* 8026E760  C0 A1 00 08 */	lfs f5, 8(r1)
/* 8026E764  FC 00 2A 10 */	fabs f0, f5
/* 8026E768  FC 20 00 18 */	frsp f1, f0
/* 8026E76C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8026E770  FC 00 02 10 */	fabs f0, f0
/* 8026E774  FC 40 00 18 */	frsp f2, f0
/* 8026E778  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8026E77C  FC 00 02 10 */	fabs f0, f0
/* 8026E780  FC 00 00 18 */	frsp f0, f0
/* 8026E784  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026E788  4C 41 13 82 */	cror 2, 1, 2
/* 8026E78C  40 82 00 40 */	bne lbl_8026E7CC
/* 8026E790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026E794  4C 41 13 82 */	cror 2, 1, 2
/* 8026E798  40 82 00 34 */	bne lbl_8026E7CC
/* 8026E79C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8026E7A0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8026E7A4  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8026E7A8  C0 9E 00 08 */	lfs f4, 8(r30)
/* 8026E7AC  C0 DD 00 0C */	lfs f6, 0xc(r29)
/* 8026E7B0  C0 FE 00 0C */	lfs f7, 0xc(r30)
/* 8026E7B4  38 7F 00 04 */	addi r3, r31, 4
/* 8026E7B8  38 9F 00 08 */	addi r4, r31, 8
/* 8026E7BC  4B FF FF 09 */	bl cM3d_PlaneCrossLineProcWork__FfffffffPfPf
/* 8026E7C0  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026E7C4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026E7C8  48 00 00 80 */	b lbl_8026E848
lbl_8026E7CC:
/* 8026E7CC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8026E7D0  4C 41 13 82 */	cror 2, 1, 2
/* 8026E7D4  40 82 00 44 */	bne lbl_8026E818
/* 8026E7D8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026E7DC  4C 41 13 82 */	cror 2, 1, 2
/* 8026E7E0  40 82 00 38 */	bne lbl_8026E818
/* 8026E7E4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8026E7E8  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8026E7EC  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8026E7F0  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8026E7F4  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 8026E7F8  C0 DD 00 0C */	lfs f6, 0xc(r29)
/* 8026E7FC  C0 FE 00 0C */	lfs f7, 0xc(r30)
/* 8026E800  38 7F 00 08 */	addi r3, r31, 8
/* 8026E804  7F E4 FB 78 */	mr r4, r31
/* 8026E808  4B FF FE BD */	bl cM3d_PlaneCrossLineProcWork__FfffffffPfPf
/* 8026E80C  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026E810  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026E814  48 00 00 34 */	b lbl_8026E848
lbl_8026E818:
/* 8026E818  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8026E81C  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8026E820  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8026E824  C0 9E 00 04 */	lfs f4, 4(r30)
/* 8026E828  C0 A1 00 10 */	lfs f5, 0x10(r1)
/* 8026E82C  C0 DD 00 0C */	lfs f6, 0xc(r29)
/* 8026E830  C0 FE 00 0C */	lfs f7, 0xc(r30)
/* 8026E834  7F E3 FB 78 */	mr r3, r31
/* 8026E838  38 9F 00 04 */	addi r4, r31, 4
/* 8026E83C  4B FF FE 89 */	bl cM3d_PlaneCrossLineProcWork__FfffffffPfPf
/* 8026E840  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026E844  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8026E848:
/* 8026E848  7F E3 FB 78 */	mr r3, r31
/* 8026E84C  48 0D 89 05 */	bl PSVECMag
/* 8026E850  FC 00 0A 10 */	fabs f0, f1
/* 8026E854  FC 40 00 18 */	frsp f2, f0
/* 8026E858  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026E85C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026E860  40 80 00 08 */	bge lbl_8026E868
/* 8026E864  C0 22 B7 38 */	lfs f1, lit_2273(r2)
lbl_8026E868:
/* 8026E868  38 61 00 08 */	addi r3, r1, 8
/* 8026E86C  7C 64 1B 78 */	mr r4, r3
/* 8026E870  48 0D 88 69 */	bl PSVECScale
/* 8026E874  7F E3 FB 78 */	mr r3, r31
/* 8026E878  38 81 00 08 */	addi r4, r1, 8
/* 8026E87C  38 BF 00 0C */	addi r5, r31, 0xc
/* 8026E880  48 0D 88 11 */	bl PSVECAdd
/* 8026E884  38 60 00 01 */	li r3, 1
lbl_8026E888:
/* 8026E888  39 61 00 30 */	addi r11, r1, 0x30
/* 8026E88C  48 0F 39 9D */	bl _restgpr_29
/* 8026E890  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026E894  7C 08 03 A6 */	mtlr r0
/* 8026E898  38 21 00 30 */	addi r1, r1, 0x30
/* 8026E89C  4E 80 00 20 */	blr 
