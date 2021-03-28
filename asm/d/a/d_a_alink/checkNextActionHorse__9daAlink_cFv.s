lbl_800EF450:
/* 800EF450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EF454  7C 08 02 A6 */	mflr r0
/* 800EF458  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EF45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EF460  7C 7F 1B 78 */	mr r31, r3
/* 800EF464  4B FF 48 39 */	bl checkGrabAnimeAndThrow__9daAlink_cCFv
/* 800EF468  2C 03 00 00 */	cmpwi r3, 0
/* 800EF46C  41 82 00 10 */	beq lbl_800EF47C
/* 800EF470  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800EF474  28 00 00 47 */	cmplwi r0, 0x47
/* 800EF478  40 82 00 1C */	bne lbl_800EF494
lbl_800EF47C:
/* 800EF47C  7F E3 FB 78 */	mr r3, r31
/* 800EF480  4B FC A8 AD */	bl checkNextActionFromButton__9daAlink_cFv
/* 800EF484  2C 03 00 00 */	cmpwi r3, 0
/* 800EF488  41 82 00 0C */	beq lbl_800EF494
/* 800EF48C  38 60 00 01 */	li r3, 1
/* 800EF490  48 00 00 F4 */	b lbl_800EF584
lbl_800EF494:
/* 800EF494  7F E3 FB 78 */	mr r3, r31
/* 800EF498  4B FE F5 51 */	bl checkBowAnime__9daAlink_cCFv
/* 800EF49C  2C 03 00 00 */	cmpwi r3, 0
/* 800EF4A0  41 82 00 10 */	beq lbl_800EF4B0
/* 800EF4A4  7F E3 FB 78 */	mr r3, r31
/* 800EF4A8  4B FF 03 6D */	bl checkNextActionBow__9daAlink_cFv
/* 800EF4AC  48 00 00 D8 */	b lbl_800EF584
lbl_800EF4B0:
/* 800EF4B0  7F E3 FB 78 */	mr r3, r31
/* 800EF4B4  4B FF 0F 8D */	bl checkBoomerangAnime__9daAlink_cCFv
/* 800EF4B8  2C 03 00 00 */	cmpwi r3, 0
/* 800EF4BC  41 82 00 10 */	beq lbl_800EF4CC
/* 800EF4C0  7F E3 FB 78 */	mr r3, r31
/* 800EF4C4  4B FF 17 21 */	bl checkNextActionBoomerang__9daAlink_cFv
/* 800EF4C8  48 00 00 BC */	b lbl_800EF584
lbl_800EF4CC:
/* 800EF4CC  38 60 00 00 */	li r3, 0
/* 800EF4D0  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800EF4D4  28 00 01 8D */	cmplwi r0, 0x18d
/* 800EF4D8  41 82 00 10 */	beq lbl_800EF4E8
/* 800EF4DC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800EF4E0  28 00 01 8C */	cmplwi r0, 0x18c
/* 800EF4E4  40 82 00 08 */	bne lbl_800EF4EC
lbl_800EF4E8:
/* 800EF4E8  38 60 00 01 */	li r3, 1
lbl_800EF4EC:
/* 800EF4EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EF4F0  41 82 00 10 */	beq lbl_800EF500
/* 800EF4F4  7F E3 FB 78 */	mr r3, r31
/* 800EF4F8  48 01 A0 D1 */	bl checkNextActionHookshot__9daAlink_cFv
/* 800EF4FC  48 00 00 88 */	b lbl_800EF584
lbl_800EF500:
/* 800EF500  7F E3 FB 78 */	mr r3, r31
/* 800EF504  4B FF 47 99 */	bl checkGrabAnimeAndThrow__9daAlink_cCFv
/* 800EF508  2C 03 00 00 */	cmpwi r3, 0
/* 800EF50C  41 82 00 10 */	beq lbl_800EF51C
/* 800EF510  7F E3 FB 78 */	mr r3, r31
/* 800EF514  48 00 2E 21 */	bl procHorseGrabMoveInit__9daAlink_cFv
/* 800EF518  48 00 00 6C */	b lbl_800EF584
lbl_800EF51C:
/* 800EF51C  A0 9F 2F E8 */	lhz r4, 0x2fe8(r31)
/* 800EF520  28 04 00 4D */	cmplwi r4, 0x4d
/* 800EF524  40 82 00 10 */	bne lbl_800EF534
/* 800EF528  7F E3 FB 78 */	mr r3, r31
/* 800EF52C  48 00 38 59 */	bl procHorseComebackInit__9daAlink_cFv
/* 800EF530  48 00 00 54 */	b lbl_800EF584
lbl_800EF534:
/* 800EF534  28 04 00 3E */	cmplwi r4, 0x3e
/* 800EF538  40 82 00 2C */	bne lbl_800EF564
/* 800EF53C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800EF540  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800EF544  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800EF548  28 03 00 00 */	cmplwi r3, 0
/* 800EF54C  41 82 00 18 */	beq lbl_800EF564
/* 800EF550  88 03 16 B4 */	lbz r0, 0x16b4(r3)
/* 800EF554  28 00 00 04 */	cmplwi r0, 4
/* 800EF558  40 82 00 0C */	bne lbl_800EF564
/* 800EF55C  38 60 00 01 */	li r3, 1
/* 800EF560  48 00 00 24 */	b lbl_800EF584
lbl_800EF564:
/* 800EF564  28 04 00 3D */	cmplwi r4, 0x3d
/* 800EF568  41 82 00 0C */	beq lbl_800EF574
/* 800EF56C  28 04 00 43 */	cmplwi r4, 0x43
/* 800EF570  40 82 00 0C */	bne lbl_800EF57C
lbl_800EF574:
/* 800EF574  38 60 00 00 */	li r3, 0
/* 800EF578  48 00 00 0C */	b lbl_800EF584
lbl_800EF57C:
/* 800EF57C  7F E3 FB 78 */	mr r3, r31
/* 800EF580  48 00 14 01 */	bl procHorseWaitInit__9daAlink_cFv
lbl_800EF584:
/* 800EF584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EF588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EF58C  7C 08 03 A6 */	mtlr r0
/* 800EF590  38 21 00 10 */	addi r1, r1, 0x10
/* 800EF594  4E 80 00 20 */	blr 
