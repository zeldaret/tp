lbl_8000C710:
/* 8000C710  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8000C714  7C 08 02 A6 */	mflr r0
/* 8000C718  90 01 00 94 */	stw r0, 0x94(r1)
/* 8000C71C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8000C720  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8000C724  7C 7E 1B 78 */	mr r30, r3
/* 8000C728  7C FF 3B 78 */	mr r31, r7
/* 8000C72C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8000C730  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8000C734  C0 04 00 04 */	lfs f0, 4(r4)
/* 8000C738  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8000C73C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8000C740  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8000C744  C0 05 00 00 */	lfs f0, 0(r5)
/* 8000C748  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8000C74C  C0 05 00 04 */	lfs f0, 4(r5)
/* 8000C750  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8000C754  C0 05 00 08 */	lfs f0, 8(r5)
/* 8000C758  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8000C75C  C0 06 00 00 */	lfs f0, 0(r6)
/* 8000C760  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8000C764  C0 06 00 04 */	lfs f0, 4(r6)
/* 8000C768  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8000C76C  C0 06 00 08 */	lfs f0, 8(r6)
/* 8000C770  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8000C774  38 61 00 08 */	addi r3, r1, 8
/* 8000C778  38 81 00 44 */	addi r4, r1, 0x44
/* 8000C77C  38 A1 00 38 */	addi r5, r1, 0x38
/* 8000C780  48 25 A3 B5 */	bl __mi__4cXyzCFRC3Vec
/* 8000C784  C0 01 00 08 */	lfs f0, 8(r1)
/* 8000C788  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8000C78C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8000C790  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8000C794  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8000C798  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8000C79C  38 61 00 20 */	addi r3, r1, 0x20
/* 8000C7A0  48 25 A8 3D */	bl normalizeRS__4cXyzFv
/* 8000C7A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8000C7A8  40 82 00 14 */	bne lbl_8000C7BC
/* 8000C7AC  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8000C7B0  C0 02 81 08 */	lfs f0, lit_3676(r2)
/* 8000C7B4  EC 01 00 2A */	fadds f0, f1, f0
/* 8000C7B8  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8000C7BC:
/* 8000C7BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8000C7C0  FC 00 02 10 */	fabs f0, f0
/* 8000C7C4  FC 00 00 18 */	frsp f0, f0
/* 8000C7C8  C0 2D 8C 00 */	lfs f1, G_CM3D_F_ABS_MIN(r13)
/* 8000C7CC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8000C7D0  40 80 00 34 */	bge lbl_8000C804
/* 8000C7D4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8000C7D8  FC 00 02 10 */	fabs f0, f0
/* 8000C7DC  FC 00 00 18 */	frsp f0, f0
/* 8000C7E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8000C7E4  40 80 00 20 */	bge lbl_8000C804
/* 8000C7E8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8000C7EC  FC 00 02 10 */	fabs f0, f0
/* 8000C7F0  FC 00 00 18 */	frsp f0, f0
/* 8000C7F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8000C7F8  40 80 00 0C */	bge lbl_8000C804
/* 8000C7FC  C0 02 81 08 */	lfs f0, lit_3676(r2)
/* 8000C800  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_8000C804:
/* 8000C804  7F C3 F3 78 */	mr r3, r30
/* 8000C808  38 81 00 44 */	addi r4, r1, 0x44
/* 8000C80C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8000C810  38 C1 00 38 */	addi r6, r1, 0x38
/* 8000C814  48 33 A2 79 */	bl C_MTXLookAt
/* 8000C818  38 61 00 50 */	addi r3, r1, 0x50
/* 8000C81C  7F E4 FB 78 */	mr r4, r31
/* 8000C820  4B FF FC 55 */	bl mDoMtx_ZrotS__FPA4_fs
/* 8000C824  38 61 00 50 */	addi r3, r1, 0x50
/* 8000C828  7F C4 F3 78 */	mr r4, r30
/* 8000C82C  7F C5 F3 78 */	mr r5, r30
/* 8000C830  48 33 9C B5 */	bl PSMTXConcat
/* 8000C834  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8000C838  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8000C83C  C0 02 81 0C */	lfs f0, lit_3677(r2)
/* 8000C840  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8000C844  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8000C848  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8000C84C  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 8000C850  10 00 00 32 */	ps_mul f0, f0, f0
/* 8000C854  10 42 00 BA */	ps_madd f2, f2, f2, f0
/* 8000C858  10 42 00 14 */	ps_sum0 f2, f2, f0, f0
/* 8000C85C  C0 22 81 10 */	lfs f1, lit_3840(r2)
/* 8000C860  3C 60 80 45 */	lis r3, __float_epsilon@ha
/* 8000C864  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)
/* 8000C868  EC 01 00 32 */	fmuls f0, f1, f0
/* 8000C86C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8000C870  4C 40 13 82 */	cror 2, 0, 2
/* 8000C874  40 82 00 44 */	bne lbl_8000C8B8
/* 8000C878  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8000C87C  C0 02 81 08 */	lfs f0, lit_3676(r2)
/* 8000C880  EC 01 00 2A */	fadds f0, f1, f0
/* 8000C884  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8000C888  7F C3 F3 78 */	mr r3, r30
/* 8000C88C  38 81 00 44 */	addi r4, r1, 0x44
/* 8000C890  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8000C894  38 C1 00 38 */	addi r6, r1, 0x38
/* 8000C898  48 33 A1 F5 */	bl C_MTXLookAt
/* 8000C89C  38 61 00 50 */	addi r3, r1, 0x50
/* 8000C8A0  7F E4 FB 78 */	mr r4, r31
/* 8000C8A4  4B FF FB D1 */	bl mDoMtx_ZrotS__FPA4_fs
/* 8000C8A8  38 61 00 50 */	addi r3, r1, 0x50
/* 8000C8AC  7F C4 F3 78 */	mr r4, r30
/* 8000C8B0  7F C5 F3 78 */	mr r5, r30
/* 8000C8B4  48 33 9C 31 */	bl PSMTXConcat
lbl_8000C8B8:
/* 8000C8B8  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8000C8BC  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8000C8C0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8000C8C4  7C 08 03 A6 */	mtlr r0
/* 8000C8C8  38 21 00 90 */	addi r1, r1, 0x90
/* 8000C8CC  4E 80 00 20 */	blr 
