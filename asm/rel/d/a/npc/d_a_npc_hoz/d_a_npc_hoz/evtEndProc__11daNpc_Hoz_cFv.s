lbl_80A024D0:
/* 80A024D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A024D4  7C 08 02 A6 */	mflr r0
/* 80A024D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A024DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A024E0  7C 7F 1B 78 */	mr r31, r3
/* 80A024E4  88 03 0F 8C */	lbz r0, 0xf8c(r3)
/* 80A024E8  28 00 00 08 */	cmplwi r0, 8
/* 80A024EC  41 81 00 FC */	bgt lbl_80A025E8
/* 80A024F0  3C 60 80 A0 */	lis r3, lit_4755@ha
/* 80A024F4  38 63 76 AC */	addi r3, r3, lit_4755@l
/* 80A024F8  54 00 10 3A */	slwi r0, r0, 2
/* 80A024FC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A02500  7C 09 03 A6 */	mtctr r0
/* 80A02504  4E 80 04 20 */	bctr 
lbl_80A02508:
/* 80A02508  38 00 00 01 */	li r0, 1
/* 80A0250C  98 1F 0F 8A */	stb r0, 0xf8a(r31)
/* 80A02510  38 00 00 00 */	li r0, 0
/* 80A02514  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A02518  48 00 00 DC */	b lbl_80A025F4
lbl_80A0251C:
/* 80A0251C  38 00 00 01 */	li r0, 1
/* 80A02520  98 1F 0F 8B */	stb r0, 0xf8b(r31)
/* 80A02524  38 00 00 00 */	li r0, 0
/* 80A02528  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A0252C  48 00 00 C8 */	b lbl_80A025F4
lbl_80A02530:
/* 80A02530  38 00 00 01 */	li r0, 1
/* 80A02534  98 1F 0F 8A */	stb r0, 0xf8a(r31)
/* 80A02538  38 00 00 00 */	li r0, 0
/* 80A0253C  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A02540  A0 1F 09 AE */	lhz r0, 0x9ae(r31)
/* 80A02544  7C 00 07 35 */	extsh. r0, r0
/* 80A02548  40 82 00 AC */	bne lbl_80A025F4
/* 80A0254C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80A02550  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80A02554  38 80 00 03 */	li r4, 3
/* 80A02558  4B 81 B8 C0 */	b setMiniGameItem__13dMeter2Info_cFUc
/* 80A0255C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80A02560  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80A02564  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 80A02568  60 00 00 04 */	ori r0, r0, 4
/* 80A0256C  B0 03 00 98 */	sth r0, 0x98(r3)
/* 80A02570  48 00 00 84 */	b lbl_80A025F4
lbl_80A02574:
/* 80A02574  38 00 00 01 */	li r0, 1
/* 80A02578  98 1F 0F 8B */	stb r0, 0xf8b(r31)
/* 80A0257C  38 60 00 43 */	li r3, 0x43
/* 80A02580  4B 74 A5 EC */	b daNpcT_chkTmpBit__FUl
/* 80A02584  2C 03 00 00 */	cmpwi r3, 0
/* 80A02588  41 82 00 6C */	beq lbl_80A025F4
/* 80A0258C  38 00 00 01 */	li r0, 1
/* 80A02590  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A02594  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A02598  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80A0259C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80A025A0  38 80 00 00 */	li r4, 0
/* 80A025A4  4B 81 BB 20 */	b resetMiniGameItem__13dMeter2Info_cFb
/* 80A025A8  7F E3 FB 78 */	mr r3, r31
/* 80A025AC  4B 74 7C 78 */	b evtChange__8daNpcT_cFv
/* 80A025B0  48 00 00 44 */	b lbl_80A025F4
lbl_80A025B4:
/* 80A025B4  38 00 00 00 */	li r0, 0
/* 80A025B8  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A025BC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A025C0  48 00 00 34 */	b lbl_80A025F4
lbl_80A025C4:
/* 80A025C4  88 1F 0F 8E */	lbz r0, 0xf8e(r31)
/* 80A025C8  28 00 00 00 */	cmplwi r0, 0
/* 80A025CC  41 82 00 0C */	beq lbl_80A025D8
/* 80A025D0  38 00 00 00 */	li r0, 0
/* 80A025D4  98 1F 0F 8E */	stb r0, 0xf8e(r31)
lbl_80A025D8:
/* 80A025D8  38 00 00 00 */	li r0, 0
/* 80A025DC  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A025E0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A025E4  48 00 00 10 */	b lbl_80A025F4
lbl_80A025E8:
/* 80A025E8  38 00 00 00 */	li r0, 0
/* 80A025EC  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A025F0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_80A025F4:
/* 80A025F4  38 60 00 01 */	li r3, 1
/* 80A025F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A025FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A02600  7C 08 03 A6 */	mtlr r0
/* 80A02604  38 21 00 10 */	addi r1, r1, 0x10
/* 80A02608  4E 80 00 20 */	blr 
