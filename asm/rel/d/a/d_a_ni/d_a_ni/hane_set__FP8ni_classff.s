lbl_8094BD68:
/* 8094BD68  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8094BD6C  7C 08 02 A6 */	mflr r0
/* 8094BD70  90 01 00 54 */	stw r0, 0x54(r1)
/* 8094BD74  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8094BD78  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8094BD7C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8094BD80  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8094BD84  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8094BD88  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8094BD8C  7C 7E 1B 78 */	mr r30, r3
/* 8094BD90  FF C0 08 90 */	fmr f30, f1
/* 8094BD94  FF E0 10 90 */	fmr f31, f2
/* 8094BD98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8094BD9C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8094BDA0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8094BDA4  38 00 00 FF */	li r0, 0xff
/* 8094BDA8  90 01 00 08 */	stw r0, 8(r1)
/* 8094BDAC  38 80 00 00 */	li r4, 0
/* 8094BDB0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8094BDB4  38 00 FF FF */	li r0, -1
/* 8094BDB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8094BDBC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8094BDC0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8094BDC4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8094BDC8  80 9E 0A 4C */	lwz r4, 0xa4c(r30)
/* 8094BDCC  38 A0 00 00 */	li r5, 0
/* 8094BDD0  88 1E 05 F0 */	lbz r0, 0x5f0(r30)
/* 8094BDD4  7C 00 07 74 */	extsb r0, r0
/* 8094BDD8  54 00 08 3C */	slwi r0, r0, 1
/* 8094BDDC  3C C0 80 95 */	lis r6, hane_id@ha
/* 8094BDE0  38 C6 13 50 */	addi r6, r6, hane_id@l
/* 8094BDE4  7C C6 02 2E */	lhzx r6, r6, r0
/* 8094BDE8  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 8094BDEC  39 00 00 00 */	li r8, 0
/* 8094BDF0  39 20 00 00 */	li r9, 0
/* 8094BDF4  39 40 00 00 */	li r10, 0
/* 8094BDF8  3D 60 80 95 */	lis r11, lit_3981@ha
/* 8094BDFC  C0 2B 11 E0 */	lfs f1, lit_3981@l(r11)
/* 8094BE00  4B 70 16 CC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8094BE04  90 7E 0A 4C */	stw r3, 0xa4c(r30)
/* 8094BE08  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8094BE0C  38 63 02 10 */	addi r3, r3, 0x210
/* 8094BE10  80 9E 0A 4C */	lwz r4, 0xa4c(r30)
/* 8094BE14  4B 6F FA A0 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 8094BE18  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8094BE1C  38 63 02 10 */	addi r3, r3, 0x210
/* 8094BE20  80 9E 0A 4C */	lwz r4, 0xa4c(r30)
/* 8094BE24  4B 6F FA F4 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8094BE28  28 03 00 00 */	cmplwi r3, 0
/* 8094BE2C  41 82 00 0C */	beq lbl_8094BE38
/* 8094BE30  D3 C3 00 28 */	stfs f30, 0x28(r3)
/* 8094BE34  D3 E3 00 3C */	stfs f31, 0x3c(r3)
lbl_8094BE38:
/* 8094BE38  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8094BE3C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8094BE40  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8094BE44  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8094BE48  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8094BE4C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8094BE50  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8094BE54  7C 08 03 A6 */	mtlr r0
/* 8094BE58  38 21 00 50 */	addi r1, r1, 0x50
/* 8094BE5C  4E 80 00 20 */	blr 
