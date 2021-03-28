lbl_80A79608:
/* 80A79608  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A7960C  7C 08 02 A6 */	mflr r0
/* 80A79610  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A79614  39 61 00 20 */	addi r11, r1, 0x20
/* 80A79618  4B 8E 8B C4 */	b _savegpr_29
/* 80A7961C  7C 7F 1B 78 */	mr r31, r3
/* 80A79620  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A79624  2C 00 00 02 */	cmpwi r0, 2
/* 80A79628  41 82 00 DC */	beq lbl_80A79704
/* 80A7962C  40 80 02 88 */	bge lbl_80A798B4
/* 80A79630  2C 00 00 00 */	cmpwi r0, 0
/* 80A79634  40 80 00 0C */	bge lbl_80A79640
/* 80A79638  48 00 02 7C */	b lbl_80A798B4
/* 80A7963C  48 00 02 78 */	b lbl_80A798B4
lbl_80A79640:
/* 80A79640  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A79644  2C 00 00 00 */	cmpwi r0, 0
/* 80A79648  40 82 00 BC */	bne lbl_80A79704
/* 80A7964C  80 1F 16 5C */	lwz r0, 0x165c(r31)
/* 80A79650  2C 00 00 00 */	cmpwi r0, 0
/* 80A79654  41 82 00 9C */	beq lbl_80A796F0
/* 80A79658  88 1F 16 69 */	lbz r0, 0x1669(r31)
/* 80A7965C  28 00 00 00 */	cmplwi r0, 0
/* 80A79660  41 82 00 7C */	beq lbl_80A796DC
/* 80A79664  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A79668  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A7966C  41 82 00 28 */	beq lbl_80A79694
/* 80A79670  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A79674  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A79678  4B 6C C2 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7967C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A79680  38 00 00 15 */	li r0, 0x15
/* 80A79684  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A79688  3C 60 80 A8 */	lis r3, lit_4862@ha
/* 80A7968C  C0 03 B0 14 */	lfs f0, lit_4862@l(r3)
/* 80A79690  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A79694:
/* 80A79694  88 1F 16 6B */	lbz r0, 0x166b(r31)
/* 80A79698  28 00 00 00 */	cmplwi r0, 0
/* 80A7969C  3B C0 00 0B */	li r30, 0xb
/* 80A796A0  41 82 00 08 */	beq lbl_80A796A8
/* 80A796A4  3B C0 00 0A */	li r30, 0xa
lbl_80A796A8:
/* 80A796A8  2C 1E 00 00 */	cmpwi r30, 0
/* 80A796AC  41 80 00 30 */	blt lbl_80A796DC
/* 80A796B0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A796B4  7C 1E 00 00 */	cmpw r30, r0
/* 80A796B8  41 82 00 24 */	beq lbl_80A796DC
/* 80A796BC  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80A796C0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A796C4  4B 6C C1 D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A796C8  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80A796CC  93 DF 0B 7C */	stw r30, 0xb7c(r31)
/* 80A796D0  3C 60 80 A8 */	lis r3, lit_4862@ha
/* 80A796D4  C0 03 B0 14 */	lfs f0, lit_4862@l(r3)
/* 80A796D8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A796DC:
/* 80A796DC  7F E3 FB 78 */	mr r3, r31
/* 80A796E0  80 9F 16 5C */	lwz r4, 0x165c(r31)
/* 80A796E4  38 A0 00 00 */	li r5, 0
/* 80A796E8  4B 6D 25 08 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A796EC  48 00 00 10 */	b lbl_80A796FC
lbl_80A796F0:
/* 80A796F0  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80A796F4  38 A0 00 00 */	li r5, 0
/* 80A796F8  4B 6D 24 F8 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A796FC:
/* 80A796FC  38 00 00 02 */	li r0, 2
/* 80A79700  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A79704:
/* 80A79704  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A79708  2C 00 00 00 */	cmpwi r0, 0
/* 80A7970C  40 82 01 A8 */	bne lbl_80A798B4
/* 80A79710  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A79714  28 00 00 00 */	cmplwi r0, 0
/* 80A79718  40 82 00 20 */	bne lbl_80A79738
/* 80A7971C  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80A79720  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A79724  7C 03 00 00 */	cmpw r3, r0
/* 80A79728  41 82 00 10 */	beq lbl_80A79738
/* 80A7972C  88 1F 15 C4 */	lbz r0, 0x15c4(r31)
/* 80A79730  28 00 00 03 */	cmplwi r0, 3
/* 80A79734  40 82 00 FC */	bne lbl_80A79830
lbl_80A79738:
/* 80A79738  7F E3 FB 78 */	mr r3, r31
/* 80A7973C  38 80 00 00 */	li r4, 0
/* 80A79740  38 A0 00 00 */	li r5, 0
/* 80A79744  38 C0 00 00 */	li r6, 0
/* 80A79748  38 E0 00 00 */	li r7, 0
/* 80A7974C  4B 6D 25 2C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A79750  2C 03 00 00 */	cmpwi r3, 0
/* 80A79754  41 82 00 58 */	beq lbl_80A797AC
/* 80A79758  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80A7975C  28 00 00 01 */	cmplwi r0, 1
/* 80A79760  40 82 00 4C */	bne lbl_80A797AC
/* 80A79764  88 1F 16 69 */	lbz r0, 0x1669(r31)
/* 80A79768  28 00 00 00 */	cmplwi r0, 0
/* 80A7976C  41 82 00 14 */	beq lbl_80A79780
/* 80A79770  38 00 00 00 */	li r0, 0
/* 80A79774  98 1F 16 6C */	stb r0, 0x166c(r31)
/* 80A79778  90 1F 16 5C */	stw r0, 0x165c(r31)
/* 80A7977C  48 00 00 18 */	b lbl_80A79794
lbl_80A79780:
/* 80A79780  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A79784  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A79788  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A7978C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A79790  4B 6C BF 50 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A79794:
/* 80A79794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A79798  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A7979C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A797A0  4B 5C 8C C8 */	b reset__14dEvt_control_cFv
/* 80A797A4  38 00 00 03 */	li r0, 3
/* 80A797A8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A797AC:
/* 80A797AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A797B0  2C 00 00 01 */	cmpwi r0, 1
/* 80A797B4  41 82 00 2C */	beq lbl_80A797E0
/* 80A797B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A797BC  4B 6C BF 40 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A797C0  38 00 00 00 */	li r0, 0
/* 80A797C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A797C8  3C 60 80 A8 */	lis r3, lit_4115@ha
/* 80A797CC  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)
/* 80A797D0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A797D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A797D8  38 00 00 01 */	li r0, 1
/* 80A797DC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A797E0:
/* 80A797E0  38 00 00 00 */	li r0, 0
/* 80A797E4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A797E8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A797EC  28 00 00 00 */	cmplwi r0, 0
/* 80A797F0  41 82 00 C4 */	beq lbl_80A798B4
/* 80A797F4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A797F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A797FC  41 82 00 28 */	beq lbl_80A79824
/* 80A79800  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A79804  4B 6C BE F8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A79808  38 00 00 00 */	li r0, 0
/* 80A7980C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A79810  3C 60 80 A8 */	lis r3, lit_4115@ha
/* 80A79814  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)
/* 80A79818  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A7981C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A79820  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A79824:
/* 80A79824  38 00 00 00 */	li r0, 0
/* 80A79828  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A7982C  48 00 00 88 */	b lbl_80A798B4
lbl_80A79830:
/* 80A79830  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A79834  2C 00 00 01 */	cmpwi r0, 1
/* 80A79838  41 82 00 2C */	beq lbl_80A79864
/* 80A7983C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A79840  4B 6C BE BC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A79844  38 00 00 00 */	li r0, 0
/* 80A79848  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A7984C  3C 60 80 A8 */	lis r3, lit_4115@ha
/* 80A79850  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)
/* 80A79854  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A79858  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A7985C  38 00 00 01 */	li r0, 1
/* 80A79860  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A79864:
/* 80A79864  38 00 00 00 */	li r0, 0
/* 80A79868  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A7986C  88 1F 16 69 */	lbz r0, 0x1669(r31)
/* 80A79870  28 00 00 00 */	cmplwi r0, 0
/* 80A79874  41 82 00 24 */	beq lbl_80A79898
/* 80A79878  7F E3 FB 78 */	mr r3, r31
/* 80A7987C  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80A79880  38 A0 FF FF */	li r5, -1
/* 80A79884  38 C0 FF FF */	li r6, -1
/* 80A79888  38 E0 00 0F */	li r7, 0xf
/* 80A7988C  39 00 00 00 */	li r8, 0
/* 80A79890  4B 6D 1D B8 */	b step__8daNpcT_cFsiiii
/* 80A79894  48 00 00 20 */	b lbl_80A798B4
lbl_80A79898:
/* 80A79898  7F E3 FB 78 */	mr r3, r31
/* 80A7989C  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80A798A0  38 A0 00 15 */	li r5, 0x15
/* 80A798A4  38 C0 00 2C */	li r6, 0x2c
/* 80A798A8  38 E0 00 0F */	li r7, 0xf
/* 80A798AC  39 00 00 00 */	li r8, 0
/* 80A798B0  4B 6D 1D 98 */	b step__8daNpcT_cFsiiii
lbl_80A798B4:
/* 80A798B4  38 60 00 00 */	li r3, 0
/* 80A798B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A798BC  4B 8E 89 6C */	b _restgpr_29
/* 80A798C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A798C4  7C 08 03 A6 */	mtlr r0
/* 80A798C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A798CC  4E 80 00 20 */	blr 
