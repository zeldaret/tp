lbl_8002D9B0:
/* 8002D9B0  3C 80 80 3F */	lis r4, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8002D9B4  38 84 60 94 */	addi r4, r4, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8002D9B8  1C 03 04 04 */	mulli r0, r3, 0x404
/* 8002D9BC  7C 64 02 14 */	add r3, r4, r0
/* 8002D9C0  88 63 03 F7 */	lbz r3, 0x3f7(r3)
/* 8002D9C4  7C 63 07 74 */	extsb r3, r3
/* 8002D9C8  4E 80 00 20 */	blr 
