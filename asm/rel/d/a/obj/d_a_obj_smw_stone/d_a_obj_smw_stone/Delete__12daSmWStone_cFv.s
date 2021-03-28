lbl_80CDEA2C:
/* 80CDEA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDEA30  7C 08 02 A6 */	mflr r0
/* 80CDEA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDEA38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDEA3C  7C 7F 1B 78 */	mr r31, r3
/* 80CDEA40  38 00 00 00 */	li r0, 0
/* 80CDEA44  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CDEA48  80 63 05 88 */	lwz r3, 0x588(r3)
/* 80CDEA4C  28 03 00 00 */	cmplwi r3, 0
/* 80CDEA50  41 82 00 24 */	beq lbl_80CDEA74
/* 80CDEA54  4B 58 97 80 */	b ChkUsed__9cBgW_BgIdCFv
/* 80CDEA58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CDEA5C  41 82 00 18 */	beq lbl_80CDEA74
/* 80CDEA60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDEA64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDEA68  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CDEA6C  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 80CDEA70  4B 39 57 E0 */	b Release__4cBgSFP9dBgW_Base
lbl_80CDEA74:
/* 80CDEA74  7F E3 FB 78 */	mr r3, r31
/* 80CDEA78  38 80 FF FF */	li r4, -1
/* 80CDEA7C  81 9F 05 70 */	lwz r12, 0x570(r31)
/* 80CDEA80  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CDEA84  7D 89 03 A6 */	mtctr r12
/* 80CDEA88  4E 80 04 21 */	bctrl 
/* 80CDEA8C  38 60 00 01 */	li r3, 1
/* 80CDEA90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDEA94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDEA98  7C 08 03 A6 */	mtlr r0
/* 80CDEA9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDEAA0  4E 80 00 20 */	blr 
