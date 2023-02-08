lbl_80214E54:
/* 80214E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80214E58  7C 08 02 A6 */	mflr r0
/* 80214E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80214E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80214E64  7C 7F 1B 78 */	mr r31, r3
/* 80214E68  80 63 01 24 */	lwz r3, 0x124(r3)
/* 80214E6C  48 04 09 BD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80214E70  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80214E74  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80214E78  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80214E7C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80214E80  41 82 00 20 */	beq lbl_80214EA0
/* 80214E84  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80214E88  FC 20 00 90 */	fmr f1, f0
/* 80214E8C  48 04 09 45 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80214E90  7F E3 FB 78 */	mr r3, r31
/* 80214E94  80 9F 01 24 */	lwz r4, 0x124(r31)
/* 80214E98  38 A0 00 05 */	li r5, 5
/* 80214E9C  48 00 5C 09 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80214EA0:
/* 80214EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80214EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80214EA8  7C 08 03 A6 */	mtlr r0
/* 80214EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80214EB0  4E 80 00 20 */	blr 
