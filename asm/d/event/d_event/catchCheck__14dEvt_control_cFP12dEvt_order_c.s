lbl_80041C90:
/* 80041C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80041C94  7C 08 02 A6 */	mflr r0
/* 80041C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80041C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80041CA0  7C 7F 1B 78 */	mr r31, r3
/* 80041CA4  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80041CA8  80 A4 00 08 */	lwz r5, 8(r4)
/* 80041CAC  28 05 00 00 */	cmplwi r5, 0
/* 80041CB0  41 82 00 1C */	beq lbl_80041CCC
/* 80041CB4  28 03 00 00 */	cmplwi r3, 0
/* 80041CB8  41 82 00 1C */	beq lbl_80041CD4
/* 80041CBC  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 80041CC0  54 00 06 72 */	rlwinm r0, r0, 0, 0x19, 0x19
/* 80041CC4  2C 00 00 40 */	cmpwi r0, 0x40
/* 80041CC8  41 82 00 0C */	beq lbl_80041CD4
lbl_80041CCC:
/* 80041CCC  38 60 00 00 */	li r3, 0
/* 80041CD0  48 00 00 50 */	b lbl_80041D20
lbl_80041CD4:
/* 80041CD4  38 00 00 06 */	li r0, 6
/* 80041CD8  B0 05 00 F8 */	sth r0, 0xf8(r5)
/* 80041CDC  28 03 00 00 */	cmplwi r3, 0
/* 80041CE0  41 82 00 08 */	beq lbl_80041CE8
/* 80041CE4  B0 03 00 F8 */	sth r0, 0xf8(r3)
lbl_80041CE8:
/* 80041CE8  7F E3 FB 78 */	mr r3, r31
/* 80041CEC  4B FF FB 19 */	bl setParam__14dEvt_control_cFP12dEvt_order_c
/* 80041CF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80041CF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80041CF8  88 03 5B 68 */	lbz r0, 0x5b68(r3)
/* 80041CFC  98 1F 00 EE */	stb r0, 0xee(r31)
/* 80041D00  38 00 00 02 */	li r0, 2
/* 80041D04  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80041D08  A8 9F 00 DE */	lha r4, 0xde(r31)
/* 80041D0C  2C 04 FF FF */	cmpwi r4, -1
/* 80041D10  41 82 00 0C */	beq lbl_80041D1C
/* 80041D14  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80041D18  48 00 5C 6D */	bl order__16dEvent_manager_cFs
lbl_80041D1C:
/* 80041D1C  38 60 00 01 */	li r3, 1
lbl_80041D20:
/* 80041D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80041D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80041D28  7C 08 03 A6 */	mtlr r0
/* 80041D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80041D30  4E 80 00 20 */	blr 
