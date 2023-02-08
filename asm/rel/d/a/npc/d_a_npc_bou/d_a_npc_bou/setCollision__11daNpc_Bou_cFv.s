lbl_8096EB14:
/* 8096EB14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8096EB18  7C 08 02 A6 */	mflr r0
/* 8096EB1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8096EB20  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8096EB24  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8096EB28  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8096EB2C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8096EB30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8096EB34  7C 7F 1B 78 */	mr r31, r3
/* 8096EB38  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 8096EB3C  28 00 00 00 */	cmplwi r0, 0
/* 8096EB40  40 82 00 E0 */	bne lbl_8096EC20
/* 8096EB44  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 8096EB48  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 8096EB4C  38 80 00 1F */	li r4, 0x1f
/* 8096EB50  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8096EB54  28 00 00 00 */	cmplwi r0, 0
/* 8096EB58  41 82 00 10 */	beq lbl_8096EB68
/* 8096EB5C  38 60 00 00 */	li r3, 0
/* 8096EB60  38 80 00 00 */	li r4, 0
/* 8096EB64  48 00 00 18 */	b lbl_8096EB7C
lbl_8096EB68:
/* 8096EB68  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8096EB6C  2C 00 00 00 */	cmpwi r0, 0
/* 8096EB70  41 82 00 0C */	beq lbl_8096EB7C
/* 8096EB74  38 60 00 00 */	li r3, 0
/* 8096EB78  38 80 00 00 */	li r4, 0
lbl_8096EB7C:
/* 8096EB7C  38 00 00 79 */	li r0, 0x79
/* 8096EB80  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 8096EB84  90 7F 0E 6C */	stw r3, 0xe6c(r31)
/* 8096EB88  90 9F 0E 5C */	stw r4, 0xe5c(r31)
/* 8096EB8C  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 8096EB90  60 00 00 04 */	ori r0, r0, 4
/* 8096EB94  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 8096EB98  3C 60 80 97 */	lis r3, lit_4328@ha /* 0x80972928@ha */
/* 8096EB9C  C0 03 29 28 */	lfs f0, lit_4328@l(r3)  /* 0x80972928@l */
/* 8096EBA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8096EBA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8096EBA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8096EBAC  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 8096EBB0  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 8096EBB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8096EBB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096EBBC  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 8096EBC0  4B 69 D8 1D */	bl mDoMtx_YrotS__FPA4_fs
/* 8096EBC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8096EBC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096EBCC  38 81 00 08 */	addi r4, r1, 8
/* 8096EBD0  7C 85 23 78 */	mr r5, r4
/* 8096EBD4  4B 9D 81 99 */	bl PSMTXMultVec
/* 8096EBD8  38 61 00 08 */	addi r3, r1, 8
/* 8096EBDC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8096EBE0  7C 65 1B 78 */	mr r5, r3
/* 8096EBE4  4B 9D 84 AD */	bl PSVECAdd
/* 8096EBE8  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 8096EBEC  FC 20 F8 90 */	fmr f1, f31
/* 8096EBF0  4B 90 06 09 */	bl SetH__8cM3dGCylFf
/* 8096EBF4  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 8096EBF8  FC 20 F0 90 */	fmr f1, f30
/* 8096EBFC  4B 90 06 05 */	bl SetR__8cM3dGCylFf
/* 8096EC00  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 8096EC04  38 81 00 08 */	addi r4, r1, 8
/* 8096EC08  4B 90 05 D5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8096EC0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096EC10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096EC14  38 63 23 3C */	addi r3, r3, 0x233c
/* 8096EC18  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 8096EC1C  4B 8F 5F 8D */	bl Set__4cCcSFP8cCcD_Obj
lbl_8096EC20:
/* 8096EC20  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 8096EC24  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 8096EC28  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8096EC2C  7D 89 03 A6 */	mtctr r12
/* 8096EC30  4E 80 04 21 */	bctrl 
/* 8096EC34  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 8096EC38  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 8096EC3C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8096EC40  7D 89 03 A6 */	mtctr r12
/* 8096EC44  4E 80 04 21 */	bctrl 
/* 8096EC48  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8096EC4C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8096EC50  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8096EC54  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8096EC58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8096EC5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8096EC60  7C 08 03 A6 */	mtlr r0
/* 8096EC64  38 21 00 40 */	addi r1, r1, 0x40
/* 8096EC68  4E 80 00 20 */	blr 
