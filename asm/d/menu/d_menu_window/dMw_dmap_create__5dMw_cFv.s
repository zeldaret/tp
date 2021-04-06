lbl_801FC350:
/* 801FC350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC354  7C 08 02 A6 */	mflr r0
/* 801FC358  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC35C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC360  93 C1 00 08 */	stw r30, 8(r1)
/* 801FC364  7C 7E 1B 78 */	mr r30, r3
/* 801FC368  48 00 0D 2D */	bl markMemSize__5dMw_cFv
/* 801FC36C  38 60 00 03 */	li r3, 3
/* 801FC370  4B E3 1D 71 */	bl dComIfGp_setHeapLockFlag__FUc
/* 801FC374  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 801FC378  28 00 00 00 */	cmplwi r0, 0
/* 801FC37C  40 82 00 44 */	bne lbl_801FC3C0
/* 801FC380  38 60 00 08 */	li r3, 8
/* 801FC384  48 0D 28 C9 */	bl __nw__FUl
/* 801FC388  28 03 00 00 */	cmplwi r3, 0
/* 801FC38C  41 82 00 30 */	beq lbl_801FC3BC
/* 801FC390  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801FC394  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801FC398  90 03 00 00 */	stw r0, 0(r3)
/* 801FC39C  3C 80 80 3C */	lis r4, __vt__20dDlst_MENU_CAPTURE_c@ha /* 0x803BF0D4@ha */
/* 801FC3A0  38 04 F0 D4 */	addi r0, r4, __vt__20dDlst_MENU_CAPTURE_c@l /* 0x803BF0D4@l */
/* 801FC3A4  90 03 00 00 */	stw r0, 0(r3)
/* 801FC3A8  38 80 00 00 */	li r4, 0
/* 801FC3AC  98 83 00 04 */	stb r4, 4(r3)
/* 801FC3B0  38 00 00 FF */	li r0, 0xff
/* 801FC3B4  98 03 00 05 */	stb r0, 5(r3)
/* 801FC3B8  98 83 00 06 */	stb r4, 6(r3)
lbl_801FC3BC:
/* 801FC3BC  90 7E 01 0C */	stw r3, 0x10c(r30)
lbl_801FC3C0:
/* 801FC3C0  38 00 00 01 */	li r0, 1
/* 801FC3C4  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 801FC3C8  98 03 00 04 */	stb r0, 4(r3)
/* 801FC3CC  3B E0 00 00 */	li r31, 0
/* 801FC3D0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FC3D4  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FC3D8  A0 03 00 AA */	lhz r0, 0xaa(r3)
/* 801FC3DC  28 00 02 00 */	cmplwi r0, 0x200
/* 801FC3E0  40 82 00 0C */	bne lbl_801FC3EC
/* 801FC3E4  3B E0 00 03 */	li r31, 3
/* 801FC3E8  48 00 00 30 */	b lbl_801FC418
lbl_801FC3EC:
/* 801FC3EC  28 00 04 00 */	cmplwi r0, 0x400
/* 801FC3F0  40 82 00 0C */	bne lbl_801FC3FC
/* 801FC3F4  3B E0 00 01 */	li r31, 1
/* 801FC3F8  48 00 00 20 */	b lbl_801FC418
lbl_801FC3FC:
/* 801FC3FC  28 00 01 00 */	cmplwi r0, 0x100
/* 801FC400  40 82 00 0C */	bne lbl_801FC40C
/* 801FC404  3B E0 00 02 */	li r31, 2
/* 801FC408  48 00 00 10 */	b lbl_801FC418
lbl_801FC40C:
/* 801FC40C  28 00 00 80 */	cmplwi r0, 0x80
/* 801FC410  40 82 00 08 */	bne lbl_801FC418
/* 801FC414  3B E0 00 00 */	li r31, 0
lbl_801FC418:
/* 801FC418  38 60 01 88 */	li r3, 0x188
/* 801FC41C  48 0D 28 31 */	bl __nw__FUl
/* 801FC420  7C 60 1B 79 */	or. r0, r3, r3
/* 801FC424  41 82 00 20 */	beq lbl_801FC444
/* 801FC428  80 9E 01 00 */	lwz r4, 0x100(r30)
/* 801FC42C  80 BE 01 04 */	lwz r5, 0x104(r30)
/* 801FC430  80 DE 01 08 */	lwz r6, 0x108(r30)
/* 801FC434  88 FE 01 4C */	lbz r7, 0x14c(r30)
/* 801FC438  7F E8 FB 78 */	mr r8, r31
/* 801FC43C  4B FB F0 5D */	bl __ct__12dMenu_Dmap_cFP10JKRExpHeapP9STControlP10CSTControlUcUc
/* 801FC440  7C 60 1B 78 */	mr r0, r3
lbl_801FC444:
/* 801FC444  90 1E 01 18 */	stw r0, 0x118(r30)
/* 801FC448  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FC44C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FC450  48 02 05 8D */	bl resetWarpStatus__13dMeter2Info_cFv
/* 801FC454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC458  83 C1 00 08 */	lwz r30, 8(r1)
/* 801FC45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC460  7C 08 03 A6 */	mtlr r0
/* 801FC464  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC468  4E 80 00 20 */	blr 
