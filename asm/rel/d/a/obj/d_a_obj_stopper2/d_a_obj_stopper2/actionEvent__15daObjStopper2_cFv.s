lbl_80CEFA60:
/* 80CEFA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEFA64  7C 08 02 A6 */	mflr r0
/* 80CEFA68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEFA6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEFA70  93 C1 00 08 */	stw r30, 8(r1)
/* 80CEFA74  7C 7E 1B 78 */	mr r30, r3
/* 80CEFA78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEFA7C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CEFA80  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80CEFA84  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80CEFA88  54 00 08 3C */	slwi r0, r0, 1
/* 80CEFA8C  7C 9E 02 14 */	add r4, r30, r0
/* 80CEFA90  A8 84 05 7C */	lha r4, 0x57c(r4)
/* 80CEFA94  4B 35 7F E4 */	b endCheck__16dEvent_manager_cFs
/* 80CEFA98  2C 03 00 00 */	cmpwi r3, 0
/* 80CEFA9C  41 82 00 18 */	beq lbl_80CEFAB4
/* 80CEFAA0  38 00 00 00 */	li r0, 0
/* 80CEFAA4  98 1E 05 86 */	stb r0, 0x586(r30)
/* 80CEFAA8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80CEFAAC  4B 35 29 BC */	b reset__14dEvt_control_cFv
/* 80CEFAB0  48 00 00 0C */	b lbl_80CEFABC
lbl_80CEFAB4:
/* 80CEFAB4  7F C3 F3 78 */	mr r3, r30
/* 80CEFAB8  48 00 00 21 */	bl demoProc__15daObjStopper2_cFv
lbl_80CEFABC:
/* 80CEFABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEFAC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CEFAC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEFAC8  7C 08 03 A6 */	mtlr r0
/* 80CEFACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEFAD0  4E 80 00 20 */	blr 
