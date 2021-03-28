lbl_80A6432C:
/* 80A6432C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64330  7C 08 02 A6 */	mflr r0
/* 80A64334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A64338  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6433C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A64340  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A64344  7C 9F 23 78 */	mr r31, r4
/* 80A64348  41 82 01 14 */	beq lbl_80A6445C
/* 80A6434C  3C 60 80 A7 */	lis r3, __vt__11daNpc_Len_c@ha
/* 80A64350  38 03 99 7C */	addi r0, r3, __vt__11daNpc_Len_c@l
/* 80A64354  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A64358  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A6435C  28 03 00 00 */	cmplwi r3, 0
/* 80A64360  41 82 00 08 */	beq lbl_80A64368
/* 80A64364  4B 5A CF AC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A64368:
/* 80A64368  7F C3 F3 78 */	mr r3, r30
/* 80A6436C  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A64370  54 00 10 3A */	slwi r0, r0, 2
/* 80A64374  3C 80 80 A7 */	lis r4, l_loadResPtrnList@ha
/* 80A64378  38 84 91 08 */	addi r4, r4, l_loadResPtrnList@l
/* 80A6437C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A64380  3C A0 80 A7 */	lis r5, l_resNameList@ha
/* 80A64384  38 A5 90 F0 */	addi r5, r5, l_resNameList@l
/* 80A64388  4B 6E 41 24 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80A6438C  34 1E 0F A4 */	addic. r0, r30, 0xfa4
/* 80A64390  41 82 00 10 */	beq lbl_80A643A0
/* 80A64394  3C 60 80 A7 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80A64398  38 03 99 70 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80A6439C  90 1E 0F C8 */	stw r0, 0xfc8(r30)
lbl_80A643A0:
/* 80A643A0  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 80A643A4  3C 80 80 A6 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80A643A8  38 84 7F A0 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80A643AC  38 A0 00 08 */	li r5, 8
/* 80A643B0  38 C0 00 04 */	li r6, 4
/* 80A643B4  4B 8F D9 34 */	b __destroy_arr
/* 80A643B8  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80A643BC  41 82 00 84 */	beq lbl_80A64440
/* 80A643C0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A643C4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A643C8  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80A643CC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A643D0  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A643D4  38 03 00 84 */	addi r0, r3, 0x84
/* 80A643D8  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A643DC  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A643E0  41 82 00 54 */	beq lbl_80A64434
/* 80A643E4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A643E8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A643EC  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80A643F0  38 03 00 58 */	addi r0, r3, 0x58
/* 80A643F4  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A643F8  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80A643FC  41 82 00 10 */	beq lbl_80A6440C
/* 80A64400  3C 60 80 A7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A64404  38 03 99 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A64408  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80A6440C:
/* 80A6440C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A64410  41 82 00 24 */	beq lbl_80A64434
/* 80A64414  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A64418  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A6441C  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A64420  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A64424  41 82 00 10 */	beq lbl_80A64434
/* 80A64428  3C 60 80 A7 */	lis r3, __vt__8cM3dGAab@ha
/* 80A6442C  38 03 99 58 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A64430  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80A64434:
/* 80A64434  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80A64438  38 80 00 00 */	li r4, 0
/* 80A6443C  4B 61 FC A8 */	b __dt__12dCcD_GObjInfFv
lbl_80A64440:
/* 80A64440  7F C3 F3 78 */	mr r3, r30
/* 80A64444  38 80 00 00 */	li r4, 0
/* 80A64448  48 00 37 59 */	bl __dt__8daNpcT_cFv
/* 80A6444C  7F E0 07 35 */	extsh. r0, r31
/* 80A64450  40 81 00 0C */	ble lbl_80A6445C
/* 80A64454  7F C3 F3 78 */	mr r3, r30
/* 80A64458  4B 86 A8 E4 */	b __dl__FPv
lbl_80A6445C:
/* 80A6445C  7F C3 F3 78 */	mr r3, r30
/* 80A64460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A64464  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A64468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6446C  7C 08 03 A6 */	mtlr r0
/* 80A64470  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64474  4E 80 00 20 */	blr 
