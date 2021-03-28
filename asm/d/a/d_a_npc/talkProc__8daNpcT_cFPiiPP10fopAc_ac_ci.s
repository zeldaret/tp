lbl_8014BC78:
/* 8014BC78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014BC7C  7C 08 02 A6 */	mflr r0
/* 8014BC80  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014BC84  39 61 00 30 */	addi r11, r1, 0x30
/* 8014BC88  48 21 65 49 */	bl _savegpr_26
/* 8014BC8C  7C 7F 1B 78 */	mr r31, r3
/* 8014BC90  7C 9A 23 78 */	mr r26, r4
/* 8014BC94  7C BB 2B 78 */	mr r27, r5
/* 8014BC98  7C DE 33 78 */	mr r30, r6
/* 8014BC9C  7C FD 3B 78 */	mr r29, r7
/* 8014BCA0  3B 80 00 00 */	li r28, 0
/* 8014BCA4  48 0E C6 51 */	bl isMsgSendControl__12dMsgObject_cFv
/* 8014BCA8  2C 03 00 00 */	cmpwi r3, 0
/* 8014BCAC  41 82 00 14 */	beq lbl_8014BCC0
/* 8014BCB0  2C 1B 00 00 */	cmpwi r27, 0
/* 8014BCB4  41 82 01 5C */	beq lbl_8014BE10
/* 8014BCB8  48 0E C6 11 */	bl offMsgSendControl__12dMsgObject_cFv
/* 8014BCBC  48 00 01 54 */	b lbl_8014BE10
lbl_8014BCC0:
/* 8014BCC0  38 7F 09 74 */	addi r3, r31, 0x974
/* 8014BCC4  7F E4 FB 78 */	mr r4, r31
/* 8014BCC8  7F C5 F3 78 */	mr r5, r30
/* 8014BCCC  38 C0 00 00 */	li r6, 0
/* 8014BCD0  48 0F E6 09 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8014BCD4  2C 03 00 00 */	cmpwi r3, 0
/* 8014BCD8  41 82 00 0C */	beq lbl_8014BCE4
/* 8014BCDC  3B 80 00 01 */	li r28, 1
/* 8014BCE0  48 00 01 30 */	b lbl_8014BE10
lbl_8014BCE4:
/* 8014BCE4  38 7F 09 74 */	addi r3, r31, 0x974
/* 8014BCE8  48 0F E8 61 */	bl getMsg__10dMsgFlow_cFv
/* 8014BCEC  28 03 00 00 */	cmplwi r3, 0
/* 8014BCF0  41 82 00 80 */	beq lbl_8014BD70
/* 8014BCF4  38 7F 09 74 */	addi r3, r31, 0x974
/* 8014BCF8  48 0F E8 51 */	bl getMsg__10dMsgFlow_cFv
/* 8014BCFC  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8014BD00  2C 00 00 06 */	cmpwi r0, 6
/* 8014BD04  41 82 00 20 */	beq lbl_8014BD24
/* 8014BD08  40 80 00 10 */	bge lbl_8014BD18
/* 8014BD0C  2C 00 00 02 */	cmpwi r0, 2
/* 8014BD10  41 82 00 14 */	beq lbl_8014BD24
/* 8014BD14  48 00 00 5C */	b lbl_8014BD70
lbl_8014BD18:
/* 8014BD18  2C 00 00 11 */	cmpwi r0, 0x11
/* 8014BD1C  41 82 00 48 */	beq lbl_8014BD64
/* 8014BD20  48 00 00 50 */	b lbl_8014BD70
lbl_8014BD24:
/* 8014BD24  28 1A 00 00 */	cmplwi r26, 0
/* 8014BD28  41 82 00 48 */	beq lbl_8014BD70
/* 8014BD2C  3B C0 00 00 */	li r30, 0
/* 8014BD30  48 00 00 24 */	b lbl_8014BD54
lbl_8014BD34:
/* 8014BD34  38 7F 09 74 */	addi r3, r31, 0x974
/* 8014BD38  48 0F E8 01 */	bl getMsgNo__10dMsgFlow_cFv
/* 8014BD3C  7C 1A F0 2E */	lwzx r0, r26, r30
/* 8014BD40  7C 00 18 40 */	cmplw r0, r3
/* 8014BD44  40 82 00 0C */	bne lbl_8014BD50
/* 8014BD48  3B 80 00 01 */	li r28, 1
/* 8014BD4C  48 00 00 24 */	b lbl_8014BD70
lbl_8014BD50:
/* 8014BD50  3B DE 00 04 */	addi r30, r30, 4
lbl_8014BD54:
/* 8014BD54  7C 1A F0 2E */	lwzx r0, r26, r30
/* 8014BD58  2C 00 00 00 */	cmpwi r0, 0
/* 8014BD5C  41 81 FF D8 */	bgt lbl_8014BD34
/* 8014BD60  48 00 00 10 */	b lbl_8014BD70
lbl_8014BD64:
/* 8014BD64  2C 1D 00 00 */	cmpwi r29, 0
/* 8014BD68  41 82 00 08 */	beq lbl_8014BD70
/* 8014BD6C  3B 80 00 01 */	li r28, 1
lbl_8014BD70:
/* 8014BD70  38 7F 09 74 */	addi r3, r31, 0x974
/* 8014BD74  38 81 00 14 */	addi r4, r1, 0x14
/* 8014BD78  38 A1 00 0C */	addi r5, r1, 0xc
/* 8014BD7C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8014BD80  38 E1 00 08 */	addi r7, r1, 8
/* 8014BD84  48 0F E6 A1 */	bl checkEventRender__10dMsgFlow_cFPiPiPiPi
/* 8014BD88  2C 03 00 00 */	cmpwi r3, 0
/* 8014BD8C  41 82 00 84 */	beq lbl_8014BE10
/* 8014BD90  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8014BD94  80 7F 0B 58 */	lwz r3, 0xb58(r31)
/* 8014BD98  7C 00 18 00 */	cmpw r0, r3
/* 8014BD9C  41 82 00 34 */	beq lbl_8014BDD0
/* 8014BDA0  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 8014BDA4  2C 00 00 00 */	cmpwi r0, 0
/* 8014BDA8  41 80 00 28 */	blt lbl_8014BDD0
/* 8014BDAC  7F C0 EA 14 */	add r30, r0, r29
/* 8014BDB0  7C 1E 18 00 */	cmpw r30, r3
/* 8014BDB4  41 82 00 1C */	beq lbl_8014BDD0
/* 8014BDB8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8014BDBC  4B FF 9A DD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8014BDC0  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 8014BDC4  93 DF 0B 58 */	stw r30, 0xb58(r31)
/* 8014BDC8  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 8014BDCC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8014BDD0:
/* 8014BDD0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8014BDD4  80 7F 0B 7C */	lwz r3, 0xb7c(r31)
/* 8014BDD8  7C 00 18 00 */	cmpw r0, r3
/* 8014BDDC  41 82 00 34 */	beq lbl_8014BE10
/* 8014BDE0  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 8014BDE4  2C 00 00 00 */	cmpwi r0, 0
/* 8014BDE8  41 80 00 28 */	blt lbl_8014BE10
/* 8014BDEC  7F C0 EA 14 */	add r30, r0, r29
/* 8014BDF0  7C 1E 18 00 */	cmpw r30, r3
/* 8014BDF4  41 82 00 1C */	beq lbl_8014BE10
/* 8014BDF8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8014BDFC  4B FF 9A 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8014BE00  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 8014BE04  93 DF 0B 7C */	stw r30, 0xb7c(r31)
/* 8014BE08  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 8014BE0C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8014BE10:
/* 8014BE10  7F 83 E3 78 */	mr r3, r28
/* 8014BE14  39 61 00 30 */	addi r11, r1, 0x30
/* 8014BE18  48 21 64 05 */	bl _restgpr_26
/* 8014BE1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014BE20  7C 08 03 A6 */	mtlr r0
/* 8014BE24  38 21 00 30 */	addi r1, r1, 0x30
/* 8014BE28  4E 80 00 20 */	blr 
