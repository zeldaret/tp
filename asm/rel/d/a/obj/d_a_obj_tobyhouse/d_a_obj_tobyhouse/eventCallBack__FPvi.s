lbl_80D15E98:
/* 80D15E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D15E9C  7C 08 02 A6 */	mflr r0
/* 80D15EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D15EA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D15EA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D15EAC  41 82 00 48 */	beq lbl_80D15EF4
/* 80D15EB0  48 00 13 11 */	bl sceneChange__16daObjTobyHouse_cFv
/* 80D15EB4  88 1F 05 E4 */	lbz r0, 0x5e4(r31)
/* 80D15EB8  28 00 00 00 */	cmplwi r0, 0
/* 80D15EBC  40 82 00 38 */	bne lbl_80D15EF4
/* 80D15EC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D15EC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D15EC8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80D15ECC  38 80 00 1F */	li r4, 0x1f
/* 80D15ED0  4B 35 9E C4 */	b StopQuake__12dVibration_cFi
/* 80D15ED4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D15ED8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D15EDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D15EE0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80D15EE4  38 80 00 1E */	li r4, 0x1e
/* 80D15EE8  4B 59 9F F4 */	b bgmStreamStop__8Z2SeqMgrFUl
/* 80D15EEC  38 00 00 01 */	li r0, 1
/* 80D15EF0  98 1F 05 E4 */	stb r0, 0x5e4(r31)
lbl_80D15EF4:
/* 80D15EF4  38 60 00 01 */	li r3, 1
/* 80D15EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D15EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D15F00  7C 08 03 A6 */	mtlr r0
/* 80D15F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D15F08  4E 80 00 20 */	blr 
