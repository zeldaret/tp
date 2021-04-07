lbl_800243B0:
/* 800243B0  3C 80 80 3F */	lis r4, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 800243B4  38 84 60 94 */	addi r4, r4, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 800243B8  1C 03 04 04 */	mulli r0, r3, 0x404
/* 800243BC  7C 64 02 14 */	add r3, r4, r0
/* 800243C0  88 03 03 F8 */	lbz r0, 0x3f8(r3)
/* 800243C4  7C 00 07 75 */	extsb. r0, r0
/* 800243C8  40 80 00 0C */	bge lbl_800243D4
/* 800243CC  38 60 00 00 */	li r3, 0
/* 800243D0  4E 80 00 20 */	blr 
lbl_800243D4:
/* 800243D4  54 00 10 3A */	slwi r0, r0, 2
/* 800243D8  3C 60 80 3A */	lis r3, mMemoryBlock__20dStage_roomControl_c@ha /* 0x803A6920@ha */
/* 800243DC  38 63 69 20 */	addi r3, r3, mMemoryBlock__20dStage_roomControl_c@l /* 0x803A6920@l */
/* 800243E0  7C 63 00 2E */	lwzx r3, r3, r0
/* 800243E4  4E 80 00 20 */	blr 
