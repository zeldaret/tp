lbl_80459BB4:
/* 80459BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459BB8  7C 08 02 A6 */	mflr r0
/* 80459BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459BC0  7C 65 1B 78 */	mr r5, r3
/* 80459BC4  28 04 00 00 */	cmplwi r4, 0
/* 80459BC8  41 82 00 14 */	beq lbl_80459BDC
/* 80459BCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80459BD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80459BD4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80459BD8  4B C1 AE 30 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80459BDC:
/* 80459BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459BE0  7C 08 03 A6 */	mtlr r0
/* 80459BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80459BE8  4E 80 00 20 */	blr 
