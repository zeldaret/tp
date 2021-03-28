lbl_80077A98:
/* 80077A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077A9C  7C 08 02 A6 */	mflr r0
/* 80077AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077AA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80077AAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80077AB0  7C 9F 23 78 */	mr r31, r4
/* 80077AB4  41 82 00 40 */	beq lbl_80077AF4
/* 80077AB8  3C 80 80 3B */	lis r4, __vt__18dBgS_CamGndChk_Wtr@ha
/* 80077ABC  38 84 B6 88 */	addi r4, r4, __vt__18dBgS_CamGndChk_Wtr@l
/* 80077AC0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80077AC4  38 04 00 0C */	addi r0, r4, 0xc
/* 80077AC8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80077ACC  38 04 00 18 */	addi r0, r4, 0x18
/* 80077AD0  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80077AD4  38 04 00 24 */	addi r0, r4, 0x24
/* 80077AD8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80077ADC  38 80 00 00 */	li r4, 0
/* 80077AE0  4B FF FE A9 */	bl __dt__14dBgS_CamGndChkFv
/* 80077AE4  7F E0 07 35 */	extsh. r0, r31
/* 80077AE8  40 81 00 0C */	ble lbl_80077AF4
/* 80077AEC  7F C3 F3 78 */	mr r3, r30
/* 80077AF0  48 25 72 4D */	bl __dl__FPv
lbl_80077AF4:
/* 80077AF4  7F C3 F3 78 */	mr r3, r30
/* 80077AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077AFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80077B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077B04  7C 08 03 A6 */	mtlr r0
/* 80077B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80077B0C  4E 80 00 20 */	blr 
