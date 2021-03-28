lbl_80BA968C:
/* 80BA968C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA9690  7C 08 02 A6 */	mflr r0
/* 80BA9694  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9698  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA969C  7C 7F 1B 78 */	mr r31, r3
/* 80BA96A0  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80BA96A4  4B 4D AD BC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80BA96A8  28 03 00 00 */	cmplwi r3, 0
/* 80BA96AC  41 82 00 28 */	beq lbl_80BA96D4
/* 80BA96B0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80BA96B4  28 04 00 00 */	cmplwi r4, 0
/* 80BA96B8  41 82 00 14 */	beq lbl_80BA96CC
/* 80BA96BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA96C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA96C4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BA96C8  4B 4C AB 88 */	b Release__4cBgSFP9dBgW_Base
lbl_80BA96CC:
/* 80BA96CC  7F E3 FB 78 */	mr r3, r31
/* 80BA96D0  48 00 00 6D */	bl init_modeBreak__11daBarDesk_cFv
lbl_80BA96D4:
/* 80BA96D4  38 7F 07 10 */	addi r3, r31, 0x710
/* 80BA96D8  3C 80 80 BB */	lis r4, lit_3839@ha
/* 80BA96DC  C0 24 9B A0 */	lfs f1, lit_3839@l(r4)
/* 80BA96E0  4B 6C 5B 20 */	b SetR__8cM3dGCylFf
/* 80BA96E4  38 7F 07 10 */	addi r3, r31, 0x710
/* 80BA96E8  3C 80 80 BB */	lis r4, lit_3839@ha
/* 80BA96EC  C0 24 9B A0 */	lfs f1, lit_3839@l(r4)
/* 80BA96F0  4B 6C 5B 08 */	b SetH__8cM3dGCylFf
/* 80BA96F4  38 7F 07 10 */	addi r3, r31, 0x710
/* 80BA96F8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BA96FC  4B 6C 5A E0 */	b SetC__8cM3dGCylFRC4cXyz
/* 80BA9700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA9704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA9708  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BA970C  38 9F 05 EC */	addi r4, r31, 0x5ec
/* 80BA9710  4B 6B B4 98 */	b Set__4cCcSFP8cCcD_Obj
/* 80BA9714  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80BA9718  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80BA971C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80BA9720  7D 89 03 A6 */	mtctr r12
/* 80BA9724  4E 80 04 21 */	bctrl 
/* 80BA9728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA972C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA9730  7C 08 03 A6 */	mtlr r0
/* 80BA9734  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9738  4E 80 00 20 */	blr 
