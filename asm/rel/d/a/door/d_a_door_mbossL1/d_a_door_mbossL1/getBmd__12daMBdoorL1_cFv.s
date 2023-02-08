lbl_806730AC:
/* 806730AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806730B0  7C 08 02 A6 */	mflr r0
/* 806730B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806730B8  4B FF F7 81 */	bl getNowLevel__FP10fopAc_ac_c
/* 806730BC  2C 03 00 0B */	cmpwi r3, 0xb
/* 806730C0  41 82 00 14 */	beq lbl_806730D4
/* 806730C4  40 80 00 20 */	bge lbl_806730E4
/* 806730C8  2C 03 00 05 */	cmpwi r3, 5
/* 806730CC  41 82 00 08 */	beq lbl_806730D4
/* 806730D0  48 00 00 14 */	b lbl_806730E4
lbl_806730D4:
/* 806730D4  3C 60 80 67 */	lis r3, d_a_door_mbossL1__stringBase0@ha /* 0x80677660@ha */
/* 806730D8  38 63 76 60 */	addi r3, r3, d_a_door_mbossL1__stringBase0@l /* 0x80677660@l */
/* 806730DC  38 63 01 B4 */	addi r3, r3, 0x1b4
/* 806730E0  48 00 00 10 */	b lbl_806730F0
lbl_806730E4:
/* 806730E4  3C 60 80 67 */	lis r3, d_a_door_mbossL1__stringBase0@ha /* 0x80677660@ha */
/* 806730E8  38 63 76 60 */	addi r3, r3, d_a_door_mbossL1__stringBase0@l /* 0x80677660@l */
/* 806730EC  38 63 01 C5 */	addi r3, r3, 0x1c5
lbl_806730F0:
/* 806730F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806730F4  7C 08 03 A6 */	mtlr r0
/* 806730F8  38 21 00 10 */	addi r1, r1, 0x10
/* 806730FC  4E 80 00 20 */	blr 
