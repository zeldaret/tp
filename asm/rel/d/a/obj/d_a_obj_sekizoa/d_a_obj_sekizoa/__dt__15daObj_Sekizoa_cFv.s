lbl_80CCE34C:
/* 80CCE34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCE350  7C 08 02 A6 */	mflr r0
/* 80CCE354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCE358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCE35C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCE360  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CCE364  7C 9F 23 78 */	mr r31, r4
/* 80CCE368  41 82 01 EC */	beq lbl_80CCE554
/* 80CCE36C  3C 60 80 CD */	lis r3, __vt__15daObj_Sekizoa_c@ha
/* 80CCE370  38 03 68 08 */	addi r0, r3, __vt__15daObj_Sekizoa_c@l
/* 80CCE374  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80CCE378  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80CCE37C  28 03 00 00 */	cmplwi r3, 0
/* 80CCE380  41 82 00 08 */	beq lbl_80CCE388
/* 80CCE384  4B 34 2F 8C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80CCE388:
/* 80CCE388  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80CCE38C  28 03 00 00 */	cmplwi r3, 0
/* 80CCE390  41 82 00 08 */	beq lbl_80CCE398
/* 80CCE394  4B 34 2F 7C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80CCE398:
/* 80CCE398  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80CCE39C  28 03 00 00 */	cmplwi r3, 0
/* 80CCE3A0  41 82 00 08 */	beq lbl_80CCE3A8
/* 80CCE3A4  4B 34 2F 6C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80CCE3A8:
/* 80CCE3A8  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CCE3AC  28 00 00 00 */	cmplwi r0, 0
/* 80CCE3B0  40 82 00 28 */	bne lbl_80CCE3D8
/* 80CCE3B4  38 60 00 31 */	li r3, 0x31
/* 80CCE3B8  4B 47 E7 B4 */	b daNpcT_chkTmpBit__FUl
/* 80CCE3BC  2C 03 00 00 */	cmpwi r3, 0
/* 80CCE3C0  41 82 00 18 */	beq lbl_80CCE3D8
/* 80CCE3C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CCE3C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CCE3CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCE3D0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80CCE3D4  4B 5E 14 B0 */	b subBgmStop__8Z2SeqMgrFv
lbl_80CCE3D8:
/* 80CCE3D8  7F C3 F3 78 */	mr r3, r30
/* 80CCE3DC  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CCE3E0  54 00 10 3A */	slwi r0, r0, 2
/* 80CCE3E4  3C 80 80 CD */	lis r4, l_loadResPtrnList@ha
/* 80CCE3E8  38 84 5F A4 */	addi r4, r4, l_loadResPtrnList@l
/* 80CCE3EC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CCE3F0  3C A0 80 CD */	lis r5, l_resNameList@ha
/* 80CCE3F4  38 A5 5F 90 */	addi r5, r5, l_resNameList@l
/* 80CCE3F8  4B 47 A0 B4 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80CCE3FC  34 1E 11 24 */	addic. r0, r30, 0x1124
/* 80CCE400  41 82 00 10 */	beq lbl_80CCE410
/* 80CCE404  3C 60 80 CD */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80CCE408  38 03 67 FC */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80CCE40C  90 1E 11 48 */	stw r0, 0x1148(r30)
lbl_80CCE410:
/* 80CCE410  38 7E 10 CC */	addi r3, r30, 0x10cc
/* 80CCE414  3C 80 80 CD */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80CCE418  38 84 4C 48 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80CCE41C  38 A0 00 08 */	li r5, 8
/* 80CCE420  38 C0 00 08 */	li r6, 8
/* 80CCE424  4B 69 38 C4 */	b __destroy_arr
/* 80CCE428  34 1E 0F 8C */	addic. r0, r30, 0xf8c
/* 80CCE42C  41 82 00 84 */	beq lbl_80CCE4B0
/* 80CCE430  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CCE434  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CCE438  90 7E 0F C8 */	stw r3, 0xfc8(r30)
/* 80CCE43C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CCE440  90 1E 10 AC */	stw r0, 0x10ac(r30)
/* 80CCE444  38 03 00 84 */	addi r0, r3, 0x84
/* 80CCE448  90 1E 10 C4 */	stw r0, 0x10c4(r30)
/* 80CCE44C  34 1E 10 90 */	addic. r0, r30, 0x1090
/* 80CCE450  41 82 00 54 */	beq lbl_80CCE4A4
/* 80CCE454  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CCE458  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CCE45C  90 7E 10 AC */	stw r3, 0x10ac(r30)
/* 80CCE460  38 03 00 58 */	addi r0, r3, 0x58
/* 80CCE464  90 1E 10 C4 */	stw r0, 0x10c4(r30)
/* 80CCE468  34 1E 10 B0 */	addic. r0, r30, 0x10b0
/* 80CCE46C  41 82 00 10 */	beq lbl_80CCE47C
/* 80CCE470  3C 60 80 CD */	lis r3, __vt__8cM3dGCyl@ha
/* 80CCE474  38 03 67 F0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CCE478  90 1E 10 C4 */	stw r0, 0x10c4(r30)
lbl_80CCE47C:
/* 80CCE47C  34 1E 10 90 */	addic. r0, r30, 0x1090
/* 80CCE480  41 82 00 24 */	beq lbl_80CCE4A4
/* 80CCE484  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CCE488  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CCE48C  90 1E 10 AC */	stw r0, 0x10ac(r30)
/* 80CCE490  34 1E 10 90 */	addic. r0, r30, 0x1090
/* 80CCE494  41 82 00 10 */	beq lbl_80CCE4A4
/* 80CCE498  3C 60 80 CD */	lis r3, __vt__8cM3dGAab@ha
/* 80CCE49C  38 03 67 E4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CCE4A0  90 1E 10 A8 */	stw r0, 0x10a8(r30)
lbl_80CCE4A4:
/* 80CCE4A4  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80CCE4A8  38 80 00 00 */	li r4, 0
/* 80CCE4AC  4B 3B 5C 38 */	b __dt__12dCcD_GObjInfFv
lbl_80CCE4B0:
/* 80CCE4B0  34 1E 0E 50 */	addic. r0, r30, 0xe50
/* 80CCE4B4  41 82 00 84 */	beq lbl_80CCE538
/* 80CCE4B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CCE4BC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CCE4C0  90 7E 0E 8C */	stw r3, 0xe8c(r30)
/* 80CCE4C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CCE4C8  90 1E 0F 70 */	stw r0, 0xf70(r30)
/* 80CCE4CC  38 03 00 84 */	addi r0, r3, 0x84
/* 80CCE4D0  90 1E 0F 88 */	stw r0, 0xf88(r30)
/* 80CCE4D4  34 1E 0F 54 */	addic. r0, r30, 0xf54
/* 80CCE4D8  41 82 00 54 */	beq lbl_80CCE52C
/* 80CCE4DC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CCE4E0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CCE4E4  90 7E 0F 70 */	stw r3, 0xf70(r30)
/* 80CCE4E8  38 03 00 58 */	addi r0, r3, 0x58
/* 80CCE4EC  90 1E 0F 88 */	stw r0, 0xf88(r30)
/* 80CCE4F0  34 1E 0F 74 */	addic. r0, r30, 0xf74
/* 80CCE4F4  41 82 00 10 */	beq lbl_80CCE504
/* 80CCE4F8  3C 60 80 CD */	lis r3, __vt__8cM3dGCyl@ha
/* 80CCE4FC  38 03 67 F0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CCE500  90 1E 0F 88 */	stw r0, 0xf88(r30)
lbl_80CCE504:
/* 80CCE504  34 1E 0F 54 */	addic. r0, r30, 0xf54
/* 80CCE508  41 82 00 24 */	beq lbl_80CCE52C
/* 80CCE50C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CCE510  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CCE514  90 1E 0F 70 */	stw r0, 0xf70(r30)
/* 80CCE518  34 1E 0F 54 */	addic. r0, r30, 0xf54
/* 80CCE51C  41 82 00 10 */	beq lbl_80CCE52C
/* 80CCE520  3C 60 80 CD */	lis r3, __vt__8cM3dGAab@ha
/* 80CCE524  38 03 67 E4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CCE528  90 1E 0F 6C */	stw r0, 0xf6c(r30)
lbl_80CCE52C:
/* 80CCE52C  38 7E 0E 50 */	addi r3, r30, 0xe50
/* 80CCE530  38 80 00 00 */	li r4, 0
/* 80CCE534  4B 3B 5B B0 */	b __dt__12dCcD_GObjInfFv
lbl_80CCE538:
/* 80CCE538  7F C3 F3 78 */	mr r3, r30
/* 80CCE53C  38 80 00 00 */	li r4, 0
/* 80CCE540  48 00 63 09 */	bl __dt__8daNpcT_cFv
/* 80CCE544  7F E0 07 35 */	extsh. r0, r31
/* 80CCE548  40 81 00 0C */	ble lbl_80CCE554
/* 80CCE54C  7F C3 F3 78 */	mr r3, r30
/* 80CCE550  4B 60 07 EC */	b __dl__FPv
lbl_80CCE554:
/* 80CCE554  7F C3 F3 78 */	mr r3, r30
/* 80CCE558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCE55C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCE560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCE564  7C 08 03 A6 */	mtlr r0
/* 80CCE568  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCE56C  4E 80 00 20 */	blr 
