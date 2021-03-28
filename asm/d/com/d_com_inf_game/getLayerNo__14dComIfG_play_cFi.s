lbl_8002C97C:
/* 8002C97C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002C980  7C 08 02 A6 */	mflr r0
/* 8002C984  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002C988  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8002C98C  7C 00 07 74 */	extsb r0, r0
/* 8002C990  7C 04 03 78 */	mr r4, r0
/* 8002C994  2C 00 FF FF */	cmpwi r0, -1
/* 8002C998  41 81 00 18 */	bgt lbl_8002C9B0
/* 8002C99C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C9A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C9A4  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 8002C9A8  7C 00 07 74 */	extsb r0, r0
/* 8002C9AC  7C 04 03 78 */	mr r4, r0
lbl_8002C9B0:
/* 8002C9B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C9B4  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 8002C9B8  38 65 4E 00 */	addi r3, r5, 0x4e00
/* 8002C9BC  88 05 4E 0B */	lbz r0, 0x4e0b(r5)
/* 8002C9C0  7C 05 07 74 */	extsb r5, r0
/* 8002C9C4  4B FF FF 8D */	bl getLayerNo_common__14dComIfG_play_cFPCcii
/* 8002C9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002C9CC  7C 08 03 A6 */	mtlr r0
/* 8002C9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8002C9D4  4E 80 00 20 */	blr 
