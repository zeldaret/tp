lbl_80576B78:
/* 80576B78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80576B7C  7C 08 02 A6 */	mflr r0
/* 80576B80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80576B84  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80576B88  7C 7F 1B 78 */	mr r31, r3
/* 80576B8C  38 61 00 08 */	addi r3, r1, 8
/* 80576B90  38 80 00 00 */	li r4, 0
/* 80576B94  38 A0 00 00 */	li r5, 0
/* 80576B98  38 C0 00 00 */	li r6, 0
/* 80576B9C  4B CF 08 58 */	b __ct__5csXyzFsss
/* 80576BA0  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80576BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80576BA8  40 82 00 94 */	bne lbl_80576C3C
/* 80576BAC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80576BB0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80576BB4  3C 60 80 58 */	lis r3, lit_3829@ha
/* 80576BB8  C0 03 8A D0 */	lfs f0, lit_3829@l(r3)
/* 80576BBC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80576BC0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80576BC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80576BC8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80576BCC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80576BD0  C0 1F 11 DC */	lfs f0, 0x11dc(r31)
/* 80576BD4  FC 00 00 1E */	fctiwz f0, f0
/* 80576BD8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80576BDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80576BE0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80576BE4  7F E3 FB 78 */	mr r3, r31
/* 80576BE8  38 80 00 00 */	li r4, 0
/* 80576BEC  38 A0 00 3C */	li r5, 0x3c
/* 80576BF0  3C C0 80 58 */	lis r6, lit_3830@ha
/* 80576BF4  C0 26 8A D4 */	lfs f1, lit_3830@l(r6)
/* 80576BF8  FC 40 08 90 */	fmr f2, f1
/* 80576BFC  48 00 00 55 */	bl Set_Speed__13daObjBHASHI_cFssff
/* 80576C00  38 00 00 02 */	li r0, 2
/* 80576C04  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80576C08  38 00 03 E8 */	li r0, 0x3e8
/* 80576C0C  B0 1F 11 E0 */	sth r0, 0x11e0(r31)
/* 80576C10  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80576C14  28 03 00 00 */	cmplwi r3, 0
/* 80576C18  41 82 00 24 */	beq lbl_80576C3C
/* 80576C1C  4B CF 15 B8 */	b ChkUsed__9cBgW_BgIdCFv
/* 80576C20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80576C24  41 82 00 18 */	beq lbl_80576C3C
/* 80576C28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80576C2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80576C30  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80576C34  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80576C38  4B AF D6 18 */	b Release__4cBgSFP9dBgW_Base
lbl_80576C3C:
/* 80576C3C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80576C40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80576C44  7C 08 03 A6 */	mtlr r0
/* 80576C48  38 21 00 30 */	addi r1, r1, 0x30
/* 80576C4C  4E 80 00 20 */	blr 
