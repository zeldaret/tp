lbl_80B7342C:
/* 80B7342C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B73430  7C 08 02 A6 */	mflr r0
/* 80B73434  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B73438  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B7343C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B73440  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B73444  7C 7F 1B 78 */	mr r31, r3
/* 80B73448  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B7344C  28 00 00 00 */	cmplwi r0, 0
/* 80B73450  40 82 00 C8 */	bne lbl_80B73518
/* 80B73454  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B73458  28 00 00 01 */	cmplwi r0, 1
/* 80B7345C  40 82 00 24 */	bne lbl_80B73480
/* 80B73460  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B73464  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B73468  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B7346C  28 00 00 00 */	cmplwi r0, 0
/* 80B73470  40 82 00 10 */	bne lbl_80B73480
/* 80B73474  38 00 00 69 */	li r0, 0x69
/* 80B73478  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B7347C  48 00 00 0C */	b lbl_80B73488
lbl_80B73480:
/* 80B73480  38 00 00 79 */	li r0, 0x79
/* 80B73484  90 1F 0E 70 */	stw r0, 0xe70(r31)
lbl_80B73488:
/* 80B73488  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B7348C  2C 00 00 00 */	cmpwi r0, 0
/* 80B73490  41 82 00 14 */	beq lbl_80B734A4
/* 80B73494  38 00 00 00 */	li r0, 0
/* 80B73498  90 1F 0E 6C */	stw r0, 0xe6c(r31)
/* 80B7349C  90 1F 0E 5C */	stw r0, 0xe5c(r31)
/* 80B734A0  48 00 00 24 */	b lbl_80B734C4
lbl_80B734A4:
/* 80B734A4  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B734A8  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B734AC  90 1F 0E 6C */	stw r0, 0xe6c(r31)
/* 80B734B0  38 00 00 1F */	li r0, 0x1f
/* 80B734B4  90 1F 0E 5C */	stw r0, 0xe5c(r31)
/* 80B734B8  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80B734BC  60 00 00 04 */	ori r0, r0, 4
/* 80B734C0  90 1F 0E E0 */	stw r0, 0xee0(r31)
lbl_80B734C4:
/* 80B734C4  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80B734C8  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80B734CC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B734D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B734D4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B734D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B734DC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B734E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B734E4  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B734E8  4B 6F BD 10 */	b SetH__8cM3dGCylFf
/* 80B734EC  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B734F0  FC 20 F8 90 */	fmr f1, f31
/* 80B734F4  4B 6F BD 0C */	b SetR__8cM3dGCylFf
/* 80B734F8  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B734FC  38 81 00 08 */	addi r4, r1, 8
/* 80B73500  4B 6F BC DC */	b SetC__8cM3dGCylFRC4cXyz
/* 80B73504  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B73508  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B7350C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B73510  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B73514  4B 6F 16 94 */	b Set__4cCcSFP8cCcD_Obj
lbl_80B73518:
/* 80B73518  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B7351C  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B73520  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B73524  7D 89 03 A6 */	mtctr r12
/* 80B73528  4E 80 04 21 */	bctrl 
/* 80B7352C  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B73530  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B73534  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B73538  7D 89 03 A6 */	mtctr r12
/* 80B7353C  4E 80 04 21 */	bctrl 
/* 80B73540  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B73544  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B73548  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B7354C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B73550  7C 08 03 A6 */	mtlr r0
/* 80B73554  38 21 00 30 */	addi r1, r1, 0x30
/* 80B73558  4E 80 00 20 */	blr 
