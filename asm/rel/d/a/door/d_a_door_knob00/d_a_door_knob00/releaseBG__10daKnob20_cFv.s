lbl_8045F428:
/* 8045F428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045F42C  7C 08 02 A6 */	mflr r0
/* 8045F430  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045F434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045F438  7C 7F 1B 78 */	mr r31, r3
/* 8045F43C  80 63 05 A0 */	lwz r3, 0x5a0(r3)
/* 8045F440  4B E0 8D 94 */	b ChkUsed__9cBgW_BgIdCFv
/* 8045F444  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8045F448  41 82 00 18 */	beq lbl_8045F460
/* 8045F44C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045F450  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045F454  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8045F458  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 8045F45C  4B C1 4D F4 */	b Release__4cBgSFP9dBgW_Base
lbl_8045F460:
/* 8045F460  38 60 00 01 */	li r3, 1
/* 8045F464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045F468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045F46C  7C 08 03 A6 */	mtlr r0
/* 8045F470  38 21 00 10 */	addi r1, r1, 0x10
/* 8045F474  4E 80 00 20 */	blr 
