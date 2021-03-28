lbl_80BD4268:
/* 80BD4268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD426C  7C 08 02 A6 */	mflr r0
/* 80BD4270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD4278  7C 7F 1B 78 */	mr r31, r3
/* 80BD427C  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80BD4280  28 03 00 00 */	cmplwi r3, 0
/* 80BD4284  41 82 00 40 */	beq lbl_80BD42C4
/* 80BD4288  4B 69 3F 4C */	b ChkUsed__9cBgW_BgIdCFv
/* 80BD428C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD4290  41 82 00 34 */	beq lbl_80BD42C4
/* 80BD4294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD4298  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD429C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BD42A0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80BD42A4  4B 49 FF AC */	b Release__4cBgSFP9dBgW_Base
/* 80BD42A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD42AC  41 82 00 18 */	beq lbl_80BD42C4
/* 80BD42B0  3C 60 80 BD */	lis r3, stringBase0@ha
/* 80BD42B4  38 63 4D 88 */	addi r3, r3, stringBase0@l
/* 80BD42B8  38 63 00 09 */	addi r3, r3, 9
/* 80BD42BC  4C C6 31 82 */	crclr 6
/* 80BD42C0  4B 43 27 FC */	b OSReport
lbl_80BD42C4:
/* 80BD42C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD42C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD42CC  7C 08 03 A6 */	mtlr r0
/* 80BD42D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD42D4  4E 80 00 20 */	blr 
