lbl_804C0238:
/* 804C0238  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C023C  7C 08 02 A6 */	mflr r0
/* 804C0240  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C0244  39 61 00 40 */	addi r11, r1, 0x40
/* 804C0248  4B EA 1F 8C */	b _savegpr_27
/* 804C024C  7C 7F 1B 78 */	mr r31, r3
/* 804C0250  3C 60 80 45 */	lis r3, m_object__7dDemo_c@ha
/* 804C0254  38 63 0E 20 */	addi r3, r3, m_object__7dDemo_c@l
/* 804C0258  80 63 00 00 */	lwz r3, 0(r3)
/* 804C025C  88 9F 04 98 */	lbz r4, 0x498(r31)
/* 804C0260  4B B7 8E 28 */	b getActor__14dDemo_object_cFUc
/* 804C0264  7C 7E 1B 79 */	or. r30, r3, r3
/* 804C0268  40 82 00 0C */	bne lbl_804C0274
/* 804C026C  38 60 00 00 */	li r3, 0
/* 804C0270  48 00 09 24 */	b lbl_804C0B94
lbl_804C0274:
/* 804C0274  3B 60 00 00 */	li r27, 0
/* 804C0278  3B 80 00 00 */	li r28, 0
/* 804C027C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C0280  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C0284  3F A3 00 02 */	addis r29, r3, 2
/* 804C0288  3B BD C2 F8 */	addi r29, r29, -15624
/* 804C028C  48 00 07 E4 */	b lbl_804C0A70
lbl_804C0290:
/* 804C0290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C0294  2C 00 00 00 */	cmpwi r0, 0
/* 804C0298  40 82 03 78 */	bne lbl_804C0610
/* 804C029C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804C02A0  2C 00 00 00 */	cmpwi r0, 0
/* 804C02A4  40 82 01 70 */	bne lbl_804C0414
/* 804C02A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804C02AC  2C 00 00 02 */	cmpwi r0, 2
/* 804C02B0  40 82 00 74 */	bne lbl_804C0324
/* 804C02B4  80 7F 08 94 */	lwz r3, 0x894(r31)
/* 804C02B8  38 00 FF DC */	li r0, -36
/* 804C02BC  7C 60 00 38 */	and r0, r3, r0
/* 804C02C0  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C02C4  A0 01 00 08 */	lhz r0, 8(r1)
/* 804C02C8  28 00 00 03 */	cmplwi r0, 3
/* 804C02CC  40 82 00 14 */	bne lbl_804C02E0
/* 804C02D0  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C02D4  60 00 00 20 */	ori r0, r0, 0x20
/* 804C02D8  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C02DC  48 00 07 94 */	b lbl_804C0A70
lbl_804C02E0:
/* 804C02E0  28 00 00 02 */	cmplwi r0, 2
/* 804C02E4  40 82 00 14 */	bne lbl_804C02F8
/* 804C02E8  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C02EC  60 00 00 01 */	ori r0, r0, 1
/* 804C02F0  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C02F4  48 00 07 7C */	b lbl_804C0A70
lbl_804C02F8:
/* 804C02F8  28 00 00 01 */	cmplwi r0, 1
/* 804C02FC  40 82 00 1C */	bne lbl_804C0318
/* 804C0300  38 00 00 03 */	li r0, 3
/* 804C0304  98 1F 08 4E */	stb r0, 0x84e(r31)
/* 804C0308  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C030C  60 00 00 02 */	ori r0, r0, 2
/* 804C0310  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C0314  48 00 07 5C */	b lbl_804C0A70
lbl_804C0318:
/* 804C0318  38 00 00 00 */	li r0, 0
/* 804C031C  98 1F 08 4E */	stb r0, 0x84e(r31)
/* 804C0320  48 00 07 50 */	b lbl_804C0A70
lbl_804C0324:
/* 804C0324  2C 00 00 03 */	cmpwi r0, 3
/* 804C0328  40 82 00 60 */	bne lbl_804C0388
/* 804C032C  A0 01 00 08 */	lhz r0, 8(r1)
/* 804C0330  28 00 00 02 */	cmplwi r0, 2
/* 804C0334  40 82 00 20 */	bne lbl_804C0354
/* 804C0338  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C033C  60 00 00 08 */	ori r0, r0, 8
/* 804C0340  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C0344  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C0348  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 804C034C  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C0350  48 00 07 20 */	b lbl_804C0A70
lbl_804C0354:
/* 804C0354  28 00 00 01 */	cmplwi r0, 1
/* 804C0358  40 82 00 20 */	bne lbl_804C0378
/* 804C035C  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C0360  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 804C0364  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C0368  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C036C  60 00 00 04 */	ori r0, r0, 4
/* 804C0370  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C0374  48 00 06 FC */	b lbl_804C0A70
lbl_804C0378:
/* 804C0378  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C037C  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 804C0380  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C0384  48 00 06 EC */	b lbl_804C0A70
lbl_804C0388:
/* 804C0388  2C 00 00 04 */	cmpwi r0, 4
/* 804C038C  40 82 00 20 */	bne lbl_804C03AC
/* 804C0390  A0 01 00 08 */	lhz r0, 8(r1)
/* 804C0394  28 00 00 01 */	cmplwi r0, 1
/* 804C0398  40 82 06 D8 */	bne lbl_804C0A70
/* 804C039C  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804C03A0  60 00 00 20 */	ori r0, r0, 0x20
/* 804C03A4  90 1F 08 98 */	stw r0, 0x898(r31)
/* 804C03A8  48 00 06 C8 */	b lbl_804C0A70
lbl_804C03AC:
/* 804C03AC  2C 00 00 05 */	cmpwi r0, 5
/* 804C03B0  40 82 00 30 */	bne lbl_804C03E0
/* 804C03B4  A0 01 00 08 */	lhz r0, 8(r1)
/* 804C03B8  28 00 00 01 */	cmplwi r0, 1
/* 804C03BC  40 82 00 14 */	bne lbl_804C03D0
/* 804C03C0  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C03C4  60 00 00 80 */	ori r0, r0, 0x80
/* 804C03C8  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C03CC  48 00 06 A4 */	b lbl_804C0A70
lbl_804C03D0:
/* 804C03D0  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C03D4  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 804C03D8  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C03DC  48 00 06 94 */	b lbl_804C0A70
lbl_804C03E0:
/* 804C03E0  2C 00 00 06 */	cmpwi r0, 6
/* 804C03E4  40 82 06 8C */	bne lbl_804C0A70
/* 804C03E8  A0 01 00 08 */	lhz r0, 8(r1)
/* 804C03EC  28 00 00 01 */	cmplwi r0, 1
/* 804C03F0  40 82 00 14 */	bne lbl_804C0404
/* 804C03F4  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C03F8  60 00 10 00 */	ori r0, r0, 0x1000
/* 804C03FC  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C0400  48 00 06 70 */	b lbl_804C0A70
lbl_804C0404:
/* 804C0404  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C0408  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 804C040C  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C0410  48 00 06 60 */	b lbl_804C0A70
lbl_804C0414:
/* 804C0414  2C 00 00 05 */	cmpwi r0, 5
/* 804C0418  40 82 00 48 */	bne lbl_804C0460
/* 804C041C  A0 61 00 08 */	lhz r3, 8(r1)
/* 804C0420  28 03 00 02 */	cmplwi r3, 2
/* 804C0424  40 80 00 10 */	bge lbl_804C0434
/* 804C0428  38 03 00 02 */	addi r0, r3, 2
/* 804C042C  B0 01 00 08 */	sth r0, 8(r1)
/* 804C0430  48 00 00 20 */	b lbl_804C0450
lbl_804C0434:
/* 804C0434  28 03 00 FD */	cmplwi r3, 0xfd
/* 804C0438  40 82 00 18 */	bne lbl_804C0450
/* 804C043C  80 1F 06 D0 */	lwz r0, 0x6d0(r31)
/* 804C0440  28 00 00 00 */	cmplwi r0, 0
/* 804C0444  40 82 00 0C */	bne lbl_804C0450
/* 804C0448  38 00 00 FE */	li r0, 0xfe
/* 804C044C  B0 01 00 08 */	sth r0, 8(r1)
lbl_804C0450:
/* 804C0450  7F E3 FB 78 */	mr r3, r31
/* 804C0454  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C0458  48 00 09 C1 */	bl setRightHandShape__9daMidna_cFUs
/* 804C045C  48 00 06 14 */	b lbl_804C0A70
lbl_804C0460:
/* 804C0460  2C 00 00 06 */	cmpwi r0, 6
/* 804C0464  40 82 00 34 */	bne lbl_804C0498
/* 804C0468  A0 01 00 08 */	lhz r0, 8(r1)
/* 804C046C  28 00 00 FD */	cmplwi r0, 0xfd
/* 804C0470  40 82 00 18 */	bne lbl_804C0488
/* 804C0474  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 804C0478  28 00 00 00 */	cmplwi r0, 0
/* 804C047C  40 82 00 0C */	bne lbl_804C0488
/* 804C0480  38 00 00 FE */	li r0, 0xfe
/* 804C0484  B0 01 00 08 */	sth r0, 8(r1)
lbl_804C0488:
/* 804C0488  7F E3 FB 78 */	mr r3, r31
/* 804C048C  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C0490  48 00 08 9D */	bl setLeftHandShape__9daMidna_cFUs
/* 804C0494  48 00 05 DC */	b lbl_804C0A70
lbl_804C0498:
/* 804C0498  2C 00 00 09 */	cmpwi r0, 9
/* 804C049C  40 82 00 F0 */	bne lbl_804C058C
/* 804C04A0  A0 01 00 08 */	lhz r0, 8(r1)
/* 804C04A4  28 00 00 01 */	cmplwi r0, 1
/* 804C04A8  40 82 00 D8 */	bne lbl_804C0580
/* 804C04AC  80 1F 06 AC */	lwz r0, 0x6ac(r31)
/* 804C04B0  28 00 00 00 */	cmplwi r0, 0
/* 804C04B4  41 82 00 CC */	beq lbl_804C0580
/* 804C04B8  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 804C04BC  28 00 00 00 */	cmplwi r0, 0
/* 804C04C0  41 82 00 C0 */	beq lbl_804C0580
/* 804C04C4  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C04C8  60 00 00 10 */	ori r0, r0, 0x10
/* 804C04CC  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C04D0  3B 80 00 01 */	li r28, 1
/* 804C04D4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804C04D8  28 03 00 00 */	cmplwi r3, 0
/* 804C04DC  41 82 05 94 */	beq lbl_804C0A70
/* 804C04E0  80 63 00 04 */	lwz r3, 4(r3)
/* 804C04E4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 804C04E8  80 63 00 24 */	lwz r3, 0x24(r3)
/* 804C04EC  80 63 00 08 */	lwz r3, 8(r3)
/* 804C04F0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804C04F4  60 00 00 01 */	ori r0, r0, 1
/* 804C04F8  90 03 00 0C */	stw r0, 0xc(r3)
/* 804C04FC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804C0500  80 63 00 04 */	lwz r3, 4(r3)
/* 804C0504  80 63 00 60 */	lwz r3, 0x60(r3)
/* 804C0508  80 63 00 04 */	lwz r3, 4(r3)
/* 804C050C  80 63 00 08 */	lwz r3, 8(r3)
/* 804C0510  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804C0514  60 00 00 01 */	ori r0, r0, 1
/* 804C0518  90 03 00 0C */	stw r0, 0xc(r3)
/* 804C051C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804C0520  80 63 00 04 */	lwz r3, 4(r3)
/* 804C0524  80 63 00 60 */	lwz r3, 0x60(r3)
/* 804C0528  80 63 00 08 */	lwz r3, 8(r3)
/* 804C052C  80 63 00 08 */	lwz r3, 8(r3)
/* 804C0530  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804C0534  60 00 00 01 */	ori r0, r0, 1
/* 804C0538  90 03 00 0C */	stw r0, 0xc(r3)
/* 804C053C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804C0540  80 63 00 04 */	lwz r3, 4(r3)
/* 804C0544  80 63 00 60 */	lwz r3, 0x60(r3)
/* 804C0548  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C054C  80 63 00 08 */	lwz r3, 8(r3)
/* 804C0550  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804C0554  60 00 00 01 */	ori r0, r0, 1
/* 804C0558  90 03 00 0C */	stw r0, 0xc(r3)
/* 804C055C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804C0560  80 63 00 04 */	lwz r3, 4(r3)
/* 804C0564  80 63 00 60 */	lwz r3, 0x60(r3)
/* 804C0568  80 63 00 20 */	lwz r3, 0x20(r3)
/* 804C056C  80 63 00 08 */	lwz r3, 8(r3)
/* 804C0570  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804C0574  60 00 00 01 */	ori r0, r0, 1
/* 804C0578  90 03 00 0C */	stw r0, 0xc(r3)
/* 804C057C  48 00 04 F4 */	b lbl_804C0A70
lbl_804C0580:
/* 804C0580  7F E3 FB 78 */	mr r3, r31
/* 804C0584  4B FF FB B1 */	bl endHighModel__9daMidna_cFv
/* 804C0588  48 00 04 E8 */	b lbl_804C0A70
lbl_804C058C:
/* 804C058C  2C 00 00 04 */	cmpwi r0, 4
/* 804C0590  40 82 04 E0 */	bne lbl_804C0A70
/* 804C0594  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804C0598  2C 00 00 01 */	cmpwi r0, 1
/* 804C059C  40 82 00 20 */	bne lbl_804C05BC
/* 804C05A0  A0 01 00 08 */	lhz r0, 8(r1)
/* 804C05A4  28 00 00 01 */	cmplwi r0, 1
/* 804C05A8  40 82 04 C8 */	bne lbl_804C0A70
/* 804C05AC  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C05B0  64 00 20 20 */	oris r0, r0, 0x2020
/* 804C05B4  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C05B8  48 00 04 B8 */	b lbl_804C0A70
lbl_804C05BC:
/* 804C05BC  A0 01 00 08 */	lhz r0, 8(r1)
/* 804C05C0  28 00 00 02 */	cmplwi r0, 2
/* 804C05C4  40 82 00 14 */	bne lbl_804C05D8
/* 804C05C8  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C05CC  60 00 00 40 */	ori r0, r0, 0x40
/* 804C05D0  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C05D4  48 00 04 9C */	b lbl_804C0A70
lbl_804C05D8:
/* 804C05D8  28 00 00 00 */	cmplwi r0, 0
/* 804C05DC  41 82 00 20 */	beq lbl_804C05FC
/* 804C05E0  80 1F 06 D8 */	lwz r0, 0x6d8(r31)
/* 804C05E4  28 00 00 00 */	cmplwi r0, 0
/* 804C05E8  41 82 00 14 */	beq lbl_804C05FC
/* 804C05EC  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C05F0  60 00 00 10 */	ori r0, r0, 0x10
/* 804C05F4  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C05F8  48 00 04 78 */	b lbl_804C0A70
lbl_804C05FC:
/* 804C05FC  80 7F 08 94 */	lwz r3, 0x894(r31)
/* 804C0600  38 00 FF AF */	li r0, -81
/* 804C0604  7C 60 00 38 */	and r0, r3, r0
/* 804C0608  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804C060C  48 00 04 64 */	b lbl_804C0A70
lbl_804C0610:
/* 804C0610  2C 00 00 02 */	cmpwi r0, 2
/* 804C0614  40 82 04 5C */	bne lbl_804C0A70
/* 804C0618  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804C061C  2C 00 00 01 */	cmpwi r0, 1
/* 804C0620  40 82 00 AC */	bne lbl_804C06CC
/* 804C0624  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804C0628  2C 00 00 02 */	cmpwi r0, 2
/* 804C062C  40 82 04 44 */	bne lbl_804C0A70
/* 804C0630  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 804C0634  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C0638  38 A0 00 00 */	li r5, 0
/* 804C063C  4B C9 EA DC */	b loadDataDemoRID__14daPy_anmHeap_cFUsUs
/* 804C0640  7C 7B 1B 79 */	or. r27, r3, r3
/* 804C0644  41 82 00 80 */	beq lbl_804C06C4
/* 804C0648  A0 1E 00 04 */	lhz r0, 4(r30)
/* 804C064C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804C0650  41 82 00 10 */	beq lbl_804C0660
/* 804C0654  7F C3 F3 78 */	mr r3, r30
/* 804C0658  4B B7 7B 44 */	b getPrm_Morf__13dDemo_actor_cFv
/* 804C065C  48 00 00 0C */	b lbl_804C0668
lbl_804C0660:
/* 804C0660  3C 60 80 4C */	lis r3, lit_4278@ha
/* 804C0664  C0 23 65 80 */	lfs f1, lit_4278@l(r3)
lbl_804C0668:
/* 804C0668  7F E3 FB 78 */	mr r3, r31
/* 804C066C  7F 64 DB 78 */	mr r4, r27
/* 804C0670  38 A0 FF FF */	li r5, -1
/* 804C0674  48 00 08 B1 */	bl setBckAnime__9daMidna_cFP15J3DAnmTransformif
/* 804C0678  7F E3 FB 78 */	mr r3, r31
/* 804C067C  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C0680  38 A0 00 00 */	li r5, 0
/* 804C0684  4B FF F8 FD */	bl setUpperAnime__9daMidna_cFUsUs
/* 804C0688  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804C068C  38 00 EF FE */	li r0, -4098
/* 804C0690  7C 60 00 38 */	and r0, r3, r0
/* 804C0694  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C0698  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C069C  A8 03 00 14 */	lha r0, 0x14(r3)
/* 804C06A0  3C 60 80 4C */	lis r3, lit_4305@ha
/* 804C06A4  C8 23 65 88 */	lfd f1, lit_4305@l(r3)
/* 804C06A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C06AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C06B0  3C 00 43 30 */	lis r0, 0x4330
/* 804C06B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C06B8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804C06BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C06C0  D0 1E 00 38 */	stfs f0, 0x38(r30)
lbl_804C06C4:
/* 804C06C4  3B 60 00 01 */	li r27, 1
/* 804C06C8  48 00 03 A8 */	b lbl_804C0A70
lbl_804C06CC:
/* 804C06CC  2C 00 00 06 */	cmpwi r0, 6
/* 804C06D0  40 82 00 74 */	bne lbl_804C0744
/* 804C06D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804C06D8  2C 00 00 02 */	cmpwi r0, 2
/* 804C06DC  40 82 03 94 */	bne lbl_804C0A70
/* 804C06E0  80 1F 06 CC */	lwz r0, 0x6cc(r31)
/* 804C06E4  28 00 00 00 */	cmplwi r0, 0
/* 804C06E8  41 82 00 54 */	beq lbl_804C073C
/* 804C06EC  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804C06F0  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804C06F4  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C06F8  7F A5 EB 78 */	mr r5, r29
/* 804C06FC  38 C0 00 80 */	li r6, 0x80
/* 804C0700  4B B7 BD 00 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804C0704  7C 64 1B 79 */	or. r4, r3, r3
/* 804C0708  41 82 00 34 */	beq lbl_804C073C
/* 804C070C  80 7F 06 CC */	lwz r3, 0x6cc(r31)
/* 804C0710  80 03 00 14 */	lwz r0, 0x14(r3)
/* 804C0714  7C 00 20 40 */	cmplw r0, r4
/* 804C0718  41 82 00 24 */	beq lbl_804C073C
/* 804C071C  38 A0 00 01 */	li r5, 1
/* 804C0720  38 C0 FF FF */	li r6, -1
/* 804C0724  3C E0 80 4C */	lis r7, lit_4303@ha
/* 804C0728  C0 27 65 84 */	lfs f1, lit_4303@l(r7)
/* 804C072C  38 E0 00 00 */	li r7, 0
/* 804C0730  39 00 FF FF */	li r8, -1
/* 804C0734  39 20 00 01 */	li r9, 1
/* 804C0738  4B B4 D0 A4 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
lbl_804C073C:
/* 804C073C  3B 60 00 01 */	li r27, 1
/* 804C0740  48 00 03 30 */	b lbl_804C0A70
lbl_804C0744:
/* 804C0744  2C 00 00 05 */	cmpwi r0, 5
/* 804C0748  40 82 00 74 */	bne lbl_804C07BC
/* 804C074C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804C0750  2C 00 00 02 */	cmpwi r0, 2
/* 804C0754  40 82 03 1C */	bne lbl_804C0A70
/* 804C0758  80 1F 06 D4 */	lwz r0, 0x6d4(r31)
/* 804C075C  28 00 00 00 */	cmplwi r0, 0
/* 804C0760  41 82 00 54 */	beq lbl_804C07B4
/* 804C0764  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804C0768  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804C076C  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C0770  7F A5 EB 78 */	mr r5, r29
/* 804C0774  38 C0 00 80 */	li r6, 0x80
/* 804C0778  4B B7 BC 88 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804C077C  7C 64 1B 79 */	or. r4, r3, r3
/* 804C0780  41 82 00 34 */	beq lbl_804C07B4
/* 804C0784  80 7F 06 D4 */	lwz r3, 0x6d4(r31)
/* 804C0788  80 03 00 14 */	lwz r0, 0x14(r3)
/* 804C078C  7C 00 20 40 */	cmplw r0, r4
/* 804C0790  41 82 00 24 */	beq lbl_804C07B4
/* 804C0794  38 A0 00 01 */	li r5, 1
/* 804C0798  38 C0 FF FF */	li r6, -1
/* 804C079C  3C E0 80 4C */	lis r7, lit_4303@ha
/* 804C07A0  C0 27 65 84 */	lfs f1, lit_4303@l(r7)
/* 804C07A4  38 E0 00 00 */	li r7, 0
/* 804C07A8  39 00 FF FF */	li r8, -1
/* 804C07AC  39 20 00 01 */	li r9, 1
/* 804C07B0  4B B4 D0 2C */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
lbl_804C07B4:
/* 804C07B4  3B 60 00 01 */	li r27, 1
/* 804C07B8  48 00 02 B8 */	b lbl_804C0A70
lbl_804C07BC:
/* 804C07BC  2C 00 00 09 */	cmpwi r0, 9
/* 804C07C0  40 82 01 F4 */	bne lbl_804C09B4
/* 804C07C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804C07C8  2C 00 00 05 */	cmpwi r0, 5
/* 804C07CC  40 82 00 1C */	bne lbl_804C07E8
/* 804C07D0  7F E3 FB 78 */	mr r3, r31
/* 804C07D4  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C07D8  38 A0 00 01 */	li r5, 1
/* 804C07DC  48 00 03 D1 */	bl setFaceBtp__9daMidna_cFUsi
/* 804C07E0  3B 60 00 01 */	li r27, 1
/* 804C07E4  48 00 02 8C */	b lbl_804C0A70
lbl_804C07E8:
/* 804C07E8  2C 00 00 03 */	cmpwi r0, 3
/* 804C07EC  40 82 00 88 */	bne lbl_804C0874
/* 804C07F0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C07F4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804C07F8  41 82 00 64 */	beq lbl_804C085C
/* 804C07FC  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804C0800  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804C0804  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C0808  7F A5 EB 78 */	mr r5, r29
/* 804C080C  38 C0 00 80 */	li r6, 0x80
/* 804C0810  4B B7 BB F0 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804C0814  7C 7B 1B 79 */	or. r27, r3, r3
/* 804C0818  41 82 00 54 */	beq lbl_804C086C
/* 804C081C  80 1F 06 B4 */	lwz r0, 0x6b4(r31)
/* 804C0820  7C 00 D8 40 */	cmplw r0, r27
/* 804C0824  41 82 00 48 */	beq lbl_804C086C
/* 804C0828  80 9F 06 B0 */	lwz r4, 0x6b0(r31)
/* 804C082C  80 84 00 04 */	lwz r4, 4(r4)
/* 804C0830  4B E6 A9 A4 */	b searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 804C0834  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 804C0838  80 63 00 04 */	lwz r3, 4(r3)
/* 804C083C  38 63 00 58 */	addi r3, r3, 0x58
/* 804C0840  7F 64 DB 78 */	mr r4, r27
/* 804C0844  4B E6 F4 80 */	b entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 804C0848  3C 60 80 4C */	lis r3, lit_4278@ha
/* 804C084C  C0 03 65 80 */	lfs f0, lit_4278@l(r3)
/* 804C0850  D0 1B 00 08 */	stfs f0, 8(r27)
/* 804C0854  93 7F 06 B4 */	stw r27, 0x6b4(r31)
/* 804C0858  48 00 00 14 */	b lbl_804C086C
lbl_804C085C:
/* 804C085C  7F E3 FB 78 */	mr r3, r31
/* 804C0860  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C0864  38 A0 00 01 */	li r5, 1
/* 804C0868  48 00 04 05 */	bl setFaceBtk__9daMidna_cFUsi
lbl_804C086C:
/* 804C086C  3B 60 00 01 */	li r27, 1
/* 804C0870  48 00 02 00 */	b lbl_804C0A70
lbl_804C0874:
/* 804C0874  2C 00 00 07 */	cmpwi r0, 7
/* 804C0878  40 82 00 70 */	bne lbl_804C08E8
/* 804C087C  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804C0880  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804C0884  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C0888  7F A5 EB 78 */	mr r5, r29
/* 804C088C  38 C0 00 80 */	li r6, 0x80
/* 804C0890  4B B7 BB 70 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804C0894  80 1F 06 C0 */	lwz r0, 0x6c0(r31)
/* 804C0898  7C 00 18 40 */	cmplw r0, r3
/* 804C089C  41 82 00 44 */	beq lbl_804C08E0
/* 804C08A0  90 7F 06 C0 */	stw r3, 0x6c0(r31)
/* 804C08A4  80 7F 06 C4 */	lwz r3, 0x6c4(r31)
/* 804C08A8  80 9F 06 BC */	lwz r4, 0x6bc(r31)
/* 804C08AC  80 BF 06 C0 */	lwz r5, 0x6c0(r31)
/* 804C08B0  38 C0 00 00 */	li r6, 0
/* 804C08B4  38 E0 00 02 */	li r7, 2
/* 804C08B8  3D 00 80 4C */	lis r8, lit_4303@ha
/* 804C08BC  C0 28 65 84 */	lfs f1, lit_4303@l(r8)
/* 804C08C0  39 00 00 00 */	li r8, 0
/* 804C08C4  39 20 FF FF */	li r9, -1
/* 804C08C8  4B B4 D1 40 */	b init__13mDoExt_blkAnmFP13J3DDeformDataP13J3DAnmClusteriifss
/* 804C08CC  80 7F 06 C4 */	lwz r3, 0x6c4(r31)
/* 804C08D0  80 83 00 14 */	lwz r4, 0x14(r3)
/* 804C08D4  3C 60 80 4C */	lis r3, lit_4278@ha
/* 804C08D8  C0 03 65 80 */	lfs f0, lit_4278@l(r3)
/* 804C08DC  D0 04 00 08 */	stfs f0, 8(r4)
lbl_804C08E0:
/* 804C08E0  3B 60 00 01 */	li r27, 1
/* 804C08E4  48 00 01 8C */	b lbl_804C0A70
lbl_804C08E8:
/* 804C08E8  2C 00 00 02 */	cmpwi r0, 2
/* 804C08EC  40 82 00 68 */	bne lbl_804C0954
/* 804C08F0  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 804C08F4  28 00 00 00 */	cmplwi r0, 0
/* 804C08F8  41 82 00 54 */	beq lbl_804C094C
/* 804C08FC  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804C0900  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804C0904  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C0908  7F A5 EB 78 */	mr r5, r29
/* 804C090C  38 C0 00 80 */	li r6, 0x80
/* 804C0910  4B B7 BA F0 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804C0914  7C 64 1B 79 */	or. r4, r3, r3
/* 804C0918  41 82 00 34 */	beq lbl_804C094C
/* 804C091C  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 804C0920  80 03 00 14 */	lwz r0, 0x14(r3)
/* 804C0924  7C 00 20 40 */	cmplw r0, r4
/* 804C0928  41 82 00 24 */	beq lbl_804C094C
/* 804C092C  38 A0 00 01 */	li r5, 1
/* 804C0930  38 C0 FF FF */	li r6, -1
/* 804C0934  3C E0 80 4C */	lis r7, lit_4303@ha
/* 804C0938  C0 27 65 84 */	lfs f1, lit_4303@l(r7)
/* 804C093C  38 E0 00 00 */	li r7, 0
/* 804C0940  39 00 FF FF */	li r8, -1
/* 804C0944  39 20 00 01 */	li r9, 1
/* 804C0948  4B B4 CE 94 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
lbl_804C094C:
/* 804C094C  3B 60 00 01 */	li r27, 1
/* 804C0950  48 00 01 20 */	b lbl_804C0A70
lbl_804C0954:
/* 804C0954  2C 00 00 04 */	cmpwi r0, 4
/* 804C0958  40 82 01 18 */	bne lbl_804C0A70
/* 804C095C  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804C0960  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804C0964  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C0968  7F A5 EB 78 */	mr r5, r29
/* 804C096C  38 C0 00 80 */	li r6, 0x80
/* 804C0970  4B B7 BA 90 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804C0974  28 03 00 00 */	cmplwi r3, 0
/* 804C0978  41 82 00 F8 */	beq lbl_804C0A70
/* 804C097C  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 804C0980  7C 00 18 40 */	cmplw r0, r3
/* 804C0984  41 82 00 EC */	beq lbl_804C0A70
/* 804C0988  3C 80 80 4C */	lis r4, lit_4278@ha
/* 804C098C  C0 04 65 80 */	lfs f0, lit_4278@l(r4)
/* 804C0990  D0 03 00 08 */	stfs f0, 8(r3)
/* 804C0994  90 7F 06 6C */	stw r3, 0x66c(r31)
/* 804C0998  80 7F 06 AC */	lwz r3, 0x6ac(r31)
/* 804C099C  28 03 00 00 */	cmplwi r3, 0
/* 804C09A0  41 82 00 D0 */	beq lbl_804C0A70
/* 804C09A4  80 83 00 04 */	lwz r4, 4(r3)
/* 804C09A8  80 7F 06 6C */	lwz r3, 0x66c(r31)
/* 804C09AC  4B E6 AE D0 */	b searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 804C09B0  48 00 00 C0 */	b lbl_804C0A70
lbl_804C09B4:
/* 804C09B4  2C 00 00 04 */	cmpwi r0, 4
/* 804C09B8  40 82 00 B8 */	bne lbl_804C0A70
/* 804C09BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804C09C0  2C 00 00 02 */	cmpwi r0, 2
/* 804C09C4  40 82 00 68 */	bne lbl_804C0A2C
/* 804C09C8  80 1F 06 DC */	lwz r0, 0x6dc(r31)
/* 804C09CC  28 00 00 00 */	cmplwi r0, 0
/* 804C09D0  41 82 00 54 */	beq lbl_804C0A24
/* 804C09D4  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804C09D8  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804C09DC  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C09E0  7F A5 EB 78 */	mr r5, r29
/* 804C09E4  38 C0 00 80 */	li r6, 0x80
/* 804C09E8  4B B7 BA 18 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804C09EC  7C 64 1B 79 */	or. r4, r3, r3
/* 804C09F0  41 82 00 34 */	beq lbl_804C0A24
/* 804C09F4  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 804C09F8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 804C09FC  7C 00 20 40 */	cmplw r0, r4
/* 804C0A00  41 82 00 24 */	beq lbl_804C0A24
/* 804C0A04  38 A0 00 01 */	li r5, 1
/* 804C0A08  38 C0 FF FF */	li r6, -1
/* 804C0A0C  3C E0 80 4C */	lis r7, lit_4303@ha
/* 804C0A10  C0 27 65 84 */	lfs f1, lit_4303@l(r7)
/* 804C0A14  38 E0 00 00 */	li r7, 0
/* 804C0A18  39 00 FF FF */	li r8, -1
/* 804C0A1C  39 20 00 01 */	li r9, 1
/* 804C0A20  4B B4 CD BC */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
lbl_804C0A24:
/* 804C0A24  3B 60 00 01 */	li r27, 1
/* 804C0A28  48 00 00 48 */	b lbl_804C0A70
lbl_804C0A2C:
/* 804C0A2C  2C 00 00 04 */	cmpwi r0, 4
/* 804C0A30  40 82 00 40 */	bne lbl_804C0A70
/* 804C0A34  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804C0A38  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804C0A3C  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C0A40  7F A5 EB 78 */	mr r5, r29
/* 804C0A44  38 C0 00 80 */	li r6, 0x80
/* 804C0A48  4B B7 B9 B8 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804C0A4C  28 03 00 00 */	cmplwi r3, 0
/* 804C0A50  41 82 00 20 */	beq lbl_804C0A70
/* 804C0A54  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 804C0A58  7C 00 18 40 */	cmplw r0, r3
/* 804C0A5C  41 82 00 14 */	beq lbl_804C0A70
/* 804C0A60  3C 80 80 4C */	lis r4, lit_4278@ha
/* 804C0A64  C0 04 65 80 */	lfs f0, lit_4278@l(r4)
/* 804C0A68  D0 03 00 08 */	stfs f0, 8(r3)
/* 804C0A6C  90 7F 06 68 */	stw r3, 0x668(r31)
lbl_804C0A70:
/* 804C0A70  7F C3 F3 78 */	mr r3, r30
/* 804C0A74  38 81 00 14 */	addi r4, r1, 0x14
/* 804C0A78  38 A1 00 10 */	addi r5, r1, 0x10
/* 804C0A7C  38 C1 00 0C */	addi r6, r1, 0xc
/* 804C0A80  38 E1 00 08 */	addi r7, r1, 8
/* 804C0A84  39 00 00 00 */	li r8, 0
/* 804C0A88  4B B7 78 B0 */	b getDemoIDData__13dDemo_actor_cFPiPiPiPUsPUc
/* 804C0A8C  2C 03 00 00 */	cmpwi r3, 0
/* 804C0A90  40 82 F8 00 */	bne lbl_804C0290
/* 804C0A94  A0 1E 00 04 */	lhz r0, 4(r30)
/* 804C0A98  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804C0A9C  41 82 00 E4 */	beq lbl_804C0B80
/* 804C0AA0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804C0AA4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C0AA8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804C0AAC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804C0AB0  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 804C0AB4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804C0AB8  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 804C0ABC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 804C0AC0  28 03 00 00 */	cmplwi r3, 0
/* 804C0AC4  41 82 00 18 */	beq lbl_804C0ADC
/* 804C0AC8  A0 1F 06 24 */	lhz r0, 0x624(r31)
/* 804C0ACC  28 00 FF FF */	cmplwi r0, 0xffff
/* 804C0AD0  41 82 00 0C */	beq lbl_804C0ADC
/* 804C0AD4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804C0AD8  D0 03 00 08 */	stfs f0, 8(r3)
lbl_804C0ADC:
/* 804C0ADC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 804C0AE0  28 03 00 00 */	cmplwi r3, 0
/* 804C0AE4  41 82 00 18 */	beq lbl_804C0AFC
/* 804C0AE8  A0 1F 06 38 */	lhz r0, 0x638(r31)
/* 804C0AEC  28 00 FF FF */	cmplwi r0, 0xffff
/* 804C0AF0  41 82 00 0C */	beq lbl_804C0AFC
/* 804C0AF4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804C0AF8  D0 03 00 08 */	stfs f0, 8(r3)
lbl_804C0AFC:
/* 804C0AFC  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 804C0B00  28 03 00 00 */	cmplwi r3, 0
/* 804C0B04  41 82 00 0C */	beq lbl_804C0B10
/* 804C0B08  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804C0B0C  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_804C0B10:
/* 804C0B10  80 7F 06 CC */	lwz r3, 0x6cc(r31)
/* 804C0B14  28 03 00 00 */	cmplwi r3, 0
/* 804C0B18  41 82 00 0C */	beq lbl_804C0B24
/* 804C0B1C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804C0B20  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_804C0B24:
/* 804C0B24  80 7F 06 D4 */	lwz r3, 0x6d4(r31)
/* 804C0B28  28 03 00 00 */	cmplwi r3, 0
/* 804C0B2C  41 82 00 0C */	beq lbl_804C0B38
/* 804C0B30  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804C0B34  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_804C0B38:
/* 804C0B38  80 7F 06 DC */	lwz r3, 0x6dc(r31)
/* 804C0B3C  28 03 00 00 */	cmplwi r3, 0
/* 804C0B40  41 82 00 0C */	beq lbl_804C0B4C
/* 804C0B44  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804C0B48  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_804C0B4C:
/* 804C0B4C  80 7F 06 B4 */	lwz r3, 0x6b4(r31)
/* 804C0B50  28 03 00 00 */	cmplwi r3, 0
/* 804C0B54  41 82 00 0C */	beq lbl_804C0B60
/* 804C0B58  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804C0B5C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_804C0B60:
/* 804C0B60  80 7F 06 C4 */	lwz r3, 0x6c4(r31)
/* 804C0B64  28 03 00 00 */	cmplwi r3, 0
/* 804C0B68  41 82 00 18 */	beq lbl_804C0B80
/* 804C0B6C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 804C0B70  28 03 00 00 */	cmplwi r3, 0
/* 804C0B74  41 82 00 0C */	beq lbl_804C0B80
/* 804C0B78  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804C0B7C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_804C0B80:
/* 804C0B80  2C 1C 00 00 */	cmpwi r28, 0
/* 804C0B84  40 82 00 0C */	bne lbl_804C0B90
/* 804C0B88  7F E3 FB 78 */	mr r3, r31
/* 804C0B8C  4B FF F5 A9 */	bl endHighModel__9daMidna_cFv
lbl_804C0B90:
/* 804C0B90  7F 63 DB 78 */	mr r3, r27
lbl_804C0B94:
/* 804C0B94  39 61 00 40 */	addi r11, r1, 0x40
/* 804C0B98  4B EA 16 88 */	b _restgpr_27
/* 804C0B9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C0BA0  7C 08 03 A6 */	mtlr r0
/* 804C0BA4  38 21 00 40 */	addi r1, r1, 0x40
/* 804C0BA8  4E 80 00 20 */	blr 
