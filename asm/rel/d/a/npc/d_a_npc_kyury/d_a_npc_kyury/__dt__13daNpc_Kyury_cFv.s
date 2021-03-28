lbl_80A600CC:
/* 80A600CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A600D0  7C 08 02 A6 */	mflr r0
/* 80A600D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A600D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A600DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A600E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A600E4  7C 9F 23 78 */	mr r31, r4
/* 80A600E8  41 82 01 14 */	beq lbl_80A601FC
/* 80A600EC  3C 60 80 A6 */	lis r3, __vt__13daNpc_Kyury_c@ha
/* 80A600F0  38 03 41 48 */	addi r0, r3, __vt__13daNpc_Kyury_c@l
/* 80A600F4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A600F8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A600FC  28 03 00 00 */	cmplwi r3, 0
/* 80A60100  41 82 00 08 */	beq lbl_80A60108
/* 80A60104  4B 5B 12 0C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A60108:
/* 80A60108  7F C3 F3 78 */	mr r3, r30
/* 80A6010C  88 1E 0F 88 */	lbz r0, 0xf88(r30)
/* 80A60110  54 00 10 3A */	slwi r0, r0, 2
/* 80A60114  3C 80 80 A6 */	lis r4, l_loadResPtrnList@ha
/* 80A60118  38 84 3A 78 */	addi r4, r4, l_loadResPtrnList@l
/* 80A6011C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A60120  3C A0 80 A6 */	lis r5, l_resNameList@ha
/* 80A60124  38 A5 3A 64 */	addi r5, r5, l_resNameList@l
/* 80A60128  4B 6E 83 84 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80A6012C  34 1E 0F 94 */	addic. r0, r30, 0xf94
/* 80A60130  41 82 00 10 */	beq lbl_80A60140
/* 80A60134  3C 60 80 A6 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80A60138  38 03 41 3C */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80A6013C  90 1E 0F B8 */	stw r0, 0xfb8(r30)
lbl_80A60140:
/* 80A60140  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A60144  3C 80 80 A6 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80A60148  38 84 2A 70 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80A6014C  38 A0 00 08 */	li r5, 8
/* 80A60150  38 C0 00 01 */	li r6, 1
/* 80A60154  4B 90 1B 94 */	b __destroy_arr
/* 80A60158  34 1E 0E 4C */	addic. r0, r30, 0xe4c
/* 80A6015C  41 82 00 84 */	beq lbl_80A601E0
/* 80A60160  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A60164  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A60168  90 7E 0E 88 */	stw r3, 0xe88(r30)
/* 80A6016C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A60170  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 80A60174  38 03 00 84 */	addi r0, r3, 0x84
/* 80A60178  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 80A6017C  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80A60180  41 82 00 54 */	beq lbl_80A601D4
/* 80A60184  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A60188  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A6018C  90 7E 0F 6C */	stw r3, 0xf6c(r30)
/* 80A60190  38 03 00 58 */	addi r0, r3, 0x58
/* 80A60194  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 80A60198  34 1E 0F 70 */	addic. r0, r30, 0xf70
/* 80A6019C  41 82 00 10 */	beq lbl_80A601AC
/* 80A601A0  3C 60 80 A6 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A601A4  38 03 41 30 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A601A8  90 1E 0F 84 */	stw r0, 0xf84(r30)
lbl_80A601AC:
/* 80A601AC  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80A601B0  41 82 00 24 */	beq lbl_80A601D4
/* 80A601B4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A601B8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A601BC  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 80A601C0  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80A601C4  41 82 00 10 */	beq lbl_80A601D4
/* 80A601C8  3C 60 80 A6 */	lis r3, __vt__8cM3dGAab@ha
/* 80A601CC  38 03 41 24 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A601D0  90 1E 0F 68 */	stw r0, 0xf68(r30)
lbl_80A601D4:
/* 80A601D4  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 80A601D8  38 80 00 00 */	li r4, 0
/* 80A601DC  4B 62 3F 08 */	b __dt__12dCcD_GObjInfFv
lbl_80A601E0:
/* 80A601E0  7F C3 F3 78 */	mr r3, r30
/* 80A601E4  38 80 00 00 */	li r4, 0
/* 80A601E8  48 00 24 89 */	bl __dt__8daNpcT_cFv
/* 80A601EC  7F E0 07 35 */	extsh. r0, r31
/* 80A601F0  40 81 00 0C */	ble lbl_80A601FC
/* 80A601F4  7F C3 F3 78 */	mr r3, r30
/* 80A601F8  4B 86 EB 44 */	b __dl__FPv
lbl_80A601FC:
/* 80A601FC  7F C3 F3 78 */	mr r3, r30
/* 80A60200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A60204  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A60208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6020C  7C 08 03 A6 */	mtlr r0
/* 80A60210  38 21 00 10 */	addi r1, r1, 0x10
/* 80A60214  4E 80 00 20 */	blr 
