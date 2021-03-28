lbl_800F3430:
/* 800F3430  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F3434  7C 08 02 A6 */	mflr r0
/* 800F3438  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F343C  39 61 00 20 */	addi r11, r1, 0x20
/* 800F3440  48 26 ED 9D */	bl _savegpr_29
/* 800F3444  7C 7D 1B 78 */	mr r29, r3
/* 800F3448  7C 9E 23 78 */	mr r30, r4
/* 800F344C  7C BF 2B 78 */	mr r31, r5
/* 800F3450  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800F3454  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 800F3458  7D 89 03 A6 */	mtctr r12
/* 800F345C  4E 80 04 21 */	bctrl 
/* 800F3460  28 03 00 00 */	cmplwi r3, 0
/* 800F3464  41 82 00 14 */	beq lbl_800F3478
/* 800F3468  7F A3 EB 78 */	mr r3, r29
/* 800F346C  7F C4 F3 78 */	mr r4, r30
/* 800F3470  4B FF E8 A9 */	bl procHorseDamageInit__9daAlink_cFP12dCcD_GObjInf
/* 800F3474  48 00 00 F4 */	b lbl_800F3568
lbl_800F3478:
/* 800F3478  7F A3 EB 78 */	mr r3, r29
/* 800F347C  38 80 00 50 */	li r4, 0x50
/* 800F3480  4B FC EA ED */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F3484  7F A3 EB 78 */	mr r3, r29
/* 800F3488  7F C4 F3 78 */	mr r4, r30
/* 800F348C  4B FE 40 69 */	bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 800F3490  48 17 3C 99 */	bl atan2sX_Z__4cXyzCFv
/* 800F3494  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800F3498  7C 00 18 50 */	subf r0, r0, r3
/* 800F349C  7C 00 07 35 */	extsh. r0, r0
/* 800F34A0  40 81 00 24 */	ble lbl_800F34C4
/* 800F34A4  38 80 00 56 */	li r4, 0x56
/* 800F34A8  38 00 00 58 */	li r0, 0x58
/* 800F34AC  90 1D 32 CC */	stw r0, 0x32cc(r29)
/* 800F34B0  38 00 00 01 */	li r0, 1
/* 800F34B4  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 800F34B8  38 00 00 02 */	li r0, 2
/* 800F34BC  B0 1D 30 12 */	sth r0, 0x3012(r29)
/* 800F34C0  48 00 00 20 */	b lbl_800F34E0
lbl_800F34C4:
/* 800F34C4  38 80 00 57 */	li r4, 0x57
/* 800F34C8  38 00 00 59 */	li r0, 0x59
/* 800F34CC  90 1D 32 CC */	stw r0, 0x32cc(r29)
/* 800F34D0  38 00 00 02 */	li r0, 2
/* 800F34D4  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 800F34D8  38 00 00 01 */	li r0, 1
/* 800F34DC  B0 1D 30 12 */	sth r0, 0x3012(r29)
lbl_800F34E0:
/* 800F34E0  88 7D 2F AB */	lbz r3, 0x2fab(r29)
/* 800F34E4  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800F34E8  7C 60 00 78 */	andc r0, r3, r0
/* 800F34EC  98 1D 2F AB */	stb r0, 0x2fab(r29)
/* 800F34F0  7F A3 EB 78 */	mr r3, r29
/* 800F34F4  4B FB 9A 8D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F34F8  38 00 00 00 */	li r0, 0
/* 800F34FC  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 800F3500  B0 1D 30 04 */	sth r0, 0x3004(r29)
/* 800F3504  B0 1D 30 02 */	sth r0, 0x3002(r29)
/* 800F3508  7F A3 EB 78 */	mr r3, r29
/* 800F350C  38 80 00 02 */	li r4, 2
/* 800F3510  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F3514  4B FB A5 D9 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
/* 800F3518  7F A3 EB 78 */	mr r3, r29
/* 800F351C  4B FF 9F C1 */	bl setSyncHorsePos__9daAlink_cFv
/* 800F3520  4B FF 92 91 */	bl setHorseZeldaDamage__9daAlink_cFv
/* 800F3524  2C 1F 00 00 */	cmpwi r31, 0
/* 800F3528  41 82 00 3C */	beq lbl_800F3564
/* 800F352C  7F A3 EB 78 */	mr r3, r29
/* 800F3530  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100AB@ha */
/* 800F3534  38 84 00 AB */	addi r4, r4, 0x00AB /* 0x000100AB@l */
/* 800F3538  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800F353C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800F3540  7D 89 03 A6 */	mtctr r12
/* 800F3544  4E 80 04 21 */	bctrl 
/* 800F3548  7F A3 EB 78 */	mr r3, r29
/* 800F354C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 800F3550  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 800F3554  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800F3558  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800F355C  7D 89 03 A6 */	mtctr r12
/* 800F3560  4E 80 04 21 */	bctrl 
lbl_800F3564:
/* 800F3564  38 60 00 01 */	li r3, 1
lbl_800F3568:
/* 800F3568  39 61 00 20 */	addi r11, r1, 0x20
/* 800F356C  48 26 EC BD */	bl _restgpr_29
/* 800F3570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F3574  7C 08 03 A6 */	mtlr r0
/* 800F3578  38 21 00 20 */	addi r1, r1, 0x20
/* 800F357C  4E 80 00 20 */	blr 
