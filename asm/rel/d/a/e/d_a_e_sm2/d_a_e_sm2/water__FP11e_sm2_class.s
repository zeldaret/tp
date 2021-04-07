lbl_8079A1CC:
/* 8079A1CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8079A1D0  7C 08 02 A6 */	mflr r0
/* 8079A1D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8079A1D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8079A1DC  4B BC 7F FD */	bl _savegpr_28
/* 8079A1E0  7C 7C 1B 78 */	mr r28, r3
/* 8079A1E4  3C 60 80 7A */	lis r3, lit_3790@ha /* 0x8079D5B0@ha */
/* 8079A1E8  3B C3 D5 B0 */	addi r30, r3, lit_3790@l /* 0x8079D5B0@l */
/* 8079A1EC  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8079A1F0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8079A1F4  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 8079A1F8  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 8079A1FC  4B AD 58 41 */	bl cLib_addCalc2__FPffff
/* 8079A200  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8079A204  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8079A208  3B A0 00 00 */	li r29, 0
/* 8079A20C  3B E0 00 00 */	li r31, 0
lbl_8079A210:
/* 8079A210  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 8079A214  7C 7C 1A 14 */	add r3, r28, r3
/* 8079A218  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 8079A21C  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 8079A220  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8079A224  4B AD 58 19 */	bl cLib_addCalc2__FPffff
/* 8079A228  3B BD 00 01 */	addi r29, r29, 1
/* 8079A22C  2C 1D 00 08 */	cmpwi r29, 8
/* 8079A230  3B FF 00 04 */	addi r31, r31, 4
/* 8079A234  41 80 FF DC */	blt lbl_8079A210
/* 8079A238  38 7C 08 30 */	addi r3, r28, 0x830
/* 8079A23C  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 8079A240  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 8079A244  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8079A248  4B AD 57 F5 */	bl cLib_addCalc2__FPffff
/* 8079A24C  38 7C 06 C4 */	addi r3, r28, 0x6c4
/* 8079A250  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8079A254  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 8079A258  4B AD 58 29 */	bl cLib_addCalc0__FPfff
/* 8079A25C  C0 3C 06 C4 */	lfs f1, 0x6c4(r28)
/* 8079A260  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8079A264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079A268  40 80 00 0C */	bge lbl_8079A274
/* 8079A26C  7F 83 E3 78 */	mr r3, r28
/* 8079A270  4B FF EE 15 */	bl sm2_delete__FP11e_sm2_class
lbl_8079A274:
/* 8079A274  39 61 00 20 */	addi r11, r1, 0x20
/* 8079A278  4B BC 7F AD */	bl _restgpr_28
/* 8079A27C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8079A280  7C 08 03 A6 */	mtlr r0
/* 8079A284  38 21 00 20 */	addi r1, r1, 0x20
/* 8079A288  4E 80 00 20 */	blr 
