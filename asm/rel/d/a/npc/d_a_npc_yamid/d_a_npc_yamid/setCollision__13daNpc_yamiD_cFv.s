lbl_80B44364:
/* 80B44364  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B44368  7C 08 02 A6 */	mflr r0
/* 80B4436C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B44370  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B44374  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B44378  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B4437C  7C 7F 1B 78 */	mr r31, r3
/* 80B44380  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B44384  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B44388  38 A0 00 1F */	li r5, 0x1f
/* 80B4438C  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80B44390  28 00 00 00 */	cmplwi r0, 0
/* 80B44394  40 82 00 C0 */	bne lbl_80B44454
/* 80B44398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4439C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B443A0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B443A4  28 00 00 00 */	cmplwi r0, 0
/* 80B443A8  41 82 00 10 */	beq lbl_80B443B8
/* 80B443AC  38 80 00 00 */	li r4, 0
/* 80B443B0  38 A0 00 00 */	li r5, 0
/* 80B443B4  48 00 00 30 */	b lbl_80B443E4
lbl_80B443B8:
/* 80B443B8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B443BC  28 00 00 00 */	cmplwi r0, 0
/* 80B443C0  41 82 00 10 */	beq lbl_80B443D0
/* 80B443C4  38 80 00 00 */	li r4, 0
/* 80B443C8  38 A0 00 00 */	li r5, 0
/* 80B443CC  48 00 00 18 */	b lbl_80B443E4
lbl_80B443D0:
/* 80B443D0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B443D4  2C 00 00 00 */	cmpwi r0, 0
/* 80B443D8  41 82 00 0C */	beq lbl_80B443E4
/* 80B443DC  38 80 00 00 */	li r4, 0
/* 80B443E0  38 A0 00 00 */	li r5, 0
lbl_80B443E4:
/* 80B443E4  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80B443E8  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80B443EC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B443F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B443F4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B443F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B443FC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B44400  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B44404  38 00 00 79 */	li r0, 0x79
/* 80B44408  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B4440C  90 9F 0E 6C */	stw r4, 0xe6c(r31)
/* 80B44410  90 BF 0E 5C */	stw r5, 0xe5c(r31)
/* 80B44414  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80B44418  60 00 00 04 */	ori r0, r0, 4
/* 80B4441C  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80B44420  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B44424  4B 72 AD D4 */	b SetH__8cM3dGCylFf
/* 80B44428  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B4442C  FC 20 F8 90 */	fmr f1, f31
/* 80B44430  4B 72 AD D0 */	b SetR__8cM3dGCylFf
/* 80B44434  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B44438  38 81 00 08 */	addi r4, r1, 8
/* 80B4443C  4B 72 AD A0 */	b SetC__8cM3dGCylFRC4cXyz
/* 80B44440  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B44444  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B44448  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B4444C  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B44450  4B 72 07 58 */	b Set__4cCcSFP8cCcD_Obj
lbl_80B44454:
/* 80B44454  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B44458  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B4445C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B44460  7D 89 03 A6 */	mtctr r12
/* 80B44464  4E 80 04 21 */	bctrl 
/* 80B44468  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B4446C  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B44470  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B44474  7D 89 03 A6 */	mtctr r12
/* 80B44478  4E 80 04 21 */	bctrl 
/* 80B4447C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B44480  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B44484  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B44488  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4448C  7C 08 03 A6 */	mtlr r0
/* 80B44490  38 21 00 30 */	addi r1, r1, 0x30
/* 80B44494  4E 80 00 20 */	blr 
