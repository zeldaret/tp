lbl_80A65E28:
/* 80A65E28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A65E2C  7C 08 02 A6 */	mflr r0
/* 80A65E30  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A65E34  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A65E38  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A65E3C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80A65E40  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80A65E44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A65E48  7C 7F 1B 78 */	mr r31, r3
/* 80A65E4C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A65E50  28 00 00 00 */	cmplwi r0, 0
/* 80A65E54  40 82 00 E0 */	bne lbl_80A65F34
/* 80A65E58  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80A65E5C  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80A65E60  38 80 00 1F */	li r4, 0x1f
/* 80A65E64  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A65E68  28 00 00 00 */	cmplwi r0, 0
/* 80A65E6C  41 82 00 10 */	beq lbl_80A65E7C
/* 80A65E70  38 60 00 00 */	li r3, 0
/* 80A65E74  38 80 00 00 */	li r4, 0
/* 80A65E78  48 00 00 18 */	b lbl_80A65E90
lbl_80A65E7C:
/* 80A65E7C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A65E80  2C 00 00 00 */	cmpwi r0, 0
/* 80A65E84  41 82 00 0C */	beq lbl_80A65E90
/* 80A65E88  38 60 00 00 */	li r3, 0
/* 80A65E8C  38 80 00 00 */	li r4, 0
lbl_80A65E90:
/* 80A65E90  38 00 00 79 */	li r0, 0x79
/* 80A65E94  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80A65E98  90 7F 0E 6C */	stw r3, 0xe6c(r31)
/* 80A65E9C  90 9F 0E 5C */	stw r4, 0xe5c(r31)
/* 80A65EA0  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80A65EA4  60 00 00 04 */	ori r0, r0, 4
/* 80A65EA8  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80A65EAC  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A65EB0  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A65EB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A65EB8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A65EBC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A65EC0  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80A65EC4  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80A65EC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A65ECC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A65ED0  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80A65ED4  4B 5A 65 08 */	b mDoMtx_YrotS__FPA4_fs
/* 80A65ED8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A65EDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A65EE0  38 81 00 08 */	addi r4, r1, 8
/* 80A65EE4  7C 85 23 78 */	mr r5, r4
/* 80A65EE8  4B 8E 0E 84 */	b PSMTXMultVec
/* 80A65EEC  38 61 00 08 */	addi r3, r1, 8
/* 80A65EF0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A65EF4  7C 65 1B 78 */	mr r5, r3
/* 80A65EF8  4B 8E 11 98 */	b PSVECAdd
/* 80A65EFC  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A65F00  FC 20 F8 90 */	fmr f1, f31
/* 80A65F04  4B 80 92 F4 */	b SetH__8cM3dGCylFf
/* 80A65F08  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A65F0C  FC 20 F0 90 */	fmr f1, f30
/* 80A65F10  4B 80 92 F0 */	b SetR__8cM3dGCylFf
/* 80A65F14  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A65F18  38 81 00 08 */	addi r4, r1, 8
/* 80A65F1C  4B 80 92 C0 */	b SetC__8cM3dGCylFRC4cXyz
/* 80A65F20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A65F24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A65F28  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A65F2C  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80A65F30  4B 7F EC 78 */	b Set__4cCcSFP8cCcD_Obj
lbl_80A65F34:
/* 80A65F34  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A65F38  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A65F3C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A65F40  7D 89 03 A6 */	mtctr r12
/* 80A65F44  4E 80 04 21 */	bctrl 
/* 80A65F48  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A65F4C  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A65F50  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A65F54  7D 89 03 A6 */	mtctr r12
/* 80A65F58  4E 80 04 21 */	bctrl 
/* 80A65F5C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A65F60  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A65F64  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80A65F68  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80A65F6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A65F70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A65F74  7C 08 03 A6 */	mtlr r0
/* 80A65F78  38 21 00 40 */	addi r1, r1, 0x40
/* 80A65F7C  4E 80 00 20 */	blr 
