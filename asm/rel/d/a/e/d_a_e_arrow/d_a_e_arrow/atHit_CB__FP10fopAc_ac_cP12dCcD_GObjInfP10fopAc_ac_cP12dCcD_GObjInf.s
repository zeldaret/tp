lbl_8067DAE8:
/* 8067DAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067DAEC  7C 08 02 A6 */	mflr r0
/* 8067DAF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067DAF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067DAF8  93 C1 00 08 */	stw r30, 8(r1)
/* 8067DAFC  7C 7E 1B 78 */	mr r30, r3
/* 8067DB00  28 05 00 00 */	cmplwi r5, 0
/* 8067DB04  41 82 00 40 */	beq lbl_8067DB44
/* 8067DB08  A8 05 00 08 */	lha r0, 8(r5)
/* 8067DB0C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8067DB10  40 82 00 34 */	bne lbl_8067DB44
/* 8067DB14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067DB18  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8067DB1C  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8067DB20  4B A5 EF 0C */	b checkWoodShieldEquipNotIronBall__9daAlink_cCFv
/* 8067DB24  2C 03 00 00 */	cmpwi r3, 0
/* 8067DB28  41 82 00 1C */	beq lbl_8067DB44
/* 8067DB2C  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8067DB30  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8067DB34  38 BE 04 E4 */	addi r5, r30, 0x4e4
/* 8067DB38  38 DE 09 D4 */	addi r6, r30, 0x9d4
/* 8067DB3C  38 FE 09 C8 */	addi r7, r30, 0x9c8
/* 8067DB40  4B A5 EF 40 */	b getArrowShieldOffset__9daAlink_cCFPC4cXyzPC5csXyzP4cXyzP4cXyz
lbl_8067DB44:
/* 8067DB44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067DB48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8067DB4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067DB50  7C 08 03 A6 */	mtlr r0
/* 8067DB54  38 21 00 10 */	addi r1, r1, 0x10
/* 8067DB58  4E 80 00 20 */	blr 
