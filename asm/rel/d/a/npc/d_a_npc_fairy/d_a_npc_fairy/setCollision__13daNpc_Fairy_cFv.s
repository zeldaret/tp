lbl_809B3EA0:
/* 809B3EA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B3EA4  7C 08 02 A6 */	mflr r0
/* 809B3EA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B3EAC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809B3EB0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809B3EB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809B3EB8  7C 7F 1B 78 */	mr r31, r3
/* 809B3EBC  38 80 00 79 */	li r4, 0x79
/* 809B3EC0  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809B3EC4  38 A3 FD FF */	addi r5, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809B3EC8  38 C0 00 1F */	li r6, 0x1f
/* 809B3ECC  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 809B3ED0  28 00 00 00 */	cmplwi r0, 0
/* 809B3ED4  40 82 00 C0 */	bne lbl_809B3F94
/* 809B3ED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B3EDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B3EE0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809B3EE4  28 00 00 00 */	cmplwi r0, 0
/* 809B3EE8  41 82 00 14 */	beq lbl_809B3EFC
/* 809B3EEC  38 A0 00 00 */	li r5, 0
/* 809B3EF0  38 C0 00 00 */	li r6, 0
/* 809B3EF4  38 80 00 00 */	li r4, 0
/* 809B3EF8  48 00 00 30 */	b lbl_809B3F28
lbl_809B3EFC:
/* 809B3EFC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809B3F00  28 00 00 00 */	cmplwi r0, 0
/* 809B3F04  41 82 00 10 */	beq lbl_809B3F14
/* 809B3F08  38 A0 00 00 */	li r5, 0
/* 809B3F0C  38 C0 00 00 */	li r6, 0
/* 809B3F10  48 00 00 18 */	b lbl_809B3F28
lbl_809B3F14:
/* 809B3F14  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809B3F18  2C 00 00 00 */	cmpwi r0, 0
/* 809B3F1C  41 82 00 0C */	beq lbl_809B3F28
/* 809B3F20  38 A0 00 00 */	li r5, 0
/* 809B3F24  38 C0 00 00 */	li r6, 0
lbl_809B3F28:
/* 809B3F28  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 809B3F2C  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 809B3F30  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809B3F34  D0 01 00 08 */	stfs f0, 8(r1)
/* 809B3F38  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809B3F3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809B3F40  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809B3F44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809B3F48  90 9F 0E 70 */	stw r4, 0xe70(r31)
/* 809B3F4C  90 BF 0E 6C */	stw r5, 0xe6c(r31)
/* 809B3F50  90 DF 0E 5C */	stw r6, 0xe5c(r31)
/* 809B3F54  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 809B3F58  60 00 00 04 */	ori r0, r0, 4
/* 809B3F5C  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 809B3F60  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 809B3F64  4B 8B B2 95 */	bl SetH__8cM3dGCylFf
/* 809B3F68  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 809B3F6C  FC 20 F8 90 */	fmr f1, f31
/* 809B3F70  4B 8B B2 91 */	bl SetR__8cM3dGCylFf
/* 809B3F74  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 809B3F78  38 81 00 08 */	addi r4, r1, 8
/* 809B3F7C  4B 8B B2 61 */	bl SetC__8cM3dGCylFRC4cXyz
/* 809B3F80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B3F84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B3F88  38 63 23 3C */	addi r3, r3, 0x233c
/* 809B3F8C  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 809B3F90  4B 8B 0C 19 */	bl Set__4cCcSFP8cCcD_Obj
lbl_809B3F94:
/* 809B3F94  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 809B3F98  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 809B3F9C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 809B3FA0  7D 89 03 A6 */	mtctr r12
/* 809B3FA4  4E 80 04 21 */	bctrl 
/* 809B3FA8  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 809B3FAC  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 809B3FB0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809B3FB4  7D 89 03 A6 */	mtctr r12
/* 809B3FB8  4E 80 04 21 */	bctrl 
/* 809B3FBC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809B3FC0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809B3FC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809B3FC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B3FCC  7C 08 03 A6 */	mtlr r0
/* 809B3FD0  38 21 00 30 */	addi r1, r1, 0x30
/* 809B3FD4  4E 80 00 20 */	blr 
