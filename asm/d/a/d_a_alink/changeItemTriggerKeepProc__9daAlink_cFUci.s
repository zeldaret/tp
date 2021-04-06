lbl_800C077C:
/* 800C077C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C0780  7C 08 02 A6 */	mflr r0
/* 800C0784  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C0788  39 61 00 20 */	addi r11, r1, 0x20
/* 800C078C  48 2A 1A 4D */	bl _savegpr_28
/* 800C0790  7C 7C 1B 78 */	mr r28, r3
/* 800C0794  7C 9D 23 78 */	mr r29, r4
/* 800C0798  7C BE 2B 78 */	mr r30, r5
/* 800C079C  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800C07A0  4B F6 D7 7D */	bl dComIfGp_getSelectItem__Fi
/* 800C07A4  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 800C07A8  9B BC 2F 9C */	stb r29, 0x2f9c(r28)
/* 800C07AC  2C 1E 00 0F */	cmpwi r30, 0xf
/* 800C07B0  40 82 00 24 */	bne lbl_800C07D4
/* 800C07B4  7F 83 E3 78 */	mr r3, r28
/* 800C07B8  38 80 00 03 */	li r4, 3
/* 800C07BC  38 A0 FF FF */	li r5, -1
/* 800C07C0  38 C0 00 00 */	li r6, 0
/* 800C07C4  38 E0 00 00 */	li r7, 0
/* 800C07C8  39 00 00 00 */	li r8, 0
/* 800C07CC  48 05 12 D1 */	bl procGrassWhistleWaitInit__9daAlink_cFiiisP4cXyz
/* 800C07D0  48 00 02 B0 */	b lbl_800C0A80
lbl_800C07D4:
/* 800C07D4  2C 1E 00 03 */	cmpwi r30, 3
/* 800C07D8  40 82 00 74 */	bne lbl_800C084C
/* 800C07DC  38 00 00 00 */	li r0, 0
/* 800C07E0  88 7C 2F AA */	lbz r3, 0x2faa(r28)
/* 800C07E4  28 03 00 01 */	cmplwi r3, 1
/* 800C07E8  41 82 00 0C */	beq lbl_800C07F4
/* 800C07EC  28 03 00 02 */	cmplwi r3, 2
/* 800C07F0  40 82 00 08 */	bne lbl_800C07F8
lbl_800C07F4:
/* 800C07F4  38 00 00 01 */	li r0, 1
lbl_800C07F8:
/* 800C07F8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800C07FC  41 82 00 14 */	beq lbl_800C0810
/* 800C0800  7F 83 E3 78 */	mr r3, r28
/* 800C0804  7F E4 FB 78 */	mr r4, r31
/* 800C0808  48 03 21 2D */	bl procHorseBottleDrinkInit__9daAlink_cFUs
/* 800C080C  48 00 02 74 */	b lbl_800C0A80
lbl_800C0810:
/* 800C0810  7F 83 E3 78 */	mr r3, r28
/* 800C0814  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800C0818  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800C081C  7D 89 03 A6 */	mtctr r12
/* 800C0820  4E 80 04 21 */	bctrl 
/* 800C0824  28 03 00 00 */	cmplwi r3, 0
/* 800C0828  41 82 00 14 */	beq lbl_800C083C
/* 800C082C  7F 83 E3 78 */	mr r3, r28
/* 800C0830  7F E4 FB 78 */	mr r4, r31
/* 800C0834  48 03 6B D1 */	bl procCanoeBottleDrinkInit__9daAlink_cFUs
/* 800C0838  48 00 02 48 */	b lbl_800C0A80
lbl_800C083C:
/* 800C083C  7F 83 E3 78 */	mr r3, r28
/* 800C0840  7F E4 FB 78 */	mr r4, r31
/* 800C0844  48 04 ED 09 */	bl procBottleDrinkInit__9daAlink_cFUs
/* 800C0848  48 00 02 38 */	b lbl_800C0A80
lbl_800C084C:
/* 800C084C  2C 1E 00 08 */	cmpwi r30, 8
/* 800C0850  40 82 00 68 */	bne lbl_800C08B8
/* 800C0854  38 00 00 00 */	li r0, 0
/* 800C0858  88 7C 2F AA */	lbz r3, 0x2faa(r28)
/* 800C085C  28 03 00 01 */	cmplwi r3, 1
/* 800C0860  41 82 00 0C */	beq lbl_800C086C
/* 800C0864  28 03 00 02 */	cmplwi r3, 2
/* 800C0868  40 82 00 08 */	bne lbl_800C0870
lbl_800C086C:
/* 800C086C  38 00 00 01 */	li r0, 1
lbl_800C0870:
/* 800C0870  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800C0874  41 82 00 10 */	beq lbl_800C0884
/* 800C0878  7F 83 E3 78 */	mr r3, r28
/* 800C087C  48 03 22 D1 */	bl procHorseKandelaarPourInit__9daAlink_cFv
/* 800C0880  48 00 02 00 */	b lbl_800C0A80
lbl_800C0884:
/* 800C0884  7F 83 E3 78 */	mr r3, r28
/* 800C0888  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800C088C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800C0890  7D 89 03 A6 */	mtctr r12
/* 800C0894  4E 80 04 21 */	bctrl 
/* 800C0898  28 03 00 00 */	cmplwi r3, 0
/* 800C089C  41 82 00 10 */	beq lbl_800C08AC
/* 800C08A0  7F 83 E3 78 */	mr r3, r28
/* 800C08A4  48 03 6D 19 */	bl procCanoeKandelaarPourInit__9daAlink_cFv
/* 800C08A8  48 00 01 D8 */	b lbl_800C0A80
lbl_800C08AC:
/* 800C08AC  7F 83 E3 78 */	mr r3, r28
/* 800C08B0  48 05 0D CD */	bl procKandelaarPourInit__9daAlink_cFv
/* 800C08B4  48 00 01 CC */	b lbl_800C0A80
lbl_800C08B8:
/* 800C08B8  2C 1E 00 07 */	cmpwi r30, 7
/* 800C08BC  40 82 00 10 */	bne lbl_800C08CC
/* 800C08C0  7F 83 E3 78 */	mr r3, r28
/* 800C08C4  48 03 70 C5 */	bl procFishingFoodInit__9daAlink_cFv
/* 800C08C8  48 00 01 B8 */	b lbl_800C0A80
lbl_800C08CC:
/* 800C08CC  2C 1E 00 01 */	cmpwi r30, 1
/* 800C08D0  40 82 00 10 */	bne lbl_800C08E0
/* 800C08D4  7F 83 E3 78 */	mr r3, r28
/* 800C08D8  48 02 27 71 */	bl procBootsEquipInit__9daAlink_cFv
/* 800C08DC  48 00 01 A4 */	b lbl_800C0A80
lbl_800C08E0:
/* 800C08E0  2C 1E 00 02 */	cmpwi r30, 2
/* 800C08E4  40 82 00 14 */	bne lbl_800C08F8
/* 800C08E8  7F 83 E3 78 */	mr r3, r28
/* 800C08EC  38 80 00 01 */	li r4, 1
/* 800C08F0  48 02 1C 91 */	bl setHeavyBoots__9daAlink_cFi
/* 800C08F4  48 00 01 8C */	b lbl_800C0A80
lbl_800C08F8:
/* 800C08F8  2C 1E 00 04 */	cmpwi r30, 4
/* 800C08FC  40 82 00 10 */	bne lbl_800C090C
/* 800C0900  7F 83 E3 78 */	mr r3, r28
/* 800C0904  48 04 D3 61 */	bl procSpinnerReadyInit__9daAlink_cFv
/* 800C0908  48 00 01 78 */	b lbl_800C0A80
lbl_800C090C:
/* 800C090C  2C 1E 00 05 */	cmpwi r30, 5
/* 800C0910  40 82 00 10 */	bne lbl_800C0920
/* 800C0914  7F 83 E3 78 */	mr r3, r28
/* 800C0918  48 05 E5 7D */	bl procDungeonWarpReadyInit__9daAlink_cFv
/* 800C091C  48 00 01 64 */	b lbl_800C0A80
lbl_800C0920:
/* 800C0920  2C 1E 00 06 */	cmpwi r30, 6
/* 800C0924  40 82 00 14 */	bne lbl_800C0938
/* 800C0928  7F 83 E3 78 */	mr r3, r28
/* 800C092C  7F E4 FB 78 */	mr r4, r31
/* 800C0930  48 04 ED C5 */	bl procBottleOpenInit__9daAlink_cFUs
/* 800C0934  48 00 01 4C */	b lbl_800C0A80
lbl_800C0938:
/* 800C0938  2C 1E 00 0D */	cmpwi r30, 0xd
/* 800C093C  40 82 00 18 */	bne lbl_800C0954
/* 800C0940  7F 83 E3 78 */	mr r3, r28
/* 800C0944  38 80 00 00 */	li r4, 0
/* 800C0948  38 A0 00 00 */	li r5, 0
/* 800C094C  48 04 F2 ED */	bl procBottleSwingInit__9daAlink_cFP10fopAc_ac_ci
/* 800C0950  48 00 01 30 */	b lbl_800C0A80
lbl_800C0954:
/* 800C0954  2C 1E 00 0E */	cmpwi r30, 0xe
/* 800C0958  40 82 00 14 */	bne lbl_800C096C
/* 800C095C  7F 83 E3 78 */	mr r3, r28
/* 800C0960  7F E4 FB 78 */	mr r4, r31
/* 800C0964  48 05 DA E5 */	bl procNotUseItemInit__9daAlink_cFi
/* 800C0968  48 00 01 18 */	b lbl_800C0A80
lbl_800C096C:
/* 800C096C  2C 1E 00 09 */	cmpwi r30, 9
/* 800C0970  40 82 00 5C */	bne lbl_800C09CC
/* 800C0974  7F 83 E3 78 */	mr r3, r28
/* 800C0978  48 00 E4 0D */	bl procCoSubjectivityInit__9daAlink_cFv
/* 800C097C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C0980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C0984  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800C0988  64 00 00 20 */	oris r0, r0, 0x20
/* 800C098C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800C0990  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200B5@ha */
/* 800C0994  38 03 00 B5 */	addi r0, r3, 0x00B5 /* 0x000200B5@l */
/* 800C0998  90 01 00 08 */	stw r0, 8(r1)
/* 800C099C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800C09A0  38 81 00 08 */	addi r4, r1, 8
/* 800C09A4  38 A0 00 00 */	li r5, 0
/* 800C09A8  38 C0 00 00 */	li r6, 0
/* 800C09AC  38 E0 00 00 */	li r7, 0
/* 800C09B0  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800C09B4  FC 40 08 90 */	fmr f2, f1
/* 800C09B8  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800C09BC  FC 80 18 90 */	fmr f4, f3
/* 800C09C0  39 00 00 00 */	li r8, 0
/* 800C09C4  48 1E AF C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 800C09C8  48 00 00 B8 */	b lbl_800C0A80
lbl_800C09CC:
/* 800C09CC  2C 1E 00 0A */	cmpwi r30, 0xa
/* 800C09D0  40 82 00 14 */	bne lbl_800C09E4
/* 800C09D4  7F 83 E3 78 */	mr r3, r28
/* 800C09D8  38 80 00 01 */	li r4, 1
/* 800C09DC  48 02 6C 11 */	bl procPickPutInit__9daAlink_cFi
/* 800C09E0  48 00 00 A0 */	b lbl_800C0A80
lbl_800C09E4:
/* 800C09E4  2C 1E 00 0B */	cmpwi r30, 0xb
/* 800C09E8  40 82 00 10 */	bne lbl_800C09F8
/* 800C09EC  7F 83 E3 78 */	mr r3, r28
/* 800C09F0  48 04 FE 51 */	bl offKandelaarModel__9daAlink_cFv
/* 800C09F4  48 00 00 8C */	b lbl_800C0A80
lbl_800C09F8:
/* 800C09F8  2C 1E 00 0C */	cmpwi r30, 0xc
/* 800C09FC  40 82 00 84 */	bne lbl_800C0A80
/* 800C0A00  38 00 00 FF */	li r0, 0xff
/* 800C0A04  B0 1C 2F DE */	sth r0, 0x2fde(r28)
/* 800C0A08  7F 83 E3 78 */	mr r3, r28
/* 800C0A0C  7F E4 FB 78 */	mr r4, r31
/* 800C0A10  4B FF 8C 31 */	bl itemEquip__9daAlink_cFUs
/* 800C0A14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C0A18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C0A1C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800C0A20  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800C0A24  41 82 00 5C */	beq lbl_800C0A80
/* 800C0A28  7F 83 E3 78 */	mr r3, r28
/* 800C0A2C  A0 9C 2F DE */	lhz r4, 0x2fde(r28)
/* 800C0A30  48 01 DD 51 */	bl checkBowAndSlingItem__9daAlink_cFi
/* 800C0A34  2C 03 00 00 */	cmpwi r3, 0
/* 800C0A38  40 82 00 28 */	bne lbl_800C0A60
/* 800C0A3C  A0 7C 2F DE */	lhz r3, 0x2fde(r28)
/* 800C0A40  48 09 E1 79 */	bl checkHookshotItem__9daPy_py_cFi
/* 800C0A44  2C 03 00 00 */	cmpwi r3, 0
/* 800C0A48  40 82 00 18 */	bne lbl_800C0A60
/* 800C0A4C  A0 1C 2F DE */	lhz r0, 0x2fde(r28)
/* 800C0A50  28 00 00 46 */	cmplwi r0, 0x46
/* 800C0A54  41 82 00 0C */	beq lbl_800C0A60
/* 800C0A58  28 00 00 40 */	cmplwi r0, 0x40
/* 800C0A5C  40 82 00 24 */	bne lbl_800C0A80
lbl_800C0A60:
/* 800C0A60  7F 83 E3 78 */	mr r3, r28
/* 800C0A64  4B FF 9C 3D */	bl commonChangeItem__9daAlink_cFv
/* 800C0A68  7F 83 E3 78 */	mr r3, r28
/* 800C0A6C  38 80 00 02 */	li r4, 2
/* 800C0A70  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C0A74  4B FE CC B1 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800C0A78  7F 83 E3 78 */	mr r3, r28
/* 800C0A7C  4B FF 64 AD */	bl checkItemActionInitStart__9daAlink_cFv
lbl_800C0A80:
/* 800C0A80  38 60 00 01 */	li r3, 1
/* 800C0A84  39 61 00 20 */	addi r11, r1, 0x20
/* 800C0A88  48 2A 17 9D */	bl _restgpr_28
/* 800C0A8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C0A90  7C 08 03 A6 */	mtlr r0
/* 800C0A94  38 21 00 20 */	addi r1, r1, 0x20
/* 800C0A98  4E 80 00 20 */	blr 
