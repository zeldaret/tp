lbl_80540C54:
/* 80540C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540C58  7C 08 02 A6 */	mflr r0
/* 80540C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540C60  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80540C64  2C 00 00 02 */	cmpwi r0, 2
/* 80540C68  41 82 00 20 */	beq lbl_80540C88
/* 80540C6C  40 80 00 40 */	bge lbl_80540CAC
/* 80540C70  2C 00 00 00 */	cmpwi r0, 0
/* 80540C74  40 80 00 0C */	bge lbl_80540C80
/* 80540C78  48 00 00 34 */	b lbl_80540CAC
/* 80540C7C  48 00 00 30 */	b lbl_80540CAC
lbl_80540C80:
/* 80540C80  38 00 00 02 */	li r0, 2
/* 80540C84  B0 03 0E 22 */	sth r0, 0xe22(r3)
lbl_80540C88:
/* 80540C88  4B C0 B9 58 */	b daNpcT_chkDoBtnIsSpeak__FP10fopAc_ac_c
/* 80540C8C  2C 03 00 00 */	cmpwi r3, 0
/* 80540C90  41 82 00 1C */	beq lbl_80540CAC
/* 80540C94  38 00 00 08 */	li r0, 8
/* 80540C98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80540C9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80540CA0  98 03 5E 24 */	stb r0, 0x5e24(r3)
/* 80540CA4  38 00 00 00 */	li r0, 0
/* 80540CA8  98 03 5E 4A */	stb r0, 0x5e4a(r3)
lbl_80540CAC:
/* 80540CAC  38 60 00 01 */	li r3, 1
/* 80540CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540CB4  7C 08 03 A6 */	mtlr r0
/* 80540CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80540CBC  4E 80 00 20 */	blr 
