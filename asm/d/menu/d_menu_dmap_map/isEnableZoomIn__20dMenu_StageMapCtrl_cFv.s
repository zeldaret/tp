lbl_801C2538:
/* 801C2538  38 A0 00 00 */	li r5, 0
/* 801C253C  88 03 00 F3 */	lbz r0, 0xf3(r3)
/* 801C2540  28 00 00 00 */	cmplwi r0, 0
/* 801C2544  40 82 00 2C */	bne lbl_801C2570
/* 801C2548  3C 80 80 3F */	lis r4, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 801C254C  38 84 60 94 */	addi r4, r4, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 801C2550  88 03 00 E6 */	lbz r0, 0xe6(r3)
/* 801C2554  7C 00 07 74 */	extsb r0, r0
/* 801C2558  1C 00 04 04 */	mulli r0, r0, 0x404
/* 801C255C  7C 64 02 14 */	add r3, r4, r0
/* 801C2560  80 03 00 20 */	lwz r0, 0x20(r3)
/* 801C2564  28 00 00 00 */	cmplwi r0, 0
/* 801C2568  41 82 00 08 */	beq lbl_801C2570
/* 801C256C  38 A0 00 01 */	li r5, 1
lbl_801C2570:
/* 801C2570  7C A3 2B 78 */	mr r3, r5
/* 801C2574  4E 80 00 20 */	blr 
