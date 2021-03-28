lbl_808135B0:
/* 808135B0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 808135B4  7C 08 02 A6 */	mflr r0
/* 808135B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 808135BC  39 61 00 60 */	addi r11, r1, 0x60
/* 808135C0  4B B4 EC 1C */	b _savegpr_29
/* 808135C4  7C 7D 1B 78 */	mr r29, r3
/* 808135C8  3C 60 80 81 */	lis r3, lit_3925@ha
/* 808135CC  3B E3 59 94 */	addi r31, r3, lit_3925@l
/* 808135D0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 808135D4  83 C3 00 04 */	lwz r30, 4(r3)
/* 808135D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808135DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 808135E0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 808135E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 808135E8  88 1D 06 A4 */	lbz r0, 0x6a4(r29)
/* 808135EC  28 00 00 00 */	cmplwi r0, 0
/* 808135F0  41 82 00 0C */	beq lbl_808135FC
/* 808135F4  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 808135F8  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_808135FC:
/* 808135FC  80 1D 07 18 */	lwz r0, 0x718(r29)
/* 80813600  28 00 00 00 */	cmplwi r0, 0
/* 80813604  40 82 01 6C */	bne lbl_80813770
/* 80813608  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 8081360C  28 00 00 01 */	cmplwi r0, 1
/* 80813610  41 82 00 74 */	beq lbl_80813684
/* 80813614  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80813618  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8081361C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80813620  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80813624  4B B3 2E 8C */	b PSMTXCopy
/* 80813628  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8081362C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80813630  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80813634  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80813638  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081363C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80813640  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80813644  38 81 00 44 */	addi r4, r1, 0x44
/* 80813648  38 BD 05 38 */	addi r5, r29, 0x538
/* 8081364C  4B B3 37 20 */	b PSMTXMultVec
/* 80813650  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80813654  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80813658  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8081365C  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80813660  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80813664  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80813668  C0 5D 05 54 */	lfs f2, 0x554(r29)
/* 8081366C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80813670  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 80813674  EC 01 00 32 */	fmuls f0, f1, f0
/* 80813678  EC 02 00 2A */	fadds f0, f2, f0
/* 8081367C  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80813680  48 00 01 38 */	b lbl_808137B8
lbl_80813684:
/* 80813684  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80813688  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8081368C  A8 9D 06 68 */	lha r4, 0x668(r29)
/* 80813690  4B 7F 8C B4 */	b mDoMtx_XrotS__FPA4_fs
/* 80813694  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80813698  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8081369C  A8 9D 06 6C */	lha r4, 0x66c(r29)
/* 808136A0  4B 7F 8E 2C */	b mDoMtx_ZrotM__FPA4_fs
/* 808136A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808136A8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 808136AC  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 808136B0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 808136B4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 808136B8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 808136BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808136C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808136C4  38 81 00 44 */	addi r4, r1, 0x44
/* 808136C8  38 A1 00 38 */	addi r5, r1, 0x38
/* 808136CC  4B B3 36 A0 */	b PSMTXMultVec
/* 808136D0  38 61 00 20 */	addi r3, r1, 0x20
/* 808136D4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 808136D8  38 A1 00 38 */	addi r5, r1, 0x38
/* 808136DC  4B A5 34 08 */	b __pl__4cXyzCFRC3Vec
/* 808136E0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 808136E4  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 808136E8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 808136EC  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 808136F0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 808136F4  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 808136F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808136FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80813700  A8 9D 06 68 */	lha r4, 0x668(r29)
/* 80813704  4B 7F 8C 40 */	b mDoMtx_XrotS__FPA4_fs
/* 80813708  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8081370C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80813710  A8 9D 06 6C */	lha r4, 0x66c(r29)
/* 80813714  4B 7F 8D B8 */	b mDoMtx_ZrotM__FPA4_fs
/* 80813718  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8081371C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80813720  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80813724  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80813728  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8081372C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80813730  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80813734  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80813738  38 81 00 44 */	addi r4, r1, 0x44
/* 8081373C  38 A1 00 38 */	addi r5, r1, 0x38
/* 80813740  4B B3 36 2C */	b PSMTXMultVec
/* 80813744  38 61 00 14 */	addi r3, r1, 0x14
/* 80813748  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8081374C  38 A1 00 38 */	addi r5, r1, 0x38
/* 80813750  4B A5 33 94 */	b __pl__4cXyzCFRC3Vec
/* 80813754  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80813758  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 8081375C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80813760  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80813764  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80813768  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 8081376C  48 00 00 4C */	b lbl_808137B8
lbl_80813770:
/* 80813770  28 00 00 01 */	cmplwi r0, 1
/* 80813774  40 82 00 44 */	bne lbl_808137B8
/* 80813778  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8081377C  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80813780  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80813784  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80813788  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8081378C  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80813790  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80813794  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80813798  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8081379C  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 808137A0  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 808137A4  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 808137A8  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 808137AC  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 808137B0  EC 01 00 2A */	fadds f0, f1, f0
/* 808137B4  D0 1D 05 54 */	stfs f0, 0x554(r29)
lbl_808137B8:
/* 808137B8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 808137BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808137C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 808137C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 808137C8  4B B3 2C E8 */	b PSMTXCopy
/* 808137CC  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 808137D0  28 00 00 01 */	cmplwi r0, 1
/* 808137D4  41 82 00 20 */	beq lbl_808137F4
/* 808137D8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 808137DC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 808137E0  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 808137E4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 808137E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808137EC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 808137F0  48 00 00 1C */	b lbl_8081380C
lbl_808137F4:
/* 808137F4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 808137F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 808137FC  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80813800  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80813804  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80813808  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_8081380C:
/* 8081380C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80813810  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80813814  38 81 00 44 */	addi r4, r1, 0x44
/* 80813818  38 A1 00 38 */	addi r5, r1, 0x38
/* 8081381C  4B B3 35 50 */	b PSMTXMultVec
/* 80813820  38 61 00 08 */	addi r3, r1, 8
/* 80813824  38 81 00 38 */	addi r4, r1, 0x38
/* 80813828  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8081382C  4B A5 32 B8 */	b __pl__4cXyzCFRC3Vec
/* 80813830  38 7D 0A 98 */	addi r3, r29, 0xa98
/* 80813834  38 81 00 08 */	addi r4, r1, 8
/* 80813838  4B A5 BE 10 */	b SetC__8cM3dGSphFRC4cXyz
/* 8081383C  80 1D 06 90 */	lwz r0, 0x690(r29)
/* 80813840  2C 00 00 12 */	cmpwi r0, 0x12
/* 80813844  40 82 00 14 */	bne lbl_80813858
/* 80813848  38 7D 0A 98 */	addi r3, r29, 0xa98
/* 8081384C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80813850  4B A5 BE B8 */	b SetR__8cM3dGSphFf
/* 80813854  48 00 00 2C */	b lbl_80813880
lbl_80813858:
/* 80813858  A8 1D 07 00 */	lha r0, 0x700(r29)
/* 8081385C  2C 00 00 00 */	cmpwi r0, 0
/* 80813860  41 82 00 14 */	beq lbl_80813874
/* 80813864  38 7D 0A 98 */	addi r3, r29, 0xa98
/* 80813868  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8081386C  4B A5 BE 9C */	b SetR__8cM3dGSphFf
/* 80813870  48 00 00 10 */	b lbl_80813880
lbl_80813874:
/* 80813874  38 7D 0A 98 */	addi r3, r29, 0xa98
/* 80813878  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8081387C  4B A5 BE 8C */	b SetR__8cM3dGSphFf
lbl_80813880:
/* 80813880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80813884  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80813888  38 63 23 3C */	addi r3, r3, 0x233c
/* 8081388C  38 9D 09 74 */	addi r4, r29, 0x974
/* 80813890  4B A5 13 18 */	b Set__4cCcSFP8cCcD_Obj
/* 80813894  39 61 00 60 */	addi r11, r1, 0x60
/* 80813898  4B B4 E9 90 */	b _restgpr_29
/* 8081389C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 808138A0  7C 08 03 A6 */	mtlr r0
/* 808138A4  38 21 00 60 */	addi r1, r1, 0x60
/* 808138A8  4E 80 00 20 */	blr 
