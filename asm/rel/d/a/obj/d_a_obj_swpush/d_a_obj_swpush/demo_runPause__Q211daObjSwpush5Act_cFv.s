lbl_8048464C:
/* 8048464C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484650  7C 08 02 A6 */	mflr r0
/* 80484654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048465C  7C 7F 1B 78 */	mr r31, r3
/* 80484660  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80484664  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80484668  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 8048466C  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80484670  60 00 02 00 */	ori r0, r0, 0x200
/* 80484674  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80484678  A8 7F 05 B8 */	lha r3, 0x5b8(r31)
/* 8048467C  38 03 FF FF */	addi r0, r3, -1
/* 80484680  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80484684  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 80484688  2C 00 00 00 */	cmpwi r0, 0
/* 8048468C  41 81 00 14 */	bgt lbl_804846A0
/* 80484690  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 80484694  4B BB DD D4 */	b reset__14dEvt_control_cFv
/* 80484698  7F E3 FB 78 */	mr r3, r31
/* 8048469C  4B FF FE D5 */	bl demo_non_init__Q211daObjSwpush5Act_cFv
lbl_804846A0:
/* 804846A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804846A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804846A8  7C 08 03 A6 */	mtlr r0
/* 804846AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804846B0  4E 80 00 20 */	blr 
