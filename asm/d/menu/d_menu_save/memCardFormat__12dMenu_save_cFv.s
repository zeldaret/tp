lbl_801F22CC:
/* 801F22CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F22D0  7C 08 02 A6 */	mflr r0
/* 801F22D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F22D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F22DC  7C 7F 1B 78 */	mr r31, r3
/* 801F22E0  88 63 01 BD */	lbz r3, 0x1bd(r3)
/* 801F22E4  28 03 00 00 */	cmplwi r3, 0
/* 801F22E8  41 82 00 0C */	beq lbl_801F22F4
/* 801F22EC  38 03 FF FF */	addi r0, r3, -1
/* 801F22F0  98 1F 01 BD */	stb r0, 0x1bd(r31)
lbl_801F22F4:
/* 801F22F4  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha
/* 801F22F8  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l
/* 801F22FC  4B E2 4C 31 */	bl FormatSync__15mDoMemCd_Ctrl_cFv
/* 801F2300  90 7F 21 98 */	stw r3, 0x2198(r31)
/* 801F2304  80 1F 21 98 */	lwz r0, 0x2198(r31)
/* 801F2308  2C 00 00 00 */	cmpwi r0, 0
/* 801F230C  41 82 00 0C */	beq lbl_801F2318
/* 801F2310  38 00 00 16 */	li r0, 0x16
/* 801F2314  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F2318:
/* 801F2318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F231C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F2320  7C 08 03 A6 */	mtlr r0
/* 801F2324  38 21 00 10 */	addi r1, r1, 0x10
/* 801F2328  4E 80 00 20 */	blr 
