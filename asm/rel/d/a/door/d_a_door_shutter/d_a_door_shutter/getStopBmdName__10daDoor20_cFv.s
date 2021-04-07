lbl_80460B38:
/* 80460B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460B3C  7C 08 02 A6 */	mflr r0
/* 80460B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460B44  4B BD 96 45 */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 80460B48  2C 03 00 0B */	cmpwi r3, 0xb
/* 80460B4C  41 82 00 0C */	beq lbl_80460B58
/* 80460B50  40 80 00 08 */	bge lbl_80460B58
/* 80460B54  2C 03 00 03 */	cmpwi r3, 3
lbl_80460B58:
/* 80460B58  3C 60 80 46 */	lis r3, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80460B5C  38 63 68 D8 */	addi r3, r3, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80460B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460B64  7C 08 03 A6 */	mtlr r0
/* 80460B68  38 21 00 10 */	addi r1, r1, 0x10
/* 80460B6C  4E 80 00 20 */	blr 
