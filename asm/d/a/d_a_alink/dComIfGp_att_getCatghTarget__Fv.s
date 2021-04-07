lbl_800CFEC4:
/* 800CFEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CFEC8  7C 08 02 A6 */	mflr r0
/* 800CFECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CFED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CFED4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CFED8  38 64 5B 54 */	addi r3, r4, 0x5b54
/* 800CFEDC  80 84 5B 64 */	lwz r4, 0x5b64(r4)
/* 800CFEE0  4B FA 3A AD */	bl convPId__11dAttCatch_cFUi
/* 800CFEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CFEE8  7C 08 03 A6 */	mtlr r0
/* 800CFEEC  38 21 00 10 */	addi r1, r1, 0x10
/* 800CFEF0  4E 80 00 20 */	blr 
