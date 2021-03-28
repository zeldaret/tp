lbl_80C12918:
/* 80C12918  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C1291C  7C 08 02 A6 */	mflr r0
/* 80C12920  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C12924  39 61 00 40 */	addi r11, r1, 0x40
/* 80C12928  4B 74 F8 A8 */	b _savegpr_26
/* 80C1292C  7C 7E 1B 78 */	mr r30, r3
/* 80C12930  3B E0 00 00 */	li r31, 0
/* 80C12934  3B A0 00 00 */	li r29, 0
/* 80C12938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1293C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80C12940  3C 60 80 C1 */	lis r3, lit_3717@ha
/* 80C12944  3B 83 32 C4 */	addi r28, r3, lit_3717@l
lbl_80C12948:
/* 80C12948  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C1294C  7C 00 07 74 */	extsb r0, r0
/* 80C12950  7F 5E EA 14 */	add r26, r30, r29
/* 80C12954  89 1A 09 78 */	lbz r8, 0x978(r26)
/* 80C12958  28 08 00 01 */	cmplwi r8, 1
/* 80C1295C  40 82 00 0C */	bne lbl_80C12968
/* 80C12960  39 3A 09 88 */	addi r9, r26, 0x988
/* 80C12964  48 00 00 08 */	b lbl_80C1296C
lbl_80C12968:
/* 80C12968  39 20 00 00 */	li r9, 0
lbl_80C1296C:
/* 80C1296C  90 01 00 08 */	stw r0, 8(r1)
/* 80C12970  38 7A 09 9C */	addi r3, r26, 0x99c
/* 80C12974  38 9E 01 0C */	addi r4, r30, 0x10c
/* 80C12978  38 BA 09 7C */	addi r5, r26, 0x97c
/* 80C1297C  38 C0 00 00 */	li r6, 0
/* 80C12980  38 E0 00 00 */	li r7, 0
/* 80C12984  28 08 00 01 */	cmplwi r8, 1
/* 80C12988  40 82 00 0C */	bne lbl_80C12994
/* 80C1298C  7C A8 2B 78 */	mr r8, r5
/* 80C12990  48 00 00 08 */	b lbl_80C12998
lbl_80C12994:
/* 80C12994  39 00 00 00 */	li r8, 0
lbl_80C12998:
/* 80C12998  39 40 00 00 */	li r10, 0
/* 80C1299C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80C129A0  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C129A4  4B 43 E6 64 */	b setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 80C129A8  88 1A 09 78 */	lbz r0, 0x978(r26)
/* 80C129AC  28 00 00 00 */	cmplwi r0, 0
/* 80C129B0  41 82 00 54 */	beq lbl_80C12A04
/* 80C129B4  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C129B8  38 63 02 10 */	addi r3, r3, 0x210
/* 80C129BC  80 9A 09 A4 */	lwz r4, 0x9a4(r26)
/* 80C129C0  4B 43 8F 58 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80C129C4  28 03 00 00 */	cmplwi r3, 0
/* 80C129C8  41 82 00 3C */	beq lbl_80C12A04
/* 80C129CC  3C 80 80 C1 */	lis r4, lit_3771@ha
/* 80C129D0  C0 04 32 E0 */	lfs f0, lit_3771@l(r4)
/* 80C129D4  D0 1A 09 90 */	stfs f0, 0x990(r26)
/* 80C129D8  D0 1A 09 94 */	stfs f0, 0x994(r26)
/* 80C129DC  D0 1A 09 98 */	stfs f0, 0x998(r26)
/* 80C129E0  38 9A 09 90 */	addi r4, r26, 0x990
/* 80C129E4  E0 24 00 00 */	psq_l f1, 0(r4), 0, 0 /* qr0 */
/* 80C129E8  C0 1A 09 98 */	lfs f0, 0x998(r26)
/* 80C129EC  F0 21 00 10 */	psq_st f1, 16(r1), 0, 0 /* qr0 */
/* 80C129F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C129F4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80C129F8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C129FC  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80C12A00  D0 23 00 B4 */	stfs f1, 0xb4(r3)
lbl_80C12A04:
/* 80C12A04  38 00 00 00 */	li r0, 0
/* 80C12A08  98 1A 09 78 */	stb r0, 0x978(r26)
/* 80C12A0C  3B FF 00 01 */	addi r31, r31, 1
/* 80C12A10  2C 1F 00 04 */	cmpwi r31, 4
/* 80C12A14  3B BD 00 5C */	addi r29, r29, 0x5c
/* 80C12A18  41 80 FF 30 */	blt lbl_80C12948
/* 80C12A1C  38 60 00 01 */	li r3, 1
/* 80C12A20  39 61 00 40 */	addi r11, r1, 0x40
/* 80C12A24  4B 74 F7 F8 */	b _restgpr_26
/* 80C12A28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C12A2C  7C 08 03 A6 */	mtlr r0
/* 80C12A30  38 21 00 40 */	addi r1, r1, 0x40
/* 80C12A34  4E 80 00 20 */	blr 
