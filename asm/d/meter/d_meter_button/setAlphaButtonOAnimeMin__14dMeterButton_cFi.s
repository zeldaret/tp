lbl_8020924C:
/* 8020924C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80209250  7C 08 02 A6 */	mflr r0
/* 80209254  90 01 00 24 */	stw r0, 0x24(r1)
/* 80209258  39 61 00 20 */	addi r11, r1, 0x20
/* 8020925C  48 15 8F 81 */	bl _savegpr_29
/* 80209260  7C 7D 1B 78 */	mr r29, r3
/* 80209264  7C 9E 23 78 */	mr r30, r4
/* 80209268  54 80 10 3A */	slwi r0, r4, 2
/* 8020926C  7F FD 02 14 */	add r31, r29, r0
/* 80209270  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80209274  48 04 C5 B5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209278  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 8020927C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80209280  41 82 00 28 */	beq lbl_802092A8
/* 80209284  7F A3 EB 78 */	mr r3, r29
/* 80209288  7F C4 F3 78 */	mr r4, r30
/* 8020928C  4B FF DA E5 */	bl isFastSet__14dMeterButton_cFi
/* 80209290  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80209294  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80209298  48 04 C5 39 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020929C  38 00 00 00 */	li r0, 0
/* 802092A0  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 802092A4  B0 03 00 16 */	sth r0, 0x16(r3)
lbl_802092A8:
/* 802092A8  39 61 00 20 */	addi r11, r1, 0x20
/* 802092AC  48 15 8F 7D */	bl _restgpr_29
/* 802092B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802092B4  7C 08 03 A6 */	mtlr r0
/* 802092B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802092BC  4E 80 00 20 */	blr 
