lbl_8007D6F0:
/* 8007D6F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007D6F4  7C 08 02 A6 */	mflr r0
/* 8007D6F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007D6FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D700  48 2E 4A D5 */	bl _savegpr_27
/* 8007D704  7C 7D 1B 78 */	mr r29, r3
/* 8007D708  7C 9E 23 78 */	mr r30, r4
/* 8007D70C  7C BB 2B 78 */	mr r27, r5
/* 8007D710  7C DF 33 78 */	mr r31, r6
/* 8007D714  80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 8007D718  54 A0 28 34 */	slwi r0, r5, 5
/* 8007D71C  7F 83 02 14 */	add r28, r3, r0
/* 8007D720  38 7C 00 04 */	addi r3, r28, 4
/* 8007D724  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8007D728  48 1F 15 61 */	bl CrossY__8cM3dGAabCFPC4cXyz
/* 8007D72C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D730  41 82 00 2C */	beq lbl_8007D75C
/* 8007D734  38 7C 00 04 */	addi r3, r28, 4
/* 8007D738  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8007D73C  48 1F 15 95 */	bl UnderPlaneYUnder__8cM3dGAabCFf
/* 8007D740  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D744  41 82 00 18 */	beq lbl_8007D75C
/* 8007D748  38 7C 00 04 */	addi r3, r28, 4
/* 8007D74C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8007D750  48 1F 15 95 */	bl TopPlaneYUnder__8cM3dGAabCFf
/* 8007D754  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D758  41 82 00 0C */	beq lbl_8007D764
lbl_8007D75C:
/* 8007D75C  38 60 00 00 */	li r3, 0
/* 8007D760  48 00 00 B8 */	b lbl_8007D818
lbl_8007D764:
/* 8007D764  7F A3 EB 78 */	mr r3, r29
/* 8007D768  7F 64 DB 78 */	mr r4, r27
/* 8007D76C  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8007D770  7F E6 FB 78 */	mr r6, r31
/* 8007D774  81 9D 00 04 */	lwz r12, 4(r29)
/* 8007D778  81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8007D77C  7D 89 03 A6 */	mtctr r12
/* 8007D780  4E 80 04 21 */	bctrl 
/* 8007D784  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D788  41 82 00 0C */	beq lbl_8007D794
/* 8007D78C  38 60 00 00 */	li r3, 0
/* 8007D790  48 00 00 88 */	b lbl_8007D818
lbl_8007D794:
/* 8007D794  3B 80 00 00 */	li r28, 0
/* 8007D798  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007D79C  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8007D7A0  1C 1B 00 34 */	mulli r0, r27, 0x34
/* 8007D7A4  7F 63 02 14 */	add r27, r3, r0
/* 8007D7A8  A0 BB 00 2E */	lhz r5, 0x2e(r27)
/* 8007D7AC  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007D7B0  41 82 00 1C */	beq lbl_8007D7CC
/* 8007D7B4  7F A3 EB 78 */	mr r3, r29
/* 8007D7B8  7F C4 F3 78 */	mr r4, r30
/* 8007D7BC  4B FF FE 09 */	bl SplGrpChkRp__4dBgWFP14dBgS_SplGrpChki
/* 8007D7C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D7C4  41 82 00 08 */	beq lbl_8007D7CC
/* 8007D7C8  3B 80 00 01 */	li r28, 1
lbl_8007D7CC:
/* 8007D7CC  A3 7B 00 28 */	lhz r27, 0x28(r27)
lbl_8007D7D0:
/* 8007D7D0  3C 1B 00 00 */	addis r0, r27, 0
/* 8007D7D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007D7D8  41 82 00 3C */	beq lbl_8007D814
/* 8007D7DC  7F A3 EB 78 */	mr r3, r29
/* 8007D7E0  7F C4 F3 78 */	mr r4, r30
/* 8007D7E4  7F 65 DB 78 */	mr r5, r27
/* 8007D7E8  38 DF 00 01 */	addi r6, r31, 1
/* 8007D7EC  4B FF FF 05 */	bl SplGrpChkGrpRp__4dBgWFP14dBgS_SplGrpChkii
/* 8007D7F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D7F4  41 82 00 08 */	beq lbl_8007D7FC
/* 8007D7F8  3B 80 00 01 */	li r28, 1
lbl_8007D7FC:
/* 8007D7FC  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007D800  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8007D804  1C 7B 00 34 */	mulli r3, r27, 0x34
/* 8007D808  38 03 00 26 */	addi r0, r3, 0x26
/* 8007D80C  7F 64 02 2E */	lhzx r27, r4, r0
/* 8007D810  4B FF FF C0 */	b lbl_8007D7D0
lbl_8007D814:
/* 8007D814  7F 83 E3 78 */	mr r3, r28
lbl_8007D818:
/* 8007D818  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D81C  48 2E 4A 05 */	bl _restgpr_27
/* 8007D820  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007D824  7C 08 03 A6 */	mtlr r0
/* 8007D828  38 21 00 20 */	addi r1, r1, 0x20
/* 8007D82C  4E 80 00 20 */	blr 
