lbl_8007C360:
/* 8007C360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007C364  7C 08 02 A6 */	mflr r0
/* 8007C368  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007C36C  39 61 00 20 */	addi r11, r1, 0x20
/* 8007C370  48 2E 5E 65 */	bl _savegpr_27
/* 8007C374  7C 7C 1B 78 */	mr r28, r3
/* 8007C378  7C 9D 23 78 */	mr r29, r4
/* 8007C37C  7C BB 2B 78 */	mr r27, r5
/* 8007C380  7C DE 33 78 */	mr r30, r6
/* 8007C384  38 9D 00 60 */	addi r4, r29, 0x60
/* 8007C388  80 03 00 A8 */	lwz r0, 0xa8(r3)
/* 8007C38C  54 A3 28 34 */	slwi r3, r5, 5
/* 8007C390  38 63 00 04 */	addi r3, r3, 4
/* 8007C394  7C 60 1A 14 */	add r3, r0, r3
/* 8007C398  48 1E C7 75 */	bl cM3d_Cross_AabCyl__FPC8cM3dGAabPC8cM3dGCyl
/* 8007C39C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C3A0  40 82 00 0C */	bne lbl_8007C3AC
/* 8007C3A4  38 60 00 00 */	li r3, 0
/* 8007C3A8  48 00 00 C4 */	b lbl_8007C46C
lbl_8007C3AC:
/* 8007C3AC  7F 83 E3 78 */	mr r3, r28
/* 8007C3B0  7F 64 DB 78 */	mr r4, r27
/* 8007C3B4  80 BD 00 04 */	lwz r5, 4(r29)
/* 8007C3B8  7F C6 F3 78 */	mr r6, r30
/* 8007C3BC  81 9C 00 04 */	lwz r12, 4(r28)
/* 8007C3C0  81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8007C3C4  7D 89 03 A6 */	mtctr r12
/* 8007C3C8  4E 80 04 21 */	bctrl 
/* 8007C3CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C3D0  41 82 00 0C */	beq lbl_8007C3DC
/* 8007C3D4  38 60 00 00 */	li r3, 0
/* 8007C3D8  48 00 00 94 */	b lbl_8007C46C
lbl_8007C3DC:
/* 8007C3DC  3B E0 00 00 */	li r31, 0
/* 8007C3E0  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007C3E4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007C3E8  1F 7B 00 34 */	mulli r27, r27, 0x34
/* 8007C3EC  7C 60 DA 14 */	add r3, r0, r27
/* 8007C3F0  A0 A3 00 2E */	lhz r5, 0x2e(r3)
/* 8007C3F4  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007C3F8  41 82 00 1C */	beq lbl_8007C414
/* 8007C3FC  7F 83 E3 78 */	mr r3, r28
/* 8007C400  7F A4 EB 78 */	mr r4, r29
/* 8007C404  4B FF FE 31 */	bl WallCorrectRp__4dBgWFP9dBgS_Acchi
/* 8007C408  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C40C  41 82 00 08 */	beq lbl_8007C414
/* 8007C410  3B E0 00 01 */	li r31, 1
lbl_8007C414:
/* 8007C414  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007C418  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007C41C  7C 60 DA 14 */	add r3, r0, r27
/* 8007C420  A3 63 00 28 */	lhz r27, 0x28(r3)
lbl_8007C424:
/* 8007C424  3C 1B 00 00 */	addis r0, r27, 0
/* 8007C428  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007C42C  41 82 00 3C */	beq lbl_8007C468
/* 8007C430  7F 83 E3 78 */	mr r3, r28
/* 8007C434  7F A4 EB 78 */	mr r4, r29
/* 8007C438  7F 65 DB 78 */	mr r5, r27
/* 8007C43C  38 DE 00 01 */	addi r6, r30, 1
/* 8007C440  4B FF FF 21 */	bl WallCorrectGrpRp__4dBgWFP9dBgS_Acchii
/* 8007C444  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C448  41 82 00 08 */	beq lbl_8007C450
/* 8007C44C  3B E0 00 01 */	li r31, 1
lbl_8007C450:
/* 8007C450  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007C454  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8007C458  1C 7B 00 34 */	mulli r3, r27, 0x34
/* 8007C45C  38 03 00 26 */	addi r0, r3, 0x26
/* 8007C460  7F 64 02 2E */	lhzx r27, r4, r0
/* 8007C464  4B FF FF C0 */	b lbl_8007C424
lbl_8007C468:
/* 8007C468  7F E3 FB 78 */	mr r3, r31
lbl_8007C46C:
/* 8007C46C  39 61 00 20 */	addi r11, r1, 0x20
/* 8007C470  48 2E 5D B1 */	bl _restgpr_27
/* 8007C474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007C478  7C 08 03 A6 */	mtlr r0
/* 8007C47C  38 21 00 20 */	addi r1, r1, 0x20
/* 8007C480  4E 80 00 20 */	blr 
