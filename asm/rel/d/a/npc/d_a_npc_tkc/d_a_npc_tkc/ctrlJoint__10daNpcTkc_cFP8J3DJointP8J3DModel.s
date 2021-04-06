lbl_80B0D25C:
/* 80B0D25C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0D260  7C 08 02 A6 */	mflr r0
/* 80B0D264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0D268  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0D26C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B0D270  7C 7E 1B 78 */	mr r30, r3
/* 80B0D274  A0 04 00 14 */	lhz r0, 0x14(r4)
/* 80B0D278  2C 00 00 03 */	cmpwi r0, 3
/* 80B0D27C  41 82 00 0C */	beq lbl_80B0D288
/* 80B0D280  2C 00 00 05 */	cmpwi r0, 5
/* 80B0D284  40 82 00 2C */	bne lbl_80B0D2B0
lbl_80B0D288:
/* 80B0D288  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B0D28C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B0D290  41 82 00 20 */	beq lbl_80B0D2B0
/* 80B0D294  83 FE 05 80 */	lwz r31, 0x580(r30)
/* 80B0D298  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B0D29C  80 83 00 08 */	lwz r4, 8(r3)
/* 80B0D2A0  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80B0D2A4  4B 50 06 ED */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80B0D2A8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B0D2AC  93 E3 00 08 */	stw r31, 8(r3)
lbl_80B0D2B0:
/* 80B0D2B0  38 60 00 01 */	li r3, 1
/* 80B0D2B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0D2B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B0D2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0D2C0  7C 08 03 A6 */	mtlr r0
/* 80B0D2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0D2C8  4E 80 00 20 */	blr 
