lbl_8002490C:
/* 8002490C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024910  7C 08 02 A6 */	mflr r0
/* 80024914  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024918  1C A3 00 0A */	mulli r5, r3, 0xa
/* 8002491C  3C 60 80 3A */	lis r3, mArcBank__20dStage_roomControl_c@ha
/* 80024920  38 03 69 6C */	addi r0, r3, mArcBank__20dStage_roomControl_c@l
/* 80024924  7C 60 2A 14 */	add r3, r0, r5
/* 80024928  38 A0 00 09 */	li r5, 9
/* 8002492C  48 34 41 BD */	bl strncpy
/* 80024930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024934  7C 08 03 A6 */	mtlr r0
/* 80024938  38 21 00 10 */	addi r1, r1, 0x10
/* 8002493C  4E 80 00 20 */	blr 
