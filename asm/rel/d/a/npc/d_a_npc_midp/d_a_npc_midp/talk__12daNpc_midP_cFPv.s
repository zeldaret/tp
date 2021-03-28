lbl_80A72548:
/* 80A72548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7254C  7C 08 02 A6 */	mflr r0
/* 80A72550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A72554  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A72558  7C 7F 1B 78 */	mr r31, r3
/* 80A7255C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A72560  2C 00 00 02 */	cmpwi r0, 2
/* 80A72564  41 82 00 7C */	beq lbl_80A725E0
/* 80A72568  40 80 01 D4 */	bge lbl_80A7273C
/* 80A7256C  2C 00 00 00 */	cmpwi r0, 0
/* 80A72570  40 80 00 0C */	bge lbl_80A7257C
/* 80A72574  48 00 01 C8 */	b lbl_80A7273C
/* 80A72578  48 00 01 C4 */	b lbl_80A7273C
lbl_80A7257C:
/* 80A7257C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A72580  2C 00 00 00 */	cmpwi r0, 0
/* 80A72584  40 82 00 5C */	bne lbl_80A725E0
/* 80A72588  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80A7258C  38 A0 00 00 */	li r5, 0
/* 80A72590  4B 6D 96 60 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A72594  7F E3 FB 78 */	mr r3, r31
/* 80A72598  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A7259C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A725A0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A725A4  4B 5A 81 6C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A725A8  B0 7F 0D C8 */	sth r3, 0xdc8(r31)
/* 80A725AC  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80A725B0  2C 00 00 01 */	cmpwi r0, 1
/* 80A725B4  40 82 00 0C */	bne lbl_80A725C0
/* 80A725B8  38 00 00 00 */	li r0, 0
/* 80A725BC  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_80A725C0:
/* 80A725C0  3C 60 80 A7 */	lis r3, lit_4186@ha
/* 80A725C4  C0 03 3A 60 */	lfs f0, lit_4186@l(r3)
/* 80A725C8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A725CC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A725D0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A725D4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A725D8  38 00 00 02 */	li r0, 2
/* 80A725DC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A725E0:
/* 80A725E0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A725E4  2C 00 00 00 */	cmpwi r0, 0
/* 80A725E8  40 82 01 54 */	bne lbl_80A7273C
/* 80A725EC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A725F0  28 00 00 00 */	cmplwi r0, 0
/* 80A725F4  40 82 00 14 */	bne lbl_80A72608
/* 80A725F8  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80A725FC  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A72600  7C 03 00 00 */	cmpw r3, r0
/* 80A72604  40 82 00 E0 */	bne lbl_80A726E4
lbl_80A72608:
/* 80A72608  7F E3 FB 78 */	mr r3, r31
/* 80A7260C  38 80 00 00 */	li r4, 0
/* 80A72610  38 A0 00 00 */	li r5, 0
/* 80A72614  38 C0 00 00 */	li r6, 0
/* 80A72618  38 E0 00 00 */	li r7, 0
/* 80A7261C  4B 6D 96 5C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A72620  2C 03 00 00 */	cmpwi r3, 0
/* 80A72624  41 82 00 3C */	beq lbl_80A72660
/* 80A72628  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80A7262C  28 00 00 01 */	cmplwi r0, 1
/* 80A72630  40 82 00 30 */	bne lbl_80A72660
/* 80A72634  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A72638  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A7263C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A72640  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A72644  4B 6D 30 9C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A72648  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A7264C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A72650  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A72654  4B 5C FE 14 */	b reset__14dEvt_control_cFv
/* 80A72658  38 00 00 03 */	li r0, 3
/* 80A7265C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A72660:
/* 80A72660  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A72664  2C 00 00 01 */	cmpwi r0, 1
/* 80A72668  41 82 00 2C */	beq lbl_80A72694
/* 80A7266C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A72670  4B 6D 30 8C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A72674  38 00 00 00 */	li r0, 0
/* 80A72678  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A7267C  3C 60 80 A7 */	lis r3, lit_4186@ha
/* 80A72680  C0 03 3A 60 */	lfs f0, lit_4186@l(r3)
/* 80A72684  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A72688  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A7268C  38 00 00 01 */	li r0, 1
/* 80A72690  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A72694:
/* 80A72694  38 00 00 00 */	li r0, 0
/* 80A72698  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A7269C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A726A0  28 00 00 00 */	cmplwi r0, 0
/* 80A726A4  41 82 00 98 */	beq lbl_80A7273C
/* 80A726A8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A726AC  2C 00 00 00 */	cmpwi r0, 0
/* 80A726B0  41 82 00 28 */	beq lbl_80A726D8
/* 80A726B4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A726B8  4B 6D 30 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A726BC  38 00 00 00 */	li r0, 0
/* 80A726C0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A726C4  3C 60 80 A7 */	lis r3, lit_4186@ha
/* 80A726C8  C0 03 3A 60 */	lfs f0, lit_4186@l(r3)
/* 80A726CC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A726D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A726D4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A726D8:
/* 80A726D8  38 00 00 00 */	li r0, 0
/* 80A726DC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A726E0  48 00 00 5C */	b lbl_80A7273C
lbl_80A726E4:
/* 80A726E4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A726E8  2C 00 00 01 */	cmpwi r0, 1
/* 80A726EC  41 82 00 2C */	beq lbl_80A72718
/* 80A726F0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A726F4  4B 6D 30 08 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A726F8  38 00 00 00 */	li r0, 0
/* 80A726FC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A72700  3C 60 80 A7 */	lis r3, lit_4186@ha
/* 80A72704  C0 03 3A 60 */	lfs f0, lit_4186@l(r3)
/* 80A72708  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A7270C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A72710  38 00 00 01 */	li r0, 1
/* 80A72714  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A72718:
/* 80A72718  38 00 00 00 */	li r0, 0
/* 80A7271C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A72720  7F E3 FB 78 */	mr r3, r31
/* 80A72724  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80A72728  38 A0 FF FF */	li r5, -1
/* 80A7272C  38 C0 FF FF */	li r6, -1
/* 80A72730  38 E0 00 0F */	li r7, 0xf
/* 80A72734  39 00 00 00 */	li r8, 0
/* 80A72738  4B 6D 8F 10 */	b step__8daNpcT_cFsiiii
lbl_80A7273C:
/* 80A7273C  38 60 00 00 */	li r3, 0
/* 80A72740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A72744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A72748  7C 08 03 A6 */	mtlr r0
/* 80A7274C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A72750  4E 80 00 20 */	blr 
