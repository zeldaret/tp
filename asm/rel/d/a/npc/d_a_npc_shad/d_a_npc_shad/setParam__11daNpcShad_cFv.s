lbl_80AE01BC:
/* 80AE01BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AE01C0  7C 08 02 A6 */	mflr r0
/* 80AE01C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE01C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AE01CC  7C 7F 1B 78 */	mr r31, r3
/* 80AE01D0  88 03 0E 20 */	lbz r0, 0xe20(r3)
/* 80AE01D4  28 00 00 00 */	cmplwi r0, 0
/* 80AE01D8  40 82 00 D0 */	bne lbl_80AE02A8
/* 80AE01DC  38 7F 0C 88 */	addi r3, r31, 0xc88
/* 80AE01E0  4B 67 05 0D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AE01E4  28 03 00 00 */	cmplwi r3, 0
/* 80AE01E8  40 82 00 28 */	bne lbl_80AE0210
/* 80AE01EC  38 00 02 98 */	li r0, 0x298
/* 80AE01F0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80AE01F4  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80AE01F8  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80AE01FC  38 81 00 0C */	addi r4, r1, 0xc
/* 80AE0200  4B 53 95 F9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80AE0204  7C 64 1B 78 */	mr r4, r3
/* 80AE0208  38 7F 0C 88 */	addi r3, r31, 0xc88
/* 80AE020C  4B 67 04 B1 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80AE0210:
/* 80AE0210  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 80AE0214  4B 67 04 D9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AE0218  28 03 00 00 */	cmplwi r3, 0
/* 80AE021C  40 82 00 28 */	bne lbl_80AE0244
/* 80AE0220  38 00 02 9B */	li r0, 0x29b
/* 80AE0224  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80AE0228  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80AE022C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80AE0230  38 81 00 0A */	addi r4, r1, 0xa
/* 80AE0234  4B 53 95 C5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80AE0238  7C 64 1B 78 */	mr r4, r3
/* 80AE023C  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 80AE0240  4B 67 04 7D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80AE0244:
/* 80AE0244  38 7F 0C 98 */	addi r3, r31, 0xc98
/* 80AE0248  4B 67 04 A5 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AE024C  28 03 00 00 */	cmplwi r3, 0
/* 80AE0250  40 82 00 28 */	bne lbl_80AE0278
/* 80AE0254  38 00 02 9C */	li r0, 0x29c
/* 80AE0258  B0 01 00 08 */	sth r0, 8(r1)
/* 80AE025C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80AE0260  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80AE0264  38 81 00 08 */	addi r4, r1, 8
/* 80AE0268  4B 53 95 91 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80AE026C  7C 64 1B 78 */	mr r4, r3
/* 80AE0270  38 7F 0C 98 */	addi r3, r31, 0xc98
/* 80AE0274  4B 67 04 49 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80AE0278:
/* 80AE0278  38 7F 0C A0 */	addi r3, r31, 0xca0
/* 80AE027C  4B 67 04 71 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AE0280  28 03 00 00 */	cmplwi r3, 0
/* 80AE0284  40 82 00 68 */	bne lbl_80AE02EC
/* 80AE0288  7F E3 FB 78 */	mr r3, r31
/* 80AE028C  38 80 00 11 */	li r4, 0x11
/* 80AE0290  38 A0 00 00 */	li r5, 0
/* 80AE0294  4B 67 40 0D */	bl getEvtAreaTagP__8daNpcF_cFii
/* 80AE0298  7C 64 1B 78 */	mr r4, r3
/* 80AE029C  38 7F 0C A0 */	addi r3, r31, 0xca0
/* 80AE02A0  4B 67 04 1D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AE02A4  48 00 00 48 */	b lbl_80AE02EC
lbl_80AE02A8:
/* 80AE02A8  28 00 00 01 */	cmplwi r0, 1
/* 80AE02AC  40 82 00 40 */	bne lbl_80AE02EC
/* 80AE02B0  38 60 01 2E */	li r3, 0x12e
/* 80AE02B4  4B 67 53 81 */	bl daNpcF_chkEvtBit__FUl
/* 80AE02B8  2C 03 00 00 */	cmpwi r3, 0
/* 80AE02BC  41 82 00 30 */	beq lbl_80AE02EC
/* 80AE02C0  38 7F 0C A0 */	addi r3, r31, 0xca0
/* 80AE02C4  4B 67 04 29 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AE02C8  28 03 00 00 */	cmplwi r3, 0
/* 80AE02CC  40 82 00 20 */	bne lbl_80AE02EC
/* 80AE02D0  7F E3 FB 78 */	mr r3, r31
/* 80AE02D4  38 80 00 12 */	li r4, 0x12
/* 80AE02D8  38 A0 00 00 */	li r5, 0
/* 80AE02DC  4B 67 3F C5 */	bl getEvtAreaTagP__8daNpcF_cFii
/* 80AE02E0  7C 64 1B 78 */	mr r4, r3
/* 80AE02E4  38 7F 0C A0 */	addi r3, r31, 0xca0
/* 80AE02E8  4B 67 03 D5 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80AE02EC:
/* 80AE02EC  38 00 00 0A */	li r0, 0xa
/* 80AE02F0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AE02F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE02F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE02FC  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80AE0300  3C 80 80 AE */	lis r4, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80AE0304  38 84 24 C4 */	addi r4, r4, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80AE0308  38 84 01 1B */	addi r4, r4, 0x11b
/* 80AE030C  4B 88 86 89 */	bl strcmp
/* 80AE0310  2C 03 00 00 */	cmpwi r3, 0
/* 80AE0314  40 82 00 30 */	bne lbl_80AE0344
/* 80AE0318  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE031C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE0320  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80AE0324  2C 00 00 05 */	cmpwi r0, 5
/* 80AE0328  40 82 00 1C */	bne lbl_80AE0344
/* 80AE032C  38 60 00 00 */	li r3, 0
/* 80AE0330  4B 54 C6 4D */	bl getLayerNo__14dComIfG_play_cFi
/* 80AE0334  2C 03 00 02 */	cmpwi r3, 2
/* 80AE0338  40 82 00 0C */	bne lbl_80AE0344
/* 80AE033C  38 00 00 01 */	li r0, 1
/* 80AE0340  48 00 00 08 */	b lbl_80AE0348
lbl_80AE0344:
/* 80AE0344  38 00 00 00 */	li r0, 0
lbl_80AE0348:
/* 80AE0348  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AE034C  41 82 00 2C */	beq lbl_80AE0378
/* 80AE0350  38 00 00 4E */	li r0, 0x4e
/* 80AE0354  98 1F 05 44 */	stb r0, 0x544(r31)
/* 80AE0358  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80AE035C  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80AE0360  38 00 00 4D */	li r0, 0x4d
/* 80AE0364  98 1F 05 47 */	stb r0, 0x547(r31)
/* 80AE0368  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80AE036C  64 00 00 80 */	oris r0, r0, 0x80
/* 80AE0370  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AE0374  48 00 00 84 */	b lbl_80AE03F8
lbl_80AE0378:
/* 80AE0378  88 1F 0E 20 */	lbz r0, 0xe20(r31)
/* 80AE037C  28 00 00 00 */	cmplwi r0, 0
/* 80AE0380  40 82 00 38 */	bne lbl_80AE03B8
/* 80AE0384  7F E3 FB 78 */	mr r3, r31
/* 80AE0388  38 80 00 03 */	li r4, 3
/* 80AE038C  38 A0 00 05 */	li r5, 5
/* 80AE0390  4B 67 3E E9 */	bl getDistTableIdx__8daNpcF_cFii
/* 80AE0394  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80AE0398  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80AE039C  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80AE03A0  7F E3 FB 78 */	mr r3, r31
/* 80AE03A4  38 80 00 02 */	li r4, 2
/* 80AE03A8  38 A0 00 05 */	li r5, 5
/* 80AE03AC  4B 67 3E CD */	bl getDistTableIdx__8daNpcF_cFii
/* 80AE03B0  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80AE03B4  48 00 00 44 */	b lbl_80AE03F8
lbl_80AE03B8:
/* 80AE03B8  7F E3 FB 78 */	mr r3, r31
/* 80AE03BC  3C 80 80 AE */	lis r4, m__17daNpcShad_Param_c@ha /* 0x80AE1FDC@ha */
/* 80AE03C0  38 A4 1F DC */	addi r5, r4, m__17daNpcShad_Param_c@l /* 0x80AE1FDC@l */
/* 80AE03C4  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80AE03C8  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80AE03CC  4B 67 3E AD */	bl getDistTableIdx__8daNpcF_cFii
/* 80AE03D0  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80AE03D4  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80AE03D8  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80AE03DC  7F E3 FB 78 */	mr r3, r31
/* 80AE03E0  3C 80 80 AE */	lis r4, m__17daNpcShad_Param_c@ha /* 0x80AE1FDC@ha */
/* 80AE03E4  38 A4 1F DC */	addi r5, r4, m__17daNpcShad_Param_c@l /* 0x80AE1FDC@l */
/* 80AE03E8  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80AE03EC  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80AE03F0  4B 67 3E 89 */	bl getDistTableIdx__8daNpcF_cFii
/* 80AE03F4  98 7F 05 47 */	stb r3, 0x547(r31)
lbl_80AE03F8:
/* 80AE03F8  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80AE03FC  3C 80 80 AE */	lis r4, m__17daNpcShad_Param_c@ha /* 0x80AE1FDC@ha */
/* 80AE0400  38 84 1F DC */	addi r4, r4, m__17daNpcShad_Param_c@l /* 0x80AE1FDC@l */
/* 80AE0404  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AE0408  4B 59 5B 39 */	bl SetWallR__12dBgS_AcchCirFf
/* 80AE040C  3C 60 80 AE */	lis r3, m__17daNpcShad_Param_c@ha /* 0x80AE1FDC@ha */
/* 80AE0410  38 63 1F DC */	addi r3, r3, m__17daNpcShad_Param_c@l /* 0x80AE1FDC@l */
/* 80AE0414  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AE0418  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 80AE041C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AE0420  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80AE0424  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AE0428  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AE042C  7C 08 03 A6 */	mtlr r0
/* 80AE0430  38 21 00 20 */	addi r1, r1, 0x20
/* 80AE0434  4E 80 00 20 */	blr 
