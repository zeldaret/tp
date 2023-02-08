lbl_80BECCE4:
/* 80BECCE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BECCE8  7C 08 02 A6 */	mflr r0
/* 80BECCEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BECCF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BECCF4  7C 7F 1B 78 */	mr r31, r3
/* 80BECCF8  38 7F 03 F4 */	addi r3, r31, 0x3f4
/* 80BECCFC  4B 49 77 65 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BECD00  28 03 00 00 */	cmplwi r3, 0
/* 80BECD04  41 82 00 54 */	beq lbl_80BECD58
/* 80BECD08  38 7F 03 F4 */	addi r3, r31, 0x3f4
/* 80BECD0C  4B 49 77 ED */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80BECD10  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BECD14  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80BECD18  41 82 00 40 */	beq lbl_80BECD58
/* 80BECD1C  38 7F 08 3C */	addi r3, r31, 0x83c
/* 80BECD20  38 80 00 00 */	li r4, 0
/* 80BECD24  38 00 00 15 */	li r0, 0x15
/* 80BECD28  7C 09 03 A6 */	mtctr r0
lbl_80BECD2C:
/* 80BECD2C  2C 04 00 0F */	cmpwi r4, 0xf
/* 80BECD30  41 82 00 1C */	beq lbl_80BECD4C
/* 80BECD34  2C 04 00 14 */	cmpwi r4, 0x14
/* 80BECD38  41 82 00 14 */	beq lbl_80BECD4C
/* 80BECD3C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80BECD40  C0 1F 09 80 */	lfs f0, 0x980(r31)
/* 80BECD44  EC 01 00 2A */	fadds f0, f1, f0
/* 80BECD48  D0 03 00 04 */	stfs f0, 4(r3)
lbl_80BECD4C:
/* 80BECD4C  38 84 00 01 */	addi r4, r4, 1
/* 80BECD50  38 63 00 0C */	addi r3, r3, 0xc
/* 80BECD54  42 00 FF D8 */	bdnz lbl_80BECD2C
lbl_80BECD58:
/* 80BECD58  38 61 00 08 */	addi r3, r1, 8
/* 80BECD5C  7F E4 FB 78 */	mr r4, r31
/* 80BECD60  48 00 13 59 */	bl getTargetPos__11FlagCloth_cFv
/* 80BECD64  38 7F 05 18 */	addi r3, r31, 0x518
/* 80BECD68  38 81 00 08 */	addi r4, r1, 8
/* 80BECD6C  4B 68 28 DD */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BECD70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BECD74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BECD78  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BECD7C  38 9F 03 F4 */	addi r4, r31, 0x3f4
/* 80BECD80  4B 67 7E 29 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BECD84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BECD88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BECD8C  7C 08 03 A6 */	mtlr r0
/* 80BECD90  38 21 00 20 */	addi r1, r1, 0x20
/* 80BECD94  4E 80 00 20 */	blr 
