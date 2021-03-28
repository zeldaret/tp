lbl_8061B960:
/* 8061B960  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8061B964  7C 08 02 A6 */	mflr r0
/* 8061B968  90 01 00 54 */	stw r0, 0x54(r1)
/* 8061B96C  39 61 00 50 */	addi r11, r1, 0x50
/* 8061B970  4B D4 68 60 */	b _savegpr_26
/* 8061B974  7C 7E 1B 78 */	mr r30, r3
/* 8061B978  3C 60 80 62 */	lis r3, lit_3650@ha
/* 8061B97C  3B E3 D9 D4 */	addi r31, r3, lit_3650@l
/* 8061B980  A8 1E 05 D0 */	lha r0, 0x5d0(r30)
/* 8061B984  2C 00 00 01 */	cmpwi r0, 1
/* 8061B988  41 82 00 5C */	beq lbl_8061B9E4
/* 8061B98C  40 80 00 10 */	bge lbl_8061B99C
/* 8061B990  2C 00 00 00 */	cmpwi r0, 0
/* 8061B994  40 80 00 14 */	bge lbl_8061B9A8
/* 8061B998  48 00 01 68 */	b lbl_8061BB00
lbl_8061B99C:
/* 8061B99C  2C 00 00 03 */	cmpwi r0, 3
/* 8061B9A0  40 80 01 60 */	bge lbl_8061BB00
/* 8061B9A4  48 00 01 48 */	b lbl_8061BAEC
lbl_8061B9A8:
/* 8061B9A8  3C 60 80 62 */	lis r3, boss@ha
/* 8061B9AC  38 63 DB D4 */	addi r3, r3, boss@l
/* 8061B9B0  80 63 00 00 */	lwz r3, 0(r3)
/* 8061B9B4  80 63 47 88 */	lwz r3, 0x4788(r3)
/* 8061B9B8  80 1E 05 C8 */	lwz r0, 0x5c8(r30)
/* 8061B9BC  7C 03 00 00 */	cmpw r3, r0
/* 8061B9C0  41 82 00 10 */	beq lbl_8061B9D0
/* 8061B9C4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8061B9C8  D0 1E 0C AC */	stfs f0, 0xcac(r30)
/* 8061B9CC  48 00 01 34 */	b lbl_8061BB00
lbl_8061B9D0:
/* 8061B9D0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8061B9D4  D0 1E 06 08 */	stfs f0, 0x608(r30)
/* 8061B9D8  38 00 00 01 */	li r0, 1
/* 8061B9DC  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8061B9E0  48 00 01 20 */	b lbl_8061BB00
lbl_8061B9E4:
/* 8061B9E4  C0 3E 0C AC */	lfs f1, 0xcac(r30)
/* 8061B9E8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8061B9EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061B9F0  40 80 00 D4 */	bge lbl_8061BAC4
/* 8061B9F4  3B 40 00 00 */	li r26, 0
/* 8061B9F8  3B A0 00 00 */	li r29, 0
/* 8061B9FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061BA00  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 8061BA04  3C 60 80 62 */	lis r3, boss@ha
/* 8061BA08  3B 83 DB D4 */	addi r28, r3, boss@l
lbl_8061BA0C:
/* 8061BA0C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061BA10  80 63 00 04 */	lwz r3, 4(r3)
/* 8061BA14  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8061BA18  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8061BA1C  7C 60 EA 14 */	add r3, r0, r29
/* 8061BA20  7F 64 DB 78 */	mr r4, r27
/* 8061BA24  4B D2 AA 8C */	b PSMTXCopy
/* 8061BA28  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8061BA2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8061BA30  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 8061BA34  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8061BA38  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 8061BA3C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8061BA40  80 7C 00 00 */	lwz r3, 0(r28)
/* 8061BA44  C0 03 47 A0 */	lfs f0, 0x47a0(r3)
/* 8061BA48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061BA4C  40 81 00 68 */	ble lbl_8061BAB4
/* 8061BA50  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8061BA54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8061BA58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8061BA5C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8061BA60  38 00 00 FF */	li r0, 0xff
/* 8061BA64  90 01 00 08 */	stw r0, 8(r1)
/* 8061BA68  38 80 00 00 */	li r4, 0
/* 8061BA6C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8061BA70  38 00 FF FF */	li r0, -1
/* 8061BA74  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061BA78  90 81 00 14 */	stw r4, 0x14(r1)
/* 8061BA7C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8061BA80  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8061BA84  80 9E 1F 80 */	lwz r4, 0x1f80(r30)
/* 8061BA88  38 A0 00 00 */	li r5, 0
/* 8061BA8C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008808@ha */
/* 8061BA90  38 C6 88 08 */	addi r6, r6, 0x8808 /* 0x00008808@l */
/* 8061BA94  38 E1 00 20 */	addi r7, r1, 0x20
/* 8061BA98  39 00 00 00 */	li r8, 0
/* 8061BA9C  39 20 00 00 */	li r9, 0
/* 8061BAA0  39 40 00 00 */	li r10, 0
/* 8061BAA4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8061BAA8  4B A3 1A 24 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8061BAAC  90 7E 1F 80 */	stw r3, 0x1f80(r30)
/* 8061BAB0  48 00 00 14 */	b lbl_8061BAC4
lbl_8061BAB4:
/* 8061BAB4  3B 5A 00 01 */	addi r26, r26, 1
/* 8061BAB8  2C 1A 00 1C */	cmpwi r26, 0x1c
/* 8061BABC  3B BD 00 30 */	addi r29, r29, 0x30
/* 8061BAC0  41 80 FF 4C */	blt lbl_8061BA0C
lbl_8061BAC4:
/* 8061BAC4  38 7E 0C AC */	addi r3, r30, 0xcac
/* 8061BAC8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8061BACC  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 8061BAD0  4B C5 3F B0 */	b cLib_addCalc0__FPfff
/* 8061BAD4  38 7E 06 08 */	addi r3, r30, 0x608
/* 8061BAD8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8061BADC  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8061BAE0  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 8061BAE4  4B C5 3F 58 */	b cLib_addCalc2__FPffff
/* 8061BAE8  48 00 00 18 */	b lbl_8061BB00
lbl_8061BAEC:
/* 8061BAEC  38 7E 06 08 */	addi r3, r30, 0x608
/* 8061BAF0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8061BAF4  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8061BAF8  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 8061BAFC  4B C5 3F 40 */	b cLib_addCalc2__FPffff
lbl_8061BB00:
/* 8061BB00  39 61 00 50 */	addi r11, r1, 0x50
/* 8061BB04  4B D4 67 18 */	b _restgpr_26
/* 8061BB08  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8061BB0C  7C 08 03 A6 */	mtlr r0
/* 8061BB10  38 21 00 50 */	addi r1, r1, 0x50
/* 8061BB14  4E 80 00 20 */	blr 
