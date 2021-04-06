lbl_80B44B8C:
/* 80B44B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B44B90  7C 08 02 A6 */	mflr r0
/* 80B44B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B44B98  80 04 00 00 */	lwz r0, 0(r4)
/* 80B44B9C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80B44BA0  41 82 00 14 */	beq lbl_80B44BB4
/* 80B44BA4  40 80 00 1C */	bge lbl_80B44BC0
/* 80B44BA8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B44BAC  41 82 00 14 */	beq lbl_80B44BC0
/* 80B44BB0  48 00 00 10 */	b lbl_80B44BC0
lbl_80B44BB4:
/* 80B44BB4  38 80 03 21 */	li r4, 0x321
/* 80B44BB8  38 A0 00 00 */	li r5, 0
/* 80B44BBC  4B 60 70 35 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B44BC0:
/* 80B44BC0  38 60 00 01 */	li r3, 1
/* 80B44BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B44BC8  7C 08 03 A6 */	mtlr r0
/* 80B44BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B44BD0  4E 80 00 20 */	blr 
