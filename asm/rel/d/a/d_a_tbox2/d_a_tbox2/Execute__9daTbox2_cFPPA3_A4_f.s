lbl_80497500:
/* 80497500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80497504  7C 08 02 A6 */	mflr r0
/* 80497508  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049750C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80497510  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80497514  7C 7E 1B 78 */	mr r30, r3
/* 80497518  7C 9F 23 78 */	mr r31, r4
/* 8049751C  48 00 00 D1 */	bl mode_proc_call__9daTbox2_cFv
/* 80497520  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80497524  90 1F 00 00 */	stw r0, 0(r31)
/* 80497528  7F C3 F3 78 */	mr r3, r30
/* 8049752C  4B FF F5 29 */	bl setBaseMtx__9daTbox2_cFv
/* 80497530  80 7E 0A C8 */	lwz r3, 0xac8(r30)
/* 80497534  28 03 00 00 */	cmplwi r3, 0
/* 80497538  41 82 00 18 */	beq lbl_80497550
/* 8049753C  4B DD 0C 98 */	b ChkUsed__9cBgW_BgIdCFv
/* 80497540  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80497544  41 82 00 0C */	beq lbl_80497550
/* 80497548  80 7E 0A C8 */	lwz r3, 0xac8(r30)
/* 8049754C  4B BE 44 74 */	b Move__4dBgWFv
lbl_80497550:
/* 80497550  88 1E 0A BC */	lbz r0, 0xabc(r30)
/* 80497554  1C 80 00 14 */	mulli r4, r0, 0x14
/* 80497558  3C 60 80 4A */	lis r3, l_cyl_info@ha
/* 8049755C  38 03 81 80 */	addi r0, r3, l_cyl_info@l
/* 80497560  7C 60 22 14 */	add r3, r0, r4
/* 80497564  C0 03 00 00 */	lfs f0, 0(r3)
/* 80497568  D0 01 00 08 */	stfs f0, 8(r1)
/* 8049756C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80497570  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80497574  C0 03 00 08 */	lfs f0, 8(r3)
/* 80497578  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8049757C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80497580  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80497584  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80497588  4B B7 4E 54 */	b mDoMtx_YrotS__FPA4_fs
/* 8049758C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80497590  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80497594  38 81 00 08 */	addi r4, r1, 8
/* 80497598  7C 85 23 78 */	mr r5, r4
/* 8049759C  4B EA F7 D0 */	b PSMTXMultVec
/* 804975A0  38 61 00 08 */	addi r3, r1, 8
/* 804975A4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804975A8  7C 65 1B 78 */	mr r5, r3
/* 804975AC  4B EA FA E4 */	b PSVECAdd
/* 804975B0  38 7E 0A A4 */	addi r3, r30, 0xaa4
/* 804975B4  38 81 00 08 */	addi r4, r1, 8
/* 804975B8  4B DD 7C 24 */	b SetC__8cM3dGCylFRC4cXyz
/* 804975BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804975C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804975C4  38 63 23 3C */	addi r3, r3, 0x233c
/* 804975C8  38 9E 09 80 */	addi r4, r30, 0x980
/* 804975CC  4B DC D5 DC */	b Set__4cCcSFP8cCcD_Obj
/* 804975D0  38 60 00 01 */	li r3, 1
/* 804975D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804975D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804975DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804975E0  7C 08 03 A6 */	mtlr r0
/* 804975E4  38 21 00 20 */	addi r1, r1, 0x20
/* 804975E8  4E 80 00 20 */	blr 
