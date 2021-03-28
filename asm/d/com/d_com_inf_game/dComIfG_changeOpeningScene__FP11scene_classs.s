lbl_8002CC54:
/* 8002CC54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002CC58  7C 08 02 A6 */	mflr r0
/* 8002CC5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002CC60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8002CC64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8002CC68  7C 7E 1B 78 */	mr r30, r3
/* 8002CC6C  7C 9F 23 78 */	mr r31, r4
/* 8002CC70  38 00 00 00 */	li r0, 0
/* 8002CC74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002CC78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002CC7C  98 03 4E 1C */	stb r0, 0x4e1c(r3)
/* 8002CC80  3C 60 80 38 */	lis r3, d_com_d_com_inf_game__stringBase0@ha
/* 8002CC84  38 63 8F 38 */	addi r3, r3, d_com_d_com_inf_game__stringBase0@l
/* 8002CC88  38 63 01 0B */	addi r3, r3, 0x10b
/* 8002CC8C  38 80 00 64 */	li r4, 0x64
/* 8002CC90  38 A0 00 00 */	li r5, 0
/* 8002CC94  38 C0 00 0A */	li r6, 0xa
/* 8002CC98  48 00 08 BD */	bl dComIfGp_setNextStage__FPCcsScSc
/* 8002CC9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002CCA0  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 8002CCA4  38 65 4E 0E */	addi r3, r5, 0x4e0e
/* 8002CCA8  88 05 4E 18 */	lbz r0, 0x4e18(r5)
/* 8002CCAC  7C 04 07 74 */	extsb r4, r0
/* 8002CCB0  88 05 4E 19 */	lbz r0, 0x4e19(r5)
/* 8002CCB4  7C 05 07 74 */	extsb r5, r0
/* 8002CCB8  4B FD A5 05 */	bl mDoAud_setSceneName__FPCcll
/* 8002CCBC  38 00 00 00 */	li r0, 0
/* 8002CCC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002CCC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002CCC8  90 03 0D C8 */	stw r0, 0xdc8(r3)
/* 8002CCCC  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 8002CCD0  80 03 00 04 */	lwz r0, 4(r3)
/* 8002CCD4  2C 00 00 01 */	cmpwi r0, 1
/* 8002CCD8  40 82 00 30 */	bne lbl_8002CD08
/* 8002CCDC  80 0D 80 84 */	lwz r0, g_blackColor(r13)
/* 8002CCE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8002CCE4  90 01 00 08 */	stw r0, 8(r1)
/* 8002CCE8  88 01 00 08 */	lbz r0, 8(r1)
/* 8002CCEC  98 03 00 0C */	stb r0, 0xc(r3)
/* 8002CCF0  88 01 00 09 */	lbz r0, 9(r1)
/* 8002CCF4  98 03 00 0D */	stb r0, 0xd(r3)
/* 8002CCF8  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8002CCFC  98 03 00 0E */	stb r0, 0xe(r3)
/* 8002CD00  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8002CD04  98 03 00 0F */	stb r0, 0xf(r3)
lbl_8002CD08:
/* 8002CD08  7F C3 F3 78 */	mr r3, r30
/* 8002CD0C  7F E4 FB 78 */	mr r4, r31
/* 8002CD10  38 A0 00 00 */	li r5, 0
/* 8002CD14  38 C0 00 1E */	li r6, 0x1e
/* 8002CD18  4B FF 1F C9 */	bl fopScnM_ChangeReq__FP11scene_classssUs
/* 8002CD1C  7F E3 FB 78 */	mr r3, r31
/* 8002CD20  38 80 00 00 */	li r4, 0
/* 8002CD24  4B FF 20 A9 */	bl fopScnM_ReRequest__FsUl
/* 8002CD28  38 60 00 01 */	li r3, 1
/* 8002CD2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8002CD30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8002CD34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002CD38  7C 08 03 A6 */	mtlr r0
/* 8002CD3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8002CD40  4E 80 00 20 */	blr 
