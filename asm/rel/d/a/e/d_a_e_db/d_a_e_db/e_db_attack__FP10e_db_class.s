lbl_8069C408:
/* 8069C408  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8069C40C  7C 08 02 A6 */	mflr r0
/* 8069C410  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8069C414  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8069C418  4B CC 5D B9 */	bl _savegpr_26
/* 8069C41C  7C 7D 1B 78 */	mr r29, r3
/* 8069C420  3C 60 80 6A */	lis r3, lit_3902@ha /* 0x806A190C@ha */
/* 8069C424  3B C3 19 0C */	addi r30, r3, lit_3902@l /* 0x806A190C@l */
/* 8069C428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069C42C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069C430  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 8069C434  3B 60 00 00 */	li r27, 0
/* 8069C438  88 1D 08 50 */	lbz r0, 0x850(r29)
/* 8069C43C  7C 00 07 75 */	extsb. r0, r0
/* 8069C440  41 82 00 58 */	beq lbl_8069C498
/* 8069C444  38 61 00 68 */	addi r3, r1, 0x68
/* 8069C448  38 9C 05 38 */	addi r4, r28, 0x538
/* 8069C44C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8069C450  4B BC A6 E5 */	bl __mi__4cXyzCFRC3Vec
/* 8069C454  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8069C458  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8069C45C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8069C460  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8069C464  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8069C468  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8069C46C  EC 21 00 72 */	fmuls f1, f1, f1
/* 8069C470  EC 00 00 32 */	fmuls f0, f0, f0
/* 8069C474  EC 41 00 2A */	fadds f2, f1, f0
/* 8069C478  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069C47C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8069C480  40 81 00 0C */	ble lbl_8069C48C
/* 8069C484  FC 00 10 34 */	frsqrte f0, f2
/* 8069C488  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8069C48C:
/* 8069C48C  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 8069C490  4B BC B1 E5 */	bl cM_atan2s__Fff
/* 8069C494  7C 7B 07 34 */	extsh r27, r3
lbl_8069C498:
/* 8069C498  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 8069C49C  2C 00 00 03 */	cmpwi r0, 3
/* 8069C4A0  41 82 05 58 */	beq lbl_8069C9F8
/* 8069C4A4  40 80 00 1C */	bge lbl_8069C4C0
/* 8069C4A8  2C 00 00 01 */	cmpwi r0, 1
/* 8069C4AC  41 82 00 C4 */	beq lbl_8069C570
/* 8069C4B0  40 80 03 B8 */	bge lbl_8069C868
/* 8069C4B4  2C 00 00 00 */	cmpwi r0, 0
/* 8069C4B8  40 80 00 14 */	bge lbl_8069C4CC
/* 8069C4BC  48 00 09 60 */	b lbl_8069CE1C
lbl_8069C4C0:
/* 8069C4C0  2C 00 00 05 */	cmpwi r0, 5
/* 8069C4C4  41 82 05 54 */	beq lbl_8069CA18
/* 8069C4C8  48 00 09 54 */	b lbl_8069CE1C
lbl_8069C4CC:
/* 8069C4CC  38 00 00 01 */	li r0, 1
/* 8069C4D0  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8069C4D4  38 00 00 11 */	li r0, 0x11
/* 8069C4D8  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 8069C4DC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069C4E0  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 8069C4E4  38 00 00 00 */	li r0, 0
/* 8069C4E8  98 1D 0B 15 */	stb r0, 0xb15(r29)
/* 8069C4EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 8069C4F0  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 8069C4F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8069C4F8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069C4FC  38 81 00 1C */	addi r4, r1, 0x1c
/* 8069C500  38 A0 00 00 */	li r5, 0
/* 8069C504  38 C0 FF FF */	li r6, -1
/* 8069C508  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8069C50C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8069C510  7D 89 03 A6 */	mtctr r12
/* 8069C514  4E 80 04 21 */	bctrl 
/* 8069C518  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070083@ha */
/* 8069C51C  38 03 00 83 */	addi r0, r3, 0x0083 /* 0x00070083@l */
/* 8069C520  90 01 00 18 */	stw r0, 0x18(r1)
/* 8069C524  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069C528  38 81 00 18 */	addi r4, r1, 0x18
/* 8069C52C  38 A0 FF FF */	li r5, -1
/* 8069C530  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8069C534  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069C538  7D 89 03 A6 */	mtctr r12
/* 8069C53C  4E 80 04 21 */	bctrl 
/* 8069C540  7F A3 EB 78 */	mr r3, r29
/* 8069C544  38 80 00 13 */	li r4, 0x13
/* 8069C548  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8069C54C  38 A0 00 02 */	li r5, 2
/* 8069C550  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069C554  4B FF E6 8D */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069C558  7F A3 EB 78 */	mr r3, r29
/* 8069C55C  38 80 00 06 */	li r4, 6
/* 8069C560  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8069C564  38 A0 00 00 */	li r5, 0
/* 8069C568  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069C56C  4B FF E5 C9 */	bl anm_init__FP10e_db_classifUcf
lbl_8069C570:
/* 8069C570  88 1D 08 50 */	lbz r0, 0x850(r29)
/* 8069C574  7C 00 07 75 */	extsb. r0, r0
/* 8069C578  41 82 00 40 */	beq lbl_8069C5B8
/* 8069C57C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8069C580  A8 9D 06 84 */	lha r4, 0x684(r29)
/* 8069C584  3C 84 00 01 */	addis r4, r4, 1
/* 8069C588  38 04 80 00 */	addi r0, r4, -32768
/* 8069C58C  7C 04 07 34 */	extsh r4, r0
/* 8069C590  38 A0 00 08 */	li r5, 8
/* 8069C594  38 C0 08 00 */	li r6, 0x800
/* 8069C598  4B BD 40 71 */	bl cLib_addCalcAngleS2__FPssss
/* 8069C59C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069C5A0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8069C5A4  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8069C5A8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8069C5AC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8069C5B0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8069C5B4  48 00 00 30 */	b lbl_8069C5E4
lbl_8069C5B8:
/* 8069C5B8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8069C5BC  A8 9D 06 84 */	lha r4, 0x684(r29)
/* 8069C5C0  38 A0 00 08 */	li r5, 8
/* 8069C5C4  38 C0 08 00 */	li r6, 0x800
/* 8069C5C8  4B BD 40 41 */	bl cLib_addCalcAngleS2__FPssss
/* 8069C5CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069C5D0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8069C5D4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8069C5D8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8069C5DC  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 8069C5E0  D0 01 00 88 */	stfs f0, 0x88(r1)
lbl_8069C5E4:
/* 8069C5E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069C5E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069C5EC  80 63 00 00 */	lwz r3, 0(r3)
/* 8069C5F0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8069C5F4  4B 96 FD E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 8069C5F8  38 61 00 80 */	addi r3, r1, 0x80
/* 8069C5FC  38 81 00 74 */	addi r4, r1, 0x74
/* 8069C600  4B BD 48 ED */	bl MtxPosition__FP4cXyzP4cXyz
/* 8069C604  38 61 00 5C */	addi r3, r1, 0x5c
/* 8069C608  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 8069C60C  38 A1 00 74 */	addi r5, r1, 0x74
/* 8069C610  4B BC A4 D5 */	bl __pl__4cXyzCFRC3Vec
/* 8069C614  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8069C618  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 8069C61C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8069C620  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 8069C624  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8069C628  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8069C62C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8069C630  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 8069C634  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8069C638  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 8069C63C  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8069C640  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069C644  4B BD 33 F9 */	bl cLib_addCalc2__FPffff
/* 8069C648  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8069C64C  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 8069C650  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8069C654  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 8069C658  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8069C65C  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069C660  4B BD 33 DD */	bl cLib_addCalc2__FPffff
/* 8069C664  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8069C668  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 8069C66C  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8069C670  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 8069C674  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8069C678  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069C67C  4B BD 33 C1 */	bl cLib_addCalc2__FPffff
/* 8069C680  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8069C684  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069C688  FC 40 08 90 */	fmr f2, f1
/* 8069C68C  C0 7E 00 68 */	lfs f3, 0x68(r30)
/* 8069C690  4B BD 33 AD */	bl cLib_addCalc2__FPffff
/* 8069C694  A8 1D 06 94 */	lha r0, 0x694(r29)
/* 8069C698  2C 00 00 00 */	cmpwi r0, 0
/* 8069C69C  40 82 07 80 */	bne lbl_8069CE1C
/* 8069C6A0  38 00 00 02 */	li r0, 2
/* 8069C6A4  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8069C6A8  38 00 00 0A */	li r0, 0xa
/* 8069C6AC  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 8069C6B0  88 1D 08 50 */	lbz r0, 0x850(r29)
/* 8069C6B4  7C 00 07 75 */	extsb. r0, r0
/* 8069C6B8  41 82 00 88 */	beq lbl_8069C740
/* 8069C6BC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069C6C0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069C6C4  80 63 00 00 */	lwz r3, 0(r3)
/* 8069C6C8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8069C6CC  3C 84 00 01 */	addis r4, r4, 1
/* 8069C6D0  38 04 80 00 */	addi r0, r4, -32768
/* 8069C6D4  7C 04 07 34 */	extsh r4, r0
/* 8069C6D8  4B 96 FD 05 */	bl mDoMtx_YrotS__FPA4_fs
/* 8069C6DC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069C6E0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069C6E4  80 63 00 00 */	lwz r3, 0(r3)
/* 8069C6E8  7C 1B 00 D0 */	neg r0, r27
/* 8069C6EC  7C 04 07 34 */	extsh r4, r0
/* 8069C6F0  4B 96 FC AD */	bl mDoMtx_XrotM__FPA4_fs
/* 8069C6F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069C6F8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8069C6FC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8069C700  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8069C704  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8069C708  38 61 00 80 */	addi r3, r1, 0x80
/* 8069C70C  38 81 00 74 */	addi r4, r1, 0x74
/* 8069C710  4B BD 47 DD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8069C714  38 61 00 50 */	addi r3, r1, 0x50
/* 8069C718  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8069C71C  38 A1 00 74 */	addi r5, r1, 0x74
/* 8069C720  4B BC A3 C5 */	bl __pl__4cXyzCFRC3Vec
/* 8069C724  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8069C728  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 8069C72C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8069C730  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 8069C734  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8069C738  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8069C73C  48 00 00 70 */	b lbl_8069C7AC
lbl_8069C740:
/* 8069C740  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069C744  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069C748  80 63 00 00 */	lwz r3, 0(r3)
/* 8069C74C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8069C750  4B 96 FC 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 8069C754  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069C758  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8069C75C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8069C760  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8069C764  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8069C768  38 61 00 80 */	addi r3, r1, 0x80
/* 8069C76C  38 81 00 74 */	addi r4, r1, 0x74
/* 8069C770  4B BD 47 7D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8069C774  38 61 00 44 */	addi r3, r1, 0x44
/* 8069C778  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 8069C77C  38 A1 00 74 */	addi r5, r1, 0x74
/* 8069C780  4B BC A3 65 */	bl __pl__4cXyzCFRC3Vec
/* 8069C784  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8069C788  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 8069C78C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8069C790  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 8069C794  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8069C798  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8069C79C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8069C7A0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8069C7A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8069C7A8  D0 1D 06 78 */	stfs f0, 0x678(r29)
lbl_8069C7AC:
/* 8069C7AC  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 8069C7B0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8069C7B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069C7B8  FC 00 02 10 */	fabs f0, f0
/* 8069C7BC  FC 00 00 18 */	frsp f0, f0
/* 8069C7C0  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8069C7C4  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 8069C7C8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8069C7CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069C7D0  FC 00 02 10 */	fabs f0, f0
/* 8069C7D4  FC 00 00 18 */	frsp f0, f0
/* 8069C7D8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8069C7DC  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 8069C7E0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8069C7E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069C7E8  FC 00 02 10 */	fabs f0, f0
/* 8069C7EC  FC 00 00 18 */	frsp f0, f0
/* 8069C7F0  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8069C7F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069C7F8  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 8069C7FC  38 7D 09 DC */	addi r3, r29, 0x9dc
/* 8069C800  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8069C804  4B 9E 82 75 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 8069C808  88 1D 08 50 */	lbz r0, 0x850(r29)
/* 8069C80C  7C 00 07 75 */	extsb. r0, r0
/* 8069C810  40 82 00 2C */	bne lbl_8069C83C
/* 8069C814  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069C818  4B BC B1 3D */	bl cM_rndF__Ff
/* 8069C81C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8069C820  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069C824  40 80 00 10 */	bge lbl_8069C834
/* 8069C828  38 00 40 00 */	li r0, 0x4000
/* 8069C82C  B0 1D 08 60 */	sth r0, 0x860(r29)
/* 8069C830  48 00 00 0C */	b lbl_8069C83C
lbl_8069C834:
/* 8069C834  38 00 C0 00 */	li r0, -16384
/* 8069C838  B0 1D 08 60 */	sth r0, 0x860(r29)
lbl_8069C83C:
/* 8069C83C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015D@ha */
/* 8069C840  38 03 01 5D */	addi r0, r3, 0x015D /* 0x0007015D@l */
/* 8069C844  90 01 00 14 */	stw r0, 0x14(r1)
/* 8069C848  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069C84C  38 81 00 14 */	addi r4, r1, 0x14
/* 8069C850  38 A0 FF FF */	li r5, -1
/* 8069C854  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8069C858  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069C85C  7D 89 03 A6 */	mtctr r12
/* 8069C860  4E 80 04 21 */	bctrl 
/* 8069C864  48 00 05 B8 */	b lbl_8069CE1C
lbl_8069C868:
/* 8069C868  A8 1D 06 96 */	lha r0, 0x696(r29)
/* 8069C86C  2C 00 00 00 */	cmpwi r0, 0
/* 8069C870  41 82 00 0C */	beq lbl_8069C87C
/* 8069C874  38 00 00 01 */	li r0, 1
/* 8069C878  98 1D 0B 14 */	stb r0, 0xb14(r29)
lbl_8069C87C:
/* 8069C87C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8069C880  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 8069C884  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 8069C888  C0 7D 04 F8 */	lfs f3, 0x4f8(r29)
/* 8069C88C  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8069C890  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069C894  4B BD 31 A9 */	bl cLib_addCalc2__FPffff
/* 8069C898  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8069C89C  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 8069C8A0  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 8069C8A4  C0 7D 05 00 */	lfs f3, 0x500(r29)
/* 8069C8A8  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8069C8AC  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069C8B0  4B BD 31 8D */	bl cLib_addCalc2__FPffff
/* 8069C8B4  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8069C8B8  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 8069C8BC  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 8069C8C0  C0 7D 04 FC */	lfs f3, 0x4fc(r29)
/* 8069C8C4  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8069C8C8  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069C8CC  4B BD 31 71 */	bl cLib_addCalc2__FPffff
/* 8069C8D0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8069C8D4  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8069C8D8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069C8DC  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 8069C8E0  4B BD 31 5D */	bl cLib_addCalc2__FPffff
/* 8069C8E4  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8069C8E8  A8 9D 08 60 */	lha r4, 0x860(r29)
/* 8069C8EC  38 A0 00 02 */	li r5, 2
/* 8069C8F0  38 C0 20 00 */	li r6, 0x2000
/* 8069C8F4  4B BD 3D 15 */	bl cLib_addCalcAngleS2__FPssss
/* 8069C8F8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069C8FC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8069C900  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069C904  40 82 00 B0 */	bne lbl_8069C9B4
/* 8069C908  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8069C90C  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 8069C910  40 82 00 A4 */	bne lbl_8069C9B4
/* 8069C914  38 7D 09 DC */	addi r3, r29, 0x9dc
/* 8069C918  4B 9E 79 A9 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8069C91C  28 03 00 00 */	cmplwi r3, 0
/* 8069C920  41 82 00 94 */	beq lbl_8069C9B4
/* 8069C924  38 7D 09 DC */	addi r3, r29, 0x9dc
/* 8069C928  4B 9E 7A 31 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 8069C92C  4B BC 71 1D */	bl GetAc__8cCcD_ObjFv
/* 8069C930  7C 1C 18 40 */	cmplw r28, r3
/* 8069C934  40 82 00 80 */	bne lbl_8069C9B4
/* 8069C938  38 00 00 05 */	li r0, 5
/* 8069C93C  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8069C940  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8069C944  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 8069C948  7F A3 EB 78 */	mr r3, r29
/* 8069C94C  38 80 00 07 */	li r4, 7
/* 8069C950  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 8069C954  38 A0 00 02 */	li r5, 2
/* 8069C958  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069C95C  4B FF E1 D9 */	bl anm_init__FP10e_db_classifUcf
/* 8069C960  38 00 00 78 */	li r0, 0x78
/* 8069C964  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 8069C968  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069C96C  7F A4 EB 78 */	mr r4, r29
/* 8069C970  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8069C974  81 8C 01 D0 */	lwz r12, 0x1d0(r12)
/* 8069C978  7D 89 03 A6 */	mtctr r12
/* 8069C97C  4E 80 04 21 */	bctrl 
/* 8069C980  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8069C984  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8069C988  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8069C98C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8069C990  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8069C994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069C998  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069C99C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8069C9A0  38 80 00 06 */	li r4, 6
/* 8069C9A4  38 A0 00 1F */	li r5, 0x1f
/* 8069C9A8  38 C1 00 38 */	addi r6, r1, 0x38
/* 8069C9AC  4B 9D 30 79 */	bl StartShock__12dVibration_cFii4cXyz
/* 8069C9B0  48 00 04 6C */	b lbl_8069CE1C
lbl_8069C9B4:
/* 8069C9B4  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8069C9B8  38 80 00 01 */	li r4, 1
/* 8069C9BC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8069C9C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069C9C4  40 82 00 18 */	bne lbl_8069C9DC
/* 8069C9C8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8069C9CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8069C9D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8069C9D4  41 82 00 08 */	beq lbl_8069C9DC
/* 8069C9D8  38 80 00 00 */	li r4, 0
lbl_8069C9DC:
/* 8069C9DC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8069C9E0  41 82 04 3C */	beq lbl_8069CE1C
/* 8069C9E4  38 00 00 03 */	li r0, 3
/* 8069C9E8  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8069C9EC  38 00 00 00 */	li r0, 0
/* 8069C9F0  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 8069C9F4  48 00 04 28 */	b lbl_8069CE1C
lbl_8069C9F8:
/* 8069C9F8  A8 1D 06 94 */	lha r0, 0x694(r29)
/* 8069C9FC  2C 00 00 00 */	cmpwi r0, 0
/* 8069CA00  40 82 04 1C */	bne lbl_8069CE1C
/* 8069CA04  38 00 00 03 */	li r0, 3
/* 8069CA08  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 8069CA0C  38 00 00 00 */	li r0, 0
/* 8069CA10  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8069CA14  48 00 04 08 */	b lbl_8069CE1C
lbl_8069CA18:
/* 8069CA18  38 00 00 01 */	li r0, 1
/* 8069CA1C  98 1D 08 51 */	stb r0, 0x851(r29)
/* 8069CA20  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015E@ha */
/* 8069CA24  38 03 01 5E */	addi r0, r3, 0x015E /* 0x0007015E@l */
/* 8069CA28  90 01 00 10 */	stw r0, 0x10(r1)
/* 8069CA2C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069CA30  38 81 00 10 */	addi r4, r1, 0x10
/* 8069CA34  38 A0 FF FF */	li r5, -1
/* 8069CA38  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8069CA3C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8069CA40  7D 89 03 A6 */	mtctr r12
/* 8069CA44  4E 80 04 21 */	bctrl 
/* 8069CA48  80 1D 08 D0 */	lwz r0, 0x8d0(r29)
/* 8069CA4C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8069CA50  90 1D 08 D0 */	stw r0, 0x8d0(r29)
/* 8069CA54  3B 60 00 00 */	li r27, 0
/* 8069CA58  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069CA5C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8069CA60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069CA64  41 82 03 58 */	beq lbl_8069CDBC
/* 8069CA68  A8 1D 06 94 */	lha r0, 0x694(r29)
/* 8069CA6C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8069CA70  40 82 00 24 */	bne lbl_8069CA94
/* 8069CA74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069CA78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069CA7C  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 8069CA80  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8069CA84  EC 01 00 2A */	fadds f0, f1, f0
/* 8069CA88  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8069CA8C  38 00 00 00 */	li r0, 0
/* 8069CA90  98 03 5E B6 */	stb r0, 0x5eb6(r3)
lbl_8069CA94:
/* 8069CA94  A8 1D 06 68 */	lha r0, 0x668(r29)
/* 8069CA98  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8069CA9C  40 82 00 34 */	bne lbl_8069CAD0
/* 8069CAA0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8069CAA4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8069CAA8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8069CAAC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8069CAB0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8069CAB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069CAB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069CABC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8069CAC0  38 80 00 03 */	li r4, 3
/* 8069CAC4  38 A0 00 1F */	li r5, 0x1f
/* 8069CAC8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8069CACC  4B 9D 2F 59 */	bl StartShock__12dVibration_cFii4cXyz
lbl_8069CAD0:
/* 8069CAD0  38 61 00 20 */	addi r3, r1, 0x20
/* 8069CAD4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8069CAD8  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 8069CADC  4B BC A0 59 */	bl __mi__4cXyzCFRC3Vec
/* 8069CAE0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8069CAE4  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8069CAE8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8069CAEC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8069CAF0  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8069CAF4  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8069CAF8  4B BC AB 7D */	bl cM_atan2s__Fff
/* 8069CAFC  7C 7A 1B 78 */	mr r26, r3
/* 8069CB00  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069CB04  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8069CB08  38 61 00 80 */	addi r3, r1, 0x80
/* 8069CB0C  4B CA A6 2D */	bl PSVECSquareMag
/* 8069CB10  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069CB14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069CB18  40 81 00 58 */	ble lbl_8069CB70
/* 8069CB1C  FC 00 08 34 */	frsqrte f0, f1
/* 8069CB20  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8069CB24  FC 44 00 32 */	fmul f2, f4, f0
/* 8069CB28  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8069CB2C  FC 00 00 32 */	fmul f0, f0, f0
/* 8069CB30  FC 01 00 32 */	fmul f0, f1, f0
/* 8069CB34  FC 03 00 28 */	fsub f0, f3, f0
/* 8069CB38  FC 02 00 32 */	fmul f0, f2, f0
/* 8069CB3C  FC 44 00 32 */	fmul f2, f4, f0
/* 8069CB40  FC 00 00 32 */	fmul f0, f0, f0
/* 8069CB44  FC 01 00 32 */	fmul f0, f1, f0
/* 8069CB48  FC 03 00 28 */	fsub f0, f3, f0
/* 8069CB4C  FC 02 00 32 */	fmul f0, f2, f0
/* 8069CB50  FC 44 00 32 */	fmul f2, f4, f0
/* 8069CB54  FC 00 00 32 */	fmul f0, f0, f0
/* 8069CB58  FC 01 00 32 */	fmul f0, f1, f0
/* 8069CB5C  FC 03 00 28 */	fsub f0, f3, f0
/* 8069CB60  FC 02 00 32 */	fmul f0, f2, f0
/* 8069CB64  FC 21 00 32 */	fmul f1, f1, f0
/* 8069CB68  FC 20 08 18 */	frsp f1, f1
/* 8069CB6C  48 00 00 88 */	b lbl_8069CBF4
lbl_8069CB70:
/* 8069CB70  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8069CB74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069CB78  40 80 00 10 */	bge lbl_8069CB88
/* 8069CB7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069CB80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8069CB84  48 00 00 70 */	b lbl_8069CBF4
lbl_8069CB88:
/* 8069CB88  D0 21 00 08 */	stfs f1, 8(r1)
/* 8069CB8C  80 81 00 08 */	lwz r4, 8(r1)
/* 8069CB90  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8069CB94  3C 00 7F 80 */	lis r0, 0x7f80
/* 8069CB98  7C 03 00 00 */	cmpw r3, r0
/* 8069CB9C  41 82 00 14 */	beq lbl_8069CBB0
/* 8069CBA0  40 80 00 40 */	bge lbl_8069CBE0
/* 8069CBA4  2C 03 00 00 */	cmpwi r3, 0
/* 8069CBA8  41 82 00 20 */	beq lbl_8069CBC8
/* 8069CBAC  48 00 00 34 */	b lbl_8069CBE0
lbl_8069CBB0:
/* 8069CBB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069CBB4  41 82 00 0C */	beq lbl_8069CBC0
/* 8069CBB8  38 00 00 01 */	li r0, 1
/* 8069CBBC  48 00 00 28 */	b lbl_8069CBE4
lbl_8069CBC0:
/* 8069CBC0  38 00 00 02 */	li r0, 2
/* 8069CBC4  48 00 00 20 */	b lbl_8069CBE4
lbl_8069CBC8:
/* 8069CBC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069CBCC  41 82 00 0C */	beq lbl_8069CBD8
/* 8069CBD0  38 00 00 05 */	li r0, 5
/* 8069CBD4  48 00 00 10 */	b lbl_8069CBE4
lbl_8069CBD8:
/* 8069CBD8  38 00 00 03 */	li r0, 3
/* 8069CBDC  48 00 00 08 */	b lbl_8069CBE4
lbl_8069CBE0:
/* 8069CBE0  38 00 00 04 */	li r0, 4
lbl_8069CBE4:
/* 8069CBE4  2C 00 00 01 */	cmpwi r0, 1
/* 8069CBE8  40 82 00 0C */	bne lbl_8069CBF4
/* 8069CBEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069CBF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8069CBF4:
/* 8069CBF4  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8069CBF8  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8069CBFC  40 81 00 40 */	ble lbl_8069CC3C
/* 8069CC00  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8069CC04  EC 01 18 28 */	fsubs f0, f1, f3
/* 8069CC08  EC 22 00 32 */	fmuls f1, f2, f0
/* 8069CC0C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8069CC10  40 81 00 08 */	ble lbl_8069CC18
/* 8069CC14  FC 20 18 90 */	fmr f1, f3
lbl_8069CC18:
/* 8069CC18  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069CC1C  3C 9A 00 01 */	addis r4, r26, 1
/* 8069CC20  38 04 80 00 */	addi r0, r4, -32768
/* 8069CC24  7C 04 07 34 */	extsh r4, r0
/* 8069CC28  38 A0 00 00 */	li r5, 0
/* 8069CC2C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8069CC30  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 8069CC34  7D 89 03 A6 */	mtctr r12
/* 8069CC38  4E 80 04 21 */	bctrl 
lbl_8069CC3C:
/* 8069CC3C  88 1D 08 50 */	lbz r0, 0x850(r29)
/* 8069CC40  7C 00 07 75 */	extsb. r0, r0
/* 8069CC44  40 82 00 F8 */	bne lbl_8069CD3C
/* 8069CC48  A8 1D 08 60 */	lha r0, 0x860(r29)
/* 8069CC4C  2C 00 00 00 */	cmpwi r0, 0
/* 8069CC50  40 82 00 2C */	bne lbl_8069CC7C
/* 8069CC54  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069CC58  4B BC AC FD */	bl cM_rndF__Ff
/* 8069CC5C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8069CC60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069CC64  40 80 00 10 */	bge lbl_8069CC74
/* 8069CC68  38 00 40 00 */	li r0, 0x4000
/* 8069CC6C  B0 1D 08 60 */	sth r0, 0x860(r29)
/* 8069CC70  48 00 00 0C */	b lbl_8069CC7C
lbl_8069CC74:
/* 8069CC74  38 00 C0 00 */	li r0, -16384
/* 8069CC78  B0 1D 08 60 */	sth r0, 0x860(r29)
lbl_8069CC7C:
/* 8069CC7C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069CC80  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069CC84  80 63 00 00 */	lwz r3, 0(r3)
/* 8069CC88  7F 44 D3 78 */	mr r4, r26
/* 8069CC8C  4B 96 F7 51 */	bl mDoMtx_YrotS__FPA4_fs
/* 8069CC90  A8 1D 06 68 */	lha r0, 0x668(r29)
/* 8069CC94  1C 00 2E E0 */	mulli r0, r0, 0x2ee0
/* 8069CC98  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069CC9C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8069CCA0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8069CCA4  7C 43 04 2E */	lfsx f2, r3, r0
/* 8069CCA8  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8069CCAC  A8 1D 08 60 */	lha r0, 0x860(r29)
/* 8069CCB0  C8 3E 00 A0 */	lfd f1, 0xa0(r30)
/* 8069CCB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8069CCB8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8069CCBC  3C 00 43 30 */	lis r0, 0x4330
/* 8069CCC0  90 01 00 90 */	stw r0, 0x90(r1)
/* 8069CCC4  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8069CCC8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8069CCCC  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 8069CCD0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8069CCD4  EC 01 00 2A */	fadds f0, f1, f0
/* 8069CCD8  FC 00 00 1E */	fctiwz f0, f0
/* 8069CCDC  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8069CCE0  80 81 00 9C */	lwz r4, 0x9c(r1)
/* 8069CCE4  38 A0 00 02 */	li r5, 2
/* 8069CCE8  38 C0 20 00 */	li r6, 0x2000
/* 8069CCEC  4B BD 39 1D */	bl cLib_addCalcAngleS2__FPssss
/* 8069CCF0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069CCF4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8069CCF8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8069CCFC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8069CD00  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8069CD04  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8069CD08  38 61 00 80 */	addi r3, r1, 0x80
/* 8069CD0C  38 9D 06 74 */	addi r4, r29, 0x674
/* 8069CD10  4B BD 41 DD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8069CD14  38 7D 06 74 */	addi r3, r29, 0x674
/* 8069CD18  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8069CD1C  7C 65 1B 78 */	mr r5, r3
/* 8069CD20  4B CA A3 71 */	bl PSVECAdd
/* 8069CD24  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8069CD28  7F 44 D3 78 */	mr r4, r26
/* 8069CD2C  38 A0 00 02 */	li r5, 2
/* 8069CD30  38 C0 10 00 */	li r6, 0x1000
/* 8069CD34  4B BD 38 D5 */	bl cLib_addCalcAngleS2__FPssss
/* 8069CD38  48 00 00 30 */	b lbl_8069CD68
lbl_8069CD3C:
/* 8069CD3C  3B 60 C0 00 */	li r27, -16384
/* 8069CD40  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 8069CD44  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 8069CD48  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 8069CD4C  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 8069CD50  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 8069CD54  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8069CD58  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 8069CD5C  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 8069CD60  EC 01 00 2A */	fadds f0, f1, f0
/* 8069CD64  D0 1D 06 78 */	stfs f0, 0x678(r29)
lbl_8069CD68:
/* 8069CD68  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8069CD6C  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 8069CD70  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069CD74  C0 7D 06 8C */	lfs f3, 0x68c(r29)
/* 8069CD78  4B BD 2C C5 */	bl cLib_addCalc2__FPffff
/* 8069CD7C  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8069CD80  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 8069CD84  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069CD88  C0 7D 06 8C */	lfs f3, 0x68c(r29)
/* 8069CD8C  4B BD 2C B1 */	bl cLib_addCalc2__FPffff
/* 8069CD90  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8069CD94  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 8069CD98  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069CD9C  C0 7D 06 8C */	lfs f3, 0x68c(r29)
/* 8069CDA0  4B BD 2C 9D */	bl cLib_addCalc2__FPffff
/* 8069CDA4  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8069CDA8  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 8069CDAC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069CDB0  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8069CDB4  4B BD 2C 89 */	bl cLib_addCalc2__FPffff
/* 8069CDB8  48 00 00 64 */	b lbl_8069CE1C
lbl_8069CDBC:
/* 8069CDBC  38 00 00 03 */	li r0, 3
/* 8069CDC0  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 8069CDC4  38 00 FF FF */	li r0, -1
/* 8069CDC8  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8069CDCC  7F A3 EB 78 */	mr r3, r29
/* 8069CDD0  38 80 00 10 */	li r4, 0x10
/* 8069CDD4  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 8069CDD8  38 A0 00 00 */	li r5, 0
/* 8069CDDC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069CDE0  4B FF DD 55 */	bl anm_init__FP10e_db_classifUcf
/* 8069CDE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015F@ha */
/* 8069CDE8  38 03 01 5F */	addi r0, r3, 0x015F /* 0x0007015F@l */
/* 8069CDEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8069CDF0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069CDF4  38 81 00 0C */	addi r4, r1, 0xc
/* 8069CDF8  38 A0 FF FF */	li r5, -1
/* 8069CDFC  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8069CE00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069CE04  7D 89 03 A6 */	mtctr r12
/* 8069CE08  4E 80 04 21 */	bctrl 
/* 8069CE0C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8069CE10  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 8069CE14  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8069CE18  B0 1D 08 5C */	sth r0, 0x85c(r29)
lbl_8069CE1C:
/* 8069CE1C  88 1D 0B 14 */	lbz r0, 0xb14(r29)
/* 8069CE20  7C 00 07 75 */	extsb. r0, r0
/* 8069CE24  41 82 00 50 */	beq lbl_8069CE74
/* 8069CE28  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8069CE2C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8069CE30  EC 00 08 28 */	fsubs f0, f0, f1
/* 8069CE34  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8069CE38  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 8069CE3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8069CE40  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 8069CE44  38 7D 10 5C */	addi r3, r29, 0x105c
/* 8069CE48  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069CE4C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069CE50  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8069CE54  4B 9D 9C 59 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8069CE58  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8069CE5C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8069CE60  EC 00 08 2A */	fadds f0, f0, f1
/* 8069CE64  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8069CE68  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 8069CE6C  EC 00 08 2A */	fadds f0, f0, f1
/* 8069CE70  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
lbl_8069CE74:
/* 8069CE74  88 1D 08 50 */	lbz r0, 0x850(r29)
/* 8069CE78  7C 00 07 75 */	extsb. r0, r0
/* 8069CE7C  41 82 00 2C */	beq lbl_8069CEA8
/* 8069CE80  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8069CE84  3C 9B 00 01 */	addis r4, r27, 1
/* 8069CE88  38 04 80 00 */	addi r0, r4, -32768
/* 8069CE8C  7C 04 07 34 */	extsh r4, r0
/* 8069CE90  38 A0 00 08 */	li r5, 8
/* 8069CE94  38 C0 04 00 */	li r6, 0x400
/* 8069CE98  4B BD 37 71 */	bl cLib_addCalcAngleS2__FPssss
/* 8069CE9C  38 00 00 01 */	li r0, 1
/* 8069CEA0  98 1D 0B 14 */	stb r0, 0xb14(r29)
/* 8069CEA4  48 00 00 1C */	b lbl_8069CEC0
lbl_8069CEA8:
/* 8069CEA8  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8069CEAC  7C 1B 00 D0 */	neg r0, r27
/* 8069CEB0  7C 04 07 34 */	extsh r4, r0
/* 8069CEB4  38 A0 00 08 */	li r5, 8
/* 8069CEB8  38 C0 04 00 */	li r6, 0x400
/* 8069CEBC  4B BD 37 4D */	bl cLib_addCalcAngleS2__FPssss
lbl_8069CEC0:
/* 8069CEC0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8069CEC4  4B CC 53 59 */	bl _restgpr_26
/* 8069CEC8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8069CECC  7C 08 03 A6 */	mtlr r0
/* 8069CED0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8069CED4  4E 80 00 20 */	blr 
