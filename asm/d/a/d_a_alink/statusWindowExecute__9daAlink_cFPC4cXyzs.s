lbl_80140888:
/* 80140888  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014088C  7C 08 02 A6 */	mflr r0
/* 80140890  90 01 00 24 */	stw r0, 0x24(r1)
/* 80140894  39 61 00 20 */	addi r11, r1, 0x20
/* 80140898  48 22 19 45 */	bl _savegpr_29
/* 8014089C  7C 7D 1B 78 */	mr r29, r3
/* 801408A0  7C 9E 23 78 */	mr r30, r4
/* 801408A4  7C BF 2B 78 */	mr r31, r5
/* 801408A8  4B FF F7 C9 */	bl loadModelDVD__9daAlink_cFv
/* 801408AC  2C 03 00 00 */	cmpwi r3, 0
/* 801408B0  41 82 00 BC */	beq lbl_8014096C
/* 801408B4  88 7D 2F D6 */	lbz r3, 0x2fd6(r29)
/* 801408B8  28 03 00 00 */	cmplwi r3, 0
/* 801408BC  41 82 00 0C */	beq lbl_801408C8
/* 801408C0  38 03 FF FF */	addi r0, r3, -1
/* 801408C4  98 1D 2F D6 */	stb r0, 0x2fd6(r29)
lbl_801408C8:
/* 801408C8  7F A3 EB 78 */	mr r3, r29
/* 801408CC  4B FF F9 A9 */	bl loadShieldModelDVD__9daAlink_cFv
/* 801408D0  7F A3 EB 78 */	mr r3, r29
/* 801408D4  38 80 00 01 */	li r4, 1
/* 801408D8  4B F6 40 39 */	bl setSelectEquipItem__9daAlink_cFi
/* 801408DC  88 1D 2F D6 */	lbz r0, 0x2fd6(r29)
/* 801408E0  28 00 00 1E */	cmplwi r0, 0x1e
/* 801408E4  41 80 00 0C */	blt lbl_801408F0
/* 801408E8  38 00 00 00 */	li r0, 0
/* 801408EC  98 1D 2F D6 */	stb r0, 0x2fd6(r29)
lbl_801408F0:
/* 801408F0  7F C3 F3 78 */	mr r3, r30
/* 801408F4  4B EC C4 71 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 801408F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801408FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80140900  7F E4 FB 78 */	mr r4, r31
/* 80140904  4B EC BB 31 */	bl mDoMtx_YrotM__FPA4_fs
/* 80140908  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014090C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80140910  80 9D 06 50 */	lwz r4, 0x650(r29)
/* 80140914  38 84 00 24 */	addi r4, r4, 0x24
/* 80140918  48 20 5B 99 */	bl PSMTXCopy
/* 8014091C  80 7D 07 BC */	lwz r3, 0x7bc(r29)
/* 80140920  4B EC CB 09 */	bl play__14mDoExt_baseAnmFv
/* 80140924  80 7D 07 BC */	lwz r3, 0x7bc(r29)
/* 80140928  80 9D 06 4C */	lwz r4, 0x64c(r29)
/* 8014092C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80140930  4B EC D0 9D */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80140934  80 7D 06 50 */	lwz r3, 0x650(r29)
/* 80140938  81 83 00 00 */	lwz r12, 0(r3)
/* 8014093C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80140940  7D 89 03 A6 */	mtctr r12
/* 80140944  4E 80 04 21 */	bctrl 
/* 80140948  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 8014094C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80140950  41 82 00 10 */	beq lbl_80140960
/* 80140954  7F A3 EB 78 */	mr r3, r29
/* 80140958  4B F6 95 F5 */	bl setWolfItemMatrix__9daAlink_cFv
/* 8014095C  48 00 00 10 */	b lbl_8014096C
lbl_80140960:
/* 80140960  7F A3 EB 78 */	mr r3, r29
/* 80140964  38 80 00 01 */	li r4, 1
/* 80140968  4B F6 8A E9 */	bl setItemMatrix__9daAlink_cFi
lbl_8014096C:
/* 8014096C  39 61 00 20 */	addi r11, r1, 0x20
/* 80140970  48 22 18 B9 */	bl _restgpr_29
/* 80140974  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80140978  7C 08 03 A6 */	mtlr r0
/* 8014097C  38 21 00 20 */	addi r1, r1, 0x20
/* 80140980  4E 80 00 20 */	blr 
