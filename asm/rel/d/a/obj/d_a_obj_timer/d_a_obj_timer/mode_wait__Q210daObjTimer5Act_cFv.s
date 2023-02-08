lbl_80485284:
/* 80485284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485288  7C 08 02 A6 */	mflr r0
/* 8048528C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80485294  7C 7F 1B 78 */	mr r31, r3
/* 80485298  38 80 00 08 */	li r4, 8
/* 8048529C  38 A0 00 10 */	li r5, 0x10
/* 804852A0  48 00 03 7D */	bl func_8048561C
/* 804852A4  7C 64 1B 78 */	mr r4, r3
/* 804852A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804852AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804852B0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 804852B4  7C 05 07 74 */	extsb r5, r0
/* 804852B8  4B BB 00 A9 */	bl isSwitch__10dSv_info_cCFii
/* 804852BC  2C 03 00 00 */	cmpwi r3, 0
/* 804852C0  41 82 00 0C */	beq lbl_804852CC
/* 804852C4  7F E3 FB 78 */	mr r3, r31
/* 804852C8  48 00 00 19 */	bl mode_count_init__Q210daObjTimer5Act_cFv
lbl_804852CC:
/* 804852CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804852D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804852D4  7C 08 03 A6 */	mtlr r0
/* 804852D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804852DC  4E 80 00 20 */	blr 
