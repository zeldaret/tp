lbl_802590F8:
/* 802590F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802590FC  7C 08 02 A6 */	mflr r0
/* 80259100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80259104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80259108  7C 7F 1B 78 */	mr r31, r3
/* 8025910C  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80259110  80 03 00 00 */	lwz r0, 0(r3)
/* 80259114  2C 00 00 00 */	cmpwi r0, 0
/* 80259118  40 82 00 94 */	bne lbl_802591AC
/* 8025911C  4B DC 54 3D */	bl fopOvlpM_IsPeek__Fv
/* 80259120  2C 03 00 00 */	cmpwi r3, 0
/* 80259124  40 82 00 88 */	bne lbl_802591AC
/* 80259128  4B DD 58 4D */	bl dComIfGs_gameStart__Fv
/* 8025912C  7F E3 FB 78 */	mr r3, r31
/* 80259130  88 1F 04 1F */	lbz r0, 0x41f(r31)
/* 80259134  28 00 00 00 */	cmplwi r0, 0
/* 80259138  38 00 00 0B */	li r0, 0xb
/* 8025913C  7C 04 07 34 */	extsh r4, r0
/* 80259140  38 A0 00 00 */	li r5, 0
/* 80259144  38 C0 00 05 */	li r6, 5
/* 80259148  4B DC 5B 99 */	bl fopScnM_ChangeReq__FP11scene_classssUs
/* 8025914C  38 00 00 00 */	li r0, 0
/* 80259150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259158  98 03 4E 1C */	stb r0, 0x4e1c(r3)
/* 8025915C  80 7F 04 14 */	lwz r3, 0x414(r31)
/* 80259160  88 03 02 65 */	lbz r0, 0x265(r3)
/* 80259164  7C 63 02 14 */	add r3, r3, r0
/* 80259168  88 03 02 58 */	lbz r0, 0x258(r3)
/* 8025916C  2C 00 00 00 */	cmpwi r0, 0
/* 80259170  41 82 00 20 */	beq lbl_80259190
/* 80259174  3C 60 80 3A */	lis r3, d_s_d_s_name__stringBase0@ha
/* 80259178  38 63 A2 A8 */	addi r3, r3, d_s_d_s_name__stringBase0@l
/* 8025917C  38 63 00 15 */	addi r3, r3, 0x15
/* 80259180  38 80 00 15 */	li r4, 0x15
/* 80259184  38 A0 00 01 */	li r5, 1
/* 80259188  38 C0 00 0D */	li r6, 0xd
/* 8025918C  4B DD 43 C9 */	bl dComIfGp_setNextStage__FPCcsScSc
lbl_80259190:
/* 80259190  4B F4 60 D5 */	bl dKy_clear_game_init__Fv
/* 80259194  38 00 FF FF */	li r0, -1
/* 80259198  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025919C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802591A0  98 03 09 78 */	stb r0, 0x978(r3)
/* 802591A4  38 00 00 00 */	li r0, 0
/* 802591A8  90 03 0D C8 */	stw r0, 0xdc8(r3)
lbl_802591AC:
/* 802591AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802591B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802591B4  7C 08 03 A6 */	mtlr r0
/* 802591B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802591BC  4E 80 00 20 */	blr 
