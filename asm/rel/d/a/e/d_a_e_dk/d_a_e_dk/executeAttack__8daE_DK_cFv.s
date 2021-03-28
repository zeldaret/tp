lbl_806ABA78:
/* 806ABA78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806ABA7C  7C 08 02 A6 */	mflr r0
/* 806ABA80  90 01 00 24 */	stw r0, 0x24(r1)
/* 806ABA84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806ABA88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806ABA8C  7C 7F 1B 78 */	mr r31, r3
/* 806ABA90  3C 80 80 6B */	lis r4, lit_3764@ha
/* 806ABA94  3B C4 D5 38 */	addi r30, r4, lit_3764@l
/* 806ABA98  80 03 06 80 */	lwz r0, 0x680(r3)
/* 806ABA9C  2C 00 00 01 */	cmpwi r0, 1
/* 806ABAA0  41 82 00 60 */	beq lbl_806ABB00
/* 806ABAA4  40 80 00 10 */	bge lbl_806ABAB4
/* 806ABAA8  2C 00 00 00 */	cmpwi r0, 0
/* 806ABAAC  40 80 00 14 */	bge lbl_806ABAC0
/* 806ABAB0  48 00 02 00 */	b lbl_806ABCB0
lbl_806ABAB4:
/* 806ABAB4  2C 00 00 04 */	cmpwi r0, 4
/* 806ABAB8  40 80 01 F8 */	bge lbl_806ABCB0
/* 806ABABC  48 00 00 F8 */	b lbl_806ABBB4
lbl_806ABAC0:
/* 806ABAC0  38 80 00 07 */	li r4, 7
/* 806ABAC4  38 A0 00 02 */	li r5, 2
/* 806ABAC8  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 806ABACC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806ABAD0  4B FF EA F9 */	bl setBck__8daE_DK_cFiUcff
/* 806ABAD4  7F E3 FB 78 */	mr r3, r31
/* 806ABAD8  38 80 00 09 */	li r4, 9
/* 806ABADC  38 A0 00 02 */	li r5, 2
/* 806ABAE0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806ABAE4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806ABAE8  4B FF EB A5 */	bl setBckCore__8daE_DK_cFiUcff
/* 806ABAEC  38 00 00 2D */	li r0, 0x2d
/* 806ABAF0  90 1F 06 98 */	stw r0, 0x698(r31)
/* 806ABAF4  38 00 00 01 */	li r0, 1
/* 806ABAF8  90 1F 06 80 */	stw r0, 0x680(r31)
/* 806ABAFC  48 00 01 B4 */	b lbl_806ABCB0
lbl_806ABB00:
/* 806ABB00  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806ABB04  38 63 00 0C */	addi r3, r3, 0xc
/* 806ABB08  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 806ABB0C  4B C7 C9 20 */	b checkPass__12J3DFrameCtrlFf
/* 806ABB10  2C 03 00 00 */	cmpwi r3, 0
/* 806ABB14  41 82 00 30 */	beq lbl_806ABB44
/* 806ABB18  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A2@ha */
/* 806ABB1C  38 03 02 A2 */	addi r0, r3, 0x02A2 /* 0x000702A2@l */
/* 806ABB20  90 01 00 08 */	stw r0, 8(r1)
/* 806ABB24  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806ABB28  38 81 00 08 */	addi r4, r1, 8
/* 806ABB2C  38 A0 00 00 */	li r5, 0
/* 806ABB30  38 C0 FF FF */	li r6, -1
/* 806ABB34  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 806ABB38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806ABB3C  7D 89 03 A6 */	mtctr r12
/* 806ABB40  4E 80 04 21 */	bctrl 
lbl_806ABB44:
/* 806ABB44  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806ABB48  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 806ABB4C  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 806ABB50  4B BC 4B F0 */	b cLib_chaseF__FPfff
/* 806ABB54  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806ABB58  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806ABB5C  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 806ABB60  4B BC 4B E0 */	b cLib_chaseF__FPfff
/* 806ABB64  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 806ABB68  2C 00 00 00 */	cmpwi r0, 0
/* 806ABB6C  40 82 01 44 */	bne lbl_806ABCB0
/* 806ABB70  7F E3 FB 78 */	mr r3, r31
/* 806ABB74  38 80 00 06 */	li r4, 6
/* 806ABB78  38 A0 00 02 */	li r5, 2
/* 806ABB7C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806ABB80  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806ABB84  4B FF EA 45 */	bl setBck__8daE_DK_cFiUcff
/* 806ABB88  7F E3 FB 78 */	mr r3, r31
/* 806ABB8C  38 80 00 08 */	li r4, 8
/* 806ABB90  38 A0 00 02 */	li r5, 2
/* 806ABB94  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806ABB98  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806ABB9C  4B FF EA F1 */	bl setBckCore__8daE_DK_cFiUcff
/* 806ABBA0  38 00 00 64 */	li r0, 0x64
/* 806ABBA4  90 1F 06 98 */	stw r0, 0x698(r31)
/* 806ABBA8  38 00 00 02 */	li r0, 2
/* 806ABBAC  90 1F 06 80 */	stw r0, 0x680(r31)
/* 806ABBB0  48 00 01 00 */	b lbl_806ABCB0
lbl_806ABBB4:
/* 806ABBB4  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806ABBB8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806ABBBC  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 806ABBC0  4B BC 4B 80 */	b cLib_chaseF__FPfff
/* 806ABBC4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806ABBC8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806ABBCC  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 806ABBD0  4B BC 4B 70 */	b cLib_chaseF__FPfff
/* 806ABBD4  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 806ABBD8  60 00 00 01 */	ori r0, r0, 1
/* 806ABBDC  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 806ABBE0  38 60 00 01 */	li r3, 1
/* 806ABBE4  98 7F 0B 57 */	stb r3, 0xb57(r31)
/* 806ABBE8  38 00 00 05 */	li r0, 5
/* 806ABBEC  98 1F 0B 11 */	stb r0, 0xb11(r31)
/* 806ABBF0  98 7F 0A 1F */	stb r3, 0xa1f(r31)
/* 806ABBF4  98 7F 0C 8F */	stb r3, 0xc8f(r31)
/* 806ABBF8  7F E3 FB 78 */	mr r3, r31
/* 806ABBFC  4B FF F2 15 */	bl setElectricEffect__8daE_DK_cFv
/* 806ABC00  38 00 00 01 */	li r0, 1
/* 806ABC04  98 1F 06 A3 */	stb r0, 0x6a3(r31)
/* 806ABC08  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806ABC0C  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 806ABC10  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 806ABC14  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 806ABC18  2C 00 00 02 */	cmpwi r0, 2
/* 806ABC1C  40 82 00 58 */	bne lbl_806ABC74
/* 806ABC20  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 806ABC24  2C 00 00 00 */	cmpwi r0, 0
/* 806ABC28  40 82 00 1C */	bne lbl_806ABC44
/* 806ABC2C  38 00 00 96 */	li r0, 0x96
/* 806ABC30  90 1F 06 9C */	stw r0, 0x69c(r31)
/* 806ABC34  7F E3 FB 78 */	mr r3, r31
/* 806ABC38  38 80 00 01 */	li r4, 1
/* 806ABC3C  38 A0 00 00 */	li r5, 0
/* 806ABC40  4B FF EA F1 */	bl setActionMode__8daE_DK_cFii
lbl_806ABC44:
/* 806ABC44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806ABC48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806ABC4C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806ABC50  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806ABC54  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 806ABC58  7D 89 03 A6 */	mtctr r12
/* 806ABC5C  4E 80 04 21 */	bctrl 
/* 806ABC60  2C 03 00 00 */	cmpwi r3, 0
/* 806ABC64  41 82 00 4C */	beq lbl_806ABCB0
/* 806ABC68  38 00 00 03 */	li r0, 3
/* 806ABC6C  90 1F 06 80 */	stw r0, 0x680(r31)
/* 806ABC70  48 00 00 40 */	b lbl_806ABCB0
lbl_806ABC74:
/* 806ABC74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806ABC78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806ABC7C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806ABC80  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806ABC84  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 806ABC88  7D 89 03 A6 */	mtctr r12
/* 806ABC8C  4E 80 04 21 */	bctrl 
/* 806ABC90  2C 03 00 00 */	cmpwi r3, 0
/* 806ABC94  40 82 00 1C */	bne lbl_806ABCB0
/* 806ABC98  38 00 00 96 */	li r0, 0x96
/* 806ABC9C  90 1F 06 9C */	stw r0, 0x69c(r31)
/* 806ABCA0  7F E3 FB 78 */	mr r3, r31
/* 806ABCA4  38 80 00 01 */	li r4, 1
/* 806ABCA8  38 A0 00 00 */	li r5, 0
/* 806ABCAC  4B FF EA 85 */	bl setActionMode__8daE_DK_cFii
lbl_806ABCB0:
/* 806ABCB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806ABCB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806ABCB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806ABCBC  7C 08 03 A6 */	mtlr r0
/* 806ABCC0  38 21 00 20 */	addi r1, r1, 0x20
/* 806ABCC4  4E 80 00 20 */	blr 
