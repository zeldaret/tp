lbl_800F2C78:
/* 800F2C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2C7C  7C 08 02 A6 */	mflr r0
/* 800F2C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2C84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2C88  7C 7F 1B 78 */	mr r31, r3
/* 800F2C8C  4B FF AD 99 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2C90  2C 03 00 00 */	cmpwi r3, 0
/* 800F2C94  40 82 00 78 */	bne lbl_800F2D0C
/* 800F2C98  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 800F2C9C  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F2CA0  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 800F2CA4  7F E3 FB 78 */	mr r3, r31
/* 800F2CA8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F2CAC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F2CB0  7D 89 03 A6 */	mtctr r12
/* 800F2CB4  4E 80 04 21 */	bctrl 
/* 800F2CB8  28 03 00 00 */	cmplwi r3, 0
/* 800F2CBC  41 82 00 28 */	beq lbl_800F2CE4
/* 800F2CC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F2CC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F2CC8  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800F2CCC  28 03 00 00 */	cmplwi r3, 0
/* 800F2CD0  41 82 00 14 */	beq lbl_800F2CE4
/* 800F2CD4  38 00 00 02 */	li r0, 2
/* 800F2CD8  98 03 16 B8 */	stb r0, 0x16b8(r3)
/* 800F2CDC  38 00 00 01 */	li r0, 1
/* 800F2CE0  90 03 17 40 */	stw r0, 0x1740(r3)
lbl_800F2CE4:
/* 800F2CE4  7F E3 FB 78 */	mr r3, r31
/* 800F2CE8  38 80 00 02 */	li r4, 2
/* 800F2CEC  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800F2CF0  4B FB AA 35 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F2CF4  7F E3 FB 78 */	mr r3, r31
/* 800F2CF8  48 01 E2 91 */	bl resetOilBottleModel__9daAlink_cFv
/* 800F2CFC  7F E3 FB 78 */	mr r3, r31
/* 800F2D00  48 02 4F 91 */	bl resetSpecialEvent__9daAlink_cFv
/* 800F2D04  38 60 00 01 */	li r3, 1
/* 800F2D08  48 00 00 68 */	b lbl_800F2D70
lbl_800F2D0C:
/* 800F2D0C  7F E3 FB 78 */	mr r3, r31
/* 800F2D10  4B FF C0 89 */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2D14  7F E3 FB 78 */	mr r3, r31
/* 800F2D18  38 80 00 01 */	li r4, 1
/* 800F2D1C  48 01 E3 9D */	bl commonKandelaarPour__9daAlink_cFi
/* 800F2D20  2C 03 00 00 */	cmpwi r3, 0
/* 800F2D24  41 82 00 48 */	beq lbl_800F2D6C
/* 800F2D28  7F E3 FB 78 */	mr r3, r31
/* 800F2D2C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F2D30  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F2D34  7D 89 03 A6 */	mtctr r12
/* 800F2D38  4E 80 04 21 */	bctrl 
/* 800F2D3C  28 03 00 00 */	cmplwi r3, 0
/* 800F2D40  41 82 00 2C */	beq lbl_800F2D6C
/* 800F2D44  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 800F2D48  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F2D4C  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 800F2D50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F2D54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F2D58  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800F2D5C  38 00 00 02 */	li r0, 2
/* 800F2D60  98 03 16 B8 */	stb r0, 0x16b8(r3)
/* 800F2D64  38 00 00 01 */	li r0, 1
/* 800F2D68  90 03 17 40 */	stw r0, 0x1740(r3)
lbl_800F2D6C:
/* 800F2D6C  38 60 00 01 */	li r3, 1
lbl_800F2D70:
/* 800F2D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2D78  7C 08 03 A6 */	mtlr r0
/* 800F2D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2D80  4E 80 00 20 */	blr 
