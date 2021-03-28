lbl_8011F7D8:
/* 8011F7D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011F7DC  7C 08 02 A6 */	mflr r0
/* 8011F7E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011F7E4  39 61 00 40 */	addi r11, r1, 0x40
/* 8011F7E8  48 24 29 F5 */	bl _savegpr_29
/* 8011F7EC  4B F0 FA D1 */	bl dComIfGs_getWarpPlayerPos__Fv
/* 8011F7F0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011F7F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8011F7F8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011F7FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8011F800  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011F804  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8011F808  4B F0 FA C5 */	bl dComIfGs_getWarpPlayerAngleY__Fv
/* 8011F80C  7C 7E 1B 78 */	mr r30, r3
/* 8011F810  4B F0 FA CD */	bl dComIfGs_getWarpRoomNo__Fv
/* 8011F814  7C 7D 1B 78 */	mr r29, r3
/* 8011F818  4B F0 FA 95 */	bl dComIfGs_getWarpStageName__Fv
/* 8011F81C  7C 64 1B 78 */	mr r4, r3
/* 8011F820  38 61 00 10 */	addi r3, r1, 0x10
/* 8011F824  48 24 93 09 */	bl strcpy
/* 8011F828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011F82C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011F830  3B E3 0D B4 */	addi r31, r3, 0xdb4
/* 8011F834  7F E3 FB 78 */	mr r3, r31
/* 8011F838  38 81 00 18 */	addi r4, r1, 0x18
/* 8011F83C  7F C5 F3 78 */	mr r5, r30
/* 8011F840  7F A6 EB 78 */	mr r6, r29
/* 8011F844  4B F1 57 3D */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
/* 8011F848  38 00 00 01 */	li r0, 1
/* 8011F84C  90 01 00 08 */	stw r0, 8(r1)
/* 8011F850  38 00 00 00 */	li r0, 0
/* 8011F854  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011F858  38 61 00 10 */	addi r3, r1, 0x10
/* 8011F85C  38 80 FF FF */	li r4, -1
/* 8011F860  88 1F 00 00 */	lbz r0, 0(r31)
/* 8011F864  7C 05 07 74 */	extsb r5, r0
/* 8011F868  38 C0 FF FF */	li r6, -1
/* 8011F86C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011F870  38 E0 00 0C */	li r7, 0xc
/* 8011F874  39 00 00 00 */	li r8, 0
/* 8011F878  39 20 00 00 */	li r9, 0
/* 8011F87C  39 40 00 00 */	li r10, 0
/* 8011F880  4B F0 DA 7D */	bl dComIfGp_setNextStage__FPCcsScScfUliScsii
/* 8011F884  88 1F 00 00 */	lbz r0, 0(r31)
/* 8011F888  7C 03 07 74 */	extsb r3, r0
/* 8011F88C  38 80 00 00 */	li r4, 0
/* 8011F890  38 A0 00 CA */	li r5, 0xca
/* 8011F894  38 C0 00 00 */	li r6, 0
/* 8011F898  48 03 F1 75 */	bl setParamData__9daPy_py_cFiiii
/* 8011F89C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8011F8A0  39 61 00 40 */	addi r11, r1, 0x40
/* 8011F8A4  48 24 29 85 */	bl _restgpr_29
/* 8011F8A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011F8AC  7C 08 03 A6 */	mtlr r0
/* 8011F8B0  38 21 00 40 */	addi r1, r1, 0x40
/* 8011F8B4  4E 80 00 20 */	blr 
