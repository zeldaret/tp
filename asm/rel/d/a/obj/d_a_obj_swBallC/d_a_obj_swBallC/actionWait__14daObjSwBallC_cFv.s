lbl_80CF6200:
/* 80CF6200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6204  7C 08 02 A6 */	mflr r0
/* 80CF6208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF620C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF6210  7C 7F 1B 78 */	mr r31, r3
/* 80CF6214  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF6218  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF621C  38 80 00 3D */	li r4, 0x3d
/* 80CF6220  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF6224  7C 05 07 74 */	extsb r5, r0
/* 80CF6228  4B 33 F1 38 */	b isSwitch__10dSv_info_cCFii
/* 80CF622C  2C 03 00 00 */	cmpwi r3, 0
/* 80CF6230  41 82 00 58 */	beq lbl_80CF6288
/* 80CF6234  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF6238  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF623C  38 80 00 3E */	li r4, 0x3e
/* 80CF6240  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF6244  7C 05 07 74 */	extsb r5, r0
/* 80CF6248  4B 33 F1 18 */	b isSwitch__10dSv_info_cCFii
/* 80CF624C  2C 03 00 00 */	cmpwi r3, 0
/* 80CF6250  41 82 00 38 */	beq lbl_80CF6288
/* 80CF6254  38 00 00 01 */	li r0, 1
/* 80CF6258  98 1F 05 7F */	stb r0, 0x57f(r31)
/* 80CF625C  7F E3 FB 78 */	mr r3, r31
/* 80CF6260  A8 9F 05 7C */	lha r4, 0x57c(r31)
/* 80CF6264  88 BF 05 7E */	lbz r5, 0x57e(r31)
/* 80CF6268  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CF626C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CF6270  38 E0 00 00 */	li r7, 0
/* 80CF6274  39 00 00 01 */	li r8, 1
/* 80CF6278  4B 32 54 04 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CF627C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CF6280  60 00 00 02 */	ori r0, r0, 2
/* 80CF6284  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CF6288:
/* 80CF6288  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF628C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6290  7C 08 03 A6 */	mtlr r0
/* 80CF6294  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6298  4E 80 00 20 */	blr 
