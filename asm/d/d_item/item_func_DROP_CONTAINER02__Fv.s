lbl_8009939C:
/* 8009939C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800993A0  7C 08 02 A6 */	mflr r0
/* 800993A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800993A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800993AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800993B0  38 63 01 14 */	addi r3, r3, 0x114
/* 800993B4  38 80 00 01 */	li r4, 1
/* 800993B8  4B F9 AF B1 */	bl onLightDropGetFlag__16dSv_light_drop_cFUc
/* 800993BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800993C0  7C 08 03 A6 */	mtlr r0
/* 800993C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800993C8  4E 80 00 20 */	blr 
