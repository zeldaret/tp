lbl_80BE5A04:
/* 80BE5A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5A08  7C 08 02 A6 */	mflr r0
/* 80BE5A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5A10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE5A14  7C 7F 1B 78 */	mr r31, r3
/* 80BE5A18  80 63 05 AC */	lwz r3, 0x5ac(r3)
/* 80BE5A1C  28 03 00 00 */	cmplwi r3, 0
/* 80BE5A20  41 82 00 24 */	beq lbl_80BE5A44
/* 80BE5A24  4B 68 27 B0 */	b ChkUsed__9cBgW_BgIdCFv
/* 80BE5A28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE5A2C  41 82 00 18 */	beq lbl_80BE5A44
/* 80BE5A30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE5A34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE5A38  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BE5A3C  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80BE5A40  4B 48 E8 10 */	b Release__4cBgSFP9dBgW_Base
lbl_80BE5A44:
/* 80BE5A44  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BE5A48  88 1F 0A D4 */	lbz r0, 0xad4(r31)
/* 80BE5A4C  54 00 10 3A */	slwi r0, r0, 2
/* 80BE5A50  3C 80 80 BE */	lis r4, l_arcName@ha
/* 80BE5A54  38 84 5E 78 */	addi r4, r4, l_arcName@l
/* 80BE5A58  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BE5A5C  4B 44 75 AC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BE5A60  38 60 00 01 */	li r3, 1
/* 80BE5A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE5A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE5A6C  7C 08 03 A6 */	mtlr r0
/* 80BE5A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5A74  4E 80 00 20 */	blr 
