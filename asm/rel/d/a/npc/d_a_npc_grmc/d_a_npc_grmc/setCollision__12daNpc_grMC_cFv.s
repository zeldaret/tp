lbl_809D8670:
/* 809D8670  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809D8674  7C 08 02 A6 */	mflr r0
/* 809D8678  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D867C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809D8680  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809D8684  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D8688  7C 7F 1B 78 */	mr r31, r3
/* 809D868C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 809D8690  28 00 00 00 */	cmplwi r0, 0
/* 809D8694  40 82 00 C8 */	bne lbl_809D875C
/* 809D8698  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809D869C  28 00 00 01 */	cmplwi r0, 1
/* 809D86A0  40 82 00 24 */	bne lbl_809D86C4
/* 809D86A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D86A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D86AC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809D86B0  28 00 00 00 */	cmplwi r0, 0
/* 809D86B4  40 82 00 10 */	bne lbl_809D86C4
/* 809D86B8  38 00 00 69 */	li r0, 0x69
/* 809D86BC  90 1F 0F AC */	stw r0, 0xfac(r31)
/* 809D86C0  48 00 00 0C */	b lbl_809D86CC
lbl_809D86C4:
/* 809D86C4  38 00 00 79 */	li r0, 0x79
/* 809D86C8  90 1F 0F AC */	stw r0, 0xfac(r31)
lbl_809D86CC:
/* 809D86CC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809D86D0  2C 00 00 00 */	cmpwi r0, 0
/* 809D86D4  41 82 00 14 */	beq lbl_809D86E8
/* 809D86D8  38 00 00 00 */	li r0, 0
/* 809D86DC  90 1F 0F A8 */	stw r0, 0xfa8(r31)
/* 809D86E0  90 1F 0F 98 */	stw r0, 0xf98(r31)
/* 809D86E4  48 00 00 24 */	b lbl_809D8708
lbl_809D86E8:
/* 809D86E8  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809D86EC  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809D86F0  90 1F 0F A8 */	stw r0, 0xfa8(r31)
/* 809D86F4  38 00 00 1F */	li r0, 0x1f
/* 809D86F8  90 1F 0F 98 */	stw r0, 0xf98(r31)
/* 809D86FC  80 1F 10 1C */	lwz r0, 0x101c(r31)
/* 809D8700  60 00 00 04 */	ori r0, r0, 4
/* 809D8704  90 1F 10 1C */	stw r0, 0x101c(r31)
lbl_809D8708:
/* 809D8708  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 809D870C  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 809D8710  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809D8714  D0 01 00 08 */	stfs f0, 8(r1)
/* 809D8718  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809D871C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809D8720  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809D8724  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809D8728  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 809D872C  4B 89 6A CC */	b SetH__8cM3dGCylFf
/* 809D8730  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 809D8734  FC 20 F8 90 */	fmr f1, f31
/* 809D8738  4B 89 6A C8 */	b SetR__8cM3dGCylFf
/* 809D873C  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 809D8740  38 81 00 08 */	addi r4, r1, 8
/* 809D8744  4B 89 6A 98 */	b SetC__8cM3dGCylFRC4cXyz
/* 809D8748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D874C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D8750  38 63 23 3C */	addi r3, r3, 0x233c
/* 809D8754  38 9F 0F 80 */	addi r4, r31, 0xf80
/* 809D8758  4B 88 C4 50 */	b Set__4cCcSFP8cCcD_Obj
lbl_809D875C:
/* 809D875C  38 7F 0F 80 */	addi r3, r31, 0xf80
/* 809D8760  81 9F 0F BC */	lwz r12, 0xfbc(r31)
/* 809D8764  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 809D8768  7D 89 03 A6 */	mtctr r12
/* 809D876C  4E 80 04 21 */	bctrl 
/* 809D8770  38 7F 0F 80 */	addi r3, r31, 0xf80
/* 809D8774  81 9F 0F BC */	lwz r12, 0xfbc(r31)
/* 809D8778  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809D877C  7D 89 03 A6 */	mtctr r12
/* 809D8780  4E 80 04 21 */	bctrl 
/* 809D8784  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809D8788  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809D878C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D8790  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809D8794  7C 08 03 A6 */	mtlr r0
/* 809D8798  38 21 00 30 */	addi r1, r1, 0x30
/* 809D879C  4E 80 00 20 */	blr 
