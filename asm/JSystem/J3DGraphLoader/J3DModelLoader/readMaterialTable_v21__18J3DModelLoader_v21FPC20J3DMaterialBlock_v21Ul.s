lbl_80335E20:
/* 80335E20  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80335E24  7C 08 02 A6 */	mflr r0
/* 80335E28  90 01 00 94 */	stw r0, 0x94(r1)
/* 80335E2C  39 61 00 90 */	addi r11, r1, 0x90
/* 80335E30  48 02 C3 A9 */	bl _savegpr_28
/* 80335E34  7C 7E 1B 78 */	mr r30, r3
/* 80335E38  7C 9C 23 78 */	mr r28, r4
/* 80335E3C  7C BF 2B 78 */	mr r31, r5
/* 80335E40  38 61 00 08 */	addi r3, r1, 8
/* 80335E44  4B FF CF 61 */	bl __ct__22J3DMaterialFactory_v21FRC20J3DMaterialBlock_v21
/* 80335E48  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80335E4C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80335E50  B0 03 00 04 */	sth r0, 4(r3)
/* 80335E54  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 80335E58  28 00 00 00 */	cmplwi r0, 0
/* 80335E5C  41 82 00 3C */	beq lbl_80335E98
/* 80335E60  38 60 00 10 */	li r3, 0x10
/* 80335E64  4B F9 8D E9 */	bl __nw__FUl
/* 80335E68  7C 7D 1B 79 */	or. r29, r3, r3
/* 80335E6C  41 82 00 20 */	beq lbl_80335E8C
/* 80335E70  7F 83 E3 78 */	mr r3, r28
/* 80335E74  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 80335E78  4B FD 46 B9 */	bl func_8030A530
/* 80335E7C  7C 64 1B 78 */	mr r4, r3
/* 80335E80  7F A3 EB 78 */	mr r3, r29
/* 80335E84  4B FA 8B 5D */	bl __ct__10JUTNameTabFPC7ResNTAB
/* 80335E88  7C 7D 1B 78 */	mr r29, r3
lbl_80335E8C:
/* 80335E8C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80335E90  93 A3 00 0C */	stw r29, 0xc(r3)
/* 80335E94  48 00 00 10 */	b lbl_80335EA4
lbl_80335E98:
/* 80335E98  38 00 00 00 */	li r0, 0
/* 80335E9C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80335EA0  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80335EA4:
/* 80335EA4  80 7E 00 08 */	lwz r3, 8(r30)
/* 80335EA8  A0 03 00 04 */	lhz r0, 4(r3)
/* 80335EAC  54 03 10 3A */	slwi r3, r0, 2
/* 80335EB0  4B F9 8E 15 */	bl __nwa__FUl
/* 80335EB4  80 9E 00 08 */	lwz r4, 8(r30)
/* 80335EB8  90 64 00 08 */	stw r3, 8(r4)
/* 80335EBC  3B A0 00 00 */	li r29, 0
/* 80335EC0  48 00 00 2C */	b lbl_80335EEC
lbl_80335EC4:
/* 80335EC4  38 61 00 08 */	addi r3, r1, 8
/* 80335EC8  38 80 00 00 */	li r4, 0
/* 80335ECC  57 A5 04 3E */	clrlwi r5, r29, 0x10
/* 80335ED0  7F E6 FB 78 */	mr r6, r31
/* 80335ED4  4B FF D1 95 */	bl create__22J3DMaterialFactory_v21CFP11J3DMaterialiUl
/* 80335ED8  80 9E 00 08 */	lwz r4, 8(r30)
/* 80335EDC  80 84 00 08 */	lwz r4, 8(r4)
/* 80335EE0  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 80335EE4  7C 64 01 2E */	stwx r3, r4, r0
/* 80335EE8  3B BD 00 01 */	addi r29, r29, 1
lbl_80335EEC:
/* 80335EEC  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 80335EF0  80 7E 00 08 */	lwz r3, 8(r30)
/* 80335EF4  A0 03 00 04 */	lhz r0, 4(r3)
/* 80335EF8  7C 04 00 40 */	cmplw r4, r0
/* 80335EFC  41 80 FF C8 */	blt lbl_80335EC4
/* 80335F00  38 C0 00 00 */	li r6, 0
/* 80335F04  48 00 00 2C */	b lbl_80335F30
lbl_80335F08:
/* 80335F08  80 A4 00 08 */	lwz r5, 8(r4)
/* 80335F0C  54 A4 E1 3E */	srwi r4, r5, 4
/* 80335F10  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80335F14  54 C0 0B FC */	rlwinm r0, r6, 1, 0xf, 0x1e
/* 80335F18  7C 03 02 2E */	lhzx r0, r3, r0
/* 80335F1C  7C 84 02 14 */	add r4, r4, r0
/* 80335F20  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80335F24  7C 65 00 2E */	lwzx r3, r5, r0
/* 80335F28  90 83 00 20 */	stw r4, 0x20(r3)
/* 80335F2C  38 C6 00 01 */	addi r6, r6, 1
lbl_80335F30:
/* 80335F30  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80335F34  80 9E 00 08 */	lwz r4, 8(r30)
/* 80335F38  A0 04 00 04 */	lhz r0, 4(r4)
/* 80335F3C  7C 03 00 40 */	cmplw r3, r0
/* 80335F40  41 80 FF C8 */	blt lbl_80335F08
/* 80335F44  39 61 00 90 */	addi r11, r1, 0x90
/* 80335F48  48 02 C2 DD */	bl _restgpr_28
/* 80335F4C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80335F50  7C 08 03 A6 */	mtlr r0
/* 80335F54  38 21 00 90 */	addi r1, r1, 0x90
/* 80335F58  4E 80 00 20 */	blr 
