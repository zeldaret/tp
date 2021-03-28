lbl_8022BB7C:
/* 8022BB7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022BB80  7C 08 02 A6 */	mflr r0
/* 8022BB84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022BB88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8022BB8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8022BB90  7C 7E 1B 78 */	mr r30, r3
/* 8022BB94  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022BB98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8022BB9C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8022BBA0  88 04 5E B4 */	lbz r0, 0x5eb4(r4)
/* 8022BBA4  28 00 00 00 */	cmplwi r0, 0
/* 8022BBA8  41 82 00 78 */	beq lbl_8022BC20
/* 8022BBAC  38 C0 00 01 */	li r6, 1
/* 8022BBB0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8022BBB4  80 A3 03 D4 */	lwz r5, 0x3d4(r3)
/* 8022BBB8  28 05 00 00 */	cmplwi r5, 0
/* 8022BBBC  41 82 00 10 */	beq lbl_8022BBCC
/* 8022BBC0  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 8022BBC4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8022BBC8  48 00 00 08 */	b lbl_8022BBD0
lbl_8022BBCC:
/* 8022BBCC  38 A0 FF FF */	li r5, -1
lbl_8022BBD0:
/* 8022BBD0  3C 05 FF 00 */	addis r0, r5, 0xff00
/* 8022BBD4  28 00 00 0A */	cmplwi r0, 0xa
/* 8022BBD8  41 82 00 38 */	beq lbl_8022BC10
/* 8022BBDC  80 63 03 D4 */	lwz r3, 0x3d4(r3)
/* 8022BBE0  28 03 00 00 */	cmplwi r3, 0
/* 8022BBE4  41 82 00 10 */	beq lbl_8022BBF4
/* 8022BBE8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8022BBEC  90 61 00 08 */	stw r3, 8(r1)
/* 8022BBF0  48 00 00 08 */	b lbl_8022BBF8
lbl_8022BBF4:
/* 8022BBF4  38 60 FF FF */	li r3, -1
lbl_8022BBF8:
/* 8022BBF8  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 8022BBFC  28 00 00 0B */	cmplwi r0, 0xb
/* 8022BC00  41 82 00 10 */	beq lbl_8022BC10
/* 8022BC04  38 00 00 00 */	li r0, 0
/* 8022BC08  98 04 5E B4 */	stb r0, 0x5eb4(r4)
/* 8022BC0C  38 C0 00 00 */	li r6, 0
lbl_8022BC10:
/* 8022BC10  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 8022BC14  41 82 00 0C */	beq lbl_8022BC20
/* 8022BC18  38 60 00 00 */	li r3, 0
/* 8022BC1C  48 00 03 AC */	b lbl_8022BFC8
lbl_8022BC20:
/* 8022BC20  88 1F 12 4B */	lbz r0, 0x124b(r31)
/* 8022BC24  28 00 00 00 */	cmplwi r0, 0
/* 8022BC28  41 82 00 30 */	beq lbl_8022BC58
/* 8022BC2C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 8022BC30  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 8022BC34  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8022BC38  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8022BC3C  41 82 00 14 */	beq lbl_8022BC50
/* 8022BC40  38 00 00 00 */	li r0, 0
/* 8022BC44  98 1F 12 4B */	stb r0, 0x124b(r31)
/* 8022BC48  38 00 00 01 */	li r0, 1
/* 8022BC4C  98 1F 12 72 */	stb r0, 0x1272(r31)
lbl_8022BC50:
/* 8022BC50  38 60 00 00 */	li r3, 0
/* 8022BC54  48 00 03 74 */	b lbl_8022BFC8
lbl_8022BC58:
/* 8022BC58  7F E3 FB 78 */	mr r3, r31
/* 8022BC5C  4B FF D2 11 */	bl isKanban__19jmessage_tReferenceFv
/* 8022BC60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BC64  40 82 00 54 */	bne lbl_8022BCB8
/* 8022BC68  7F E3 FB 78 */	mr r3, r31
/* 8022BC6C  4B FF D2 35 */	bl isPlaceName__19jmessage_tReferenceFv
/* 8022BC70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BC74  40 82 00 44 */	bne lbl_8022BCB8
/* 8022BC78  7F E3 FB 78 */	mr r3, r31
/* 8022BC7C  4B FF D2 F5 */	bl isStaffRoll__19jmessage_tReferenceFv
/* 8022BC80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BC84  40 82 00 34 */	bne lbl_8022BCB8
/* 8022BC88  7F E3 FB 78 */	mr r3, r31
/* 8022BC8C  4B FF D2 49 */	bl isBossName__19jmessage_tReferenceFv
/* 8022BC90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BC94  40 82 00 24 */	bne lbl_8022BCB8
/* 8022BC98  7F E3 FB 78 */	mr r3, r31
/* 8022BC9C  4B FF D2 6D */	bl isSaveSeq__19jmessage_tReferenceFv
/* 8022BCA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BCA4  40 82 00 14 */	bne lbl_8022BCB8
/* 8022BCA8  7F E3 FB 78 */	mr r3, r31
/* 8022BCAC  4B FF D2 F9 */	bl isHowl__19jmessage_tReferenceFv
/* 8022BCB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BCB4  41 82 00 AC */	beq lbl_8022BD60
lbl_8022BCB8:
/* 8022BCB8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8022BCBC  A0 A3 00 00 */	lhz r5, 0(r3)
/* 8022BCC0  28 05 00 02 */	cmplwi r5, 2
/* 8022BCC4  41 82 00 1C */	beq lbl_8022BCE0
/* 8022BCC8  28 05 00 06 */	cmplwi r5, 6
/* 8022BCCC  41 82 00 14 */	beq lbl_8022BCE0
/* 8022BCD0  28 05 00 0B */	cmplwi r5, 0xb
/* 8022BCD4  41 82 00 0C */	beq lbl_8022BCE0
/* 8022BCD8  28 05 00 05 */	cmplwi r5, 5
/* 8022BCDC  40 82 02 E8 */	bne lbl_8022BFC4
lbl_8022BCE0:
/* 8022BCE0  A8 9F 05 D0 */	lha r4, 0x5d0(r31)
/* 8022BCE4  A8 1F 05 D2 */	lha r0, 0x5d2(r31)
/* 8022BCE8  7C 7F 02 14 */	add r3, r31, r0
/* 8022BCEC  88 03 11 CA */	lbz r0, 0x11ca(r3)
/* 8022BCF0  7C 00 07 74 */	extsb r0, r0
/* 8022BCF4  7C 04 00 00 */	cmpw r4, r0
/* 8022BCF8  41 80 00 0C */	blt lbl_8022BD04
/* 8022BCFC  28 05 00 0B */	cmplwi r5, 0xb
/* 8022BD00  40 82 00 30 */	bne lbl_8022BD30
lbl_8022BD04:
/* 8022BD04  38 60 00 01 */	li r3, 1
/* 8022BD08  98 7E 00 AE */	stb r3, 0xae(r30)
/* 8022BD0C  38 00 00 00 */	li r0, 0
/* 8022BD10  B0 1E 00 A4 */	sth r0, 0xa4(r30)
/* 8022BD14  98 7F 12 73 */	stb r3, 0x1273(r31)
/* 8022BD18  38 00 02 00 */	li r0, 0x200
/* 8022BD1C  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 8022BD20  A8 1E 00 A8 */	lha r0, 0xa8(r30)
/* 8022BD24  B0 1E 00 A4 */	sth r0, 0xa4(r30)
/* 8022BD28  38 60 00 01 */	li r3, 1
/* 8022BD2C  48 00 02 9C */	b lbl_8022BFC8
lbl_8022BD30:
/* 8022BD30  A8 7E 00 AA */	lha r3, 0xaa(r30)
/* 8022BD34  A8 1F 05 D4 */	lha r0, 0x5d4(r31)
/* 8022BD38  7C 03 00 00 */	cmpw r3, r0
/* 8022BD3C  40 82 00 0C */	bne lbl_8022BD48
/* 8022BD40  38 60 00 01 */	li r3, 1
/* 8022BD44  48 00 02 84 */	b lbl_8022BFC8
lbl_8022BD48:
/* 8022BD48  38 00 00 01 */	li r0, 1
/* 8022BD4C  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 8022BD50  A8 7E 00 AA */	lha r3, 0xaa(r30)
/* 8022BD54  38 03 00 01 */	addi r0, r3, 1
/* 8022BD58  B0 1E 00 AA */	sth r0, 0xaa(r30)
/* 8022BD5C  48 00 02 68 */	b lbl_8022BFC4
lbl_8022BD60:
/* 8022BD60  7F E3 FB 78 */	mr r3, r31
/* 8022BD64  4B FF D1 D9 */	bl isBook__19jmessage_tReferenceFv
/* 8022BD68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BD6C  41 82 00 8C */	beq lbl_8022BDF8
/* 8022BD70  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8022BD74  A0 03 00 00 */	lhz r0, 0(r3)
/* 8022BD78  28 00 00 02 */	cmplwi r0, 2
/* 8022BD7C  41 82 00 0C */	beq lbl_8022BD88
/* 8022BD80  28 00 00 06 */	cmplwi r0, 6
/* 8022BD84  40 82 02 40 */	bne lbl_8022BFC4
lbl_8022BD88:
/* 8022BD88  A8 9F 05 D0 */	lha r4, 0x5d0(r31)
/* 8022BD8C  A8 1F 05 D2 */	lha r0, 0x5d2(r31)
/* 8022BD90  7C 7F 02 14 */	add r3, r31, r0
/* 8022BD94  88 03 11 CA */	lbz r0, 0x11ca(r3)
/* 8022BD98  7C 00 07 74 */	extsb r0, r0
/* 8022BD9C  7C 04 00 00 */	cmpw r4, r0
/* 8022BDA0  40 80 00 28 */	bge lbl_8022BDC8
/* 8022BDA4  38 60 00 01 */	li r3, 1
/* 8022BDA8  98 7E 00 AE */	stb r3, 0xae(r30)
/* 8022BDAC  38 00 00 00 */	li r0, 0
/* 8022BDB0  B0 1E 00 A4 */	sth r0, 0xa4(r30)
/* 8022BDB4  98 7F 12 73 */	stb r3, 0x1273(r31)
/* 8022BDB8  38 00 02 00 */	li r0, 0x200
/* 8022BDBC  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 8022BDC0  38 60 00 01 */	li r3, 1
/* 8022BDC4  48 00 02 04 */	b lbl_8022BFC8
lbl_8022BDC8:
/* 8022BDC8  A8 7F 05 D4 */	lha r3, 0x5d4(r31)
/* 8022BDCC  A8 1F 05 DA */	lha r0, 0x5da(r31)
/* 8022BDD0  7C 03 00 00 */	cmpw r3, r0
/* 8022BDD4  40 82 00 0C */	bne lbl_8022BDE0
/* 8022BDD8  38 60 00 01 */	li r3, 1
/* 8022BDDC  48 00 01 EC */	b lbl_8022BFC8
lbl_8022BDE0:
/* 8022BDE0  38 00 00 01 */	li r0, 1
/* 8022BDE4  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 8022BDE8  A8 7E 00 AA */	lha r3, 0xaa(r30)
/* 8022BDEC  38 03 00 01 */	addi r0, r3, 1
/* 8022BDF0  B0 1E 00 AA */	sth r0, 0xaa(r30)
/* 8022BDF4  48 00 01 D0 */	b lbl_8022BFC4
lbl_8022BDF8:
/* 8022BDF8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8022BDFC  A0 03 00 00 */	lhz r0, 0(r3)
/* 8022BE00  28 00 00 06 */	cmplwi r0, 6
/* 8022BE04  41 82 00 4C */	beq lbl_8022BE50
/* 8022BE08  28 00 00 0B */	cmplwi r0, 0xb
/* 8022BE0C  41 82 00 44 */	beq lbl_8022BE50
/* 8022BE10  28 00 00 08 */	cmplwi r0, 8
/* 8022BE14  41 82 00 0C */	beq lbl_8022BE20
/* 8022BE18  28 00 00 09 */	cmplwi r0, 9
/* 8022BE1C  40 82 00 14 */	bne lbl_8022BE30
lbl_8022BE20:
/* 8022BE20  7F E3 FB 78 */	mr r3, r31
/* 8022BE24  4B FF D1 B5 */	bl isMidona__19jmessage_tReferenceFv
/* 8022BE28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BE2C  40 82 00 24 */	bne lbl_8022BE50
lbl_8022BE30:
/* 8022BE30  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8022BE34  A0 03 00 00 */	lhz r0, 0(r3)
/* 8022BE38  28 00 00 02 */	cmplwi r0, 2
/* 8022BE3C  40 82 01 88 */	bne lbl_8022BFC4
/* 8022BE40  7F E3 FB 78 */	mr r3, r31
/* 8022BE44  4B FF D1 95 */	bl isMidona__19jmessage_tReferenceFv
/* 8022BE48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BE4C  41 82 01 78 */	beq lbl_8022BFC4
lbl_8022BE50:
/* 8022BE50  A8 9F 05 D0 */	lha r4, 0x5d0(r31)
/* 8022BE54  A8 1F 05 D2 */	lha r0, 0x5d2(r31)
/* 8022BE58  7C 7F 02 14 */	add r3, r31, r0
/* 8022BE5C  88 03 11 CA */	lbz r0, 0x11ca(r3)
/* 8022BE60  7C 00 07 74 */	extsb r0, r0
/* 8022BE64  7C 04 00 00 */	cmpw r4, r0
/* 8022BE68  40 80 01 28 */	bge lbl_8022BF90
/* 8022BE6C  88 1E 00 AE */	lbz r0, 0xae(r30)
/* 8022BE70  28 00 00 09 */	cmplwi r0, 9
/* 8022BE74  41 81 00 88 */	bgt lbl_8022BEFC
/* 8022BE78  3C 60 80 3C */	lis r3, lit_5735@ha
/* 8022BE7C  38 63 02 08 */	addi r3, r3, lit_5735@l
/* 8022BE80  54 00 10 3A */	slwi r0, r0, 2
/* 8022BE84  7C 03 00 2E */	lwzx r0, r3, r0
/* 8022BE88  7C 09 03 A6 */	mtctr r0
/* 8022BE8C  4E 80 04 20 */	bctr 
/* 8022BE90  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 8022BE94  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 8022BE98  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8022BE9C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8022BEA0  40 82 00 10 */	bne lbl_8022BEB0
/* 8022BEA4  88 1E 00 B2 */	lbz r0, 0xb2(r30)
/* 8022BEA8  28 00 00 00 */	cmplwi r0, 0
/* 8022BEAC  41 82 00 50 */	beq lbl_8022BEFC
lbl_8022BEB0:
/* 8022BEB0  38 00 00 00 */	li r0, 0
/* 8022BEB4  B0 1E 00 A4 */	sth r0, 0xa4(r30)
/* 8022BEB8  38 00 00 01 */	li r0, 1
/* 8022BEBC  98 1F 12 73 */	stb r0, 0x1273(r31)
/* 8022BEC0  38 00 02 00 */	li r0, 0x200
/* 8022BEC4  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 8022BEC8  48 00 00 34 */	b lbl_8022BEFC
/* 8022BECC  38 00 00 00 */	li r0, 0
/* 8022BED0  B0 1E 00 A4 */	sth r0, 0xa4(r30)
/* 8022BED4  38 00 00 01 */	li r0, 1
/* 8022BED8  98 1F 12 73 */	stb r0, 0x1273(r31)
/* 8022BEDC  38 00 02 00 */	li r0, 0x200
/* 8022BEE0  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 8022BEE4  48 00 00 18 */	b lbl_8022BEFC
/* 8022BEE8  88 1E 00 B2 */	lbz r0, 0xb2(r30)
/* 8022BEEC  28 00 00 00 */	cmplwi r0, 0
/* 8022BEF0  41 82 00 0C */	beq lbl_8022BEFC
/* 8022BEF4  38 00 00 00 */	li r0, 0
/* 8022BEF8  B0 1E 00 A4 */	sth r0, 0xa4(r30)
lbl_8022BEFC:
/* 8022BEFC  A8 7E 00 A4 */	lha r3, 0xa4(r30)
/* 8022BF00  2C 03 00 00 */	cmpwi r3, 0
/* 8022BF04  40 81 00 14 */	ble lbl_8022BF18
/* 8022BF08  38 03 FF FF */	addi r0, r3, -1
/* 8022BF0C  B0 1E 00 A4 */	sth r0, 0xa4(r30)
/* 8022BF10  38 60 00 00 */	li r3, 0
/* 8022BF14  48 00 00 B4 */	b lbl_8022BFC8
lbl_8022BF18:
/* 8022BF18  A8 7E 00 A6 */	lha r3, 0xa6(r30)
/* 8022BF1C  38 03 00 01 */	addi r0, r3, 1
/* 8022BF20  B0 1E 00 A6 */	sth r0, 0xa6(r30)
/* 8022BF24  A8 1E 00 A6 */	lha r0, 0xa6(r30)
/* 8022BF28  2C 00 00 02 */	cmpwi r0, 2
/* 8022BF2C  41 80 00 14 */	blt lbl_8022BF40
/* 8022BF30  A8 1E 00 A8 */	lha r0, 0xa8(r30)
/* 8022BF34  B0 1E 00 A4 */	sth r0, 0xa4(r30)
/* 8022BF38  38 00 00 00 */	li r0, 0
/* 8022BF3C  B0 1E 00 A6 */	sth r0, 0xa6(r30)
lbl_8022BF40:
/* 8022BF40  88 1E 00 B1 */	lbz r0, 0xb1(r30)
/* 8022BF44  28 00 00 00 */	cmplwi r0, 0
/* 8022BF48  41 82 00 10 */	beq lbl_8022BF58
/* 8022BF4C  38 00 00 00 */	li r0, 0
/* 8022BF50  98 1E 00 B1 */	stb r0, 0xb1(r30)
/* 8022BF54  48 00 00 18 */	b lbl_8022BF6C
lbl_8022BF58:
/* 8022BF58  88 1E 00 B0 */	lbz r0, 0xb0(r30)
/* 8022BF5C  28 00 00 00 */	cmplwi r0, 0
/* 8022BF60  40 82 00 0C */	bne lbl_8022BF6C
/* 8022BF64  38 00 00 01 */	li r0, 1
/* 8022BF68  98 1E 00 B0 */	stb r0, 0xb0(r30)
lbl_8022BF6C:
/* 8022BF6C  88 1E 00 AE */	lbz r0, 0xae(r30)
/* 8022BF70  28 00 00 05 */	cmplwi r0, 5
/* 8022BF74  40 82 00 14 */	bne lbl_8022BF88
/* 8022BF78  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8022BF7C  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8022BF80  A8 03 03 14 */	lha r0, 0x314(r3)
/* 8022BF84  B0 1E 00 A4 */	sth r0, 0xa4(r30)
lbl_8022BF88:
/* 8022BF88  38 60 00 01 */	li r3, 1
/* 8022BF8C  48 00 00 3C */	b lbl_8022BFC8
lbl_8022BF90:
/* 8022BF90  A8 7F 05 D4 */	lha r3, 0x5d4(r31)
/* 8022BF94  A8 1F 05 DA */	lha r0, 0x5da(r31)
/* 8022BF98  7C 03 00 00 */	cmpw r3, r0
/* 8022BF9C  40 82 00 0C */	bne lbl_8022BFA8
/* 8022BFA0  38 60 00 01 */	li r3, 1
/* 8022BFA4  48 00 00 24 */	b lbl_8022BFC8
lbl_8022BFA8:
/* 8022BFA8  38 00 00 01 */	li r0, 1
/* 8022BFAC  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 8022BFB0  38 00 00 00 */	li r0, 0
/* 8022BFB4  98 1E 00 B0 */	stb r0, 0xb0(r30)
/* 8022BFB8  A8 7E 00 AA */	lha r3, 0xaa(r30)
/* 8022BFBC  38 03 00 01 */	addi r0, r3, 1
/* 8022BFC0  B0 1E 00 AA */	sth r0, 0xaa(r30)
lbl_8022BFC4:
/* 8022BFC4  38 60 00 00 */	li r3, 0
lbl_8022BFC8:
/* 8022BFC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8022BFCC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8022BFD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022BFD4  7C 08 03 A6 */	mtlr r0
/* 8022BFD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8022BFDC  4E 80 00 20 */	blr 
