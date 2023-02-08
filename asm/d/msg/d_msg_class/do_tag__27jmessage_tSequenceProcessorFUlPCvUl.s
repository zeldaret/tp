lbl_8022C1A0:
/* 8022C1A0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8022C1A4  7C 08 02 A6 */	mflr r0
/* 8022C1A8  90 01 00 84 */	stw r0, 0x84(r1)
/* 8022C1AC  39 61 00 80 */	addi r11, r1, 0x80
/* 8022C1B0  48 13 60 29 */	bl _savegpr_28
/* 8022C1B4  7C 7C 1B 78 */	mr r28, r3
/* 8022C1B8  7C 9D 23 78 */	mr r29, r4
/* 8022C1BC  7C BE 2B 78 */	mr r30, r5
/* 8022C1C0  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022C1C4  54 84 02 1E */	rlwinm r4, r4, 0, 8, 0xf
/* 8022C1C8  3C 00 00 04 */	lis r0, 4
/* 8022C1CC  7C 04 00 00 */	cmpw r4, r0
/* 8022C1D0  41 82 06 48 */	beq lbl_8022C818
/* 8022C1D4  40 80 00 40 */	bge lbl_8022C214
/* 8022C1D8  3C 00 00 02 */	lis r0, 2
/* 8022C1DC  7C 04 00 00 */	cmpw r4, r0
/* 8022C1E0  41 82 00 A4 */	beq lbl_8022C284
/* 8022C1E4  40 80 00 20 */	bge lbl_8022C204
/* 8022C1E8  3C 00 00 01 */	lis r0, 1
/* 8022C1EC  7C 04 00 00 */	cmpw r4, r0
/* 8022C1F0  41 82 00 54 */	beq lbl_8022C244
/* 8022C1F4  40 80 06 EC */	bge lbl_8022C8E0
/* 8022C1F8  2C 04 00 00 */	cmpwi r4, 0
/* 8022C1FC  41 82 01 0C */	beq lbl_8022C308
/* 8022C200  48 00 06 E0 */	b lbl_8022C8E0
lbl_8022C204:
/* 8022C204  3C 00 00 03 */	lis r0, 3
/* 8022C208  7C 04 00 00 */	cmpw r4, r0
/* 8022C20C  41 82 06 A4 */	beq lbl_8022C8B0
/* 8022C210  48 00 06 D0 */	b lbl_8022C8E0
lbl_8022C214:
/* 8022C214  3C 00 00 06 */	lis r0, 6
/* 8022C218  7C 04 00 00 */	cmpw r4, r0
/* 8022C21C  41 82 06 4C */	beq lbl_8022C868
/* 8022C220  40 80 00 14 */	bge lbl_8022C234
/* 8022C224  3C 00 00 05 */	lis r0, 5
/* 8022C228  7C 04 00 00 */	cmpw r4, r0
/* 8022C22C  41 82 06 14 */	beq lbl_8022C840
/* 8022C230  48 00 06 B0 */	b lbl_8022C8E0
lbl_8022C234:
/* 8022C234  3C 60 00 FF */	lis r3, 0xff
/* 8022C238  7C 04 18 00 */	cmpw r4, r3
/* 8022C23C  41 82 00 60 */	beq lbl_8022C29C
/* 8022C240  48 00 06 A0 */	b lbl_8022C8E0
lbl_8022C244:
/* 8022C244  38 61 00 08 */	addi r3, r1, 8
/* 8022C248  7F E4 FB 78 */	mr r4, r31
/* 8022C24C  48 00 67 D5 */	bl getActorPos__19jmessage_tReferenceFv
/* 8022C250  C0 01 00 08 */	lfs f0, 8(r1)
/* 8022C254  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8022C258  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8022C25C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8022C260  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8022C264  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8022C268  7F 83 E3 78 */	mr r3, r28
/* 8022C26C  88 9C 00 B4 */	lbz r4, 0xb4(r28)
/* 8022C270  57 A5 06 3E */	clrlwi r5, r29, 0x18
/* 8022C274  38 C1 00 14 */	addi r6, r1, 0x14
/* 8022C278  48 00 08 99 */	bl messageSePlay__27jmessage_tSequenceProcessorFUcUcP4cXyz
/* 8022C27C  38 60 00 01 */	li r3, 1
/* 8022C280  48 00 06 64 */	b lbl_8022C8E4
lbl_8022C284:
/* 8022C284  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8022C288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022C28C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022C290  90 03 5E E8 */	stw r0, 0x5ee8(r3)
/* 8022C294  38 60 00 01 */	li r3, 1
/* 8022C298  48 00 06 4C */	b lbl_8022C8E4
lbl_8022C29C:
/* 8022C29C  38 03 00 02 */	addi r0, r3, 2
/* 8022C2A0  7C 1D 00 00 */	cmpw r29, r0
/* 8022C2A4  41 82 00 4C */	beq lbl_8022C2F0
/* 8022C2A8  40 80 00 14 */	bge lbl_8022C2BC
/* 8022C2AC  7C 1D 18 00 */	cmpw r29, r3
/* 8022C2B0  41 82 00 20 */	beq lbl_8022C2D0
/* 8022C2B4  40 80 00 2C */	bge lbl_8022C2E0
/* 8022C2B8  48 00 00 50 */	b lbl_8022C308
lbl_8022C2BC:
/* 8022C2BC  3C 60 01 00 */	lis r3, 0x0100 /* 0x00FFFF02@ha */
/* 8022C2C0  38 03 FF 02 */	addi r0, r3, 0xFF02 /* 0x00FFFF02@l */
/* 8022C2C4  7C 1D 00 00 */	cmpw r29, r0
/* 8022C2C8  41 82 00 28 */	beq lbl_8022C2F0
/* 8022C2CC  48 00 00 3C */	b lbl_8022C308
lbl_8022C2D0:
/* 8022C2D0  88 1E 00 00 */	lbz r0, 0(r30)
/* 8022C2D4  98 1F 12 49 */	stb r0, 0x1249(r31)
/* 8022C2D8  38 60 00 01 */	li r3, 1
/* 8022C2DC  48 00 06 08 */	b lbl_8022C8E4
lbl_8022C2E0:
/* 8022C2E0  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022C2E4  B0 1F 06 32 */	sth r0, 0x632(r31)
/* 8022C2E8  38 60 00 01 */	li r3, 1
/* 8022C2EC  48 00 05 F8 */	b lbl_8022C8E4
lbl_8022C2F0:
/* 8022C2F0  7F 83 E3 78 */	mr r3, r28
/* 8022C2F4  7F C4 F3 78 */	mr r4, r30
/* 8022C2F8  7C C5 33 78 */	mr r5, r6
/* 8022C2FC  48 00 07 29 */	bl do_rubyset__27jmessage_tSequenceProcessorFPCvUl
/* 8022C300  38 60 00 01 */	li r3, 1
/* 8022C304  48 00 05 E0 */	b lbl_8022C8E4
lbl_8022C308:
/* 8022C308  28 1D 00 3F */	cmplwi r29, 0x3f
/* 8022C30C  41 81 05 0C */	bgt lbl_8022C818
/* 8022C310  3C 60 80 3C */	lis r3, lit_6062@ha /* 0x803C0230@ha */
/* 8022C314  38 63 02 30 */	addi r3, r3, lit_6062@l /* 0x803C0230@l */
/* 8022C318  57 A0 10 3A */	slwi r0, r29, 2
/* 8022C31C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8022C320  7C 09 03 A6 */	mtctr r0
/* 8022C324  4E 80 04 20 */	bctr 
/* 8022C328  7F 83 E3 78 */	mr r3, r28
/* 8022C32C  48 00 07 81 */	bl push_word__27jmessage_tSequenceProcessorFv
/* 8022C330  38 60 00 01 */	li r3, 1
/* 8022C334  48 00 05 B0 */	b lbl_8022C8E4
/* 8022C338  48 00 C1 DD */	bl getWord__12dMsgObject_cFv
/* 8022C33C  7C 64 1B 78 */	mr r4, r3
/* 8022C340  7F 83 E3 78 */	mr r3, r28
/* 8022C344  48 07 B8 B5 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022C348  38 60 00 01 */	li r3, 1
/* 8022C34C  48 00 05 98 */	b lbl_8022C8E4
/* 8022C350  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022C354  48 00 AF 79 */	bl getSmellName__12dMsgObject_cFv
/* 8022C358  7C 64 1B 78 */	mr r4, r3
/* 8022C35C  7F 83 E3 78 */	mr r3, r28
/* 8022C360  48 07 B8 99 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022C364  38 60 00 01 */	li r3, 1
/* 8022C368  48 00 05 7C */	b lbl_8022C8E4
/* 8022C36C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022C370  48 00 AF C5 */	bl getPortalName__12dMsgObject_cFv
/* 8022C374  7C 64 1B 78 */	mr r4, r3
/* 8022C378  7F 83 E3 78 */	mr r3, r28
/* 8022C37C  48 07 B8 7D */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022C380  38 60 00 01 */	li r3, 1
/* 8022C384  48 00 05 60 */	b lbl_8022C8E4
/* 8022C388  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022C38C  48 00 B0 01 */	bl getBombName__12dMsgObject_cFv
/* 8022C390  7C 64 1B 78 */	mr r4, r3
/* 8022C394  7F 83 E3 78 */	mr r3, r28
/* 8022C398  48 07 B8 61 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022C39C  38 60 00 01 */	li r3, 1
/* 8022C3A0  48 00 05 44 */	b lbl_8022C8E4
/* 8022C3A4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022C3A8  48 00 B0 75 */	bl getInsectName__12dMsgObject_cFv
/* 8022C3AC  7C 64 1B 78 */	mr r4, r3
/* 8022C3B0  7F 83 E3 78 */	mr r3, r28
/* 8022C3B4  48 07 B8 45 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022C3B8  38 60 00 01 */	li r3, 1
/* 8022C3BC  48 00 05 28 */	b lbl_8022C8E4
/* 8022C3C0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022C3C4  48 00 B0 B5 */	bl getLetterName__12dMsgObject_cFv
/* 8022C3C8  7C 64 1B 78 */	mr r4, r3
/* 8022C3CC  7F 83 E3 78 */	mr r3, r28
/* 8022C3D0  48 07 B8 29 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022C3D4  38 60 00 01 */	li r3, 1
/* 8022C3D8  48 00 05 0C */	b lbl_8022C8E4
/* 8022C3DC  38 60 00 01 */	li r3, 1
/* 8022C3E0  48 00 05 04 */	b lbl_8022C8E4
/* 8022C3E4  7F 83 E3 78 */	mr r3, r28
/* 8022C3E8  48 00 06 C5 */	bl push_word__27jmessage_tSequenceProcessorFv
/* 8022C3EC  38 60 00 01 */	li r3, 1
/* 8022C3F0  48 00 04 F4 */	b lbl_8022C8E4
/* 8022C3F4  38 00 00 01 */	li r0, 1
/* 8022C3F8  98 1C 00 B2 */	stb r0, 0xb2(r28)
/* 8022C3FC  98 1F 12 76 */	stb r0, 0x1276(r31)
/* 8022C400  38 60 00 01 */	li r3, 1
/* 8022C404  48 00 04 E0 */	b lbl_8022C8E4
/* 8022C408  38 00 00 00 */	li r0, 0
/* 8022C40C  98 1C 00 B2 */	stb r0, 0xb2(r28)
/* 8022C410  38 60 00 01 */	li r3, 1
/* 8022C414  48 00 04 D0 */	b lbl_8022C8E4
/* 8022C418  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022C41C  B0 1F 05 D6 */	sth r0, 0x5d6(r31)
/* 8022C420  A8 1F 05 D6 */	lha r0, 0x5d6(r31)
/* 8022C424  2C 00 00 00 */	cmpwi r0, 0
/* 8022C428  40 82 00 10 */	bne lbl_8022C438
/* 8022C42C  38 00 00 03 */	li r0, 3
/* 8022C430  98 1F 12 4C */	stb r0, 0x124c(r31)
/* 8022C434  48 00 00 0C */	b lbl_8022C440
lbl_8022C438:
/* 8022C438  38 00 00 01 */	li r0, 1
/* 8022C43C  98 1F 12 4C */	stb r0, 0x124c(r31)
lbl_8022C440:
/* 8022C440  38 60 00 01 */	li r3, 1
/* 8022C444  48 00 04 A0 */	b lbl_8022C8E4
/* 8022C448  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022C44C  B0 1F 05 D6 */	sth r0, 0x5d6(r31)
/* 8022C450  38 00 00 02 */	li r0, 2
/* 8022C454  98 1F 12 4C */	stb r0, 0x124c(r31)
/* 8022C458  38 60 00 01 */	li r3, 1
/* 8022C45C  48 00 04 88 */	b lbl_8022C8E4
/* 8022C460  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022C464  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8022C468  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8022C46C  B0 03 00 94 */	sth r0, 0x94(r3)
/* 8022C470  B0 1F 05 D6 */	sth r0, 0x5d6(r31)
/* 8022C474  38 00 00 06 */	li r0, 6
/* 8022C478  98 1F 12 4C */	stb r0, 0x124c(r31)
/* 8022C47C  38 60 00 01 */	li r3, 1
/* 8022C480  48 00 04 64 */	b lbl_8022C8E4
/* 8022C484  80 1E 00 00 */	lwz r0, 0(r30)
/* 8022C488  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8022C48C  38 00 00 04 */	li r0, 4
/* 8022C490  98 1F 12 4C */	stb r0, 0x124c(r31)
/* 8022C494  38 60 00 01 */	li r3, 1
/* 8022C498  48 00 04 4C */	b lbl_8022C8E4
/* 8022C49C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022C4A0  B0 1C 00 A8 */	sth r0, 0xa8(r28)
/* 8022C4A4  A8 1C 00 A8 */	lha r0, 0xa8(r28)
/* 8022C4A8  B0 1C 00 A4 */	sth r0, 0xa4(r28)
/* 8022C4AC  38 60 00 01 */	li r3, 1
/* 8022C4B0  48 00 04 34 */	b lbl_8022C8E4
/* 8022C4B4  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022C4B8  B0 1C 00 A4 */	sth r0, 0xa4(r28)
/* 8022C4BC  38 00 00 00 */	li r0, 0
/* 8022C4C0  98 1C 00 B0 */	stb r0, 0xb0(r28)
/* 8022C4C4  38 60 00 01 */	li r3, 1
/* 8022C4C8  48 00 04 1C */	b lbl_8022C8E4
/* 8022C4CC  88 1F 12 42 */	lbz r0, 0x1242(r31)
/* 8022C4D0  28 00 00 00 */	cmplwi r0, 0
/* 8022C4D4  40 82 00 1C */	bne lbl_8022C4F0
/* 8022C4D8  38 00 00 02 */	li r0, 2
/* 8022C4DC  98 1F 12 42 */	stb r0, 0x1242(r31)
/* 8022C4E0  38 00 00 00 */	li r0, 0
/* 8022C4E4  98 1F 12 43 */	stb r0, 0x1243(r31)
/* 8022C4E8  38 00 00 01 */	li r0, 1
/* 8022C4EC  98 1C 00 B2 */	stb r0, 0xb2(r28)
lbl_8022C4F0:
/* 8022C4F0  88 1E 00 00 */	lbz r0, 0(r30)
/* 8022C4F4  28 00 00 01 */	cmplwi r0, 1
/* 8022C4F8  40 82 00 18 */	bne lbl_8022C510
/* 8022C4FC  88 7C 00 AD */	lbz r3, 0xad(r28)
/* 8022C500  88 1F 12 74 */	lbz r0, 0x1274(r31)
/* 8022C504  28 00 00 00 */	cmplwi r0, 0
/* 8022C508  40 82 00 08 */	bne lbl_8022C510
/* 8022C50C  98 7F 12 44 */	stb r3, 0x1244(r31)
lbl_8022C510:
/* 8022C510  88 7C 00 AD */	lbz r3, 0xad(r28)
/* 8022C514  38 03 00 01 */	addi r0, r3, 1
/* 8022C518  98 1C 00 AD */	stb r0, 0xad(r28)
/* 8022C51C  38 00 00 01 */	li r0, 1
/* 8022C520  98 1C 00 AC */	stb r0, 0xac(r28)
/* 8022C524  38 60 00 01 */	li r3, 1
/* 8022C528  48 00 03 BC */	b lbl_8022C8E4
/* 8022C52C  88 1F 12 42 */	lbz r0, 0x1242(r31)
/* 8022C530  28 00 00 00 */	cmplwi r0, 0
/* 8022C534  40 82 00 1C */	bne lbl_8022C550
/* 8022C538  38 00 00 03 */	li r0, 3
/* 8022C53C  98 1F 12 42 */	stb r0, 0x1242(r31)
/* 8022C540  38 00 00 00 */	li r0, 0
/* 8022C544  98 1F 12 43 */	stb r0, 0x1243(r31)
/* 8022C548  38 00 00 01 */	li r0, 1
/* 8022C54C  98 1C 00 B2 */	stb r0, 0xb2(r28)
lbl_8022C550:
/* 8022C550  88 1E 00 00 */	lbz r0, 0(r30)
/* 8022C554  28 00 00 01 */	cmplwi r0, 1
/* 8022C558  40 82 00 18 */	bne lbl_8022C570
/* 8022C55C  88 7C 00 AD */	lbz r3, 0xad(r28)
/* 8022C560  88 1F 12 74 */	lbz r0, 0x1274(r31)
/* 8022C564  28 00 00 00 */	cmplwi r0, 0
/* 8022C568  40 82 00 08 */	bne lbl_8022C570
/* 8022C56C  98 7F 12 44 */	stb r3, 0x1244(r31)
lbl_8022C570:
/* 8022C570  88 7C 00 AD */	lbz r3, 0xad(r28)
/* 8022C574  38 03 00 01 */	addi r0, r3, 1
/* 8022C578  98 1C 00 AD */	stb r0, 0xad(r28)
/* 8022C57C  38 00 00 01 */	li r0, 1
/* 8022C580  98 1C 00 AC */	stb r0, 0xac(r28)
/* 8022C584  38 60 00 01 */	li r3, 1
/* 8022C588  48 00 03 5C */	b lbl_8022C8E4
/* 8022C58C  88 1F 12 42 */	lbz r0, 0x1242(r31)
/* 8022C590  28 00 00 02 */	cmplwi r0, 2
/* 8022C594  40 82 00 10 */	bne lbl_8022C5A4
/* 8022C598  88 1F 12 43 */	lbz r0, 0x1243(r31)
/* 8022C59C  28 00 00 01 */	cmplwi r0, 1
/* 8022C5A0  41 82 00 14 */	beq lbl_8022C5B4
lbl_8022C5A4:
/* 8022C5A4  38 00 00 02 */	li r0, 2
/* 8022C5A8  98 1F 12 42 */	stb r0, 0x1242(r31)
/* 8022C5AC  38 00 00 01 */	li r0, 1
/* 8022C5B0  98 1F 12 43 */	stb r0, 0x1243(r31)
lbl_8022C5B4:
/* 8022C5B4  38 00 00 01 */	li r0, 1
/* 8022C5B8  98 1C 00 B2 */	stb r0, 0xb2(r28)
/* 8022C5BC  38 60 00 01 */	li r3, 1
/* 8022C5C0  48 00 03 24 */	b lbl_8022C8E4
/* 8022C5C4  88 1F 12 42 */	lbz r0, 0x1242(r31)
/* 8022C5C8  28 00 00 02 */	cmplwi r0, 2
/* 8022C5CC  40 82 00 10 */	bne lbl_8022C5DC
/* 8022C5D0  88 1F 12 43 */	lbz r0, 0x1243(r31)
/* 8022C5D4  28 00 00 01 */	cmplwi r0, 1
/* 8022C5D8  41 82 00 2C */	beq lbl_8022C604
lbl_8022C5DC:
/* 8022C5DC  38 00 00 02 */	li r0, 2
/* 8022C5E0  98 1F 12 42 */	stb r0, 0x1242(r31)
/* 8022C5E4  38 00 00 01 */	li r0, 1
/* 8022C5E8  98 1F 12 43 */	stb r0, 0x1243(r31)
/* 8022C5EC  88 1F 12 74 */	lbz r0, 0x1274(r31)
/* 8022C5F0  28 00 00 00 */	cmplwi r0, 0
/* 8022C5F4  40 82 00 24 */	bne lbl_8022C618
/* 8022C5F8  38 00 00 00 */	li r0, 0
/* 8022C5FC  98 1F 12 44 */	stb r0, 0x1244(r31)
/* 8022C600  48 00 00 18 */	b lbl_8022C618
lbl_8022C604:
/* 8022C604  88 1F 12 74 */	lbz r0, 0x1274(r31)
/* 8022C608  28 00 00 00 */	cmplwi r0, 0
/* 8022C60C  40 82 00 0C */	bne lbl_8022C618
/* 8022C610  38 00 00 01 */	li r0, 1
/* 8022C614  98 1F 12 44 */	stb r0, 0x1244(r31)
lbl_8022C618:
/* 8022C618  38 00 00 01 */	li r0, 1
/* 8022C61C  98 1C 00 B2 */	stb r0, 0xb2(r28)
/* 8022C620  38 60 00 01 */	li r3, 1
/* 8022C624  48 00 02 C0 */	b lbl_8022C8E4
/* 8022C628  88 1F 12 42 */	lbz r0, 0x1242(r31)
/* 8022C62C  28 00 00 03 */	cmplwi r0, 3
/* 8022C630  40 82 00 10 */	bne lbl_8022C640
/* 8022C634  88 1F 12 43 */	lbz r0, 0x1243(r31)
/* 8022C638  28 00 00 01 */	cmplwi r0, 1
/* 8022C63C  41 82 00 14 */	beq lbl_8022C650
lbl_8022C640:
/* 8022C640  38 00 00 03 */	li r0, 3
/* 8022C644  98 1F 12 42 */	stb r0, 0x1242(r31)
/* 8022C648  38 00 00 01 */	li r0, 1
/* 8022C64C  98 1F 12 43 */	stb r0, 0x1243(r31)
lbl_8022C650:
/* 8022C650  88 7C 00 AD */	lbz r3, 0xad(r28)
/* 8022C654  38 03 00 01 */	addi r0, r3, 1
/* 8022C658  98 1C 00 AD */	stb r0, 0xad(r28)
/* 8022C65C  38 00 00 01 */	li r0, 1
/* 8022C660  98 1C 00 B2 */	stb r0, 0xb2(r28)
/* 8022C664  38 60 00 01 */	li r3, 1
/* 8022C668  48 00 02 7C */	b lbl_8022C8E4
/* 8022C66C  88 1F 12 42 */	lbz r0, 0x1242(r31)
/* 8022C670  28 00 00 03 */	cmplwi r0, 3
/* 8022C674  40 82 00 10 */	bne lbl_8022C684
/* 8022C678  88 1F 12 43 */	lbz r0, 0x1243(r31)
/* 8022C67C  28 00 00 01 */	cmplwi r0, 1
/* 8022C680  41 82 00 14 */	beq lbl_8022C694
lbl_8022C684:
/* 8022C684  38 00 00 03 */	li r0, 3
/* 8022C688  98 1F 12 42 */	stb r0, 0x1242(r31)
/* 8022C68C  38 00 00 01 */	li r0, 1
/* 8022C690  98 1F 12 43 */	stb r0, 0x1243(r31)
lbl_8022C694:
/* 8022C694  88 7C 00 AD */	lbz r3, 0xad(r28)
/* 8022C698  88 1F 12 74 */	lbz r0, 0x1274(r31)
/* 8022C69C  28 00 00 00 */	cmplwi r0, 0
/* 8022C6A0  40 82 00 08 */	bne lbl_8022C6A8
/* 8022C6A4  98 7F 12 44 */	stb r3, 0x1244(r31)
lbl_8022C6A8:
/* 8022C6A8  38 00 00 01 */	li r0, 1
/* 8022C6AC  98 1C 00 B2 */	stb r0, 0xb2(r28)
/* 8022C6B0  38 60 00 01 */	li r3, 1
/* 8022C6B4  48 00 02 30 */	b lbl_8022C8E4
/* 8022C6B8  7F 83 E3 78 */	mr r3, r28
/* 8022C6BC  38 80 00 0A */	li r4, 0xa
/* 8022C6C0  81 9C 00 00 */	lwz r12, 0(r28)
/* 8022C6C4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8022C6C8  7D 89 03 A6 */	mtctr r12
/* 8022C6CC  4E 80 04 21 */	bctrl 
/* 8022C6D0  7F 83 E3 78 */	mr r3, r28
/* 8022C6D4  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 8022C6D8  48 07 B5 21 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022C6DC  38 60 00 01 */	li r3, 1
/* 8022C6E0  48 00 02 04 */	b lbl_8022C8E4
/* 8022C6E4  7F 83 E3 78 */	mr r3, r28
/* 8022C6E8  48 00 02 1D */	bl do_name1__27jmessage_tSequenceProcessorFv
/* 8022C6EC  38 60 00 01 */	li r3, 1
/* 8022C6F0  48 00 01 F4 */	b lbl_8022C8E4
/* 8022C6F4  7F 83 E3 78 */	mr r3, r28
/* 8022C6F8  7F A4 EB 78 */	mr r4, r29
/* 8022C6FC  48 00 02 0D */	bl do_space__27jmessage_tSequenceProcessorFUl
/* 8022C700  38 60 00 01 */	li r3, 1
/* 8022C704  48 00 01 E0 */	b lbl_8022C8E4
/* 8022C708  7F E3 FB 78 */	mr r3, r31
/* 8022C70C  38 80 00 00 */	li r4, 0
/* 8022C710  4B FF D2 9D */	bl decideOutFontRupeeColor__19jmessage_tReferenceFi
/* 8022C714  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 8022C718  38 60 00 00 */	li r3, 0
/* 8022C71C  B0 64 01 74 */	sth r3, 0x174(r4)
/* 8022C720  38 00 00 01 */	li r0, 1
/* 8022C724  98 04 01 9F */	stb r0, 0x19f(r4)
/* 8022C728  98 7F 12 4F */	stb r3, 0x124f(r31)
/* 8022C72C  38 00 00 05 */	li r0, 5
/* 8022C730  98 1F 12 4C */	stb r0, 0x124c(r31)
/* 8022C734  80 1E 00 00 */	lwz r0, 0(r30)
/* 8022C738  28 00 00 01 */	cmplwi r0, 1
/* 8022C73C  40 82 00 20 */	bne lbl_8022C75C
/* 8022C740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022C744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022C748  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8022C74C  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 8022C750  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 8022C754  A0 84 00 A0 */	lhz r4, 0xa0(r4)
/* 8022C758  4B E0 82 35 */	bl onEventBit__11dSv_event_cFUs
lbl_8022C75C:
/* 8022C75C  38 60 00 01 */	li r3, 1
/* 8022C760  48 00 01 84 */	b lbl_8022C8E4
/* 8022C764  38 00 00 01 */	li r0, 1
/* 8022C768  98 1F 12 4B */	stb r0, 0x124b(r31)
/* 8022C76C  38 60 00 01 */	li r3, 1
/* 8022C770  48 00 01 74 */	b lbl_8022C8E4
/* 8022C774  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022C778  48 00 AD 59 */	bl getSelectBombNum__12dMsgObject_cFv
/* 8022C77C  7C 60 1B 78 */	mr r0, r3
/* 8022C780  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022C784  38 80 00 07 */	li r4, 7
/* 8022C788  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8022C78C  38 C1 00 48 */	addi r6, r1, 0x48
/* 8022C790  38 E0 00 01 */	li r7, 1
/* 8022C794  48 00 C5 59 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022C798  7F E3 FB 78 */	mr r3, r31
/* 8022C79C  88 9C 00 B5 */	lbz r4, 0xb5(r28)
/* 8022C7A0  7C 84 07 74 */	extsb r4, r4
/* 8022C7A4  4B FF CF 8D */	bl getWord__19jmessage_tReferenceFi
/* 8022C7A8  38 81 00 48 */	addi r4, r1, 0x48
/* 8022C7AC  48 13 C3 81 */	bl strcpy
/* 8022C7B0  7F 83 E3 78 */	mr r3, r28
/* 8022C7B4  48 00 02 F9 */	bl push_word__27jmessage_tSequenceProcessorFv
/* 8022C7B8  38 60 00 01 */	li r3, 1
/* 8022C7BC  48 00 01 28 */	b lbl_8022C8E4
/* 8022C7C0  48 00 BE 21 */	bl getSelectBombPrice__12dMsgObject_cFv
/* 8022C7C4  7C 60 1B 78 */	mr r0, r3
/* 8022C7C8  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022C7CC  38 80 00 01 */	li r4, 1
/* 8022C7D0  7C 05 07 34 */	extsh r5, r0
/* 8022C7D4  38 C1 00 20 */	addi r6, r1, 0x20
/* 8022C7D8  38 E0 00 01 */	li r7, 1
/* 8022C7DC  48 00 C5 11 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022C7E0  7F E3 FB 78 */	mr r3, r31
/* 8022C7E4  88 9C 00 B5 */	lbz r4, 0xb5(r28)
/* 8022C7E8  7C 84 07 74 */	extsb r4, r4
/* 8022C7EC  4B FF CF 45 */	bl getWord__19jmessage_tReferenceFi
/* 8022C7F0  38 81 00 20 */	addi r4, r1, 0x20
/* 8022C7F4  48 13 C3 39 */	bl strcpy
/* 8022C7F8  7F 83 E3 78 */	mr r3, r28
/* 8022C7FC  48 00 02 B1 */	bl push_word__27jmessage_tSequenceProcessorFv
/* 8022C800  38 60 00 01 */	li r3, 1
/* 8022C804  48 00 00 E0 */	b lbl_8022C8E4
/* 8022C808  7F 83 E3 78 */	mr r3, r28
/* 8022C80C  48 00 02 A1 */	bl push_word__27jmessage_tSequenceProcessorFv
/* 8022C810  38 60 00 01 */	li r3, 1
/* 8022C814  48 00 00 D0 */	b lbl_8022C8E4
lbl_8022C818:
/* 8022C818  57 A0 04 0E */	rlwinm r0, r29, 0, 0x10, 7
/* 8022C81C  2C 00 00 0E */	cmpwi r0, 0xe
/* 8022C820  40 80 00 20 */	bge lbl_8022C840
/* 8022C824  2C 00 00 00 */	cmpwi r0, 0
/* 8022C828  40 80 00 08 */	bge lbl_8022C830
/* 8022C82C  48 00 00 14 */	b lbl_8022C840
lbl_8022C830:
/* 8022C830  7F 83 E3 78 */	mr r3, r28
/* 8022C834  48 00 02 79 */	bl push_word__27jmessage_tSequenceProcessorFv
/* 8022C838  38 60 00 01 */	li r3, 1
/* 8022C83C  48 00 00 A8 */	b lbl_8022C8E4
lbl_8022C840:
/* 8022C840  57 A0 04 0E */	rlwinm r0, r29, 0, 0x10, 7
/* 8022C844  2C 00 00 0F */	cmpwi r0, 0xf
/* 8022C848  40 80 00 20 */	bge lbl_8022C868
/* 8022C84C  2C 00 00 00 */	cmpwi r0, 0
/* 8022C850  40 80 00 08 */	bge lbl_8022C858
/* 8022C854  48 00 00 14 */	b lbl_8022C868
lbl_8022C858:
/* 8022C858  7F 83 E3 78 */	mr r3, r28
/* 8022C85C  48 00 02 51 */	bl push_word__27jmessage_tSequenceProcessorFv
/* 8022C860  38 60 00 01 */	li r3, 1
/* 8022C864  48 00 00 80 */	b lbl_8022C8E4
lbl_8022C868:
/* 8022C868  57 A0 04 0E */	rlwinm r0, r29, 0, 0x10, 7
/* 8022C86C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8022C870  40 80 00 10 */	bge lbl_8022C880
/* 8022C874  2C 00 00 00 */	cmpwi r0, 0
/* 8022C878  40 80 00 14 */	bge lbl_8022C88C
/* 8022C87C  48 00 00 34 */	b lbl_8022C8B0
lbl_8022C880:
/* 8022C880  2C 00 00 0C */	cmpwi r0, 0xc
/* 8022C884  40 80 00 2C */	bge lbl_8022C8B0
/* 8022C888  48 00 00 14 */	b lbl_8022C89C
lbl_8022C88C:
/* 8022C88C  7F 83 E3 78 */	mr r3, r28
/* 8022C890  48 00 02 1D */	bl push_word__27jmessage_tSequenceProcessorFv
/* 8022C894  38 60 00 01 */	li r3, 1
/* 8022C898  48 00 00 4C */	b lbl_8022C8E4
lbl_8022C89C:
/* 8022C89C  7F 83 E3 78 */	mr r3, r28
/* 8022C8A0  7F A4 EB 78 */	mr r4, r29
/* 8022C8A4  48 00 00 65 */	bl do_space__27jmessage_tSequenceProcessorFUl
/* 8022C8A8  38 60 00 01 */	li r3, 1
/* 8022C8AC  48 00 00 38 */	b lbl_8022C8E4
lbl_8022C8B0:
/* 8022C8B0  57 A0 04 0F */	rlwinm. r0, r29, 0, 0x10, 7
/* 8022C8B4  41 82 00 24 */	beq lbl_8022C8D8
/* 8022C8B8  41 80 00 28 */	blt lbl_8022C8E0
/* 8022C8BC  2C 00 00 15 */	cmpwi r0, 0x15
/* 8022C8C0  40 80 00 20 */	bge lbl_8022C8E0
/* 8022C8C4  7F 83 E3 78 */	mr r3, r28
/* 8022C8C8  7F A4 EB 78 */	mr r4, r29
/* 8022C8CC  48 00 00 3D */	bl do_space__27jmessage_tSequenceProcessorFUl
/* 8022C8D0  38 60 00 01 */	li r3, 1
/* 8022C8D4  48 00 00 10 */	b lbl_8022C8E4
lbl_8022C8D8:
/* 8022C8D8  38 60 00 01 */	li r3, 1
/* 8022C8DC  48 00 00 08 */	b lbl_8022C8E4
lbl_8022C8E0:
/* 8022C8E0  38 60 00 00 */	li r3, 0
lbl_8022C8E4:
/* 8022C8E4  39 61 00 80 */	addi r11, r1, 0x80
/* 8022C8E8  48 13 59 3D */	bl _restgpr_28
/* 8022C8EC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8022C8F0  7C 08 03 A6 */	mtlr r0
/* 8022C8F4  38 21 00 80 */	addi r1, r1, 0x80
/* 8022C8F8  4E 80 00 20 */	blr 
