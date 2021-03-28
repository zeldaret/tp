lbl_80CCBB90:
/* 80CCBB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCBB94  7C 08 02 A6 */	mflr r0
/* 80CCBB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCBB9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCBBA0  7C 7F 1B 78 */	mr r31, r3
/* 80CCBBA4  88 03 05 F0 */	lbz r0, 0x5f0(r3)
/* 80CCBBA8  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80CCBBAC  3C 60 80 CD */	lis r3, s_exeProc__17daObjSCannonTen_c@ha
/* 80CCBBB0  38 03 CD 2C */	addi r0, r3, s_exeProc__17daObjSCannonTen_c@l
/* 80CCBBB4  7C 60 22 14 */	add r3, r0, r4
/* 80CCBBB8  4B 69 64 60 */	b __ptmf_test
/* 80CCBBBC  2C 03 00 00 */	cmpwi r3, 0
/* 80CCBBC0  41 82 00 24 */	beq lbl_80CCBBE4
/* 80CCBBC4  7F E3 FB 78 */	mr r3, r31
/* 80CCBBC8  88 1F 05 F0 */	lbz r0, 0x5f0(r31)
/* 80CCBBCC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80CCBBD0  3C 80 80 CD */	lis r4, s_exeProc__17daObjSCannonTen_c@ha
/* 80CCBBD4  38 04 CD 2C */	addi r0, r4, s_exeProc__17daObjSCannonTen_c@l
/* 80CCBBD8  7D 80 2A 14 */	add r12, r0, r5
/* 80CCBBDC  4B 69 64 A8 */	b __ptmf_scall
/* 80CCBBE0  60 00 00 00 */	nop 
lbl_80CCBBE4:
/* 80CCBBE4  7F E3 FB 78 */	mr r3, r31
/* 80CCBBE8  48 00 09 55 */	bl setModelMtx__17daObjSCannonTen_cFv
/* 80CCBBEC  38 7F 05 78 */	addi r3, r31, 0x578
/* 80CCBBF0  4B 34 18 38 */	b play__14mDoExt_baseAnmFv
/* 80CCBBF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCBBF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCBBFC  7C 08 03 A6 */	mtlr r0
/* 80CCBC00  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCBC04  4E 80 00 20 */	blr 
