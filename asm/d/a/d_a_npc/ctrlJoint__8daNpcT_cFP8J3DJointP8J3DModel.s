lbl_8014951C:
/* 8014951C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80149520  7C 08 02 A6 */	mflr r0
/* 80149524  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80149528  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8014952C  48 21 8C A9 */	bl _savegpr_27
/* 80149530  7C 7C 1B 78 */	mr r28, r3
/* 80149534  7C BD 2B 78 */	mr r29, r5
/* 80149538  A0 84 00 14 */	lhz r4, 0x14(r4)
/* 8014953C  7C 9E 23 78 */	mr r30, r4
/* 80149540  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80149544  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80149548  1F E4 00 30 */	mulli r31, r4, 0x30
/* 8014954C  7C 60 FA 14 */	add r3, r0, r31
/* 80149550  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80149554  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80149558  48 1F CF 59 */	bl PSMTXCopy
/* 8014955C  7F 83 E3 78 */	mr r3, r28
/* 80149560  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80149564  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80149568  7D 89 03 A6 */	mtctr r12
/* 8014956C  4E 80 04 21 */	bctrl 
/* 80149570  7C 1E 18 00 */	cmpw r30, r3
/* 80149574  41 82 00 3C */	beq lbl_801495B0
/* 80149578  7F 83 E3 78 */	mr r3, r28
/* 8014957C  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80149580  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80149584  7D 89 03 A6 */	mtctr r12
/* 80149588  4E 80 04 21 */	bctrl 
/* 8014958C  7C 1E 18 00 */	cmpw r30, r3
/* 80149590  41 82 00 20 */	beq lbl_801495B0
/* 80149594  7F 83 E3 78 */	mr r3, r28
/* 80149598  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 8014959C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801495A0  7D 89 03 A6 */	mtctr r12
/* 801495A4  4E 80 04 21 */	bctrl 
/* 801495A8  7C 1E 18 00 */	cmpw r30, r3
/* 801495AC  40 82 02 8C */	bne lbl_80149838
lbl_801495B0:
/* 801495B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801495B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801495B8  38 81 00 4C */	addi r4, r1, 0x4c
/* 801495BC  48 1F CE F5 */	bl PSMTXCopy
/* 801495C0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 801495C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801495C8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801495CC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801495D0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 801495D4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801495D8  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 801495DC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801495E0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801495E4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801495E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801495EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801495F0  A8 9C 0D 78 */	lha r4, 0xd78(r28)
/* 801495F4  A8 BC 0D 7A */	lha r5, 0xd7a(r28)
/* 801495F8  A8 1C 0D 8C */	lha r0, 0xd8c(r28)
/* 801495FC  7C 05 02 14 */	add r0, r5, r0
/* 80149600  7C 05 07 34 */	extsh r5, r0
/* 80149604  A8 DC 0D 7C */	lha r6, 0xd7c(r28)
/* 80149608  4B EC 2C 01 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 8014960C  7F 83 E3 78 */	mr r3, r28
/* 80149610  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80149614  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80149618  7D 89 03 A6 */	mtctr r12
/* 8014961C  4E 80 04 21 */	bctrl 
/* 80149620  7C 1E 18 00 */	cmpw r30, r3
/* 80149624  40 82 00 30 */	bne lbl_80149654
/* 80149628  C0 3C 0C A8 */	lfs f1, 0xca8(r28)
/* 8014962C  48 11 DF B9 */	bl cM_rad2s__Ff
/* 80149630  7C 7B 1B 78 */	mr r27, r3
/* 80149634  C0 3C 0C A4 */	lfs f1, 0xca4(r28)
/* 80149638  48 11 DF AD */	bl cM_rad2s__Ff
/* 8014963C  B0 61 00 08 */	sth r3, 8(r1)
/* 80149640  B3 61 00 0A */	sth r27, 0xa(r1)
/* 80149644  38 00 00 00 */	li r0, 0
/* 80149648  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8014964C  38 61 00 08 */	addi r3, r1, 8
/* 80149650  4B EC 38 F5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80149654:
/* 80149654  7F 83 E3 78 */	mr r3, r28
/* 80149658  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 8014965C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80149660  7D 89 03 A6 */	mtctr r12
/* 80149664  4E 80 04 21 */	bctrl 
/* 80149668  7C 1E 18 00 */	cmpw r30, r3
/* 8014966C  40 82 00 30 */	bne lbl_8014969C
/* 80149670  C0 3C 0C A8 */	lfs f1, 0xca8(r28)
/* 80149674  48 11 DF 71 */	bl cM_rad2s__Ff
/* 80149678  7C 7B 1B 78 */	mr r27, r3
/* 8014967C  C0 3C 0C A4 */	lfs f1, 0xca4(r28)
/* 80149680  48 11 DF 65 */	bl cM_rad2s__Ff
/* 80149684  B0 61 00 08 */	sth r3, 8(r1)
/* 80149688  B3 61 00 0A */	sth r27, 0xa(r1)
/* 8014968C  38 00 00 00 */	li r0, 0
/* 80149690  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80149694  38 61 00 08 */	addi r3, r1, 8
/* 80149698  4B EC 38 AD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_8014969C:
/* 8014969C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801496A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801496A4  7C 64 1B 78 */	mr r4, r3
/* 801496A8  48 1F CF 09 */	bl PSMTXInverse
/* 801496AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801496B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801496B4  38 81 00 1C */	addi r4, r1, 0x1c
/* 801496B8  48 1F CD F9 */	bl PSMTXCopy
/* 801496BC  38 61 00 10 */	addi r3, r1, 0x10
/* 801496C0  4B EC 36 A5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 801496C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801496C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801496CC  A8 9C 0D 78 */	lha r4, 0xd78(r28)
/* 801496D0  A8 BC 0D 7A */	lha r5, 0xd7a(r28)
/* 801496D4  A8 1C 0D 8C */	lha r0, 0xd8c(r28)
/* 801496D8  7C 05 02 14 */	add r0, r5, r0
/* 801496DC  7C 05 07 34 */	extsh r5, r0
/* 801496E0  A8 DC 0D 7C */	lha r6, 0xd7c(r28)
/* 801496E4  4B EC 2B BD */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 801496E8  7F 83 E3 78 */	mr r3, r28
/* 801496EC  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 801496F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801496F4  7D 89 03 A6 */	mtctr r12
/* 801496F8  4E 80 04 21 */	bctrl 
/* 801496FC  7C 1E 18 00 */	cmpw r30, r3
/* 80149700  40 82 00 30 */	bne lbl_80149730
/* 80149704  C0 3C 0C A8 */	lfs f1, 0xca8(r28)
/* 80149708  48 11 DE DD */	bl cM_rad2s__Ff
/* 8014970C  7C 7B 1B 78 */	mr r27, r3
/* 80149710  C0 3C 0C A4 */	lfs f1, 0xca4(r28)
/* 80149714  48 11 DE D1 */	bl cM_rad2s__Ff
/* 80149718  B0 61 00 08 */	sth r3, 8(r1)
/* 8014971C  B3 61 00 0A */	sth r27, 0xa(r1)
/* 80149720  38 00 00 00 */	li r0, 0
/* 80149724  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80149728  38 61 00 08 */	addi r3, r1, 8
/* 8014972C  4B EC 38 19 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80149730:
/* 80149730  7F 83 E3 78 */	mr r3, r28
/* 80149734  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80149738  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8014973C  7D 89 03 A6 */	mtctr r12
/* 80149740  4E 80 04 21 */	bctrl 
/* 80149744  7C 1E 18 00 */	cmpw r30, r3
/* 80149748  40 82 00 50 */	bne lbl_80149798
/* 8014974C  C0 3C 0C A8 */	lfs f1, 0xca8(r28)
/* 80149750  C0 5C 0C 90 */	lfs f2, 0xc90(r28)
/* 80149754  C0 1C 0C F0 */	lfs f0, 0xcf0(r28)
/* 80149758  EC 02 00 32 */	fmuls f0, f2, f0
/* 8014975C  EC 21 00 2A */	fadds f1, f1, f0
/* 80149760  48 11 DE 85 */	bl cM_rad2s__Ff
/* 80149764  7C 7B 1B 78 */	mr r27, r3
/* 80149768  C0 3C 0C A4 */	lfs f1, 0xca4(r28)
/* 8014976C  C0 5C 0C 8C */	lfs f2, 0xc8c(r28)
/* 80149770  C0 1C 0C F0 */	lfs f0, 0xcf0(r28)
/* 80149774  EC 02 00 32 */	fmuls f0, f2, f0
/* 80149778  EC 21 00 2A */	fadds f1, f1, f0
/* 8014977C  48 11 DE 69 */	bl cM_rad2s__Ff
/* 80149780  B0 61 00 08 */	sth r3, 8(r1)
/* 80149784  B3 61 00 0A */	sth r27, 0xa(r1)
/* 80149788  38 00 00 00 */	li r0, 0
/* 8014978C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80149790  38 61 00 08 */	addi r3, r1, 8
/* 80149794  4B EC 37 B1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80149798:
/* 80149798  7F 83 E3 78 */	mr r3, r28
/* 8014979C  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 801497A0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801497A4  7D 89 03 A6 */	mtctr r12
/* 801497A8  4E 80 04 21 */	bctrl 
/* 801497AC  7C 1E 18 00 */	cmpw r30, r3
/* 801497B0  40 82 00 60 */	bne lbl_80149810
/* 801497B4  C0 3C 0C A8 */	lfs f1, 0xca8(r28)
/* 801497B8  C0 7C 0C 90 */	lfs f3, 0xc90(r28)
/* 801497BC  C0 42 99 DC */	lfs f2, lit_4140(r2)
/* 801497C0  C0 1C 0C F0 */	lfs f0, 0xcf0(r28)
/* 801497C4  EC 02 00 28 */	fsubs f0, f2, f0
/* 801497C8  EC 03 00 32 */	fmuls f0, f3, f0
/* 801497CC  EC 21 00 2A */	fadds f1, f1, f0
/* 801497D0  48 11 DE 15 */	bl cM_rad2s__Ff
/* 801497D4  7C 7B 1B 78 */	mr r27, r3
/* 801497D8  C0 3C 0C A4 */	lfs f1, 0xca4(r28)
/* 801497DC  C0 7C 0C 8C */	lfs f3, 0xc8c(r28)
/* 801497E0  C0 42 99 DC */	lfs f2, lit_4140(r2)
/* 801497E4  C0 1C 0C F0 */	lfs f0, 0xcf0(r28)
/* 801497E8  EC 02 00 28 */	fsubs f0, f2, f0
/* 801497EC  EC 03 00 32 */	fmuls f0, f3, f0
/* 801497F0  EC 21 00 2A */	fadds f1, f1, f0
/* 801497F4  48 11 DD F1 */	bl cM_rad2s__Ff
/* 801497F8  B0 61 00 08 */	sth r3, 8(r1)
/* 801497FC  B3 61 00 0A */	sth r27, 0xa(r1)
/* 80149800  38 00 00 00 */	li r0, 0
/* 80149804  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80149808  38 61 00 08 */	addi r3, r1, 8
/* 8014980C  4B EC 37 39 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80149810:
/* 80149810  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80149814  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80149818  38 81 00 1C */	addi r4, r1, 0x1c
/* 8014981C  7C 65 1B 78 */	mr r5, r3
/* 80149820  48 1F CC C5 */	bl PSMTXConcat
/* 80149824  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80149828  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014982C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80149830  7C 65 1B 78 */	mr r5, r3
/* 80149834  48 1F CC B1 */	bl PSMTXConcat
lbl_80149838:
/* 80149838  7F 83 E3 78 */	mr r3, r28
/* 8014983C  7F C4 F3 78 */	mr r4, r30
/* 80149840  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80149844  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80149848  7D 89 03 A6 */	mtctr r12
/* 8014984C  4E 80 04 21 */	bctrl 
/* 80149850  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80149854  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80149858  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 8014985C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80149860  7C 80 FA 14 */	add r4, r0, r31
/* 80149864  48 1F CC 4D */	bl PSMTXCopy
/* 80149868  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014986C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80149870  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80149874  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80149878  48 1F CC 39 */	bl PSMTXCopy
/* 8014987C  80 1C 0D 98 */	lwz r0, 0xd98(r28)
/* 80149880  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80149884  41 82 00 60 */	beq lbl_801498E4
/* 80149888  7F 83 E3 78 */	mr r3, r28
/* 8014988C  7F C4 F3 78 */	mr r4, r30
/* 80149890  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80149894  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80149898  7D 89 03 A6 */	mtctr r12
/* 8014989C  4E 80 04 21 */	bctrl 
/* 801498A0  2C 03 00 00 */	cmpwi r3, 0
/* 801498A4  40 82 00 24 */	bne lbl_801498C8
/* 801498A8  7F 83 E3 78 */	mr r3, r28
/* 801498AC  7F C4 F3 78 */	mr r4, r30
/* 801498B0  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 801498B4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801498B8  7D 89 03 A6 */	mtctr r12
/* 801498BC  4E 80 04 21 */	bctrl 
/* 801498C0  2C 03 00 00 */	cmpwi r3, 0
/* 801498C4  41 82 00 20 */	beq lbl_801498E4
lbl_801498C8:
/* 801498C8  83 7C 06 24 */	lwz r27, 0x624(r28)
/* 801498CC  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 801498D0  80 83 00 08 */	lwz r4, 8(r3)
/* 801498D4  38 7C 06 10 */	addi r3, r28, 0x610
/* 801498D8  4B EC 40 B9 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 801498DC  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 801498E0  93 63 00 08 */	stw r27, 8(r3)
lbl_801498E4:
/* 801498E4  C0 1C 0D FC */	lfs f0, 0xdfc(r28)
/* 801498E8  FC 00 02 10 */	fabs f0, f0
/* 801498EC  FC 20 00 18 */	frsp f1, f0
/* 801498F0  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 801498F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801498F8  7C 00 00 26 */	mfcr r0
/* 801498FC  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80149900  40 82 00 60 */	bne lbl_80149960
/* 80149904  7F 83 E3 78 */	mr r3, r28
/* 80149908  7F C4 F3 78 */	mr r4, r30
/* 8014990C  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80149910  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80149914  7D 89 03 A6 */	mtctr r12
/* 80149918  4E 80 04 21 */	bctrl 
/* 8014991C  2C 03 00 00 */	cmpwi r3, 0
/* 80149920  41 82 00 14 */	beq lbl_80149934
/* 80149924  38 00 00 00 */	li r0, 0
/* 80149928  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 8014992C  98 03 00 55 */	stb r0, 0x55(r3)
/* 80149930  48 00 00 30 */	b lbl_80149960
lbl_80149934:
/* 80149934  7F 83 E3 78 */	mr r3, r28
/* 80149938  7F C4 F3 78 */	mr r4, r30
/* 8014993C  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80149940  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80149944  7D 89 03 A6 */	mtctr r12
/* 80149948  4E 80 04 21 */	bctrl 
/* 8014994C  2C 03 00 00 */	cmpwi r3, 0
/* 80149950  41 82 00 10 */	beq lbl_80149960
/* 80149954  38 00 00 01 */	li r0, 1
/* 80149958  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 8014995C  98 03 00 55 */	stb r0, 0x55(r3)
lbl_80149960:
/* 80149960  38 60 00 01 */	li r3, 1
/* 80149964  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80149968  48 21 88 B9 */	bl _restgpr_27
/* 8014996C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80149970  7C 08 03 A6 */	mtlr r0
/* 80149974  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80149978  4E 80 00 20 */	blr 
