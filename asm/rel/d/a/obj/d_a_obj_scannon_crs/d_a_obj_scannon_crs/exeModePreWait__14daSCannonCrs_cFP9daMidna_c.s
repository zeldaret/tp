lbl_80CC9F34:
/* 80CC9F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC9F38  7C 08 02 A6 */	mflr r0
/* 80CC9F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC9F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC9F44  7C 7F 1B 78 */	mr r31, r3
/* 80CC9F48  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CC9F4C  28 00 00 01 */	cmplwi r0, 1
/* 80CC9F50  40 82 00 14 */	bne lbl_80CC9F64
/* 80CC9F54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC9F58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC9F5C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80CC9F60  4B 37 85 08 */	b reset__14dEvt_control_cFv
lbl_80CC9F64:
/* 80CC9F64  38 00 00 00 */	li r0, 0
/* 80CC9F68  98 1F 06 4E */	stb r0, 0x64e(r31)
/* 80CC9F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC9F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC9F74  7C 08 03 A6 */	mtlr r0
/* 80CC9F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC9F7C  4E 80 00 20 */	blr 
