lbl_80CC9CA4:
/* 80CC9CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC9CA8  7C 08 02 A6 */	mflr r0
/* 80CC9CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC9CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC9CB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC9CB8  7C 7E 1B 78 */	mr r30, r3
/* 80CC9CBC  7C 9F 23 78 */	mr r31, r4
/* 80CC9CC0  80 63 06 44 */	lwz r3, 0x644(r3)
/* 80CC9CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80CC9CC8  41 82 00 0C */	beq lbl_80CC9CD4
/* 80CC9CCC  38 03 FF FF */	addi r0, r3, -1
/* 80CC9CD0  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80CC9CD4:
/* 80CC9CD4  88 1E 06 4E */	lbz r0, 0x64e(r30)
/* 80CC9CD8  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80CC9CDC  3C 60 80 CD */	lis r3, s_exeProc__14daSCannonCrs_c@ha
/* 80CC9CE0  38 03 B1 D0 */	addi r0, r3, s_exeProc__14daSCannonCrs_c@l
/* 80CC9CE4  7C 60 22 14 */	add r3, r0, r4
/* 80CC9CE8  4B 69 83 30 */	b __ptmf_test
/* 80CC9CEC  2C 03 00 00 */	cmpwi r3, 0
/* 80CC9CF0  41 82 00 28 */	beq lbl_80CC9D18
/* 80CC9CF4  7F C3 F3 78 */	mr r3, r30
/* 80CC9CF8  7F E4 FB 78 */	mr r4, r31
/* 80CC9CFC  88 1E 06 4E */	lbz r0, 0x64e(r30)
/* 80CC9D00  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80CC9D04  3C A0 80 CD */	lis r5, s_exeProc__14daSCannonCrs_c@ha
/* 80CC9D08  38 05 B1 D0 */	addi r0, r5, s_exeProc__14daSCannonCrs_c@l
/* 80CC9D0C  7D 80 32 14 */	add r12, r0, r6
/* 80CC9D10  4B 69 83 74 */	b __ptmf_scall
/* 80CC9D14  60 00 00 00 */	nop 
lbl_80CC9D18:
/* 80CC9D18  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80CC9D1C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80CC9D20  2C 00 00 01 */	cmpwi r0, 1
/* 80CC9D24  41 82 00 0C */	beq lbl_80CC9D30
/* 80CC9D28  38 00 00 00 */	li r0, 0
/* 80CC9D2C  98 1E 06 51 */	stb r0, 0x651(r30)
lbl_80CC9D30:
/* 80CC9D30  7F C3 F3 78 */	mr r3, r30
/* 80CC9D34  48 00 0B 15 */	bl setModelMtx__14daSCannonCrs_cFv
/* 80CC9D38  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 80CC9D3C  4B 34 36 EC */	b play__14mDoExt_baseAnmFv
/* 80CC9D40  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80CC9D44  4B 34 36 E4 */	b play__14mDoExt_baseAnmFv
/* 80CC9D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC9D4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC9D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC9D54  7C 08 03 A6 */	mtlr r0
/* 80CC9D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC9D5C  4E 80 00 20 */	blr 
