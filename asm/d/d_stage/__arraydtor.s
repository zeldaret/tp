lbl_80028328:
/* 80028328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002832C  7C 08 02 A6 */	mflr r0
/* 80028330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80028334  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 80028338  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l
/* 8002833C  3C 80 80 03 */	lis r4, __dt__19dStage_roomStatus_cFv@ha
/* 80028340  38 84 83 60 */	addi r4, r4, __dt__19dStage_roomStatus_cFv@l
/* 80028344  38 A0 04 04 */	li r5, 0x404
/* 80028348  38 C0 00 40 */	li r6, 0x40
/* 8002834C  48 33 99 9D */	bl __destroy_arr
/* 80028350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80028354  7C 08 03 A6 */	mtlr r0
/* 80028358  38 21 00 10 */	addi r1, r1, 0x10
/* 8002835C  4E 80 00 20 */	blr 
