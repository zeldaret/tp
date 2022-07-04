lbl_8003EF20:
/* 8003EF20  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8003EF24  7C 00 07 74 */	extsb r0, r0
/* 8003EF28  38 60 00 00 */	li r3, 0
/* 8003EF2C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003EF30  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003EF34  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8003EF38  28 04 00 00 */	cmplwi r4, 0
/* 8003EF3C  41 82 00 08 */	beq lbl_8003EF44
/* 8003EF40  A8 64 04 E6 */	lha r3, 0x4e6(r4)
lbl_8003EF44:
/* 8003EF44  3C 80 80 3F */	lis r4, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8003EF48  38 84 60 94 */	addi r4, r4, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8003EF4C  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8003EF50  7C 84 02 14 */	add r4, r4, r0
/* 8003EF54  80 84 00 20 */	lwz r4, 0x20(r4)
/* 8003EF58  28 04 00 00 */	cmplwi r4, 0
/* 8003EF5C  4D 82 00 20 */	beqlr 
/* 8003EF60  A8 04 00 1C */	lha r0, 0x1c(r4)
/* 8003EF64  7C 03 02 14 */	add r0, r3, r0
/* 8003EF68  7C 03 07 34 */	extsh r3, r0
/* 8003EF6C  4E 80 00 20 */	blr 
