lbl_80B9E478:
/* 80B9E478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9E47C  7C 08 02 A6 */	mflr r0
/* 80B9E480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9E484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9E488  7C 7F 1B 78 */	mr r31, r3
/* 80B9E48C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80B9E490  3C 80 80 BA */	lis r4, stringBase0@ha
/* 80B9E494  38 84 E9 70 */	addi r4, r4, stringBase0@l
/* 80B9E498  4B 48 EB 70 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B9E49C  80 7F 09 80 */	lwz r3, 0x980(r31)
/* 80B9E4A0  28 03 00 00 */	cmplwi r3, 0
/* 80B9E4A4  41 82 00 24 */	beq lbl_80B9E4C8
/* 80B9E4A8  4B 6C 9D 2C */	b ChkUsed__9cBgW_BgIdCFv
/* 80B9E4AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B9E4B0  41 82 00 18 */	beq lbl_80B9E4C8
/* 80B9E4B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9E4B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9E4BC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B9E4C0  80 9F 09 80 */	lwz r4, 0x980(r31)
/* 80B9E4C4  4B 4D 5D 8C */	b Release__4cBgSFP9dBgW_Base
lbl_80B9E4C8:
/* 80B9E4C8  38 60 00 01 */	li r3, 1
/* 80B9E4CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9E4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9E4D4  7C 08 03 A6 */	mtlr r0
/* 80B9E4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9E4DC  4E 80 00 20 */	blr 
