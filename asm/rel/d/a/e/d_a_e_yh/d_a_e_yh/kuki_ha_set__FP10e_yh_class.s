lbl_80800B18:
/* 80800B18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80800B1C  7C 08 02 A6 */	mflr r0
/* 80800B20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80800B24  39 61 00 30 */	addi r11, r1, 0x30
/* 80800B28  4B B6 16 A4 */	b _savegpr_25
/* 80800B2C  7C 7B 1B 78 */	mr r27, r3
/* 80800B30  3B DB 06 A0 */	addi r30, r27, 0x6a0
/* 80800B34  3B BB 07 30 */	addi r29, r27, 0x730
/* 80800B38  3B 80 00 00 */	li r28, 0
/* 80800B3C  3B 40 00 00 */	li r26, 0
/* 80800B40  3B 20 00 00 */	li r25, 0
lbl_80800B44:
/* 80800B44  2C 1C 00 00 */	cmpwi r28, 0
/* 80800B48  40 81 00 C4 */	ble lbl_80800C0C
/* 80800B4C  2C 1C 00 0B */	cmpwi r28, 0xb
/* 80800B50  40 80 00 BC */	bge lbl_80800C0C
/* 80800B54  7F FB CA 14 */	add r31, r27, r25
/* 80800B58  80 1F 07 78 */	lwz r0, 0x778(r31)
/* 80800B5C  28 00 00 00 */	cmplwi r0, 0
/* 80800B60  41 82 00 AC */	beq lbl_80800C0C
/* 80800B64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80800B68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80800B6C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80800B70  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80800B74  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80800B78  4B B4 5D 70 */	b PSMTXTrans
/* 80800B7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80800B80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80800B84  A8 9D 00 02 */	lha r4, 2(r29)
/* 80800B88  4B 80 B8 AC */	b mDoMtx_YrotM__FPA4_fs
/* 80800B8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80800B90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80800B94  A8 9D 00 00 */	lha r4, 0(r29)
/* 80800B98  4B 80 B8 04 */	b mDoMtx_XrotM__FPA4_fs
/* 80800B9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80800BA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80800BA4  7F 44 07 34 */	extsh r4, r26
/* 80800BA8  4B 80 B9 24 */	b mDoMtx_ZrotM__FPA4_fs
/* 80800BAC  3C 60 80 80 */	lis r3, lit_3904@ha
/* 80800BB0  C0 43 42 84 */	lfs f2, lit_3904@l(r3)
/* 80800BB4  C0 3B 04 EC */	lfs f1, 0x4ec(r27)
/* 80800BB8  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80800BBC  40 82 00 1C */	bne lbl_80800BD8
/* 80800BC0  C0 1B 04 F0 */	lfs f0, 0x4f0(r27)
/* 80800BC4  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80800BC8  40 82 00 10 */	bne lbl_80800BD8
/* 80800BCC  C0 1B 04 F4 */	lfs f0, 0x4f4(r27)
/* 80800BD0  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80800BD4  41 82 00 14 */	beq lbl_80800BE8
lbl_80800BD8:
/* 80800BD8  C0 5B 04 F0 */	lfs f2, 0x4f0(r27)
/* 80800BDC  C0 7B 04 F4 */	lfs f3, 0x4f4(r27)
/* 80800BE0  4B 80 C2 58 */	b scaleM__14mDoMtx_stack_cFfff
/* 80800BE4  48 00 00 14 */	b lbl_80800BF8
lbl_80800BE8:
/* 80800BE8  C0 3F 07 D8 */	lfs f1, 0x7d8(r31)
/* 80800BEC  FC 40 08 90 */	fmr f2, f1
/* 80800BF0  FC 60 08 90 */	fmr f3, f1
/* 80800BF4  4B 80 C2 44 */	b scaleM__14mDoMtx_stack_cFfff
lbl_80800BF8:
/* 80800BF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80800BFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80800C00  80 9F 07 78 */	lwz r4, 0x778(r31)
/* 80800C04  38 84 00 24 */	addi r4, r4, 0x24
/* 80800C08  4B B4 58 A8 */	b PSMTXCopy
lbl_80800C0C:
/* 80800C0C  3B 9C 00 01 */	addi r28, r28, 1
/* 80800C10  2C 1C 00 0C */	cmpwi r28, 0xc
/* 80800C14  3B 5A 20 00 */	addi r26, r26, 0x2000
/* 80800C18  3B 39 00 04 */	addi r25, r25, 4
/* 80800C1C  3B DE 00 0C */	addi r30, r30, 0xc
/* 80800C20  3B BD 00 06 */	addi r29, r29, 6
/* 80800C24  41 80 FF 20 */	blt lbl_80800B44
/* 80800C28  39 61 00 30 */	addi r11, r1, 0x30
/* 80800C2C  4B B6 15 EC */	b _restgpr_25
/* 80800C30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80800C34  7C 08 03 A6 */	mtlr r0
/* 80800C38  38 21 00 30 */	addi r1, r1, 0x30
/* 80800C3C  4E 80 00 20 */	blr 
