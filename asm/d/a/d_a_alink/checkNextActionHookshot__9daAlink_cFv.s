lbl_801095C8:
/* 801095C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801095CC  7C 08 02 A6 */	mflr r0
/* 801095D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801095D4  39 61 00 20 */	addi r11, r1, 0x20
/* 801095D8  48 25 8C 05 */	bl _savegpr_29
/* 801095DC  7C 7F 1B 78 */	mr r31, r3
/* 801095E0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 801095E4  28 00 00 C8 */	cmplwi r0, 0xc8
/* 801095E8  41 82 00 0C */	beq lbl_801095F4
/* 801095EC  28 00 00 CB */	cmplwi r0, 0xcb
/* 801095F0  40 82 00 0C */	bne lbl_801095FC
lbl_801095F4:
/* 801095F4  38 60 00 00 */	li r3, 0
/* 801095F8  48 00 01 90 */	b lbl_80109788
lbl_801095FC:
/* 801095FC  A8 1F 30 8E */	lha r0, 0x308e(r31)
/* 80109600  2C 00 00 00 */	cmpwi r0, 0
/* 80109604  41 82 00 1C */	beq lbl_80109620
/* 80109608  4B FF F4 11 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010960C  2C 03 00 00 */	cmpwi r3, 0
/* 80109610  41 82 00 10 */	beq lbl_80109620
/* 80109614  A8 7F 30 8E */	lha r3, 0x308e(r31)
/* 80109618  38 03 FF FF */	addi r0, r3, -1
/* 8010961C  B0 1F 30 8E */	sth r0, 0x308e(r31)
lbl_80109620:
/* 80109620  38 60 00 00 */	li r3, 0
/* 80109624  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 80109628  28 00 01 8D */	cmplwi r0, 0x18d
/* 8010962C  41 82 00 10 */	beq lbl_8010963C
/* 80109630  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80109634  28 00 01 8C */	cmplwi r0, 0x18c
/* 80109638  40 82 00 08 */	bne lbl_80109640
lbl_8010963C:
/* 8010963C  38 60 00 01 */	li r3, 1
lbl_80109640:
/* 80109640  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80109644  40 82 00 4C */	bne lbl_80109690
/* 80109648  7F E3 FB 78 */	mr r3, r31
/* 8010964C  4B FF FB 99 */	bl setHookshotReadyAnime__9daAlink_cFv
/* 80109650  7F E3 FB 78 */	mr r3, r31
/* 80109654  4B FA DB 15 */	bl setFastShotTimer__9daAlink_cFv
/* 80109658  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 8010965C  3B A0 00 01 */	li r29, 1
/* 80109660  7F C3 F3 78 */	mr r3, r30
/* 80109664  4B F6 A1 81 */	bl LockonTruth__12dAttention_cFv
/* 80109668  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010966C  40 82 00 14 */	bne lbl_80109680
/* 80109670  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 80109674  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80109678  40 82 00 08 */	bne lbl_80109680
/* 8010967C  3B A0 00 00 */	li r29, 0
lbl_80109680:
/* 80109680  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80109684  40 82 00 0C */	bne lbl_80109690
/* 80109688  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8010968C  B0 1F 2F E4 */	sth r0, 0x2fe4(r31)
lbl_80109690:
/* 80109690  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 80109694  3B A0 00 01 */	li r29, 1
/* 80109698  7F C3 F3 78 */	mr r3, r30
/* 8010969C  4B F6 A1 49 */	bl LockonTruth__12dAttention_cFv
/* 801096A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801096A4  40 82 00 14 */	bne lbl_801096B8
/* 801096A8  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 801096AC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 801096B0  40 82 00 08 */	bne lbl_801096B8
/* 801096B4  3B A0 00 00 */	li r29, 0
lbl_801096B8:
/* 801096B8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801096BC  40 82 00 70 */	bne lbl_8010972C
/* 801096C0  A8 1F 30 8E */	lha r0, 0x308e(r31)
/* 801096C4  2C 00 00 00 */	cmpwi r0, 0
/* 801096C8  40 82 00 64 */	bne lbl_8010972C
/* 801096CC  80 7F 31 A0 */	lwz r3, 0x31a0(r31)
/* 801096D0  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 801096D4  41 82 00 38 */	beq lbl_8010970C
/* 801096D8  7F E3 FB 78 */	mr r3, r31
/* 801096DC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 801096E0  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 801096E4  7D 89 03 A6 */	mtctr r12
/* 801096E8  4E 80 04 21 */	bctrl 
/* 801096EC  28 03 00 00 */	cmplwi r3, 0
/* 801096F0  41 82 00 10 */	beq lbl_80109700
/* 801096F4  7F E3 FB 78 */	mr r3, r31
/* 801096F8  4B FE DB 11 */	bl procCanoeHookshotSubjectInit__9daAlink_cFv
/* 801096FC  48 00 00 8C */	b lbl_80109788
lbl_80109700:
/* 80109700  7F E3 FB 78 */	mr r3, r31
/* 80109704  4B FE 8F F1 */	bl procHorseHookshotSubjectInit__9daAlink_cFv
/* 80109708  48 00 00 80 */	b lbl_80109788
lbl_8010970C:
/* 8010970C  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 80109710  41 82 00 10 */	beq lbl_80109720
/* 80109714  7F E3 FB 78 */	mr r3, r31
/* 80109718  4B FF B5 39 */	bl procSwimHookshotSubjectInit__9daAlink_cFv
/* 8010971C  48 00 00 6C */	b lbl_80109788
lbl_80109720:
/* 80109720  7F E3 FB 78 */	mr r3, r31
/* 80109724  48 00 23 85 */	bl procHookshotSubjectInit__9daAlink_cFv
/* 80109728  48 00 00 60 */	b lbl_80109788
lbl_8010972C:
/* 8010972C  80 7F 31 A0 */	lwz r3, 0x31a0(r31)
/* 80109730  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 80109734  41 82 00 38 */	beq lbl_8010976C
/* 80109738  7F E3 FB 78 */	mr r3, r31
/* 8010973C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80109740  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 80109744  7D 89 03 A6 */	mtctr r12
/* 80109748  4E 80 04 21 */	bctrl 
/* 8010974C  28 03 00 00 */	cmplwi r3, 0
/* 80109750  41 82 00 10 */	beq lbl_80109760
/* 80109754  7F E3 FB 78 */	mr r3, r31
/* 80109758  4B FE DB C5 */	bl procCanoeHookshotMoveInit__9daAlink_cFv
/* 8010975C  48 00 00 2C */	b lbl_80109788
lbl_80109760:
/* 80109760  7F E3 FB 78 */	mr r3, r31
/* 80109764  4B FE 90 C1 */	bl procHorseHookshotMoveInit__9daAlink_cFv
/* 80109768  48 00 00 20 */	b lbl_80109788
lbl_8010976C:
/* 8010976C  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 80109770  41 82 00 10 */	beq lbl_80109780
/* 80109774  7F E3 FB 78 */	mr r3, r31
/* 80109778  4B FF B7 41 */	bl procSwimHookshotMoveInit__9daAlink_cFv
/* 8010977C  48 00 00 0C */	b lbl_80109788
lbl_80109780:
/* 80109780  7F E3 FB 78 */	mr r3, r31
/* 80109784  48 00 24 85 */	bl procHookshotMoveInit__9daAlink_cFv
lbl_80109788:
/* 80109788  39 61 00 20 */	addi r11, r1, 0x20
/* 8010978C  48 25 8A 9D */	bl _restgpr_29
/* 80109790  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80109794  7C 08 03 A6 */	mtlr r0
/* 80109798  38 21 00 20 */	addi r1, r1, 0x20
/* 8010979C  4E 80 00 20 */	blr 
