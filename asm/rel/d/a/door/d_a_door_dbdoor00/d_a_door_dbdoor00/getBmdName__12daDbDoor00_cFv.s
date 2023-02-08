lbl_8045D4B0:
/* 8045D4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D4B4  7C 08 02 A6 */	mflr r0
/* 8045D4B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D4BC  4B BD CC D9 */	bl getDoorModel__13door_param2_cFP10fopAc_ac_c
/* 8045D4C0  7C 66 1B 78 */	mr r6, r3
/* 8045D4C4  3C 60 80 46 */	lis r3, l_bmdName@ha /* 0x8045E7B0@ha */
/* 8045D4C8  38 63 E7 B0 */	addi r3, r3, l_bmdName@l /* 0x8045E7B0@l */
/* 8045D4CC  3C 80 80 46 */	lis r4, d_a_door_dbdoor00__stringBase0@ha /* 0x8045E56C@ha */
/* 8045D4D0  38 84 E5 6C */	addi r4, r4, d_a_door_dbdoor00__stringBase0@l /* 0x8045E56C@l */
/* 8045D4D4  38 84 00 4D */	addi r4, r4, 0x4d
/* 8045D4D8  3C A0 80 46 */	lis r5, l_bmd_base_name@ha /* 0x8045E684@ha */
/* 8045D4DC  38 A5 E6 84 */	addi r5, r5, l_bmd_base_name@l /* 0x8045E684@l */
/* 8045D4E0  80 A5 00 00 */	lwz r5, 0(r5)
/* 8045D4E4  4C C6 31 82 */	crclr 6
/* 8045D4E8  4B F0 8F F5 */	bl sprintf
/* 8045D4EC  3C 60 80 46 */	lis r3, l_bmdName@ha /* 0x8045E7B0@ha */
/* 8045D4F0  38 63 E7 B0 */	addi r3, r3, l_bmdName@l /* 0x8045E7B0@l */
/* 8045D4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D4F8  7C 08 03 A6 */	mtlr r0
/* 8045D4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D500  4E 80 00 20 */	blr 
