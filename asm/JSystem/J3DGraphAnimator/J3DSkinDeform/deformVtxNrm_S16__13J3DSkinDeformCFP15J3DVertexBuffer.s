lbl_8032DEBC:
/* 8032DEBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032DEC0  7C 08 02 A6 */	mflr r0
/* 8032DEC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032DEC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8032DECC  48 03 43 11 */	bl _savegpr_29
/* 8032DED0  7C 7D 1B 78 */	mr r29, r3
/* 8032DED4  7C 9F 23 78 */	mr r31, r4
/* 8032DED8  80 64 00 00 */	lwz r3, 0(r4)
/* 8032DEDC  88 63 00 54 */	lbz r3, 0x54(r3)
/* 8032DEE0  38 80 00 07 */	li r4, 7
/* 8032DEE4  7C 65 1B 78 */	mr r5, r3
/* 8032DEE8  38 C0 00 07 */	li r6, 7
/* 8032DEEC  4B FE 37 4D */	bl J3DGQRSetup7__FUlUlUlUl
/* 8032DEF0  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8032DEF4  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8032DEF8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8032DEFC  90 7F 00 28 */	stw r3, 0x28(r31)
/* 8032DF00  80 7F 00 00 */	lwz r3, 0(r31)
/* 8032DF04  80 03 00 04 */	lwz r0, 4(r3)
/* 8032DF08  81 7F 00 30 */	lwz r11, 0x30(r31)
/* 8032DF0C  83 DF 00 24 */	lwz r30, 0x24(r31)
/* 8032DF10  38 60 00 00 */	li r3, 0
/* 8032DF14  38 80 00 00 */	li r4, 0
/* 8032DF18  80 FD 00 10 */	lwz r7, 0x10(r29)
/* 8032DF1C  80 BD 00 08 */	lwz r5, 8(r29)
/* 8032DF20  7C 09 03 A6 */	mtctr r0
/* 8032DF24  2C 00 00 00 */	cmpwi r0, 0
/* 8032DF28  40 81 00 84 */	ble lbl_8032DFAC
lbl_8032DF2C:
/* 8032DF2C  7D 5E 22 14 */	add r10, r30, r4
/* 8032DF30  7D 2B 22 14 */	add r9, r11, r4
/* 8032DF34  7C 05 1A 2E */	lhzx r0, r5, r3
/* 8032DF38  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8032DF3C  7D 07 02 14 */	add r8, r7, r0
/* 8032DF40  3C C0 80 3D */	lis r6, PSMulUnit01@ha
/* 8032DF44  E0 09 70 00 */	psq_l f0, 0(r9), 0, 7 /* qr7 */
/* 8032DF48  38 C6 D8 F8 */	addi r6, r6, PSMulUnit01@l
/* 8032DF4C  E0 48 00 00 */	psq_l f2, 0(r8), 0, 0 /* qr0 */
/* 8032DF50  E1 A6 00 00 */	psq_l f13, 0(r6), 0, 0 /* qr0 */
/* 8032DF54  E0 29 F0 04 */	psq_l f1, 4(r9), 1, 7 /* qr7 */
/* 8032DF58  10 2D 08 2A */	ps_add f1, f13, f1
/* 8032DF5C  E0 68 80 08 */	psq_l f3, 8(r8), 1, 0 /* qr0 */
/* 8032DF60  10 82 00 32 */	ps_mul f4, f2, f0
/* 8032DF64  E1 08 00 0C */	psq_l f8, 12(r8), 0, 0 /* qr0 */
/* 8032DF68  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8032DF6C  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8032DF70  E1 28 80 14 */	psq_l f9, 20(r8), 1, 0 /* qr0 */
/* 8032DF74  11 48 00 32 */	ps_mul f10, f8, f0
/* 8032DF78  F0 CA F0 00 */	psq_st f6, 0(r10), 1, 7 /* qr7 */
/* 8032DF7C  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 8032DF80  E0 48 00 18 */	psq_l f2, 24(r8), 0, 0 /* qr0 */
/* 8032DF84  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 8032DF88  E0 68 80 20 */	psq_l f3, 32(r8), 1, 0 /* qr0 */
/* 8032DF8C  10 82 00 32 */	ps_mul f4, f2, f0
/* 8032DF90  F1 8A F0 02 */	psq_st f12, 2(r10), 1, 7 /* qr7 */
/* 8032DF94  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8032DF98  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8032DF9C  F0 CA F0 04 */	psq_st f6, 4(r10), 1, 7 /* qr7 */
/* 8032DFA0  38 63 00 02 */	addi r3, r3, 2
/* 8032DFA4  38 84 00 06 */	addi r4, r4, 6
/* 8032DFA8  42 00 FF 84 */	bdnz lbl_8032DF2C
lbl_8032DFAC:
/* 8032DFAC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8032DFB0  80 03 00 04 */	lwz r0, 4(r3)
/* 8032DFB4  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8032DFB8  1C 80 00 06 */	mulli r4, r0, 6
/* 8032DFBC  48 00 D6 21 */	bl DCStoreRange
/* 8032DFC0  93 DF 00 30 */	stw r30, 0x30(r31)
/* 8032DFC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8032DFC8  48 03 42 61 */	bl _restgpr_29
/* 8032DFCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032DFD0  7C 08 03 A6 */	mtlr r0
/* 8032DFD4  38 21 00 20 */	addi r1, r1, 0x20
/* 8032DFD8  4E 80 00 20 */	blr 
