lbl_80CC81DC:
/* 80CC81DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC81E0  7C 08 02 A6 */	mflr r0
/* 80CC81E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC81E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CC81EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CC81F0  7C 7E 1B 78 */	mr r30, r3
/* 80CC81F4  3C 80 80 CD */	lis r4, TKS_SET_POS@ha /* 0x80CC9188@ha */
/* 80CC81F8  3B E4 91 88 */	addi r31, r4, TKS_SET_POS@l /* 0x80CC9188@l */
/* 80CC81FC  A0 83 06 12 */	lhz r4, 0x612(r3)
/* 80CC8200  38 A0 00 03 */	li r5, 3
/* 80CC8204  38 DE 06 28 */	addi r6, r30, 0x628
/* 80CC8208  48 00 09 59 */	bl exeEmtRt__11daSCannon_cFUsiPP14JPABaseEmitter
/* 80CC820C  38 7E 05 84 */	addi r3, r30, 0x584
/* 80CC8210  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80CC8214  4B 66 02 19 */	bl checkPass__12J3DFrameCtrlFf
/* 80CC8218  2C 03 00 00 */	cmpwi r3, 0
/* 80CC821C  41 82 00 40 */	beq lbl_80CC825C
/* 80CC8220  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80CC8224  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CC8228  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80CC822C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CC8230  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CC8234  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC8238  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC823C  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 80CC8240  38 80 00 05 */	li r4, 5
/* 80CC8244  38 A0 00 1F */	li r5, 0x1f
/* 80CC8248  38 C1 00 08 */	addi r6, r1, 8
/* 80CC824C  4B 3A 77 D9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80CC8250  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80CC8254  80 9E 06 04 */	lwz r4, 0x604(r30)
/* 80CC8258  4B 37 FF 25 */	bl cutEnd__16dEvent_manager_cFi
lbl_80CC825C:
/* 80CC825C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CC8260  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CC8264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC8268  7C 08 03 A6 */	mtlr r0
/* 80CC826C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC8270  4E 80 00 20 */	blr 
