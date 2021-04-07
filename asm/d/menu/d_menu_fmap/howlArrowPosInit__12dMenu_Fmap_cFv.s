lbl_801CD814:
/* 801CD814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CD818  7C 08 02 A6 */	mflr r0
/* 801CD81C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CD820  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CD824  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801CD828  7C 7E 1B 78 */	mr r30, r3
/* 801CD82C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801CD830  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801CD834  88 A3 00 E2 */	lbz r5, 0xe2(r3)
/* 801CD838  38 7E 02 50 */	addi r3, r30, 0x250
/* 801CD83C  3C 80 80 3C */	lis r4, stage_name_7361@ha /* 0x803BD64C@ha */
/* 801CD840  38 04 D6 4C */	addi r0, r4, stage_name_7361@l /* 0x803BD64C@l */
/* 801CD844  54 BF 15 BA */	rlwinm r31, r5, 2, 0x16, 0x1d
/* 801CD848  7C 80 FA 14 */	add r4, r0, r31
/* 801CD84C  80 84 FF F8 */	lwz r4, -8(r4)
/* 801CD850  48 19 B2 DD */	bl strcpy
/* 801CD854  7F C3 F3 78 */	mr r3, r30
/* 801CD858  38 80 00 06 */	li r4, 6
/* 801CD85C  3C A0 80 39 */	lis r5, i_swBit@ha /* 0x803960D0@ha */
/* 801CD860  38 05 60 D0 */	addi r0, r5, i_swBit@l /* 0x803960D0@l */
/* 801CD864  7C A0 FA 14 */	add r5, r0, r31
/* 801CD868  80 A5 FF F8 */	lwz r5, -8(r5)
/* 801CD86C  38 C1 00 0C */	addi r6, r1, 0xc
/* 801CD870  38 E1 00 08 */	addi r7, r1, 8
/* 801CD874  4B FF F7 8D */	bl searchIcon__12dMenu_Fmap_cFUciPfPf
/* 801CD878  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CD87C  41 82 00 20 */	beq lbl_801CD89C
/* 801CD880  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CD884  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801CD888  38 BE 02 50 */	addi r5, r30, 0x250
/* 801CD88C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801CD890  C0 41 00 08 */	lfs f2, 8(r1)
/* 801CD894  C0 62 A7 28 */	lfs f3, lit_4158(r2)
/* 801CD898  48 00 81 29 */	bl setArrowPos3DOffset__18dMenu_Fmap2DBack_cFUcPCcfff
lbl_801CD89C:
/* 801CD89C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CD8A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801CD8A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CD8A8  7C 08 03 A6 */	mtlr r0
/* 801CD8AC  38 21 00 20 */	addi r1, r1, 0x20
/* 801CD8B0  4E 80 00 20 */	blr 
