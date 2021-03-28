lbl_8054CAF0:
/* 8054CAF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054CAF4  7C 08 02 A6 */	mflr r0
/* 8054CAF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054CAFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8054CB00  4B E1 56 D4 */	b _savegpr_27
/* 8054CB04  7C 7F 1B 78 */	mr r31, r3
/* 8054CB08  3B C0 00 00 */	li r30, 0
/* 8054CB0C  3B A0 00 00 */	li r29, 0
/* 8054CB10  38 7F 08 80 */	addi r3, r31, 0x880
/* 8054CB14  4B B3 6D 1C */	b Move__10dCcD_GSttsFv
/* 8054CB18  80 1F 0D BC */	lwz r0, 0xdbc(r31)
/* 8054CB1C  2C 00 00 00 */	cmpwi r0, 0
/* 8054CB20  40 82 00 60 */	bne lbl_8054CB80
/* 8054CB24  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 8054CB28  4B B3 79 38 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8054CB2C  28 03 00 00 */	cmplwi r3, 0
/* 8054CB30  41 82 00 28 */	beq lbl_8054CB58
/* 8054CB34  38 7F 10 3C */	addi r3, r31, 0x103c
/* 8054CB38  4B B3 6B 50 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8054CB3C  7C 7D 1B 78 */	mr r29, r3
/* 8054CB40  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 8054CB44  4B B3 79 B4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8054CB48  7C 7E 1B 78 */	mr r30, r3
/* 8054CB4C  38 00 00 01 */	li r0, 1
/* 8054CB50  98 1F 13 93 */	stb r0, 0x1393(r31)
/* 8054CB54  48 00 00 2C */	b lbl_8054CB80
lbl_8054CB58:
/* 8054CB58  38 7F 0E 64 */	addi r3, r31, 0xe64
/* 8054CB5C  4B B3 79 04 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8054CB60  28 03 00 00 */	cmplwi r3, 0
/* 8054CB64  41 82 00 1C */	beq lbl_8054CB80
/* 8054CB68  38 7F 0F 00 */	addi r3, r31, 0xf00
/* 8054CB6C  4B B3 6B 1C */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8054CB70  7C 7D 1B 78 */	mr r29, r3
/* 8054CB74  38 7F 0E 64 */	addi r3, r31, 0xe64
/* 8054CB78  4B B3 79 80 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8054CB7C  7C 7E 1B 78 */	mr r30, r3
lbl_8054CB80:
/* 8054CB80  28 1E 00 00 */	cmplwi r30, 0
/* 8054CB84  41 82 03 00 */	beq lbl_8054CE84
/* 8054CB88  38 00 00 00 */	li r0, 0
/* 8054CB8C  98 1F 13 90 */	stb r0, 0x1390(r31)
/* 8054CB90  88 1F 13 48 */	lbz r0, 0x1348(r31)
/* 8054CB94  2C 00 00 02 */	cmpwi r0, 2
/* 8054CB98  41 82 00 3C */	beq lbl_8054CBD4
/* 8054CB9C  40 80 00 10 */	bge lbl_8054CBAC
/* 8054CBA0  2C 00 00 00 */	cmpwi r0, 0
/* 8054CBA4  41 82 00 18 */	beq lbl_8054CBBC
/* 8054CBA8  48 00 02 28 */	b lbl_8054CDD0
lbl_8054CBAC:
/* 8054CBAC  2C 00 00 04 */	cmpwi r0, 4
/* 8054CBB0  41 82 00 D4 */	beq lbl_8054CC84
/* 8054CBB4  40 80 02 1C */	bge lbl_8054CDD0
/* 8054CBB8  48 00 00 74 */	b lbl_8054CC2C
lbl_8054CBBC:
/* 8054CBBC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8054CBC0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8054CBC4  41 82 02 0C */	beq lbl_8054CDD0
/* 8054CBC8  38 00 00 01 */	li r0, 1
/* 8054CBCC  98 1F 13 90 */	stb r0, 0x1390(r31)
/* 8054CBD0  48 00 02 00 */	b lbl_8054CDD0
lbl_8054CBD4:
/* 8054CBD4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8054CBD8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8054CBDC  41 82 01 F4 */	beq lbl_8054CDD0
/* 8054CBE0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8054CBE4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 8054CBE8  28 04 00 FF */	cmplwi r4, 0xff
/* 8054CBEC  41 82 01 E4 */	beq lbl_8054CDD0
/* 8054CBF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054CBF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054CBF8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8054CBFC  7C 05 07 74 */	extsb r5, r0
/* 8054CC00  4B AE 87 60 */	b isSwitch__10dSv_info_cCFii
/* 8054CC04  2C 03 00 00 */	cmpwi r3, 0
/* 8054CC08  40 82 01 C8 */	bne lbl_8054CDD0
/* 8054CC0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054CC10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054CC14  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8054CC18  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 8054CC1C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8054CC20  7C 05 07 74 */	extsb r5, r0
/* 8054CC24  4B AE 85 DC */	b onSwitch__10dSv_info_cFii
/* 8054CC28  48 00 01 A8 */	b lbl_8054CDD0
lbl_8054CC2C:
/* 8054CC2C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8054CC30  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8054CC34  41 82 01 9C */	beq lbl_8054CDD0
/* 8054CC38  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8054CC3C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 8054CC40  28 04 00 FF */	cmplwi r4, 0xff
/* 8054CC44  41 82 01 8C */	beq lbl_8054CDD0
/* 8054CC48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054CC4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054CC50  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8054CC54  7C 05 07 74 */	extsb r5, r0
/* 8054CC58  4B AE 87 08 */	b isSwitch__10dSv_info_cCFii
/* 8054CC5C  2C 03 00 00 */	cmpwi r3, 0
/* 8054CC60  40 82 01 70 */	bne lbl_8054CDD0
/* 8054CC64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054CC68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054CC6C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8054CC70  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 8054CC74  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8054CC78  7C 05 07 74 */	extsb r5, r0
/* 8054CC7C  4B AE 85 84 */	b onSwitch__10dSv_info_cFii
/* 8054CC80  48 00 01 50 */	b lbl_8054CDD0
lbl_8054CC84:
/* 8054CC84  88 1F 13 93 */	lbz r0, 0x1393(r31)
/* 8054CC88  28 00 00 00 */	cmplwi r0, 0
/* 8054CC8C  41 82 00 8C */	beq lbl_8054CD18
/* 8054CC90  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8054CC94  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8054CC98  28 04 00 FF */	cmplwi r4, 0xff
/* 8054CC9C  41 82 00 3C */	beq lbl_8054CCD8
/* 8054CCA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054CCA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054CCA8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8054CCAC  7C 05 07 74 */	extsb r5, r0
/* 8054CCB0  4B AE 86 B0 */	b isSwitch__10dSv_info_cCFii
/* 8054CCB4  2C 03 00 00 */	cmpwi r3, 0
/* 8054CCB8  40 82 00 20 */	bne lbl_8054CCD8
/* 8054CCBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054CCC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054CCC4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8054CCC8  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8054CCCC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8054CCD0  7C 05 07 74 */	extsb r5, r0
/* 8054CCD4  4B AE 85 2C */	b onSwitch__10dSv_info_cFii
lbl_8054CCD8:
/* 8054CCD8  3B 60 00 01 */	li r27, 1
/* 8054CCDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054CCE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054CCE4  3B 83 0D D8 */	addi r28, r3, 0xdd8
/* 8054CCE8  7F 83 E3 78 */	mr r3, r28
/* 8054CCEC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F4FF@ha */
/* 8054CCF0  38 84 F4 FF */	addi r4, r4, 0xF4FF /* 0x0000F4FF@l */
/* 8054CCF4  4B AE 7D 10 */	b getEventReg__11dSv_event_cCFUs
/* 8054CCF8  7C 65 1B 78 */	mr r5, r3
/* 8054CCFC  7F 83 E3 78 */	mr r3, r28
/* 8054CD00  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F4FF@ha */
/* 8054CD04  38 84 F4 FF */	addi r4, r4, 0xF4FF /* 0x0000F4FF@l */
/* 8054CD08  38 05 00 01 */	addi r0, r5, 1
/* 8054CD0C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8054CD10  4B AE 7C D0 */	b setEventReg__11dSv_event_cFUsUc
/* 8054CD14  48 00 00 50 */	b lbl_8054CD64
lbl_8054CD18:
/* 8054CD18  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8054CD1C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 8054CD20  28 04 00 FF */	cmplwi r4, 0xff
/* 8054CD24  41 82 00 3C */	beq lbl_8054CD60
/* 8054CD28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054CD2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054CD30  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8054CD34  7C 05 07 74 */	extsb r5, r0
/* 8054CD38  4B AE 86 28 */	b isSwitch__10dSv_info_cCFii
/* 8054CD3C  2C 03 00 00 */	cmpwi r3, 0
/* 8054CD40  40 82 00 20 */	bne lbl_8054CD60
/* 8054CD44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054CD48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054CD4C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8054CD50  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 8054CD54  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8054CD58  7C 05 07 74 */	extsb r5, r0
/* 8054CD5C  4B AE 84 A4 */	b onSwitch__10dSv_info_cFii
lbl_8054CD60:
/* 8054CD60  3B 60 00 02 */	li r27, 2
lbl_8054CD64:
/* 8054CD64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054CD68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054CD6C  3B 83 56 B8 */	addi r28, r3, 0x56b8
/* 8054CD70  7F 83 E3 78 */	mr r3, r28
/* 8054CD74  38 80 00 00 */	li r4, 0
/* 8054CD78  4B B2 3A CC */	b GetLockonList__12dAttention_cFl
/* 8054CD7C  28 03 00 00 */	cmplwi r3, 0
/* 8054CD80  41 82 00 34 */	beq lbl_8054CDB4
/* 8054CD84  7F 83 E3 78 */	mr r3, r28
/* 8054CD88  4B B2 6A 5C */	b LockonTruth__12dAttention_cFv
/* 8054CD8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8054CD90  41 82 00 24 */	beq lbl_8054CDB4
/* 8054CD94  7F 83 E3 78 */	mr r3, r28
/* 8054CD98  38 80 00 00 */	li r4, 0
/* 8054CD9C  4B B2 3A A8 */	b GetLockonList__12dAttention_cFl
/* 8054CDA0  4B B2 6A C4 */	b getActor__10dAttList_cFv
/* 8054CDA4  7C 1F 18 40 */	cmplw r31, r3
/* 8054CDA8  40 82 00 0C */	bne lbl_8054CDB4
/* 8054CDAC  63 60 00 80 */	ori r0, r27, 0x80
/* 8054CDB0  54 1B 06 3E */	clrlwi r27, r0, 0x18
lbl_8054CDB4:
/* 8054CDB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054CDB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054CDBC  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8054CDC0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F3FF@ha */
/* 8054CDC4  38 84 F3 FF */	addi r4, r4, 0xF3FF /* 0x0000F3FF@l */
/* 8054CDC8  7F 65 DB 78 */	mr r5, r27
/* 8054CDCC  4B AE 7C 14 */	b setEventReg__11dSv_event_cFUsUc
lbl_8054CDD0:
/* 8054CDD0  88 7E 00 74 */	lbz r3, 0x74(r30)
/* 8054CDD4  38 80 00 00 */	li r4, 0
/* 8054CDD8  4B B3 77 D8 */	b getHitSeID__12dCcD_GObjInfFUci
/* 8054CDDC  7C 64 1B 78 */	mr r4, r3
/* 8054CDE0  38 A0 00 2E */	li r5, 0x2e
/* 8054CDE4  80 7F 0D B0 */	lwz r3, 0xdb0(r31)
/* 8054CDE8  2C 03 00 0A */	cmpwi r3, 0xa
/* 8054CDEC  41 82 00 28 */	beq lbl_8054CE14
/* 8054CDF0  2C 03 00 12 */	cmpwi r3, 0x12
/* 8054CDF4  41 82 00 20 */	beq lbl_8054CE14
/* 8054CDF8  2C 03 00 13 */	cmpwi r3, 0x13
/* 8054CDFC  41 82 00 18 */	beq lbl_8054CE14
/* 8054CE00  2C 03 00 14 */	cmpwi r3, 0x14
/* 8054CE04  41 82 00 10 */	beq lbl_8054CE14
/* 8054CE08  88 1F 13 93 */	lbz r0, 0x1393(r31)
/* 8054CE0C  28 00 00 00 */	cmplwi r0, 0
/* 8054CE10  41 82 00 44 */	beq lbl_8054CE54
lbl_8054CE14:
/* 8054CE14  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 8054CE18  2C 00 00 02 */	cmpwi r0, 2
/* 8054CE1C  41 82 00 14 */	beq lbl_8054CE30
/* 8054CE20  40 80 00 58 */	bge lbl_8054CE78
/* 8054CE24  2C 00 00 01 */	cmpwi r0, 1
/* 8054CE28  40 80 00 24 */	bge lbl_8054CE4C
/* 8054CE2C  48 00 00 4C */	b lbl_8054CE78
lbl_8054CE30:
/* 8054CE30  88 1F 13 91 */	lbz r0, 0x1391(r31)
/* 8054CE34  28 00 00 00 */	cmplwi r0, 0
/* 8054CE38  41 82 00 0C */	beq lbl_8054CE44
/* 8054CE3C  38 A0 00 31 */	li r5, 0x31
/* 8054CE40  48 00 00 38 */	b lbl_8054CE78
lbl_8054CE44:
/* 8054CE44  38 A0 00 30 */	li r5, 0x30
/* 8054CE48  48 00 00 30 */	b lbl_8054CE78
lbl_8054CE4C:
/* 8054CE4C  38 A0 00 33 */	li r5, 0x33
/* 8054CE50  48 00 00 28 */	b lbl_8054CE78
lbl_8054CE54:
/* 8054CE54  2C 03 00 08 */	cmpwi r3, 8
/* 8054CE58  41 82 00 1C */	beq lbl_8054CE74
/* 8054CE5C  2C 03 00 16 */	cmpwi r3, 0x16
/* 8054CE60  41 82 00 14 */	beq lbl_8054CE74
/* 8054CE64  2C 03 00 17 */	cmpwi r3, 0x17
/* 8054CE68  41 82 00 0C */	beq lbl_8054CE74
/* 8054CE6C  2C 03 00 18 */	cmpwi r3, 0x18
/* 8054CE70  40 82 00 08 */	bne lbl_8054CE78
lbl_8054CE74:
/* 8054CE74  38 A0 00 2F */	li r5, 0x2f
lbl_8054CE78:
/* 8054CE78  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 8054CE7C  38 C0 00 00 */	li r6, 0
/* 8054CE80  4B D7 16 24 */	b startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_8054CE84:
/* 8054CE84  7F A3 EB 78 */	mr r3, r29
/* 8054CE88  39 61 00 20 */	addi r11, r1, 0x20
/* 8054CE8C  4B E1 53 94 */	b _restgpr_27
/* 8054CE90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054CE94  7C 08 03 A6 */	mtlr r0
/* 8054CE98  38 21 00 20 */	addi r1, r1, 0x20
/* 8054CE9C  4E 80 00 20 */	blr 
