lbl_80024384:
/* 80024384  2C 04 00 00 */	cmpwi r4, 0
/* 80024388  41 80 00 0C */	blt lbl_80024394
/* 8002438C  2C 04 00 40 */	cmpwi r4, 0x40
/* 80024390  41 80 00 0C */	blt lbl_8002439C
lbl_80024394:
/* 80024394  38 60 00 00 */	li r3, 0
/* 80024398  4E 80 00 20 */	blr 
lbl_8002439C:
/* 8002439C  1C 84 04 04 */	mulli r4, r4, 0x404
/* 800243A0  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 800243A4  38 03 60 94 */	addi r0, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 800243A8  7C 60 22 14 */	add r3, r0, r4
/* 800243AC  4E 80 00 20 */	blr 
