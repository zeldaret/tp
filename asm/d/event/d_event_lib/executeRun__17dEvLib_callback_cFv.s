lbl_80048B48:
/* 80048B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80048B4C  7C 08 02 A6 */	mflr r0
/* 80048B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80048B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80048B58  93 C1 00 08 */	stw r30, 8(r1)
/* 80048B5C  7C 7E 1B 78 */	mr r30, r3
/* 80048B60  80 63 00 04 */	lwz r3, 4(r3)
/* 80048B64  A8 83 00 FC */	lha r4, 0xfc(r3)
/* 80048B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80048B6C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80048B70  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80048B74  4B FF EF 05 */	bl endCheck__16dEvent_manager_cFs
/* 80048B78  2C 03 00 00 */	cmpwi r3, 0
/* 80048B7C  40 82 00 1C */	bne lbl_80048B98
/* 80048B80  7F C3 F3 78 */	mr r3, r30
/* 80048B84  81 9E 00 00 */	lwz r12, 0(r30)
/* 80048B88  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80048B8C  7D 89 03 A6 */	mtctr r12
/* 80048B90  4E 80 04 21 */	bctrl 
/* 80048B94  48 00 00 2C */	b lbl_80048BC0
lbl_80048B98:
/* 80048B98  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80048B9C  4B FF 98 CD */	bl reset__14dEvt_control_cFv
/* 80048BA0  7F C3 F3 78 */	mr r3, r30
/* 80048BA4  38 80 00 00 */	li r4, 0
/* 80048BA8  4B FF FD C9 */	bl func_80048970
/* 80048BAC  7F C3 F3 78 */	mr r3, r30
/* 80048BB0  81 9E 00 00 */	lwz r12, 0(r30)
/* 80048BB4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80048BB8  7D 89 03 A6 */	mtctr r12
/* 80048BBC  4E 80 04 21 */	bctrl 
lbl_80048BC0:
/* 80048BC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80048BC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80048BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048BCC  7C 08 03 A6 */	mtlr r0
/* 80048BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80048BD4  4E 80 00 20 */	blr 
