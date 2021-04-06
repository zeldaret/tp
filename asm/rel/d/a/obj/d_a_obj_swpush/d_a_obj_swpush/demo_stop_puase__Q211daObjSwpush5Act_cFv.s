lbl_804846B4:
/* 804846B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804846B8  7C 08 02 A6 */	mflr r0
/* 804846BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804846C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804846C4  7C 7F 1B 78 */	mr r31, r3
/* 804846C8  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 804846CC  2C 00 00 01 */	cmpwi r0, 1
/* 804846D0  40 82 00 08 */	bne lbl_804846D8
/* 804846D4  4B FF FF 05 */	bl demo_reqPause__Q211daObjSwpush5Act_cFv
lbl_804846D8:
/* 804846D8  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 804846DC  2C 00 00 02 */	cmpwi r0, 2
/* 804846E0  40 82 00 14 */	bne lbl_804846F4
/* 804846E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804846E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804846EC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804846F0  4B BB DD 79 */	bl reset__14dEvt_control_cFv
lbl_804846F4:
/* 804846F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804846F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804846FC  7C 08 03 A6 */	mtlr r0
/* 80484700  38 21 00 10 */	addi r1, r1, 0x10
/* 80484704  4E 80 00 20 */	blr 
