lbl_80CA00B8:
/* 80CA00B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA00BC  7C 08 02 A6 */	mflr r0
/* 80CA00C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA00C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA00C8  7C 7F 1B 78 */	mr r31, r3
/* 80CA00CC  88 03 02 F0 */	lbz r0, 0x2f0(r3)
/* 80CA00D0  28 00 00 00 */	cmplwi r0, 0
/* 80CA00D4  40 82 00 30 */	bne lbl_80CA0104
/* 80CA00D8  80 7F 02 EC */	lwz r3, 0x2ec(r31)
/* 80CA00DC  28 03 00 00 */	cmplwi r3, 0
/* 80CA00E0  41 82 00 24 */	beq lbl_80CA0104
/* 80CA00E4  4B 5C 80 F1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80CA00E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA00EC  41 82 00 18 */	beq lbl_80CA0104
/* 80CA00F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA00F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA00F8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CA00FC  80 9F 02 EC */	lwz r4, 0x2ec(r31)
/* 80CA0100  4B 3D 41 51 */	bl Release__4cBgSFP9dBgW_Base
lbl_80CA0104:
/* 80CA0104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA0108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA010C  7C 08 03 A6 */	mtlr r0
/* 80CA0110  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA0114  4E 80 00 20 */	blr 
