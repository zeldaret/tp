lbl_80A5DB54:
/* 80A5DB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5DB58  7C 08 02 A6 */	mflr r0
/* 80A5DB5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5DB60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5DB64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5DB68  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A5DB6C  4B 5E 48 FC */	b reset__14dEvt_control_cFv
/* 80A5DB70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5DB74  7C 08 03 A6 */	mtlr r0
/* 80A5DB78  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5DB7C  4E 80 00 20 */	blr 
