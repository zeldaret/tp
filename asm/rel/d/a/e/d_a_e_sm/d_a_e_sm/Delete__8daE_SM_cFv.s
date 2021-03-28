lbl_80797570:
/* 80797570  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80797574  7C 08 02 A6 */	mflr r0
/* 80797578  90 01 00 24 */	stw r0, 0x24(r1)
/* 8079757C  39 61 00 20 */	addi r11, r1, 0x20
/* 80797580  4B BC AC 58 */	b _savegpr_28
/* 80797584  7C 7C 1B 78 */	mr r28, r3
/* 80797588  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 8079758C  3C 80 80 7A */	lis r4, stringBase0@ha
/* 80797590  38 84 87 80 */	addi r4, r4, stringBase0@l
/* 80797594  4B 89 5A 74 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80797598  3B A0 00 00 */	li r29, 0
/* 8079759C  3B E0 00 00 */	li r31, 0
/* 807975A0  3B C0 00 01 */	li r30, 1
lbl_807975A4:
/* 807975A4  38 1F 07 18 */	addi r0, r31, 0x718
/* 807975A8  7C 7C 00 2E */	lwzx r3, r28, r0
/* 807975AC  38 81 00 08 */	addi r4, r1, 8
/* 807975B0  4B 88 24 0C */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 807975B4  2C 03 00 00 */	cmpwi r3, 0
/* 807975B8  41 82 00 14 */	beq lbl_807975CC
/* 807975BC  80 61 00 08 */	lwz r3, 8(r1)
/* 807975C0  28 03 00 00 */	cmplwi r3, 0
/* 807975C4  41 82 00 08 */	beq lbl_807975CC
/* 807975C8  9B C3 09 3F */	stb r30, 0x93f(r3)
lbl_807975CC:
/* 807975CC  3B BD 00 01 */	addi r29, r29, 1
/* 807975D0  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 807975D4  3B FF 00 04 */	addi r31, r31, 4
/* 807975D8  41 80 FF CC */	blt lbl_807975A4
/* 807975DC  88 1C 11 5C */	lbz r0, 0x115c(r28)
/* 807975E0  28 00 00 00 */	cmplwi r0, 0
/* 807975E4  41 82 00 10 */	beq lbl_807975F4
/* 807975E8  38 00 00 00 */	li r0, 0
/* 807975EC  3C 60 80 7A */	lis r3, struct_807989BC+0x1@ha
/* 807975F0  98 03 89 BD */	stb r0, struct_807989BC+0x1@l(r3)
lbl_807975F4:
/* 807975F4  80 1C 00 F0 */	lwz r0, 0xf0(r28)
/* 807975F8  28 00 00 00 */	cmplwi r0, 0
/* 807975FC  41 82 00 0C */	beq lbl_80797608
/* 80797600  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80797604  4B 87 9D 0C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80797608:
/* 80797608  38 7C 06 60 */	addi r3, r28, 0x660
/* 8079760C  4B B2 69 EC */	b deleteObject__14Z2SoundObjBaseFv
/* 80797610  38 60 00 01 */	li r3, 1
/* 80797614  39 61 00 20 */	addi r11, r1, 0x20
/* 80797618  4B BC AC 0C */	b _restgpr_28
/* 8079761C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80797620  7C 08 03 A6 */	mtlr r0
/* 80797624  38 21 00 20 */	addi r1, r1, 0x20
/* 80797628  4E 80 00 20 */	blr 
