lbl_80CF86D8:
/* 80CF86D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF86DC  7C 08 02 A6 */	mflr r0
/* 80CF86E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF86E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF86E8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF86EC  7C 7E 1B 78 */	mr r30, r3
/* 80CF86F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF86F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF86F8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80CF86FC  7F E3 FB 78 */	mr r3, r31
/* 80CF8700  7F C4 F3 78 */	mr r4, r30
/* 80CF8704  4B 37 BF 5C */	b ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 80CF8708  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CF870C  41 82 00 40 */	beq lbl_80CF874C
/* 80CF8710  7F E3 FB 78 */	mr r3, r31
/* 80CF8714  7F C4 F3 78 */	mr r4, r30
/* 80CF8718  4B 37 C4 28 */	b ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo
/* 80CF871C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CF8720  41 82 00 2C */	beq lbl_80CF874C
/* 80CF8724  7F E3 FB 78 */	mr r3, r31
/* 80CF8728  A0 9E 00 02 */	lhz r4, 2(r30)
/* 80CF872C  4B 37 BE EC */	b GetActorPointer__4cBgSCFi
/* 80CF8730  28 03 00 00 */	cmplwi r3, 0
/* 80CF8734  41 82 00 18 */	beq lbl_80CF874C
/* 80CF8738  7F E3 FB 78 */	mr r3, r31
/* 80CF873C  A0 9E 00 02 */	lhz r4, 2(r30)
/* 80CF8740  4B 37 BE D8 */	b GetActorPointer__4cBgSCFi
/* 80CF8744  A8 63 00 08 */	lha r3, 8(r3)
/* 80CF8748  48 00 00 08 */	b lbl_80CF8750
lbl_80CF874C:
/* 80CF874C  38 60 01 6F */	li r3, 0x16f
lbl_80CF8750:
/* 80CF8750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF8754  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF8758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF875C  7C 08 03 A6 */	mtlr r0
/* 80CF8760  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF8764  4E 80 00 20 */	blr 
