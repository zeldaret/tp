lbl_800F24C8:
/* 800F24C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F24CC  7C 08 02 A6 */	mflr r0
/* 800F24D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F24D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F24D8  7C 7F 1B 78 */	mr r31, r3
/* 800F24DC  4B FC 4E 09 */	bl checkItemActorPointer__9daAlink_cFv
/* 800F24E0  2C 03 00 00 */	cmpwi r3, 0
/* 800F24E4  40 82 00 0C */	bne lbl_800F24F0
/* 800F24E8  38 60 00 01 */	li r3, 1
/* 800F24EC  48 00 00 B4 */	b lbl_800F25A0
lbl_800F24F0:
/* 800F24F0  38 60 00 00 */	li r3, 0
/* 800F24F4  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800F24F8  28 00 00 40 */	cmplwi r0, 0x40
/* 800F24FC  41 82 00 0C */	beq lbl_800F2508
/* 800F2500  28 00 01 02 */	cmplwi r0, 0x102
/* 800F2504  40 82 00 14 */	bne lbl_800F2518
lbl_800F2508:
/* 800F2508  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800F250C  28 00 00 54 */	cmplwi r0, 0x54
/* 800F2510  40 82 00 08 */	bne lbl_800F2518
/* 800F2514  38 60 00 01 */	li r3, 1
lbl_800F2518:
/* 800F2518  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F251C  41 82 00 10 */	beq lbl_800F252C
/* 800F2520  7F E3 FB 78 */	mr r3, r31
/* 800F2524  38 80 00 12 */	li r4, 0x12
/* 800F2528  4B FC 0D 29 */	bl setDoStatus__9daAlink_cFUc
lbl_800F252C:
/* 800F252C  7F E3 FB 78 */	mr r3, r31
/* 800F2530  4B FF B4 F5 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2534  2C 03 00 00 */	cmpwi r3, 0
/* 800F2538  40 82 00 0C */	bne lbl_800F2544
/* 800F253C  38 60 00 01 */	li r3, 1
/* 800F2540  48 00 00 60 */	b lbl_800F25A0
lbl_800F2544:
/* 800F2544  7F E3 FB 78 */	mr r3, r31
/* 800F2548  4B FF B8 25 */	bl checkHorseSpecialProc__9daAlink_cFv
/* 800F254C  2C 03 00 00 */	cmpwi r3, 0
/* 800F2550  41 82 00 0C */	beq lbl_800F255C
/* 800F2554  38 60 00 01 */	li r3, 1
/* 800F2558  48 00 00 48 */	b lbl_800F25A0
lbl_800F255C:
/* 800F255C  7F E3 FB 78 */	mr r3, r31
/* 800F2560  4B FF C8 39 */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2564  7F E3 FB 78 */	mr r3, r31
/* 800F2568  4B FF CE E9 */	bl checkNextActionHorse__9daAlink_cFv
/* 800F256C  2C 03 00 00 */	cmpwi r3, 0
/* 800F2570  40 82 00 24 */	bne lbl_800F2594
/* 800F2574  7F E3 FB 78 */	mr r3, r31
/* 800F2578  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 800F257C  4B FF C9 B5 */	bl setRideSubjectAngle__9daAlink_cFs
/* 800F2580  2C 03 00 00 */	cmpwi r3, 0
/* 800F2584  41 82 00 18 */	beq lbl_800F259C
/* 800F2588  7F E3 FB 78 */	mr r3, r31
/* 800F258C  4B FE E8 D9 */	bl setBoomerangSight__9daAlink_cFv
/* 800F2590  48 00 00 0C */	b lbl_800F259C
lbl_800F2594:
/* 800F2594  38 00 00 00 */	li r0, 0
/* 800F2598  98 1F 20 68 */	stb r0, 0x2068(r31)
lbl_800F259C:
/* 800F259C  38 60 00 01 */	li r3, 1
lbl_800F25A0:
/* 800F25A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F25A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F25A8  7C 08 03 A6 */	mtlr r0
/* 800F25AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F25B0  4E 80 00 20 */	blr 
