lbl_804E2530:
/* 804E2530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2534  7C 08 02 A6 */	mflr r0
/* 804E2538  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E253C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2540  7C 7F 1B 79 */	or. r31, r3, r3
/* 804E2544  41 82 00 1C */	beq lbl_804E2560
/* 804E2548  3C A0 80 4E */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x804E5098@ha */
/* 804E254C  38 05 50 98 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x804E5098@l */
/* 804E2550  90 1F 00 00 */	stw r0, 0(r31)
/* 804E2554  7C 80 07 35 */	extsh. r0, r4
/* 804E2558  40 81 00 08 */	ble lbl_804E2560
/* 804E255C  4B DE C7 E1 */	bl __dl__FPv
lbl_804E2560:
/* 804E2560  7F E3 FB 78 */	mr r3, r31
/* 804E2564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E256C  7C 08 03 A6 */	mtlr r0
/* 804E2570  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2574  4E 80 00 20 */	blr 
