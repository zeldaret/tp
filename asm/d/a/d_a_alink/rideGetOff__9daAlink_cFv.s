lbl_800ECBD0:
/* 800ECBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECBD4  7C 08 02 A6 */	mflr r0
/* 800ECBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECBDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECBE0  7C 7F 1B 78 */	mr r31, r3
/* 800ECBE4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800ECBE8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800ECBEC  7D 89 03 A6 */	mtctr r12
/* 800ECBF0  4E 80 04 21 */	bctrl 
/* 800ECBF4  28 03 00 00 */	cmplwi r3, 0
/* 800ECBF8  41 82 00 34 */	beq lbl_800ECC2C
/* 800ECBFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800ECC00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800ECC04  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800ECC08  28 03 00 00 */	cmplwi r3, 0
/* 800ECC0C  41 82 00 10 */	beq lbl_800ECC1C
/* 800ECC10  39 83 18 F8 */	addi r12, r3, 0x18f8
/* 800ECC14  48 27 54 71 */	bl __ptmf_scall
/* 800ECC18  60 00 00 00 */	nop 
lbl_800ECC1C:
/* 800ECC1C  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800ECC20  38 80 00 00 */	li r4, 0
/* 800ECC24  48 1D 6E 49 */	bl setRiding__14Z2CreatureLinkFb
/* 800ECC28  48 00 00 FC */	b lbl_800ECD24
lbl_800ECC2C:
/* 800ECC2C  7F E3 FB 78 */	mr r3, r31
/* 800ECC30  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800ECC34  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 800ECC38  7D 89 03 A6 */	mtctr r12
/* 800ECC3C  4E 80 04 21 */	bctrl 
/* 800ECC40  28 03 00 00 */	cmplwi r3, 0
/* 800ECC44  41 82 00 18 */	beq lbl_800ECC5C
/* 800ECC48  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800ECC4C  28 03 00 00 */	cmplwi r3, 0
/* 800ECC50  41 82 00 D4 */	beq lbl_800ECD24
/* 800ECC54  4B F4 B0 A1 */	bl getOff__10e_wb_classFv
/* 800ECC58  48 00 00 CC */	b lbl_800ECD24
lbl_800ECC5C:
/* 800ECC5C  7F E3 FB 78 */	mr r3, r31
/* 800ECC60  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800ECC64  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800ECC68  7D 89 03 A6 */	mtctr r12
/* 800ECC6C  4E 80 04 21 */	bctrl 
/* 800ECC70  28 03 00 00 */	cmplwi r3, 0
/* 800ECC74  41 82 00 38 */	beq lbl_800ECCAC
/* 800ECC78  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800ECC7C  28 03 00 00 */	cmplwi r3, 0
/* 800ECC80  41 82 00 0C */	beq lbl_800ECC8C
/* 800ECC84  38 00 00 01 */	li r0, 1
/* 800ECC88  98 03 0A 71 */	stb r0, 0xa71(r3)
lbl_800ECC8C:
/* 800ECC8C  7F E3 FB 78 */	mr r3, r31
/* 800ECC90  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020077@ha */
/* 800ECC94  38 84 00 77 */	addi r4, r4, 0x0077 /* 0x00020077@l */
/* 800ECC98  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800ECC9C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800ECCA0  7D 89 03 A6 */	mtctr r12
/* 800ECCA4  4E 80 04 21 */	bctrl 
/* 800ECCA8  48 00 00 7C */	b lbl_800ECD24
lbl_800ECCAC:
/* 800ECCAC  7F E3 FB 78 */	mr r3, r31
/* 800ECCB0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800ECCB4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800ECCB8  7D 89 03 A6 */	mtctr r12
/* 800ECCBC  4E 80 04 21 */	bctrl 
/* 800ECCC0  28 03 00 00 */	cmplwi r3, 0
/* 800ECCC4  41 82 00 1C */	beq lbl_800ECCE0
/* 800ECCC8  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800ECCCC  28 00 01 0B */	cmplwi r0, 0x10b
/* 800ECCD0  40 82 00 54 */	bne lbl_800ECD24
/* 800ECCD4  38 00 00 FF */	li r0, 0xff
/* 800ECCD8  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800ECCDC  48 00 00 48 */	b lbl_800ECD24
lbl_800ECCE0:
/* 800ECCE0  7F E3 FB 78 */	mr r3, r31
/* 800ECCE4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800ECCE8  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800ECCEC  7D 89 03 A6 */	mtctr r12
/* 800ECCF0  4E 80 04 21 */	bctrl 
/* 800ECCF4  28 03 00 00 */	cmplwi r3, 0
/* 800ECCF8  41 82 00 2C */	beq lbl_800ECD24
/* 800ECCFC  38 00 00 00 */	li r0, 0
/* 800ECD00  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800ECD04  98 03 09 60 */	stb r0, 0x960(r3)
/* 800ECD08  7F E3 FB 78 */	mr r3, r31
/* 800ECD0C  48 02 8F 15 */	bl checkEventRun__9daAlink_cCFv
/* 800ECD10  2C 03 00 00 */	cmpwi r3, 0
/* 800ECD14  41 82 00 10 */	beq lbl_800ECD24
/* 800ECD18  38 00 00 01 */	li r0, 1
/* 800ECD1C  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800ECD20  98 03 09 62 */	stb r0, 0x962(r3)
lbl_800ECD24:
/* 800ECD24  7F E3 FB 78 */	mr r3, r31
/* 800ECD28  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800ECD2C  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800ECD30  7D 89 03 A6 */	mtctr r12
/* 800ECD34  4E 80 04 21 */	bctrl 
/* 800ECD38  28 03 00 00 */	cmplwi r3, 0
/* 800ECD3C  41 82 00 14 */	beq lbl_800ECD50
/* 800ECD40  7F E3 FB 78 */	mr r3, r31
/* 800ECD44  48 02 8E DD */	bl checkEventRun__9daAlink_cCFv
/* 800ECD48  2C 03 00 00 */	cmpwi r3, 0
/* 800ECD4C  41 82 00 0C */	beq lbl_800ECD58
lbl_800ECD50:
/* 800ECD50  38 7F 28 14 */	addi r3, r31, 0x2814
/* 800ECD54  48 07 1F A9 */	bl clearData__16daPy_actorKeep_cFv
lbl_800ECD58:
/* 800ECD58  38 60 00 00 */	li r3, 0
/* 800ECD5C  98 7F 2F AA */	stb r3, 0x2faa(r31)
/* 800ECD60  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800ECD64  54 00 05 64 */	rlwinm r0, r0, 0, 0x15, 0x12
/* 800ECD68  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800ECD6C  38 00 00 0A */	li r0, 0xa
/* 800ECD70  B0 1F 05 4E */	sth r0, 0x54e(r31)
/* 800ECD74  B0 7F 04 E4 */	sth r3, 0x4e4(r31)
/* 800ECD78  B0 7F 04 E8 */	sth r3, 0x4e8(r31)
/* 800ECD7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECD80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECD84  7C 08 03 A6 */	mtlr r0
/* 800ECD88  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECD8C  4E 80 00 20 */	blr 
