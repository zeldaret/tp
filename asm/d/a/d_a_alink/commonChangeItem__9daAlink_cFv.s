lbl_800BA6A0:
/* 800BA6A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BA6A4  7C 08 02 A6 */	mflr r0
/* 800BA6A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BA6AC  39 61 00 20 */	addi r11, r1, 0x20
/* 800BA6B0  48 2A 7B 29 */	bl _savegpr_28
/* 800BA6B4  7C 7E 1B 78 */	mr r30, r3
/* 800BA6B8  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800BA6BC  28 00 00 48 */	cmplwi r0, 0x48
/* 800BA6C0  40 82 00 30 */	bne lbl_800BA6F0
/* 800BA6C4  A0 1E 2F DE */	lhz r0, 0x2fde(r30)
/* 800BA6C8  28 00 00 FF */	cmplwi r0, 0xff
/* 800BA6CC  40 82 00 24 */	bne lbl_800BA6F0
/* 800BA6D0  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800BA6D4  28 00 00 00 */	cmplwi r0, 0
/* 800BA6D8  40 82 00 10 */	bne lbl_800BA6E8
/* 800BA6DC  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 800BA6E0  2C 00 00 00 */	cmpwi r0, 0
/* 800BA6E4  41 82 00 0C */	beq lbl_800BA6F0
lbl_800BA6E8:
/* 800BA6E8  7F C3 F3 78 */	mr r3, r30
/* 800BA6EC  48 05 61 55 */	bl offKandelaarModel__9daAlink_cFv
lbl_800BA6F0:
/* 800BA6F0  A0 7E 2F DC */	lhz r3, 0x2fdc(r30)
/* 800BA6F4  28 03 00 FF */	cmplwi r3, 0xff
/* 800BA6F8  40 82 00 10 */	bne lbl_800BA708
/* 800BA6FC  A0 1E 2F DE */	lhz r0, 0x2fde(r30)
/* 800BA700  28 00 01 03 */	cmplwi r0, 0x103
/* 800BA704  40 82 00 18 */	bne lbl_800BA71C
lbl_800BA708:
/* 800BA708  28 03 01 03 */	cmplwi r3, 0x103
/* 800BA70C  40 82 00 2C */	bne lbl_800BA738
/* 800BA710  A0 1E 2F DE */	lhz r0, 0x2fde(r30)
/* 800BA714  28 00 00 FF */	cmplwi r0, 0xff
/* 800BA718  41 82 00 20 */	beq lbl_800BA738
lbl_800BA71C:
/* 800BA71C  7F C3 F3 78 */	mr r3, r30
/* 800BA720  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002002D@ha */
/* 800BA724  38 84 00 2D */	addi r4, r4, 0x002D /* 0x0002002D@l */
/* 800BA728  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800BA72C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800BA730  7D 89 03 A6 */	mtctr r12
/* 800BA734  4E 80 04 21 */	bctrl 
lbl_800BA738:
/* 800BA738  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800BA73C  28 00 01 03 */	cmplwi r0, 0x103
/* 800BA740  40 82 00 3C */	bne lbl_800BA77C
/* 800BA744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800BA748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800BA74C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800BA750  28 00 00 3F */	cmplwi r0, 0x3f
/* 800BA754  40 82 00 18 */	bne lbl_800BA76C
/* 800BA758  7F C3 F3 78 */	mr r3, r30
/* 800BA75C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020057@ha */
/* 800BA760  38 84 00 57 */	addi r4, r4, 0x0057 /* 0x00020057@l */
/* 800BA764  48 00 49 89 */	bl seStartSwordCut__9daAlink_cFUl
/* 800BA768  48 00 00 14 */	b lbl_800BA77C
lbl_800BA76C:
/* 800BA76C  7F C3 F3 78 */	mr r3, r30
/* 800BA770  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020001@ha */
/* 800BA774  38 84 00 01 */	addi r4, r4, 0x0001 /* 0x00020001@l */
/* 800BA778  48 00 49 75 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800BA77C:
/* 800BA77C  7F C3 F3 78 */	mr r3, r30
/* 800BA780  48 01 67 19 */	bl checkSwordEquipAnime__9daAlink_cCFv
/* 800BA784  2C 03 00 00 */	cmpwi r3, 0
/* 800BA788  41 82 00 10 */	beq lbl_800BA798
/* 800BA78C  38 00 00 FF */	li r0, 0xff
/* 800BA790  98 1E 2F 96 */	stb r0, 0x2f96(r30)
/* 800BA794  98 1E 2F 97 */	stb r0, 0x2f97(r30)
lbl_800BA798:
/* 800BA798  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800BA79C  28 00 00 FF */	cmplwi r0, 0xff
/* 800BA7A0  41 82 00 1C */	beq lbl_800BA7BC
/* 800BA7A4  3B E0 00 01 */	li r31, 1
/* 800BA7A8  7F C3 F3 78 */	mr r3, r30
/* 800BA7AC  38 80 00 01 */	li r4, 1
/* 800BA7B0  38 A0 00 00 */	li r5, 0
/* 800BA7B4  48 00 6B 29 */	bl deleteEquipItem__9daAlink_cFii
/* 800BA7B8  48 00 00 08 */	b lbl_800BA7C0
lbl_800BA7BC:
/* 800BA7BC  3B E0 00 00 */	li r31, 0
lbl_800BA7C0:
/* 800BA7C0  A0 1E 2F DE */	lhz r0, 0x2fde(r30)
/* 800BA7C4  B0 1E 2F DC */	sth r0, 0x2fdc(r30)
/* 800BA7C8  38 00 00 FF */	li r0, 0xff
/* 800BA7CC  B0 1E 2F DE */	sth r0, 0x2fde(r30)
/* 800BA7D0  38 00 00 00 */	li r0, 0
/* 800BA7D4  88 7E 2F AA */	lbz r3, 0x2faa(r30)
/* 800BA7D8  28 03 00 01 */	cmplwi r3, 1
/* 800BA7DC  41 82 00 0C */	beq lbl_800BA7E8
/* 800BA7E0  28 03 00 02 */	cmplwi r3, 2
/* 800BA7E4  40 82 00 08 */	bne lbl_800BA7EC
lbl_800BA7E8:
/* 800BA7E8  38 00 00 01 */	li r0, 1
lbl_800BA7EC:
/* 800BA7EC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800BA7F0  41 82 00 18 */	beq lbl_800BA808
/* 800BA7F4  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 800BA7F8  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800BA7FC  38 80 00 00 */	li r4, 0
/* 800BA800  38 A0 00 23 */	li r5, 0x23
/* 800BA804  4B F5 50 45 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_800BA808:
/* 800BA808  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800BA80C  64 00 00 04 */	oris r0, r0, 4
/* 800BA810  90 1E 05 74 */	stw r0, 0x574(r30)
/* 800BA814  7F C3 F3 78 */	mr r3, r30
/* 800BA818  48 05 B4 09 */	bl checkEventRun__9daAlink_cCFv
/* 800BA81C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA820  40 82 00 88 */	bne lbl_800BA8A8
/* 800BA824  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800BA828  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800BA82C  40 82 00 7C */	bne lbl_800BA8A8
/* 800BA830  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800BA834  28 00 01 03 */	cmplwi r0, 0x103
/* 800BA838  40 82 00 10 */	bne lbl_800BA848
/* 800BA83C  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 800BA840  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 800BA844  40 82 00 64 */	bne lbl_800BA8A8
lbl_800BA848:
/* 800BA848  7F C3 F3 78 */	mr r3, r30
/* 800BA84C  48 03 95 0D */	bl checkFishingRodAndLureItem__9daAlink_cCFv
/* 800BA850  2C 03 00 00 */	cmpwi r3, 0
/* 800BA854  40 82 00 54 */	bne lbl_800BA8A8
/* 800BA858  83 BE 27 E0 */	lwz r29, 0x27e0(r30)
/* 800BA85C  3B 80 00 01 */	li r28, 1
/* 800BA860  7F A3 EB 78 */	mr r3, r29
/* 800BA864  4B FB 8F 81 */	bl LockonTruth__12dAttention_cFv
/* 800BA868  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA86C  40 82 00 14 */	bne lbl_800BA880
/* 800BA870  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 800BA874  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800BA878  40 82 00 08 */	bne lbl_800BA880
/* 800BA87C  3B 80 00 00 */	li r28, 0
lbl_800BA880:
/* 800BA880  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800BA884  40 82 00 18 */	bne lbl_800BA89C
/* 800BA888  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800BA88C  28 00 01 03 */	cmplwi r0, 0x103
/* 800BA890  40 82 00 0C */	bne lbl_800BA89C
/* 800BA894  2C 1F 00 00 */	cmpwi r31, 0
/* 800BA898  41 82 00 10 */	beq lbl_800BA8A8
lbl_800BA89C:
/* 800BA89C  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800BA8A0  60 00 00 80 */	ori r0, r0, 0x80
/* 800BA8A4  90 1E 05 80 */	stw r0, 0x580(r30)
lbl_800BA8A8:
/* 800BA8A8  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800BA8AC  28 00 01 03 */	cmplwi r0, 0x103
/* 800BA8B0  40 82 00 44 */	bne lbl_800BA8F4
/* 800BA8B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800BA8B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800BA8BC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800BA8C0  28 00 00 3F */	cmplwi r0, 0x3f
/* 800BA8C4  40 82 00 18 */	bne lbl_800BA8DC
/* 800BA8C8  7F C3 F3 78 */	mr r3, r30
/* 800BA8CC  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020057@ha */
/* 800BA8D0  38 84 00 57 */	addi r4, r4, 0x0057 /* 0x00020057@l */
/* 800BA8D4  48 00 48 19 */	bl seStartSwordCut__9daAlink_cFUl
/* 800BA8D8  48 00 00 10 */	b lbl_800BA8E8
lbl_800BA8DC:
/* 800BA8DC  7F C3 F3 78 */	mr r3, r30
/* 800BA8E0  3C 80 00 02 */	lis r4, 2
/* 800BA8E4  48 00 48 09 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800BA8E8:
/* 800BA8E8  7F C3 F3 78 */	mr r3, r30
/* 800BA8EC  48 01 69 7D */	bl setSwordModel__9daAlink_cFv
/* 800BA8F0  48 00 00 0C */	b lbl_800BA8FC
lbl_800BA8F4:
/* 800BA8F4  7F C3 F3 78 */	mr r3, r30
/* 800BA8F8  48 00 54 7D */	bl makeItemType__9daAlink_cFv
lbl_800BA8FC:
/* 800BA8FC  39 61 00 20 */	addi r11, r1, 0x20
/* 800BA900  48 2A 79 25 */	bl _restgpr_28
/* 800BA904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BA908  7C 08 03 A6 */	mtlr r0
/* 800BA90C  38 21 00 20 */	addi r1, r1, 0x20
/* 800BA910  4E 80 00 20 */	blr 
