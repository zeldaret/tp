lbl_8077C5FC:
/* 8077C5FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8077C600  7C 08 02 A6 */	mflr r0
/* 8077C604  90 01 00 44 */	stw r0, 0x44(r1)
/* 8077C608  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8077C60C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8077C610  39 61 00 30 */	addi r11, r1, 0x30
/* 8077C614  4B BE 5B C8 */	b _savegpr_29
/* 8077C618  7C 7D 1B 78 */	mr r29, r3
/* 8077C61C  3C 80 80 78 */	lis r4, lit_3903@ha
/* 8077C620  3B E4 0D C4 */	addi r31, r4, lit_3903@l
/* 8077C624  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8077C628  80 83 05 D4 */	lwz r4, 0x5d4(r3)
/* 8077C62C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8077C630  FC 00 00 1E */	fctiwz f0, f0
/* 8077C634  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8077C638  83 C1 00 1C */	lwz r30, 0x1c(r1)
/* 8077C63C  A8 03 06 98 */	lha r0, 0x698(r3)
/* 8077C640  2C 00 00 02 */	cmpwi r0, 2
/* 8077C644  41 82 00 EC */	beq lbl_8077C730
/* 8077C648  40 80 00 14 */	bge lbl_8077C65C
/* 8077C64C  2C 00 00 00 */	cmpwi r0, 0
/* 8077C650  41 82 00 18 */	beq lbl_8077C668
/* 8077C654  40 80 00 30 */	bge lbl_8077C684
/* 8077C658  48 00 01 E4 */	b lbl_8077C83C
lbl_8077C65C:
/* 8077C65C  2C 00 00 04 */	cmpwi r0, 4
/* 8077C660  40 80 01 DC */	bge lbl_8077C83C
/* 8077C664  48 00 01 C4 */	b lbl_8077C828
lbl_8077C668:
/* 8077C668  38 00 00 01 */	li r0, 1
/* 8077C66C  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077C670  38 80 00 1F */	li r4, 0x1f
/* 8077C674  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8077C678  38 A0 00 02 */	li r5, 2
/* 8077C67C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077C680  4B FF E5 79 */	bl anm_init__FP10e_s1_classifUcf
lbl_8077C684:
/* 8077C684  88 7D 05 C0 */	lbz r3, 0x5c0(r29)
/* 8077C688  88 1D 05 C1 */	lbz r0, 0x5c1(r29)
/* 8077C68C  7C 03 02 14 */	add r0, r3, r0
/* 8077C690  98 1D 05 C0 */	stb r0, 0x5c0(r29)
/* 8077C694  88 BD 05 C0 */	lbz r5, 0x5c0(r29)
/* 8077C698  7C A3 07 74 */	extsb r3, r5
/* 8077C69C  80 9D 05 BC */	lwz r4, 0x5bc(r29)
/* 8077C6A0  A0 04 00 00 */	lhz r0, 0(r4)
/* 8077C6A4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8077C6A8  7C 03 00 00 */	cmpw r3, r0
/* 8077C6AC  41 80 00 38 */	blt lbl_8077C6E4
/* 8077C6B0  88 04 00 05 */	lbz r0, 5(r4)
/* 8077C6B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077C6B8  41 82 00 10 */	beq lbl_8077C6C8
/* 8077C6BC  38 00 00 00 */	li r0, 0
/* 8077C6C0  98 1D 05 C0 */	stb r0, 0x5c0(r29)
/* 8077C6C4  48 00 00 34 */	b lbl_8077C6F8
lbl_8077C6C8:
/* 8077C6C8  38 00 FF FF */	li r0, -1
/* 8077C6CC  98 1D 05 C1 */	stb r0, 0x5c1(r29)
/* 8077C6D0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8077C6D4  A0 63 00 00 */	lhz r3, 0(r3)
/* 8077C6D8  38 03 FF FE */	addi r0, r3, -2
/* 8077C6DC  98 1D 05 C0 */	stb r0, 0x5c0(r29)
/* 8077C6E0  48 00 00 18 */	b lbl_8077C6F8
lbl_8077C6E4:
/* 8077C6E4  7C A0 07 75 */	extsb. r0, r5
/* 8077C6E8  40 80 00 10 */	bge lbl_8077C6F8
/* 8077C6EC  38 00 00 01 */	li r0, 1
/* 8077C6F0  98 1D 05 C1 */	stb r0, 0x5c1(r29)
/* 8077C6F4  98 1D 05 C0 */	stb r0, 0x5c0(r29)
lbl_8077C6F8:
/* 8077C6F8  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8077C6FC  80 63 00 08 */	lwz r3, 8(r3)
/* 8077C700  88 1D 05 C0 */	lbz r0, 0x5c0(r29)
/* 8077C704  7C 00 07 74 */	extsb r0, r0
/* 8077C708  54 00 20 36 */	slwi r0, r0, 4
/* 8077C70C  7C 63 02 14 */	add r3, r3, r0
/* 8077C710  C0 03 00 04 */	lfs f0, 4(r3)
/* 8077C714  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 8077C718  C0 03 00 08 */	lfs f0, 8(r3)
/* 8077C71C  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 8077C720  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8077C724  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 8077C728  38 00 00 02 */	li r0, 2
/* 8077C72C  B0 1D 06 98 */	sth r0, 0x698(r29)
lbl_8077C730:
/* 8077C730  2C 1E 00 0C */	cmpwi r30, 0xc
/* 8077C734  41 80 00 0C */	blt lbl_8077C740
/* 8077C738  2C 1E 00 1B */	cmpwi r30, 0x1b
/* 8077C73C  40 81 00 14 */	ble lbl_8077C750
lbl_8077C740:
/* 8077C740  2C 1E 00 36 */	cmpwi r30, 0x36
/* 8077C744  41 80 00 18 */	blt lbl_8077C75C
/* 8077C748  2C 1E 00 56 */	cmpwi r30, 0x56
/* 8077C74C  41 81 00 10 */	bgt lbl_8077C75C
lbl_8077C750:
/* 8077C750  3C 60 80 78 */	lis r3, l_HIO@ha
/* 8077C754  38 63 13 8C */	addi r3, r3, l_HIO@l
/* 8077C758  C3 E3 00 0C */	lfs f31, 0xc(r3)
lbl_8077C75C:
/* 8077C75C  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 8077C760  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8077C764  EC 21 00 28 */	fsubs f1, f1, f0
/* 8077C768  D0 21 00 08 */	stfs f1, 8(r1)
/* 8077C76C  C0 5D 05 CC */	lfs f2, 0x5cc(r29)
/* 8077C770  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8077C774  EC 42 00 28 */	fsubs f2, f2, f0
/* 8077C778  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8077C77C  4B AE AE F8 */	b cM_atan2s__Fff
/* 8077C780  B0 7D 05 D0 */	sth r3, 0x5d0(r29)
/* 8077C784  C0 01 00 08 */	lfs f0, 8(r1)
/* 8077C788  EC 20 00 32 */	fmuls f1, f0, f0
/* 8077C78C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8077C790  EC 00 00 32 */	fmuls f0, f0, f0
/* 8077C794  EC 41 00 2A */	fadds f2, f1, f0
/* 8077C798  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8077C79C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8077C7A0  40 81 00 0C */	ble lbl_8077C7AC
/* 8077C7A4  FC 00 10 34 */	frsqrte f0, f2
/* 8077C7A8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8077C7AC:
/* 8077C7AC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8077C7B0  3C 60 80 78 */	lis r3, l_HIO@ha
/* 8077C7B4  38 63 13 8C */	addi r3, r3, l_HIO@l
/* 8077C7B8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8077C7BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8077C7C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8077C7C4  40 80 00 44 */	bge lbl_8077C808
/* 8077C7C8  38 00 00 03 */	li r0, 3
/* 8077C7CC  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 8077C7D0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8077C7D4  4B AE B1 80 */	b cM_rndF__Ff
/* 8077C7D8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8077C7DC  EC 00 08 2A */	fadds f0, f0, f1
/* 8077C7E0  FC 00 00 1E */	fctiwz f0, f0
/* 8077C7E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8077C7E8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8077C7EC  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 8077C7F0  7F A3 EB 78 */	mr r3, r29
/* 8077C7F4  38 80 00 1E */	li r4, 0x1e
/* 8077C7F8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8077C7FC  38 A0 00 02 */	li r5, 2
/* 8077C800  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077C804  4B FF E3 F5 */	bl anm_init__FP10e_s1_classifUcf
lbl_8077C808:
/* 8077C808  7F A3 EB 78 */	mr r3, r29
/* 8077C80C  4B FF E9 9D */	bl path_check2__FP10e_s1_class
/* 8077C810  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8077C814  A8 9D 05 D0 */	lha r4, 0x5d0(r29)
/* 8077C818  38 A0 00 08 */	li r5, 8
/* 8077C81C  38 C0 02 00 */	li r6, 0x200
/* 8077C820  4B AF 3D E8 */	b cLib_addCalcAngleS2__FPssss
/* 8077C824  48 00 00 18 */	b lbl_8077C83C
lbl_8077C828:
/* 8077C828  A8 1D 06 A0 */	lha r0, 0x6a0(r29)
/* 8077C82C  2C 00 00 00 */	cmpwi r0, 0
/* 8077C830  40 82 00 0C */	bne lbl_8077C83C
/* 8077C834  38 00 00 00 */	li r0, 0
/* 8077C838  B0 1D 06 98 */	sth r0, 0x698(r29)
lbl_8077C83C:
/* 8077C83C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8077C840  FC 20 F8 90 */	fmr f1, f31
/* 8077C844  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077C848  FC 60 10 90 */	fmr f3, f2
/* 8077C84C  4B AF 31 F0 */	b cLib_addCalc2__FPffff
/* 8077C850  7F A3 EB 78 */	mr r3, r29
/* 8077C854  C0 3D 30 64 */	lfs f1, 0x3064(r29)
/* 8077C858  4B FF E5 E1 */	bl pl_check__FP10e_s1_classf
/* 8077C85C  2C 03 00 00 */	cmpwi r3, 0
/* 8077C860  41 82 00 14 */	beq lbl_8077C874
/* 8077C864  38 00 00 02 */	li r0, 2
/* 8077C868  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 8077C86C  38 00 00 00 */	li r0, 0
/* 8077C870  B0 1D 06 98 */	sth r0, 0x698(r29)
lbl_8077C874:
/* 8077C874  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8077C878  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8077C87C  39 61 00 30 */	addi r11, r1, 0x30
/* 8077C880  4B BE 59 A8 */	b _restgpr_29
/* 8077C884  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8077C888  7C 08 03 A6 */	mtlr r0
/* 8077C88C  38 21 00 40 */	addi r1, r1, 0x40
/* 8077C890  4E 80 00 20 */	blr 
