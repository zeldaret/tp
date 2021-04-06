lbl_800243E8:
/* 800243E8  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 800243EC  98 0D 87 E5 */	stb r0, struct_80450D64+0x1(r13)
/* 800243F0  98 6D 87 E4 */	stb r3, struct_80450D64+0x0(r13)
/* 800243F4  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 800243F8  98 6D 87 E6 */	stb r3, struct_80450D64+0x2(r13)
/* 800243FC  7C A0 07 75 */	extsb. r0, r5
/* 80024400  4D 80 00 20 */	bltlr 
/* 80024404  38 80 00 01 */	li r4, 1
/* 80024408  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8002440C  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 80024410  7C A0 07 74 */	extsb r0, r5
/* 80024414  1C 00 04 04 */	mulli r0, r0, 0x404
/* 80024418  7C 63 02 14 */	add r3, r3, r0
/* 8002441C  98 83 03 F5 */	stb r4, 0x3f5(r3)
/* 80024420  4E 80 00 20 */	blr 
