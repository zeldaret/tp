lbl_80D25038:
/* 80D25038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2503C  7C 08 02 A6 */	mflr r0
/* 80D25040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D25044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D25048  7C 7F 1B 78 */	mr r31, r3
/* 80D2504C  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 80D25050  48 00 1A D9 */	bl func_80D26B28
/* 80D25054  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D25058  40 82 00 0C */	bne lbl_80D25064
/* 80D2505C  7F E3 FB 78 */	mr r3, r31
/* 80D25060  48 00 01 DD */	bl setSmoke__14daObjVolcBom_cFv
lbl_80D25064:
/* 80D25064  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D25068  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D2506C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80D25070  28 00 00 00 */	cmplwi r0, 0
/* 80D25074  40 82 00 0C */	bne lbl_80D25080
/* 80D25078  7F E3 FB 78 */	mr r3, r31
/* 80D2507C  48 00 00 19 */	bl init_modeWait__14daObjVolcBom_cFv
lbl_80D25080:
/* 80D25080  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D25084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D25088  7C 08 03 A6 */	mtlr r0
/* 80D2508C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D25090  4E 80 00 20 */	blr 
