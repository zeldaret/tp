lbl_804A365C:
/* 804A365C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A3660  7C 08 02 A6 */	mflr r0
/* 804A3664  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A3668  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A366C  93 C1 00 08 */	stw r30, 8(r1)
/* 804A3670  7C 7E 1B 78 */	mr r30, r3
/* 804A3674  3C 60 80 4A */	lis r3, lit_3759@ha
/* 804A3678  3B E3 40 EC */	addi r31, r3, lit_3759@l
/* 804A367C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804A3680  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804A3684  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804A3688  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804A368C  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 804A3690  7D 89 03 A6 */	mtctr r12
/* 804A3694  4E 80 04 21 */	bctrl 
/* 804A3698  2C 03 00 00 */	cmpwi r3, 0
/* 804A369C  41 82 00 18 */	beq lbl_804A36B4
/* 804A36A0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 804A36A4  D0 1E 07 24 */	stfs f0, 0x724(r30)
/* 804A36A8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 804A36AC  D0 1E 07 28 */	stfs f0, 0x728(r30)
/* 804A36B0  48 00 00 10 */	b lbl_804A36C0
lbl_804A36B4:
/* 804A36B4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 804A36B8  D0 1E 07 24 */	stfs f0, 0x724(r30)
/* 804A36BC  D0 1E 07 28 */	stfs f0, 0x728(r30)
lbl_804A36C0:
/* 804A36C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A36C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A36C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A36CC  7C 08 03 A6 */	mtlr r0
/* 804A36D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A36D4  4E 80 00 20 */	blr 
