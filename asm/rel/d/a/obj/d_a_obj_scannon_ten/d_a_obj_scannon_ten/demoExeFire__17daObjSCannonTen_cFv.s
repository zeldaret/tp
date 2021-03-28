lbl_80CCC260:
/* 80CCC260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCC264  7C 08 02 A6 */	mflr r0
/* 80CCC268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCC26C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCC270  7C 7F 1B 78 */	mr r31, r3
/* 80CCC274  48 00 04 D9 */	bl exeEmtSmoke__17daObjSCannonTen_cFv
/* 80CCC278  38 7F 05 78 */	addi r3, r31, 0x578
/* 80CCC27C  3C 80 80 CD */	lis r4, lit_4200@ha
/* 80CCC280  C0 24 CC 70 */	lfs f1, lit_4200@l(r4)
/* 80CCC284  4B 65 C1 A8 */	b checkPass__12J3DFrameCtrlFf
/* 80CCC288  2C 03 00 00 */	cmpwi r3, 0
/* 80CCC28C  41 82 00 18 */	beq lbl_80CCC2A4
/* 80CCC290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCC294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCC298  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CCC29C  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 80CCC2A0  4B 37 BE DC */	b cutEnd__16dEvent_manager_cFi
lbl_80CCC2A4:
/* 80CCC2A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCC2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCC2AC  7C 08 03 A6 */	mtlr r0
/* 80CCC2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCC2B4  4E 80 00 20 */	blr 
