lbl_804DEB60:
/* 804DEB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DEB64  7C 08 02 A6 */	mflr r0
/* 804DEB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DEB6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DEB70  93 C1 00 08 */	stw r30, 8(r1)
/* 804DEB74  7C 7E 1B 78 */	mr r30, r3
/* 804DEB78  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 804DEB7C  4B BA 4C B5 */	bl Move__10dCcD_GSttsFv
/* 804DEB80  88 1E 0B 0D */	lbz r0, 0xb0d(r30)
/* 804DEB84  28 00 00 00 */	cmplwi r0, 0
/* 804DEB88  40 82 00 10 */	bne lbl_804DEB98
/* 804DEB8C  80 1E 05 B4 */	lwz r0, 0x5b4(r30)
/* 804DEB90  28 00 00 00 */	cmplwi r0, 0
/* 804DEB94  41 82 00 3C */	beq lbl_804DEBD0
lbl_804DEB98:
/* 804DEB98  3C 60 D8 7B */	lis r3, 0xD87B /* 0xD87AFDDF@ha */
/* 804DEB9C  38 03 FD DF */	addi r0, r3, 0xFDDF /* 0xD87AFDDF@l */
/* 804DEBA0  90 1E 09 2C */	stw r0, 0x92c(r30)
/* 804DEBA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DEBA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DEBAC  83 E3 5D B4 */	lwz r31, 0x5db4(r3)
/* 804DEBB0  7F E3 FB 78 */	mr r3, r31
/* 804DEBB4  4B C0 27 C1 */	bl getCopyRodControllActor__9daAlink_cFv
/* 804DEBB8  7C 03 F0 40 */	cmplw r3, r30
/* 804DEBBC  40 82 00 20 */	bne lbl_804DEBDC
/* 804DEBC0  80 7F 28 40 */	lwz r3, 0x2840(r31)
/* 804DEBC4  38 63 07 40 */	addi r3, r3, 0x740
/* 804DEBC8  4B C8 01 35 */	bl clearData__16daPy_actorKeep_cFv
/* 804DEBCC  48 00 00 10 */	b lbl_804DEBDC
lbl_804DEBD0:
/* 804DEBD0  3C 60 D9 7B */	lis r3, 0xD97B /* 0xD97AFDDF@ha */
/* 804DEBD4  38 03 FD DF */	addi r0, r3, 0xFDDF /* 0xD97AFDDF@l */
/* 804DEBD8  90 1E 09 2C */	stw r0, 0x92c(r30)
lbl_804DEBDC:
/* 804DEBDC  38 7E 09 04 */	addi r3, r30, 0x904
/* 804DEBE0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804DEBE4  4B BA 5D 71 */	bl MoveCAt__8dCcD_CylFR4cXyz
/* 804DEBE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DEBEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DEBF0  38 63 23 3C */	addi r3, r3, 0x233c
/* 804DEBF4  38 9E 09 04 */	addi r4, r30, 0x904
/* 804DEBF8  4B D8 5F B1 */	bl Set__4cCcSFP8cCcD_Obj
/* 804DEBFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DEC00  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DEC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DEC08  7C 08 03 A6 */	mtlr r0
/* 804DEC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DEC10  4E 80 00 20 */	blr 
