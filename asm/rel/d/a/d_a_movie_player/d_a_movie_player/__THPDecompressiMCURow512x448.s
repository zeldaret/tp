lbl_80873D7C:
/* 80873D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80873D80  7C 08 02 A6 */	mflr r0
/* 80873D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80873D88  39 61 00 20 */	addi r11, r1, 0x20
/* 80873D8C  4B AE E4 49 */	bl _savegpr_27
/* 80873D90  3C 60 80 88 */	lis r3, lit_1109@ha /* 0x808795A0@ha */
/* 80873D94  3B E3 95 A0 */	addi r31, r3, lit_1109@l /* 0x808795A0@l */
/* 80873D98  38 60 00 03 */	li r3, 3
/* 80873D9C  4B AC 7B 49 */	bl LCQueueWait
/* 80873DA0  3B 80 00 00 */	li r28, 0
/* 80873DA4  3B DF 06 0C */	addi r30, r31, 0x60c
/* 80873DA8  3B BF 05 E8 */	addi r29, r31, 0x5e8
/* 80873DAC  48 00 01 7C */	b lbl_80873F28
lbl_80873DB0:
/* 80873DB0  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 80873DB4  48 00 0F D9 */	bl __THPHuffDecodeDCTCompY
/* 80873DB8  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873DBC  80 9E 00 04 */	lwz r4, 4(r30)
/* 80873DC0  48 00 0F CD */	bl __THPHuffDecodeDCTCompY
/* 80873DC4  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873DC8  80 9E 00 08 */	lwz r4, 8(r30)
/* 80873DCC  48 00 0F C1 */	bl __THPHuffDecodeDCTCompY
/* 80873DD0  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873DD4  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80873DD8  48 00 0F B5 */	bl __THPHuffDecodeDCTCompY
/* 80873DDC  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873DE0  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80873DE4  48 00 16 2D */	bl __THPHuffDecodeDCTCompU
/* 80873DE8  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873DEC  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80873DF0  48 00 18 09 */	bl __THPHuffDecodeDCTCompV
/* 80873DF4  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873DF8  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 80873DFC  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80873E00  38 00 02 00 */	li r0, 0x200
/* 80873E04  90 1F 05 E0 */	stw r0, 0x5e0(r31)
/* 80873E08  88 03 06 80 */	lbz r0, 0x680(r3)
/* 80873E0C  54 00 40 2E */	slwi r0, r0, 8
/* 80873E10  7C 03 02 14 */	add r0, r3, r0
/* 80873E14  90 1F 05 E4 */	stw r0, 0x5e4(r31)
/* 80873E18  57 7B 20 36 */	slwi r27, r27, 4
/* 80873E1C  80 7F 06 0C */	lwz r3, 0x60c(r31)
/* 80873E20  7F 64 DB 78 */	mr r4, r27
/* 80873E24  48 00 06 39 */	bl __THPInverseDCTNoYPos
/* 80873E28  80 7E 00 04 */	lwz r3, 4(r30)
/* 80873E2C  38 9B 00 08 */	addi r4, r27, 8
/* 80873E30  48 00 06 2D */	bl __THPInverseDCTNoYPos
/* 80873E34  80 7E 00 08 */	lwz r3, 8(r30)
/* 80873E38  7F 64 DB 78 */	mr r4, r27
/* 80873E3C  48 00 01 81 */	bl __THPInverseDCTY8
/* 80873E40  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80873E44  38 9B 00 08 */	addi r4, r27, 8
/* 80873E48  48 00 01 75 */	bl __THPInverseDCTY8
/* 80873E4C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873E50  80 1D 00 04 */	lwz r0, 4(r29)
/* 80873E54  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80873E58  38 00 01 00 */	li r0, 0x100
/* 80873E5C  90 1F 05 E0 */	stw r0, 0x5e0(r31)
/* 80873E60  88 03 06 86 */	lbz r0, 0x686(r3)
/* 80873E64  54 00 40 2E */	slwi r0, r0, 8
/* 80873E68  7C 03 02 14 */	add r0, r3, r0
/* 80873E6C  90 1F 05 E4 */	stw r0, 0x5e4(r31)
/* 80873E70  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80873E74  57 7B F8 7E */	srwi r27, r27, 1
/* 80873E78  7F 64 DB 78 */	mr r4, r27
/* 80873E7C  48 00 05 E1 */	bl __THPInverseDCTNoYPos
/* 80873E80  80 1D 00 08 */	lwz r0, 8(r29)
/* 80873E84  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80873E88  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873E8C  88 03 06 8C */	lbz r0, 0x68c(r3)
/* 80873E90  54 00 40 2E */	slwi r0, r0, 8
/* 80873E94  7C 03 02 14 */	add r0, r3, r0
/* 80873E98  90 1F 05 E4 */	stw r0, 0x5e4(r31)
/* 80873E9C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80873EA0  7F 64 DB 78 */	mr r4, r27
/* 80873EA4  48 00 05 B9 */	bl __THPInverseDCTNoYPos
/* 80873EA8  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80873EAC  88 04 06 A9 */	lbz r0, 0x6a9(r4)
/* 80873EB0  28 00 00 00 */	cmplwi r0, 0
/* 80873EB4  41 82 00 70 */	beq lbl_80873F24
/* 80873EB8  A0 64 06 AC */	lhz r3, 0x6ac(r4)
/* 80873EBC  38 03 FF FF */	addi r0, r3, -1
/* 80873EC0  B0 04 06 AC */	sth r0, 0x6ac(r4)
/* 80873EC4  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 80873EC8  40 82 00 5C */	bne lbl_80873F24
/* 80873ECC  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873ED0  A0 03 06 AA */	lhz r0, 0x6aa(r3)
/* 80873ED4  B0 03 06 AC */	sth r0, 0x6ac(r3)
/* 80873ED8  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80873EDC  80 64 06 A4 */	lwz r3, 0x6a4(r4)
/* 80873EE0  38 03 00 06 */	addi r0, r3, 6
/* 80873EE4  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 80873EE8  38 03 00 01 */	addi r0, r3, 1
/* 80873EEC  90 04 06 A4 */	stw r0, 0x6a4(r4)
/* 80873EF0  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873EF4  80 03 06 A4 */	lwz r0, 0x6a4(r3)
/* 80873EF8  28 00 00 21 */	cmplwi r0, 0x21
/* 80873EFC  40 81 00 0C */	ble lbl_80873F08
/* 80873F00  38 00 00 21 */	li r0, 0x21
/* 80873F04  90 03 06 A4 */	stw r0, 0x6a4(r3)
lbl_80873F08:
/* 80873F08  38 00 00 00 */	li r0, 0
/* 80873F0C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873F10  B0 03 06 84 */	sth r0, 0x684(r3)
/* 80873F14  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873F18  B0 03 06 8A */	sth r0, 0x68a(r3)
/* 80873F1C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873F20  B0 03 06 90 */	sth r0, 0x690(r3)
lbl_80873F24:
/* 80873F24  3B 9C 00 01 */	addi r28, r28, 1
lbl_80873F28:
/* 80873F28  57 9B 06 3E */	clrlwi r27, r28, 0x18
/* 80873F2C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873F30  A0 03 06 96 */	lhz r0, 0x696(r3)
/* 80873F34  7C 1B 00 00 */	cmpw r27, r0
/* 80873F38  41 80 FE 78 */	blt lbl_80873DB0
/* 80873F3C  80 63 06 B0 */	lwz r3, 0x6b0(r3)
/* 80873F40  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80873F44  38 A0 20 00 */	li r5, 0x2000
/* 80873F48  4B AC 78 F1 */	bl LCStoreData
/* 80873F4C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873F50  80 63 06 B4 */	lwz r3, 0x6b4(r3)
/* 80873F54  80 9D 00 04 */	lwz r4, 4(r29)
/* 80873F58  38 A0 08 00 */	li r5, 0x800
/* 80873F5C  4B AC 78 DD */	bl LCStoreData
/* 80873F60  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80873F64  80 63 06 B8 */	lwz r3, 0x6b8(r3)
/* 80873F68  80 9D 00 08 */	lwz r4, 8(r29)
/* 80873F6C  38 A0 08 00 */	li r5, 0x800
/* 80873F70  4B AC 78 C9 */	bl LCStoreData
/* 80873F74  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80873F78  80 64 06 B0 */	lwz r3, 0x6b0(r4)
/* 80873F7C  38 03 20 00 */	addi r0, r3, 0x2000
/* 80873F80  90 04 06 B0 */	stw r0, 0x6b0(r4)
/* 80873F84  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80873F88  80 64 06 B4 */	lwz r3, 0x6b4(r4)
/* 80873F8C  38 03 08 00 */	addi r0, r3, 0x800
/* 80873F90  90 04 06 B4 */	stw r0, 0x6b4(r4)
/* 80873F94  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80873F98  80 64 06 B8 */	lwz r3, 0x6b8(r4)
/* 80873F9C  38 03 08 00 */	addi r0, r3, 0x800
/* 80873FA0  90 04 06 B8 */	stw r0, 0x6b8(r4)
/* 80873FA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80873FA8  4B AE E2 79 */	bl _restgpr_27
/* 80873FAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80873FB0  7C 08 03 A6 */	mtlr r0
/* 80873FB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80873FB8  4E 80 00 20 */	blr 
