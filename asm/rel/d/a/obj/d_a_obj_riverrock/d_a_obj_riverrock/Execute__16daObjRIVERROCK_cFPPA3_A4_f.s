lbl_80CBD814:
/* 80CBD814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD818  7C 08 02 A6 */	mflr r0
/* 80CBD81C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBD824  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBD828  7C 7E 1B 78 */	mr r30, r3
/* 80CBD82C  7C 9F 23 78 */	mr r31, r4
/* 80CBD830  4B FF F5 B9 */	bl Action__16daObjRIVERROCK_cFv
/* 80CBD834  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CBD838  54 00 46 3E */	srwi r0, r0, 0x18
/* 80CBD83C  98 1E 05 A9 */	stb r0, 0x5a9(r30)
/* 80CBD840  88 9E 05 A9 */	lbz r4, 0x5a9(r30)
/* 80CBD844  28 04 00 FF */	cmplwi r4, 0xff
/* 80CBD848  41 82 00 3C */	beq lbl_80CBD884
/* 80CBD84C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBD850  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBD854  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CBD858  7C 05 07 74 */	extsb r5, r0
/* 80CBD85C  4B 37 7B 05 */	bl isSwitch__10dSv_info_cCFii
/* 80CBD860  2C 03 00 00 */	cmpwi r3, 0
/* 80CBD864  41 82 00 20 */	beq lbl_80CBD884
/* 80CBD868  88 1E 05 EE */	lbz r0, 0x5ee(r30)
/* 80CBD86C  28 00 00 00 */	cmplwi r0, 0
/* 80CBD870  40 82 00 14 */	bne lbl_80CBD884
/* 80CBD874  38 00 00 01 */	li r0, 1
/* 80CBD878  98 1E 05 EE */	stb r0, 0x5ee(r30)
/* 80CBD87C  7F C3 F3 78 */	mr r3, r30
/* 80CBD880  4B FF F5 AD */	bl BreakSet__16daObjRIVERROCK_cFv
lbl_80CBD884:
/* 80CBD884  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CBD888  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBD88C  7F C3 F3 78 */	mr r3, r30
/* 80CBD890  4B FF EE C5 */	bl SetCcCyl__16daObjRIVERROCK_cFv
/* 80CBD894  7F C3 F3 78 */	mr r3, r30
/* 80CBD898  4B FF F9 6D */	bl setBaseMtx__16daObjRIVERROCK_cFv
/* 80CBD89C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CBD8A0  7C 03 07 74 */	extsb r3, r0
/* 80CBD8A4  4B 36 F7 C9 */	bl dComIfGp_getReverb__Fi
/* 80CBD8A8  7C 65 1B 78 */	mr r5, r3
/* 80CBD8AC  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80CBD8B0  38 80 00 00 */	li r4, 0
/* 80CBD8B4  81 9E 06 00 */	lwz r12, 0x600(r30)
/* 80CBD8B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CBD8BC  7D 89 03 A6 */	mtctr r12
/* 80CBD8C0  4E 80 04 21 */	bctrl 
/* 80CBD8C4  38 60 00 01 */	li r3, 1
/* 80CBD8C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBD8CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBD8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBD8D4  7C 08 03 A6 */	mtlr r0
/* 80CBD8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBD8DC  4E 80 00 20 */	blr 
