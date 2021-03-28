lbl_8032DDB8:
/* 8032DDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032DDBC  7C 08 02 A6 */	mflr r0
/* 8032DDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032DDC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032DDC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8032DDCC  7C 9F 23 78 */	mr r31, r4
/* 8032DDD0  80 84 00 24 */	lwz r4, 0x24(r4)
/* 8032DDD4  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8032DDD8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8032DDDC  90 9F 00 28 */	stw r4, 0x28(r31)
/* 8032DDE0  80 9F 00 00 */	lwz r4, 0(r31)
/* 8032DDE4  80 04 00 04 */	lwz r0, 4(r4)
/* 8032DDE8  81 7F 00 30 */	lwz r11, 0x30(r31)
/* 8032DDEC  83 DF 00 24 */	lwz r30, 0x24(r31)
/* 8032DDF0  38 80 00 00 */	li r4, 0
/* 8032DDF4  38 A0 00 00 */	li r5, 0
/* 8032DDF8  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 8032DDFC  80 63 00 08 */	lwz r3, 8(r3)
/* 8032DE00  7C 09 03 A6 */	mtctr r0
/* 8032DE04  2C 00 00 00 */	cmpwi r0, 0
/* 8032DE08  40 81 00 84 */	ble lbl_8032DE8C
lbl_8032DE0C:
/* 8032DE0C  7D 5E 2A 14 */	add r10, r30, r5
/* 8032DE10  7D 2B 2A 14 */	add r9, r11, r5
/* 8032DE14  7C 03 22 2E */	lhzx r0, r3, r4
/* 8032DE18  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8032DE1C  7D 07 02 14 */	add r8, r7, r0
/* 8032DE20  3C C0 80 3D */	lis r6, PSMulUnit01@ha
/* 8032DE24  E0 09 00 00 */	psq_l f0, 0(r9), 0, 0 /* qr0 */
/* 8032DE28  38 C6 D8 F8 */	addi r6, r6, PSMulUnit01@l
/* 8032DE2C  E0 48 00 00 */	psq_l f2, 0(r8), 0, 0 /* qr0 */
/* 8032DE30  E1 A6 00 00 */	psq_l f13, 0(r6), 0, 0 /* qr0 */
/* 8032DE34  E0 29 80 08 */	psq_l f1, 8(r9), 1, 0 /* qr0 */
/* 8032DE38  10 2D 08 2A */	ps_add f1, f13, f1
/* 8032DE3C  E0 68 80 08 */	psq_l f3, 8(r8), 1, 0 /* qr0 */
/* 8032DE40  10 82 00 32 */	ps_mul f4, f2, f0
/* 8032DE44  E1 08 00 0C */	psq_l f8, 12(r8), 0, 0 /* qr0 */
/* 8032DE48  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8032DE4C  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8032DE50  E1 28 80 14 */	psq_l f9, 20(r8), 1, 0 /* qr0 */
/* 8032DE54  11 48 00 32 */	ps_mul f10, f8, f0
/* 8032DE58  F0 CA 80 00 */	psq_st f6, 0(r10), 1, 0 /* qr0 */
/* 8032DE5C  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 8032DE60  E0 48 00 18 */	psq_l f2, 24(r8), 0, 0 /* qr0 */
/* 8032DE64  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 8032DE68  E0 68 80 20 */	psq_l f3, 32(r8), 1, 0 /* qr0 */
/* 8032DE6C  10 82 00 32 */	ps_mul f4, f2, f0
/* 8032DE70  F1 8A 80 04 */	psq_st f12, 4(r10), 1, 0 /* qr0 */
/* 8032DE74  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8032DE78  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8032DE7C  F0 CA 80 08 */	psq_st f6, 8(r10), 1, 0 /* qr0 */
/* 8032DE80  38 84 00 02 */	addi r4, r4, 2
/* 8032DE84  38 A5 00 0C */	addi r5, r5, 0xc
/* 8032DE88  42 00 FF 84 */	bdnz lbl_8032DE0C
lbl_8032DE8C:
/* 8032DE8C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8032DE90  80 03 00 04 */	lwz r0, 4(r3)
/* 8032DE94  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8032DE98  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8032DE9C  48 00 D7 41 */	bl DCStoreRange
/* 8032DEA0  93 DF 00 30 */	stw r30, 0x30(r31)
/* 8032DEA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032DEA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8032DEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032DEB0  7C 08 03 A6 */	mtlr r0
/* 8032DEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8032DEB8  4E 80 00 20 */	blr 
