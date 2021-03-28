lbl_8007AA50:
/* 8007AA50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007AA54  7C 08 02 A6 */	mflr r0
/* 8007AA58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007AA5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8007AA60  48 2E 77 71 */	bl _savegpr_26
/* 8007AA64  7C 7C 1B 78 */	mr r28, r3
/* 8007AA68  7C 9D 23 78 */	mr r29, r4
/* 8007AA6C  7C BA 2B 78 */	mr r26, r5
/* 8007AA70  7C DE 33 78 */	mr r30, r6
/* 8007AA74  80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 8007AA78  54 A0 28 34 */	slwi r0, r5, 5
/* 8007AA7C  7F 63 02 14 */	add r27, r3, r0
/* 8007AA80  38 7B 00 04 */	addi r3, r27, 4
/* 8007AA84  38 9D 00 24 */	addi r4, r29, 0x24
/* 8007AA88  48 1F 42 01 */	bl CrossY__8cM3dGAabCFPC4cXyz
/* 8007AA8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AA90  41 82 00 2C */	beq lbl_8007AABC
/* 8007AA94  38 7B 00 04 */	addi r3, r27, 4
/* 8007AA98  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 8007AA9C  48 1F 42 35 */	bl UnderPlaneYUnder__8cM3dGAabCFf
/* 8007AAA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AAA4  41 82 00 18 */	beq lbl_8007AABC
/* 8007AAA8  38 7B 00 04 */	addi r3, r27, 4
/* 8007AAAC  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 8007AAB0  48 1F 42 35 */	bl TopPlaneYUnder__8cM3dGAabCFf
/* 8007AAB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AAB8  41 82 00 0C */	beq lbl_8007AAC4
lbl_8007AABC:
/* 8007AABC  38 60 00 00 */	li r3, 0
/* 8007AAC0  48 00 00 C4 */	b lbl_8007AB84
lbl_8007AAC4:
/* 8007AAC4  7F 83 E3 78 */	mr r3, r28
/* 8007AAC8  7F 44 D3 78 */	mr r4, r26
/* 8007AACC  80 BD 00 04 */	lwz r5, 4(r29)
/* 8007AAD0  7F C6 F3 78 */	mr r6, r30
/* 8007AAD4  81 9C 00 04 */	lwz r12, 4(r28)
/* 8007AAD8  81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8007AADC  7D 89 03 A6 */	mtctr r12
/* 8007AAE0  4E 80 04 21 */	bctrl 
/* 8007AAE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AAE8  41 82 00 0C */	beq lbl_8007AAF4
/* 8007AAEC  38 60 00 00 */	li r3, 0
/* 8007AAF0  48 00 00 94 */	b lbl_8007AB84
lbl_8007AAF4:
/* 8007AAF4  3B E0 00 00 */	li r31, 0
/* 8007AAF8  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007AAFC  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007AB00  1F 7A 00 34 */	mulli r27, r26, 0x34
/* 8007AB04  7C 60 DA 14 */	add r3, r0, r27
/* 8007AB08  A0 A3 00 2E */	lhz r5, 0x2e(r3)
/* 8007AB0C  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007AB10  41 82 00 1C */	beq lbl_8007AB2C
/* 8007AB14  7F 83 E3 78 */	mr r3, r28
/* 8007AB18  7F A4 EB 78 */	mr r4, r29
/* 8007AB1C  4B FF FD D9 */	bl GroundCrossRp__4cBgWFP11cBgS_GndChki
/* 8007AB20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AB24  41 82 00 08 */	beq lbl_8007AB2C
/* 8007AB28  3B E0 00 01 */	li r31, 1
lbl_8007AB2C:
/* 8007AB2C  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007AB30  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007AB34  7C 60 DA 14 */	add r3, r0, r27
/* 8007AB38  A3 63 00 28 */	lhz r27, 0x28(r3)
lbl_8007AB3C:
/* 8007AB3C  3C 1B 00 00 */	addis r0, r27, 0
/* 8007AB40  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007AB44  41 82 00 3C */	beq lbl_8007AB80
/* 8007AB48  7F 83 E3 78 */	mr r3, r28
/* 8007AB4C  7F A4 EB 78 */	mr r4, r29
/* 8007AB50  7F 65 DB 78 */	mr r5, r27
/* 8007AB54  38 DE 00 01 */	addi r6, r30, 1
/* 8007AB58  4B FF FE F9 */	bl GroundCrossGrpRp__4cBgWFP11cBgS_GndChkii
/* 8007AB5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AB60  41 82 00 08 */	beq lbl_8007AB68
/* 8007AB64  3B E0 00 01 */	li r31, 1
lbl_8007AB68:
/* 8007AB68  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007AB6C  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8007AB70  1C 7B 00 34 */	mulli r3, r27, 0x34
/* 8007AB74  38 03 00 26 */	addi r0, r3, 0x26
/* 8007AB78  7F 64 02 2E */	lhzx r27, r4, r0
/* 8007AB7C  4B FF FF C0 */	b lbl_8007AB3C
lbl_8007AB80:
/* 8007AB80  7F E3 FB 78 */	mr r3, r31
lbl_8007AB84:
/* 8007AB84  39 61 00 20 */	addi r11, r1, 0x20
/* 8007AB88  48 2E 76 95 */	bl _restgpr_26
/* 8007AB8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007AB90  7C 08 03 A6 */	mtlr r0
/* 8007AB94  38 21 00 20 */	addi r1, r1, 0x20
/* 8007AB98  4E 80 00 20 */	blr 
