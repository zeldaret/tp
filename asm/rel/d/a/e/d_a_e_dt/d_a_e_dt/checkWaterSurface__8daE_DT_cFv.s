lbl_806AEEFC:
/* 806AEEFC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806AEF00  7C 08 02 A6 */	mflr r0
/* 806AEF04  90 01 00 74 */	stw r0, 0x74(r1)
/* 806AEF08  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 806AEF0C  7C 7F 1B 78 */	mr r31, r3
/* 806AEF10  38 61 00 14 */	addi r3, r1, 0x14
/* 806AEF14  4B 9C 88 9C */	b __ct__18dBgS_ObjGndChk_SplFv
/* 806AEF18  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806AEF1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AEF20  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806AEF24  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806AEF28  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806AEF2C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AEF30  3C 60 80 6B */	lis r3, lit_3798@ha
/* 806AEF34  C0 03 5C EC */	lfs f0, lit_3798@l(r3)
/* 806AEF38  EC 01 00 2A */	fadds f0, f1, f0
/* 806AEF3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806AEF40  38 61 00 14 */	addi r3, r1, 0x14
/* 806AEF44  38 81 00 08 */	addi r4, r1, 8
/* 806AEF48  4B BB 8D C4 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 806AEF4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AEF50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806AEF54  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806AEF58  38 81 00 14 */	addi r4, r1, 0x14
/* 806AEF5C  4B 9C 55 44 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806AEF60  3C 60 80 6B */	lis r3, lit_4382@ha
/* 806AEF64  C0 03 5D 58 */	lfs f0, lit_4382@l(r3)
/* 806AEF68  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806AEF6C  41 82 00 5C */	beq lbl_806AEFC8
/* 806AEF70  D0 3F 07 28 */	stfs f1, 0x728(r31)
/* 806AEF74  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806AEF78  C0 1F 07 28 */	lfs f0, 0x728(r31)
/* 806AEF7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AEF80  40 80 00 48 */	bge lbl_806AEFC8
/* 806AEF84  7F E3 FB 78 */	mr r3, r31
/* 806AEF88  38 80 00 0B */	li r4, 0xb
/* 806AEF8C  4B FF F7 65 */	bl checkBck__8daE_DT_cFi
/* 806AEF90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806AEF94  40 82 00 18 */	bne lbl_806AEFAC
/* 806AEF98  7F E3 FB 78 */	mr r3, r31
/* 806AEF9C  38 80 00 08 */	li r4, 8
/* 806AEFA0  4B FF F7 51 */	bl checkBck__8daE_DT_cFi
/* 806AEFA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806AEFA8  41 82 00 14 */	beq lbl_806AEFBC
lbl_806AEFAC:
/* 806AEFAC  7F E3 FB 78 */	mr r3, r31
/* 806AEFB0  38 80 00 01 */	li r4, 1
/* 806AEFB4  48 00 01 9D */	bl setHamonEffect__8daE_DT_cFi
/* 806AEFB8  48 00 00 10 */	b lbl_806AEFC8
lbl_806AEFBC:
/* 806AEFBC  7F E3 FB 78 */	mr r3, r31
/* 806AEFC0  38 80 00 00 */	li r4, 0
/* 806AEFC4  48 00 01 8D */	bl setHamonEffect__8daE_DT_cFi
lbl_806AEFC8:
/* 806AEFC8  38 61 00 14 */	addi r3, r1, 0x14
/* 806AEFCC  38 80 FF FF */	li r4, -1
/* 806AEFD0  4B 9C 88 78 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 806AEFD4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 806AEFD8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806AEFDC  7C 08 03 A6 */	mtlr r0
/* 806AEFE0  38 21 00 70 */	addi r1, r1, 0x70
/* 806AEFE4  4E 80 00 20 */	blr 
