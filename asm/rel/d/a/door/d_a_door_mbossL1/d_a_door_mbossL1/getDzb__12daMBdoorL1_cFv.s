lbl_80673110:
/* 80673110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80673114  7C 08 02 A6 */	mflr r0
/* 80673118  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067311C  4B FF F7 1D */	bl getNowLevel__FP10fopAc_ac_c
/* 80673120  2C 03 00 05 */	cmpwi r3, 5
/* 80673124  3C 60 80 67 */	lis r3, d_a_door_mbossL1__stringBase0@ha /* 0x80677660@ha */
/* 80673128  38 63 76 60 */	addi r3, r3, d_a_door_mbossL1__stringBase0@l /* 0x80677660@l */
/* 8067312C  38 63 01 ED */	addi r3, r3, 0x1ed
/* 80673130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80673134  7C 08 03 A6 */	mtlr r0
/* 80673138  38 21 00 10 */	addi r1, r1, 0x10
/* 8067313C  4E 80 00 20 */	blr 
