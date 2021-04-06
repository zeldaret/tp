lbl_804677E4:
/* 804677E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804677E8  7C 08 02 A6 */	mflr r0
/* 804677EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804677F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804677F4  7C 7F 1B 78 */	mr r31, r3
/* 804677F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804677FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80467800  88 9F 05 BA */	lbz r4, 0x5ba(r31)
/* 80467804  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80467808  7C 05 07 74 */	extsb r5, r0
/* 8046780C  4B BC DB 55 */	bl isSwitch__10dSv_info_cCFii
/* 80467810  2C 03 00 00 */	cmpwi r3, 0
/* 80467814  41 82 00 14 */	beq lbl_80467828
/* 80467818  7F E3 FB 78 */	mr r3, r31
/* 8046781C  3C 80 80 47 */	lis r4, l_openAction@ha /* 0x804680C8@ha */
/* 80467820  38 84 80 C8 */	addi r4, r4, l_openAction@l /* 0x804680C8@l */
/* 80467824  4B FF FE E5 */	bl setAction__7daDsh_cFPQ27daDsh_c8action_c
lbl_80467828:
/* 80467828  38 60 00 01 */	li r3, 1
/* 8046782C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80467830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80467834  7C 08 03 A6 */	mtlr r0
/* 80467838  38 21 00 10 */	addi r1, r1, 0x10
/* 8046783C  4E 80 00 20 */	blr 
