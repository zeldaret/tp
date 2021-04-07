lbl_804CCB1C:
/* 804CCB1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CCB20  7C 08 02 A6 */	mflr r0
/* 804CCB24  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CCB28  28 03 00 00 */	cmplwi r3, 0
/* 804CCB2C  41 82 00 3C */	beq lbl_804CCB68
/* 804CCB30  80 86 00 10 */	lwz r4, 0x10(r6)
/* 804CCB34  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 804CCB38  40 82 00 0C */	bne lbl_804CCB44
/* 804CCB3C  54 80 03 DF */	rlwinm. r0, r4, 0, 0xf, 0xf
/* 804CCB40  41 82 00 28 */	beq lbl_804CCB68
lbl_804CCB44:
/* 804CCB44  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CCB48  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CCB4C  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 804CCB50  28 00 00 00 */	cmplwi r0, 0
/* 804CCB54  40 82 00 14 */	bne lbl_804CCB68
/* 804CCB58  88 03 09 34 */	lbz r0, 0x934(r3)
/* 804CCB5C  28 00 00 04 */	cmplwi r0, 4
/* 804CCB60  41 82 00 08 */	beq lbl_804CCB68
/* 804CCB64  48 00 10 C9 */	bl actionInitBoomerangCarry__11daObjLife_cFv
lbl_804CCB68:
/* 804CCB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CCB6C  7C 08 03 A6 */	mtlr r0
/* 804CCB70  38 21 00 10 */	addi r1, r1, 0x10
/* 804CCB74  4E 80 00 20 */	blr 
