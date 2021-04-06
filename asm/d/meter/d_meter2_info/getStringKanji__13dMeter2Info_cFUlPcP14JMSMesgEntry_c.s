lbl_8021C544:
/* 8021C544  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021C548  7C 08 02 A6 */	mflr r0
/* 8021C54C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021C550  39 61 00 20 */	addi r11, r1, 0x20
/* 8021C554  48 14 5C 85 */	bl _savegpr_28
/* 8021C558  7C 7C 1B 78 */	mr r28, r3
/* 8021C55C  7C 9D 23 78 */	mr r29, r4
/* 8021C560  7C BE 2B 78 */	mr r30, r5
/* 8021C564  7C DF 33 78 */	mr r31, r6
/* 8021C568  7F C3 F3 78 */	mr r3, r30
/* 8021C56C  3C 80 80 3A */	lis r4, d_meter_d_meter2_info__stringBase0@ha /* 0x80399168@ha */
/* 8021C570  38 84 91 68 */	addi r4, r4, d_meter_d_meter2_info__stringBase0@l /* 0x80399168@l */
/* 8021C574  48 14 C5 B9 */	bl strcpy
/* 8021C578  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8021C57C  28 03 00 00 */	cmplwi r3, 0
/* 8021C580  40 82 00 34 */	bne lbl_8021C5B4
/* 8021C584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021C588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021C58C  80 A3 5C F4 */	lwz r5, 0x5cf4(r3)
/* 8021C590  3C 60 52 4F */	lis r3, 0x524F /* 0x524F4F54@ha */
/* 8021C594  38 63 4F 54 */	addi r3, r3, 0x4F54 /* 0x524F4F54@l */
/* 8021C598  3C 80 80 3A */	lis r4, d_meter_d_meter2_info__stringBase0@ha /* 0x80399168@ha */
/* 8021C59C  38 84 91 68 */	addi r4, r4, d_meter_d_meter2_info__stringBase0@l /* 0x80399168@l */
/* 8021C5A0  38 84 00 01 */	addi r4, r4, 1
/* 8021C5A4  48 0B 95 95 */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 8021C5A8  28 03 00 00 */	cmplwi r3, 0
/* 8021C5AC  40 82 00 08 */	bne lbl_8021C5B4
/* 8021C5B0  48 00 00 DC */	b lbl_8021C68C
lbl_8021C5B4:
/* 8021C5B4  38 A3 00 20 */	addi r5, r3, 0x20
/* 8021C5B8  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8021C5BC  38 C3 00 08 */	addi r6, r3, 8
/* 8021C5C0  7C C5 32 14 */	add r6, r5, r6
/* 8021C5C4  38 E0 00 00 */	li r7, 0
/* 8021C5C8  A0 65 00 08 */	lhz r3, 8(r5)
/* 8021C5CC  48 00 00 8C */	b lbl_8021C658
lbl_8021C5D0:
/* 8021C5D0  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8021C5D4  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8021C5D8  7C 85 02 14 */	add r4, r5, r0
/* 8021C5DC  A0 04 00 14 */	lhz r0, 0x14(r4)
/* 8021C5E0  7C 1D 00 40 */	cmplw r29, r0
/* 8021C5E4  40 82 00 70 */	bne lbl_8021C654
/* 8021C5E8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8021C5EC  7C A6 02 14 */	add r5, r6, r0
/* 8021C5F0  38 C0 00 00 */	li r6, 0
/* 8021C5F4  48 00 00 3C */	b lbl_8021C630
lbl_8021C5F8:
/* 8021C5F8  7C 65 32 14 */	add r3, r5, r6
/* 8021C5FC  88 03 00 00 */	lbz r0, 0(r3)
/* 8021C600  28 00 00 1A */	cmplwi r0, 0x1a
/* 8021C604  40 82 00 14 */	bne lbl_8021C618
/* 8021C608  88 03 00 01 */	lbz r0, 1(r3)
/* 8021C60C  7C 00 07 74 */	extsb r0, r0
/* 8021C610  7C C6 02 14 */	add r6, r6, r0
/* 8021C614  48 00 00 1C */	b lbl_8021C630
lbl_8021C618:
/* 8021C618  98 1E 00 00 */	stb r0, 0(r30)
/* 8021C61C  88 03 00 00 */	lbz r0, 0(r3)
/* 8021C620  7C 00 07 75 */	extsb. r0, r0
/* 8021C624  3B DE 00 01 */	addi r30, r30, 1
/* 8021C628  41 82 00 10 */	beq lbl_8021C638
/* 8021C62C  38 C6 00 01 */	addi r6, r6, 1
lbl_8021C630:
/* 8021C630  2C 06 02 00 */	cmpwi r6, 0x200
/* 8021C634  41 80 FF C4 */	blt lbl_8021C5F8
lbl_8021C638:
/* 8021C638  28 1F 00 00 */	cmplwi r31, 0
/* 8021C63C  41 82 00 50 */	beq lbl_8021C68C
/* 8021C640  7F E3 FB 78 */	mr r3, r31
/* 8021C644  38 84 00 10 */	addi r4, r4, 0x10
/* 8021C648  38 A0 00 14 */	li r5, 0x14
/* 8021C64C  4B DE 6E F5 */	bl memcpy
/* 8021C650  48 00 00 3C */	b lbl_8021C68C
lbl_8021C654:
/* 8021C654  38 E7 00 01 */	addi r7, r7, 1
lbl_8021C658:
/* 8021C658  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8021C65C  7C 00 18 40 */	cmplw r0, r3
/* 8021C660  41 80 FF 70 */	blt lbl_8021C5D0
/* 8021C664  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8021C668  28 00 00 00 */	cmplwi r0, 0
/* 8021C66C  40 82 00 20 */	bne lbl_8021C68C
/* 8021C670  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021C674  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021C678  80 63 5C F4 */	lwz r3, 0x5cf4(r3)
/* 8021C67C  81 83 00 00 */	lwz r12, 0(r3)
/* 8021C680  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8021C684  7D 89 03 A6 */	mtctr r12
/* 8021C688  4E 80 04 21 */	bctrl 
lbl_8021C68C:
/* 8021C68C  39 61 00 20 */	addi r11, r1, 0x20
/* 8021C690  48 14 5B 95 */	bl _restgpr_28
/* 8021C694  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021C698  7C 08 03 A6 */	mtlr r0
/* 8021C69C  38 21 00 20 */	addi r1, r1, 0x20
/* 8021C6A0  4E 80 00 20 */	blr 
