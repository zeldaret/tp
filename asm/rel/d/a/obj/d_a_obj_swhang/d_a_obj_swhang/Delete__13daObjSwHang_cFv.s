lbl_80CFCD98:
/* 80CFCD98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFCD9C  7C 08 02 A6 */	mflr r0
/* 80CFCDA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFCDA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFCDA8  7C 7F 1B 78 */	mr r31, r3
/* 80CFCDAC  80 63 07 34 */	lwz r3, 0x734(r3)
/* 80CFCDB0  28 03 00 00 */	cmplwi r3, 0
/* 80CFCDB4  41 82 00 24 */	beq lbl_80CFCDD8
/* 80CFCDB8  4B 56 B4 1C */	b ChkUsed__9cBgW_BgIdCFv
/* 80CFCDBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CFCDC0  41 82 00 18 */	beq lbl_80CFCDD8
/* 80CFCDC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFCDC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFCDCC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CFCDD0  80 9F 07 34 */	lwz r4, 0x734(r31)
/* 80CFCDD4  4B 37 74 7C */	b Release__4cBgSFP9dBgW_Base
lbl_80CFCDD8:
/* 80CFCDD8  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80CFCDDC  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80CFCDE0  54 00 10 3A */	slwi r0, r0, 2
/* 80CFCDE4  3C 80 80 D0 */	lis r4, l_arcName@ha
/* 80CFCDE8  38 84 D2 D8 */	addi r4, r4, l_arcName@l
/* 80CFCDEC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CFCDF0  4B 33 02 18 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CFCDF4  38 60 00 01 */	li r3, 1
/* 80CFCDF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFCDFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFCE00  7C 08 03 A6 */	mtlr r0
/* 80CFCE04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFCE08  4E 80 00 20 */	blr 
