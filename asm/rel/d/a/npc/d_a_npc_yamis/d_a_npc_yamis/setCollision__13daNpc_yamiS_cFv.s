lbl_80B4797C:
/* 80B4797C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B47980  7C 08 02 A6 */	mflr r0
/* 80B47984  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B47988  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B4798C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B47990  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B47994  7C 7F 1B 78 */	mr r31, r3
/* 80B47998  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B4799C  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B479A0  38 A0 00 1F */	li r5, 0x1f
/* 80B479A4  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80B479A8  28 00 00 00 */	cmplwi r0, 0
/* 80B479AC  40 82 00 F8 */	bne lbl_80B47AA4
/* 80B479B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B479B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B479B8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B479BC  28 00 00 00 */	cmplwi r0, 0
/* 80B479C0  41 82 00 48 */	beq lbl_80B47A08
/* 80B479C4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B479C8  2C 00 00 00 */	cmpwi r0, 0
/* 80B479CC  41 82 00 28 */	beq lbl_80B479F4
/* 80B479D0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B479D4  4B 5F DD 29 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B479D8  38 00 00 00 */	li r0, 0
/* 80B479DC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B479E0  3C 60 80 B5 */	lis r3, lit_4194@ha /* 0x80B49754@ha */
/* 80B479E4  C0 03 97 54 */	lfs f0, lit_4194@l(r3)  /* 0x80B49754@l */
/* 80B479E8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B479EC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B479F0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B479F4:
/* 80B479F4  38 00 00 00 */	li r0, 0
/* 80B479F8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B479FC  38 80 00 00 */	li r4, 0
/* 80B47A00  38 A0 00 00 */	li r5, 0
/* 80B47A04  48 00 00 30 */	b lbl_80B47A34
lbl_80B47A08:
/* 80B47A08  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B47A0C  28 00 00 00 */	cmplwi r0, 0
/* 80B47A10  41 82 00 10 */	beq lbl_80B47A20
/* 80B47A14  38 80 00 00 */	li r4, 0
/* 80B47A18  38 A0 00 00 */	li r5, 0
/* 80B47A1C  48 00 00 18 */	b lbl_80B47A34
lbl_80B47A20:
/* 80B47A20  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B47A24  2C 00 00 00 */	cmpwi r0, 0
/* 80B47A28  41 82 00 0C */	beq lbl_80B47A34
/* 80B47A2C  38 80 00 00 */	li r4, 0
/* 80B47A30  38 A0 00 00 */	li r5, 0
lbl_80B47A34:
/* 80B47A34  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80B47A38  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80B47A3C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B47A40  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B47A44  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B47A48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B47A4C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B47A50  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B47A54  38 00 00 79 */	li r0, 0x79
/* 80B47A58  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B47A5C  90 9F 0E 6C */	stw r4, 0xe6c(r31)
/* 80B47A60  90 BF 0E 5C */	stw r5, 0xe5c(r31)
/* 80B47A64  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80B47A68  60 00 00 04 */	ori r0, r0, 4
/* 80B47A6C  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80B47A70  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B47A74  4B 72 77 85 */	bl SetH__8cM3dGCylFf
/* 80B47A78  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B47A7C  FC 20 F8 90 */	fmr f1, f31
/* 80B47A80  4B 72 77 81 */	bl SetR__8cM3dGCylFf
/* 80B47A84  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B47A88  38 81 00 08 */	addi r4, r1, 8
/* 80B47A8C  4B 72 77 51 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80B47A90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B47A94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B47A98  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B47A9C  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B47AA0  4B 71 D1 09 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80B47AA4:
/* 80B47AA4  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B47AA8  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B47AAC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B47AB0  7D 89 03 A6 */	mtctr r12
/* 80B47AB4  4E 80 04 21 */	bctrl 
/* 80B47AB8  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B47ABC  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B47AC0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B47AC4  7D 89 03 A6 */	mtctr r12
/* 80B47AC8  4E 80 04 21 */	bctrl 
/* 80B47ACC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B47AD0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B47AD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B47AD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B47ADC  7C 08 03 A6 */	mtlr r0
/* 80B47AE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B47AE4  4E 80 00 20 */	blr 
