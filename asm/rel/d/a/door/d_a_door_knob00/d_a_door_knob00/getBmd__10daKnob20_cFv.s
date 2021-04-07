lbl_8045E8C8:
/* 8045E8C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E8CC  7C 08 02 A6 */	mflr r0
/* 8045E8D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E8D4  4B FF FF 85 */	bl getDoorModel__12knob_param_cFP10fopAc_ac_c
/* 8045E8D8  7C 66 1B 78 */	mr r6, r3
/* 8045E8DC  3C 60 80 46 */	lis r3, l_bmdName@ha /* 0x80460A98@ha */
/* 8045E8E0  38 63 0A 98 */	addi r3, r3, l_bmdName@l /* 0x80460A98@l */
/* 8045E8E4  3C 80 80 46 */	lis r4, d_a_door_knob00__stringBase0@ha /* 0x804606C4@ha */
/* 8045E8E8  38 84 06 C4 */	addi r4, r4, d_a_door_knob00__stringBase0@l /* 0x804606C4@l */
/* 8045E8EC  38 84 00 3B */	addi r4, r4, 0x3b
/* 8045E8F0  3C A0 80 46 */	lis r5, l_bmd_base_name@ha /* 0x80460894@ha */
/* 8045E8F4  38 A5 08 94 */	addi r5, r5, l_bmd_base_name@l /* 0x80460894@l */
/* 8045E8F8  80 A5 00 00 */	lwz r5, 0(r5)
/* 8045E8FC  4C C6 31 82 */	crclr 6
/* 8045E900  4B F0 7B DD */	bl sprintf
/* 8045E904  3C 60 80 46 */	lis r3, l_bmdName@ha /* 0x80460A98@ha */
/* 8045E908  38 63 0A 98 */	addi r3, r3, l_bmdName@l /* 0x80460A98@l */
/* 8045E90C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E910  7C 08 03 A6 */	mtlr r0
/* 8045E914  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E918  4E 80 00 20 */	blr 
