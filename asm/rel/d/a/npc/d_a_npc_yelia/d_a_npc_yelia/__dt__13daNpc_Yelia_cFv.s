lbl_80B4D30C:
/* 80B4D30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4D310  7C 08 02 A6 */	mflr r0
/* 80B4D314  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4D318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4D31C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4D320  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B4D324  7C 9F 23 78 */	mr r31, r4
/* 80B4D328  41 82 01 14 */	beq lbl_80B4D43C
/* 80B4D32C  3C 60 80 B5 */	lis r3, __vt__13daNpc_Yelia_c@ha
/* 80B4D330  38 03 33 18 */	addi r0, r3, __vt__13daNpc_Yelia_c@l
/* 80B4D334  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B4D338  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B4D33C  28 03 00 00 */	cmplwi r3, 0
/* 80B4D340  41 82 00 08 */	beq lbl_80B4D348
/* 80B4D344  4B 4C 3F CC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B4D348:
/* 80B4D348  7F C3 F3 78 */	mr r3, r30
/* 80B4D34C  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B4D350  54 00 10 3A */	slwi r0, r0, 2
/* 80B4D354  3C 80 80 B5 */	lis r4, l_loadResPtrnList@ha
/* 80B4D358  38 84 25 88 */	addi r4, r4, l_loadResPtrnList@l
/* 80B4D35C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B4D360  3C A0 80 B5 */	lis r5, l_resNameList@ha
/* 80B4D364  38 A5 25 44 */	addi r5, r5, l_resNameList@l
/* 80B4D368  4B 5F B1 44 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80B4D36C  34 1E 0F BC */	addic. r0, r30, 0xfbc
/* 80B4D370  41 82 00 10 */	beq lbl_80B4D380
/* 80B4D374  3C 60 80 B5 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80B4D378  38 03 33 0C */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80B4D37C  90 1E 0F E0 */	stw r0, 0xfe0(r30)
lbl_80B4D380:
/* 80B4D380  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 80B4D384  3C 80 80 B5 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80B4D388  38 84 13 E0 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80B4D38C  38 A0 00 08 */	li r5, 8
/* 80B4D390  38 C0 00 04 */	li r6, 4
/* 80B4D394  4B 81 49 54 */	b __destroy_arr
/* 80B4D398  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80B4D39C  41 82 00 84 */	beq lbl_80B4D420
/* 80B4D3A0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B4D3A4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B4D3A8  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80B4D3AC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B4D3B0  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B4D3B4  38 03 00 84 */	addi r0, r3, 0x84
/* 80B4D3B8  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B4D3BC  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B4D3C0  41 82 00 54 */	beq lbl_80B4D414
/* 80B4D3C4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B4D3C8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B4D3CC  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80B4D3D0  38 03 00 58 */	addi r0, r3, 0x58
/* 80B4D3D4  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B4D3D8  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80B4D3DC  41 82 00 10 */	beq lbl_80B4D3EC
/* 80B4D3E0  3C 60 80 B5 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B4D3E4  38 03 33 00 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B4D3E8  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80B4D3EC:
/* 80B4D3EC  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B4D3F0  41 82 00 24 */	beq lbl_80B4D414
/* 80B4D3F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B4D3F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B4D3FC  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B4D400  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B4D404  41 82 00 10 */	beq lbl_80B4D414
/* 80B4D408  3C 60 80 B5 */	lis r3, __vt__8cM3dGAab@ha
/* 80B4D40C  38 03 32 F4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B4D410  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80B4D414:
/* 80B4D414  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B4D418  38 80 00 00 */	li r4, 0
/* 80B4D41C  4B 53 6C C8 */	b __dt__12dCcD_GObjInfFv
lbl_80B4D420:
/* 80B4D420  7F C3 F3 78 */	mr r3, r30
/* 80B4D424  38 80 00 00 */	li r4, 0
/* 80B4D428  48 00 3B B9 */	bl __dt__8daNpcT_cFv
/* 80B4D42C  7F E0 07 35 */	extsh. r0, r31
/* 80B4D430  40 81 00 0C */	ble lbl_80B4D43C
/* 80B4D434  7F C3 F3 78 */	mr r3, r30
/* 80B4D438  4B 78 19 04 */	b __dl__FPv
lbl_80B4D43C:
/* 80B4D43C  7F C3 F3 78 */	mr r3, r30
/* 80B4D440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4D444  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4D448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4D44C  7C 08 03 A6 */	mtlr r0
/* 80B4D450  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4D454  4E 80 00 20 */	blr 
