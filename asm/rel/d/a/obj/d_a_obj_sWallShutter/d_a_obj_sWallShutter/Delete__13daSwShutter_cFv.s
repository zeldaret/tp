lbl_80598E00:
/* 80598E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80598E04  7C 08 02 A6 */	mflr r0
/* 80598E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80598E0C  7C 64 1B 78 */	mr r4, r3
/* 80598E10  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80598E14  88 04 05 AC */	lbz r0, 0x5ac(r4)
/* 80598E18  54 00 10 3A */	slwi r0, r0, 2
/* 80598E1C  3C 80 80 5A */	lis r4, l_resNameIdx@ha /* 0x80598FE8@ha */
/* 80598E20  38 84 8F E8 */	addi r4, r4, l_resNameIdx@l /* 0x80598FE8@l */
/* 80598E24  7C 84 00 2E */	lwzx r4, r4, r0
/* 80598E28  4B A9 41 E1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80598E2C  38 60 00 01 */	li r3, 1
/* 80598E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80598E34  7C 08 03 A6 */	mtlr r0
/* 80598E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80598E3C  4E 80 00 20 */	blr 
