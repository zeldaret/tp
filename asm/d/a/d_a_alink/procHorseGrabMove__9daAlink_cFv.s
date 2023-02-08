lbl_800F2390:
/* 800F2390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2394  7C 08 02 A6 */	mflr r0
/* 800F2398  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F239C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F23A0  7C 7F 1B 78 */	mr r31, r3
/* 800F23A4  4B FF B6 81 */	bl setSyncRidePos__9daAlink_cFv
/* 800F23A8  2C 03 00 00 */	cmpwi r3, 0
/* 800F23AC  40 82 00 0C */	bne lbl_800F23B8
/* 800F23B0  38 60 00 01 */	li r3, 1
/* 800F23B4  48 00 00 8C */	b lbl_800F2440
lbl_800F23B8:
/* 800F23B8  7F E3 FB 78 */	mr r3, r31
/* 800F23BC  4B FF B9 B1 */	bl checkHorseSpecialProc__9daAlink_cFv
/* 800F23C0  2C 03 00 00 */	cmpwi r3, 0
/* 800F23C4  41 82 00 0C */	beq lbl_800F23D0
/* 800F23C8  38 60 00 01 */	li r3, 1
/* 800F23CC  48 00 00 74 */	b lbl_800F2440
lbl_800F23D0:
/* 800F23D0  80 1F 28 30 */	lwz r0, 0x2830(r31)
/* 800F23D4  28 00 00 00 */	cmplwi r0, 0
/* 800F23D8  40 82 00 24 */	bne lbl_800F23FC
/* 800F23DC  7F E3 FB 78 */	mr r3, r31
/* 800F23E0  4B FF 18 8D */	bl checkGrabAnime__9daAlink_cCFv
/* 800F23E4  2C 03 00 00 */	cmpwi r3, 0
/* 800F23E8  41 82 00 14 */	beq lbl_800F23FC
/* 800F23EC  7F E3 FB 78 */	mr r3, r31
/* 800F23F0  38 80 00 02 */	li r4, 2
/* 800F23F4  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800F23F8  4B FB B3 2D */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800F23FC:
/* 800F23FC  7F E3 FB 78 */	mr r3, r31
/* 800F2400  4B FF C9 99 */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2404  7F E3 FB 78 */	mr r3, r31
/* 800F2408  4B FF 18 15 */	bl checkGrabThrowAnime__9daAlink_cCFv
/* 800F240C  2C 03 00 00 */	cmpwi r3, 0
/* 800F2410  41 82 00 24 */	beq lbl_800F2434
/* 800F2414  7F E3 FB 78 */	mr r3, r31
/* 800F2418  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800F241C  4B FF 33 91 */	bl checkUpperGrabItemThrow__9daAlink_cFf
/* 800F2420  2C 03 00 00 */	cmpwi r3, 0
/* 800F2424  41 82 00 18 */	beq lbl_800F243C
/* 800F2428  7F E3 FB 78 */	mr r3, r31
/* 800F242C  4B FF E5 55 */	bl procHorseWaitInit__9daAlink_cFv
/* 800F2430  48 00 00 0C */	b lbl_800F243C
lbl_800F2434:
/* 800F2434  7F E3 FB 78 */	mr r3, r31
/* 800F2438  4B FF D0 19 */	bl checkNextActionHorse__9daAlink_cFv
lbl_800F243C:
/* 800F243C  38 60 00 01 */	li r3, 1
lbl_800F2440:
/* 800F2440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2448  7C 08 03 A6 */	mtlr r0
/* 800F244C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2450  4E 80 00 20 */	blr 
