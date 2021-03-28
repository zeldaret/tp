lbl_804E0A50:
/* 804E0A50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E0A54  7C 08 02 A6 */	mflr r0
/* 804E0A58  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E0A5C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E0A60  4B E8 17 7C */	b _savegpr_29
/* 804E0A64  7C 7D 1B 78 */	mr r29, r3
/* 804E0A68  3C 60 80 4E */	lis r3, l_light_color@ha
/* 804E0A6C  3B E3 19 D4 */	addi r31, r3, l_light_color@l
/* 804E0A70  3B C0 00 01 */	li r30, 1
/* 804E0A74  88 1D 09 2A */	lbz r0, 0x92a(r29)
/* 804E0A78  28 00 00 22 */	cmplwi r0, 0x22
/* 804E0A7C  41 82 00 0C */	beq lbl_804E0A88
/* 804E0A80  28 00 00 21 */	cmplwi r0, 0x21
/* 804E0A84  40 82 00 40 */	bne lbl_804E0AC4
lbl_804E0A88:
/* 804E0A88  38 7D 09 6A */	addi r3, r29, 0x96a
/* 804E0A8C  38 80 00 00 */	li r4, 0
/* 804E0A90  38 A0 00 1A */	li r5, 0x1a
/* 804E0A94  4B D8 FB C8 */	b cLib_chaseUC__FPUcUcUc
/* 804E0A98  7C 7E 1B 78 */	mr r30, r3
/* 804E0A9C  80 7D 09 70 */	lwz r3, 0x970(r29)
/* 804E0AA0  28 03 00 00 */	cmplwi r3, 0
/* 804E0AA4  41 82 00 0C */	beq lbl_804E0AB0
/* 804E0AA8  88 1D 09 6A */	lbz r0, 0x96a(r29)
/* 804E0AAC  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_804E0AB0:
/* 804E0AB0  80 7D 09 84 */	lwz r3, 0x984(r29)
/* 804E0AB4  28 03 00 00 */	cmplwi r3, 0
/* 804E0AB8  41 82 00 0C */	beq lbl_804E0AC4
/* 804E0ABC  88 1D 09 6A */	lbz r0, 0x96a(r29)
/* 804E0AC0  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_804E0AC4:
/* 804E0AC4  38 7D 09 5C */	addi r3, r29, 0x95c
/* 804E0AC8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E0ACC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 804E0AD0  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 804E0AD4  C0 9F 00 04 */	lfs f4, 4(r31)
/* 804E0AD8  4B D8 EE A4 */	b cLib_addCalc__FPfffff
/* 804E0ADC  88 1D 09 3F */	lbz r0, 0x93f(r29)
/* 804E0AE0  28 00 00 00 */	cmplwi r0, 0
/* 804E0AE4  41 82 00 28 */	beq lbl_804E0B0C
/* 804E0AE8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E0AEC  C0 1D 09 5C */	lfs f0, 0x95c(r29)
/* 804E0AF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E0AF4  40 82 00 18 */	bne lbl_804E0B0C
/* 804E0AF8  2C 1E 00 00 */	cmpwi r30, 0
/* 804E0AFC  41 82 00 10 */	beq lbl_804E0B0C
/* 804E0B00  38 00 00 03 */	li r0, 3
/* 804E0B04  98 1D 09 68 */	stb r0, 0x968(r29)
/* 804E0B08  48 00 00 20 */	b lbl_804E0B28
lbl_804E0B0C:
/* 804E0B0C  88 7D 09 3D */	lbz r3, 0x93d(r29)
/* 804E0B10  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 804E0B14  40 82 00 0C */	bne lbl_804E0B20
/* 804E0B18  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804E0B1C  41 82 00 0C */	beq lbl_804E0B28
lbl_804E0B20:
/* 804E0B20  38 00 00 03 */	li r0, 3
/* 804E0B24  98 1D 09 68 */	stb r0, 0x968(r29)
lbl_804E0B28:
/* 804E0B28  39 61 00 20 */	addi r11, r1, 0x20
/* 804E0B2C  4B E8 16 FC */	b _restgpr_29
/* 804E0B30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E0B34  7C 08 03 A6 */	mtlr r0
/* 804E0B38  38 21 00 20 */	addi r1, r1, 0x20
/* 804E0B3C  4E 80 00 20 */	blr 
