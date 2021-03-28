lbl_807C7A8C:
/* 807C7A8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807C7A90  7C 08 02 A6 */	mflr r0
/* 807C7A94  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C7A98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807C7A9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807C7AA0  7C 7F 1B 78 */	mr r31, r3
/* 807C7AA4  3C 60 80 7D */	lis r3, lit_3907@ha
/* 807C7AA8  3B C3 EC A8 */	addi r30, r3, lit_3907@l
/* 807C7AAC  80 1F 13 20 */	lwz r0, 0x1320(r31)
/* 807C7AB0  2C 00 00 01 */	cmpwi r0, 1
/* 807C7AB4  41 82 00 9C */	beq lbl_807C7B50
/* 807C7AB8  40 80 00 10 */	bge lbl_807C7AC8
/* 807C7ABC  2C 00 00 00 */	cmpwi r0, 0
/* 807C7AC0  40 80 00 14 */	bge lbl_807C7AD4
/* 807C7AC4  48 00 01 58 */	b lbl_807C7C1C
lbl_807C7AC8:
/* 807C7AC8  2C 00 00 03 */	cmpwi r0, 3
/* 807C7ACC  40 80 01 50 */	bge lbl_807C7C1C
/* 807C7AD0  48 00 00 F0 */	b lbl_807C7BC0
lbl_807C7AD4:
/* 807C7AD4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807C7AD8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807C7ADC  80 63 00 00 */	lwz r3, 0(r3)
/* 807C7AE0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C7AE4  38 80 00 02 */	li r4, 2
/* 807C7AE8  4B AE A3 0C */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 807C7AEC  38 60 00 01 */	li r3, 1
/* 807C7AF0  90 7F 13 70 */	stw r3, 0x1370(r31)
/* 807C7AF4  38 00 00 04 */	li r0, 4
/* 807C7AF8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 807C7AFC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807C7B00  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807C7B04  90 7F 13 20 */	stw r3, 0x1320(r31)
/* 807C7B08  7F E3 FB 78 */	mr r3, r31
/* 807C7B0C  38 80 00 2C */	li r4, 0x2c
/* 807C7B10  38 A0 00 02 */	li r5, 2
/* 807C7B14  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 807C7B18  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807C7B1C  4B FF BC FD */	bl setBck__8daE_VA_cFiUcff
/* 807C7B20  38 00 00 05 */	li r0, 5
/* 807C7B24  90 1F 13 40 */	stw r0, 0x1340(r31)
/* 807C7B28  38 60 00 05 */	li r3, 5
/* 807C7B2C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807C7B30  7C 04 07 74 */	extsb r4, r0
/* 807C7B34  4B 86 60 30 */	b dComIfGs_isOneZoneSwitch__Fii
/* 807C7B38  2C 03 00 00 */	cmpwi r3, 0
/* 807C7B3C  40 82 00 14 */	bne lbl_807C7B50
/* 807C7B40  38 60 00 05 */	li r3, 5
/* 807C7B44  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807C7B48  7C 04 07 74 */	extsb r4, r0
/* 807C7B4C  4B 86 5F 50 */	b dComIfGs_onOneZoneSwitch__Fii
lbl_807C7B50:
/* 807C7B50  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 807C7B54  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C7B58  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 807C7B5C  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 807C7B60  C0 9E 00 08 */	lfs f4, 8(r30)
/* 807C7B64  4B AA 7E 18 */	b cLib_addCalc__FPfffff
/* 807C7B68  80 1F 13 40 */	lwz r0, 0x1340(r31)
/* 807C7B6C  2C 00 00 00 */	cmpwi r0, 0
/* 807C7B70  40 82 00 AC */	bne lbl_807C7C1C
/* 807C7B74  7F E3 FB 78 */	mr r3, r31
/* 807C7B78  38 80 00 0E */	li r4, 0xe
/* 807C7B7C  38 A0 00 00 */	li r5, 0
/* 807C7B80  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807C7B84  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807C7B88  4B FF BC 91 */	bl setBck__8daE_VA_cFiUcff
/* 807C7B8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070328@ha */
/* 807C7B90  38 03 03 28 */	addi r0, r3, 0x0328 /* 0x00070328@l */
/* 807C7B94  90 01 00 08 */	stw r0, 8(r1)
/* 807C7B98  38 7F 12 54 */	addi r3, r31, 0x1254
/* 807C7B9C  38 81 00 08 */	addi r4, r1, 8
/* 807C7BA0  38 A0 FF FF */	li r5, -1
/* 807C7BA4  81 9F 12 54 */	lwz r12, 0x1254(r31)
/* 807C7BA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C7BAC  7D 89 03 A6 */	mtctr r12
/* 807C7BB0  4E 80 04 21 */	bctrl 
/* 807C7BB4  38 00 00 02 */	li r0, 2
/* 807C7BB8  90 1F 13 20 */	stw r0, 0x1320(r31)
/* 807C7BBC  48 00 00 60 */	b lbl_807C7C1C
lbl_807C7BC0:
/* 807C7BC0  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 807C7BC4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C7BC8  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 807C7BCC  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 807C7BD0  C0 9E 00 08 */	lfs f4, 8(r30)
/* 807C7BD4  4B AA 7D A8 */	b cLib_addCalc__FPfffff
/* 807C7BD8  38 80 00 01 */	li r4, 1
/* 807C7BDC  98 9F 13 91 */	stb r4, 0x1391(r31)
/* 807C7BE0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807C7BE4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C7BE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C7BEC  40 82 00 18 */	bne lbl_807C7C04
/* 807C7BF0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C7BF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C7BF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C7BFC  41 82 00 08 */	beq lbl_807C7C04
/* 807C7C00  38 80 00 00 */	li r4, 0
lbl_807C7C04:
/* 807C7C04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C7C08  41 82 00 14 */	beq lbl_807C7C1C
/* 807C7C0C  7F E3 FB 78 */	mr r3, r31
/* 807C7C10  38 80 00 07 */	li r4, 7
/* 807C7C14  38 A0 00 00 */	li r5, 0
/* 807C7C18  4B FF BD 01 */	bl setActionMode__8daE_VA_cFii
lbl_807C7C1C:
/* 807C7C1C  4B 99 78 08 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 807C7C20  2C 03 00 00 */	cmpwi r3, 0
/* 807C7C24  40 82 00 38 */	bne lbl_807C7C5C
/* 807C7C28  80 1F 13 58 */	lwz r0, 0x1358(r31)
/* 807C7C2C  2C 00 00 00 */	cmpwi r0, 0
/* 807C7C30  40 82 00 2C */	bne lbl_807C7C5C
/* 807C7C34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807C7C38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807C7C3C  80 63 00 00 */	lwz r3, 0(r3)
/* 807C7C40  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C7C44  38 80 00 01 */	li r4, 1
/* 807C7C48  4B AE A1 AC */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 807C7C4C  7F E3 FB 78 */	mr r3, r31
/* 807C7C50  38 80 00 13 */	li r4, 0x13
/* 807C7C54  38 A0 00 00 */	li r5, 0
/* 807C7C58  4B FF BC C1 */	bl setActionMode__8daE_VA_cFii
lbl_807C7C5C:
/* 807C7C5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807C7C60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807C7C64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807C7C68  7C 08 03 A6 */	mtlr r0
/* 807C7C6C  38 21 00 20 */	addi r1, r1, 0x20
/* 807C7C70  4E 80 00 20 */	blr 
