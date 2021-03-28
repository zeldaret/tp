lbl_80BA7BA0:
/* 80BA7BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA7BA4  7C 08 02 A6 */	mflr r0
/* 80BA7BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA7BAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA7BB0  7C 7F 1B 78 */	mr r31, r3
/* 80BA7BB4  80 63 05 B0 */	lwz r3, 0x5b0(r3)
/* 80BA7BB8  28 03 00 00 */	cmplwi r3, 0
/* 80BA7BBC  41 82 00 24 */	beq lbl_80BA7BE0
/* 80BA7BC0  4B 6C 06 14 */	b ChkUsed__9cBgW_BgIdCFv
/* 80BA7BC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA7BC8  41 82 00 18 */	beq lbl_80BA7BE0
/* 80BA7BCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA7BD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA7BD4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BA7BD8  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80BA7BDC  4B 4C C6 74 */	b Release__4cBgSFP9dBgW_Base
lbl_80BA7BE0:
/* 80BA7BE0  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BA7BE4  3C 80 80 BA */	lis r4, l_arcName@ha
/* 80BA7BE8  38 84 7D 90 */	addi r4, r4, l_arcName@l
/* 80BA7BEC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BA7BF0  4B 48 54 18 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BA7BF4  38 60 00 01 */	li r3, 1
/* 80BA7BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA7BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA7C00  7C 08 03 A6 */	mtlr r0
/* 80BA7C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA7C08  4E 80 00 20 */	blr 
