lbl_80540B28:
/* 80540B28  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80540B2C  7C 08 02 A6 */	mflr r0
/* 80540B30  90 01 00 74 */	stw r0, 0x74(r1)
/* 80540B34  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80540B38  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80540B3C  39 61 00 60 */	addi r11, r1, 0x60
/* 80540B40  4B E2 16 89 */	bl _savegpr_24
/* 80540B44  7C 78 1B 78 */	mr r24, r3
/* 80540B48  3C 60 80 54 */	lis r3, m__25daNpc_FairySeirei_Param_c@ha /* 0x80541D8C@ha */
/* 80540B4C  3B 63 1D 8C */	addi r27, r3, m__25daNpc_FairySeirei_Param_c@l /* 0x80541D8C@l */
/* 80540B50  C0 1B 00 B4 */	lfs f0, 0xb4(r27)
/* 80540B54  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80540B58  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80540B5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80540B60  3B 20 00 00 */	li r25, 0
/* 80540B64  3B E0 00 00 */	li r31, 0
/* 80540B68  3B C0 00 00 */	li r30, 0
/* 80540B6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80540B70  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80540B74  C3 FB 00 B8 */	lfs f31, 0xb8(r27)
/* 80540B78  3B BB 00 AC */	addi r29, r27, 0xac
lbl_80540B7C:
/* 80540B7C  C0 18 05 50 */	lfs f0, 0x550(r24)
/* 80540B80  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80540B84  C0 38 05 54 */	lfs f1, 0x554(r24)
/* 80540B88  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80540B8C  C0 18 05 58 */	lfs f0, 0x558(r24)
/* 80540B90  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80540B94  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80540B98  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80540B9C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80540BA0  38 00 00 FF */	li r0, 0xff
/* 80540BA4  90 01 00 08 */	stw r0, 8(r1)
/* 80540BA8  38 80 00 00 */	li r4, 0
/* 80540BAC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80540BB0  38 00 FF FF */	li r0, -1
/* 80540BB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80540BB8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80540BBC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80540BC0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80540BC4  3B 5E 0F 9C */	addi r26, r30, 0xf9c
/* 80540BC8  7C 98 D0 2E */	lwzx r4, r24, r26
/* 80540BCC  38 A0 00 00 */	li r5, 0
/* 80540BD0  7C DD FA 2E */	lhzx r6, r29, r31
/* 80540BD4  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80540BD8  39 00 00 00 */	li r8, 0
/* 80540BDC  39 38 0D 78 */	addi r9, r24, 0xd78
/* 80540BE0  39 41 00 20 */	addi r10, r1, 0x20
/* 80540BE4  C0 3B 00 B4 */	lfs f1, 0xb4(r27)
/* 80540BE8  4B B0 C8 E5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80540BEC  7C 78 D1 2E */	stwx r3, r24, r26
/* 80540BF0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80540BF4  38 63 02 10 */	addi r3, r3, 0x210
/* 80540BF8  7C 98 D0 2E */	lwzx r4, r24, r26
/* 80540BFC  4B B0 AD 1D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80540C00  28 03 00 00 */	cmplwi r3, 0
/* 80540C04  41 82 00 1C */	beq lbl_80540C20
/* 80540C08  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80540C0C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80540C10  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80540C14  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80540C18  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 80540C1C  D0 43 00 AC */	stfs f2, 0xac(r3)
lbl_80540C20:
/* 80540C20  3B 39 00 01 */	addi r25, r25, 1
/* 80540C24  2C 19 00 03 */	cmpwi r25, 3
/* 80540C28  3B FF 00 02 */	addi r31, r31, 2
/* 80540C2C  3B DE 00 04 */	addi r30, r30, 4
/* 80540C30  41 80 FF 4C */	blt lbl_80540B7C
/* 80540C34  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80540C38  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80540C3C  39 61 00 60 */	addi r11, r1, 0x60
/* 80540C40  4B E2 15 D5 */	bl _restgpr_24
/* 80540C44  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80540C48  7C 08 03 A6 */	mtlr r0
/* 80540C4C  38 21 00 70 */	addi r1, r1, 0x70
/* 80540C50  4E 80 00 20 */	blr 
