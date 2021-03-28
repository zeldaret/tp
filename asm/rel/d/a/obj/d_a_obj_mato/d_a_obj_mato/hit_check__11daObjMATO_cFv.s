lbl_80C91DE4:
/* 80C91DE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C91DE8  7C 08 02 A6 */	mflr r0
/* 80C91DEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C91DF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C91DF4  4B 6D 03 E0 */	b _savegpr_27
/* 80C91DF8  7C 7B 1B 78 */	mr r27, r3
/* 80C91DFC  88 03 39 F6 */	lbz r0, 0x39f6(r3)
/* 80C91E00  28 00 00 00 */	cmplwi r0, 0
/* 80C91E04  41 82 00 B0 */	beq lbl_80C91EB4
/* 80C91E08  3B 80 00 00 */	li r28, 0
/* 80C91E0C  3B E0 00 00 */	li r31, 0
/* 80C91E10  48 00 00 94 */	b lbl_80C91EA4
lbl_80C91E14:
/* 80C91E14  7F DB FA 14 */	add r30, r27, r31
/* 80C91E18  88 1E 07 2F */	lbz r0, 0x72f(r30)
/* 80C91E1C  28 00 00 00 */	cmplwi r0, 0
/* 80C91E20  40 82 00 7C */	bne lbl_80C91E9C
/* 80C91E24  38 7E 05 94 */	addi r3, r30, 0x594
/* 80C91E28  4B 3F 1A 08 */	b Move__10dCcD_GSttsFv
/* 80C91E2C  3B BE 05 B4 */	addi r29, r30, 0x5b4
/* 80C91E30  7F A3 EB 78 */	mr r3, r29
/* 80C91E34  4B 3F 28 24 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80C91E38  28 03 00 00 */	cmplwi r3, 0
/* 80C91E3C  41 82 00 60 */	beq lbl_80C91E9C
/* 80C91E40  7F A3 EB 78 */	mr r3, r29
/* 80C91E44  4B 3F 28 AC */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80C91E48  4B 5D 1C 00 */	b GetAc__8cCcD_ObjFv
/* 80C91E4C  A8 03 00 08 */	lha r0, 8(r3)
/* 80C91E50  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C91E54  40 82 00 48 */	bne lbl_80C91E9C
/* 80C91E58  38 00 00 01 */	li r0, 1
/* 80C91E5C  98 1E 07 2F */	stb r0, 0x72f(r30)
/* 80C91E60  7F 63 DB 78 */	mr r3, r27
/* 80C91E64  7F 84 E3 78 */	mr r4, r28
/* 80C91E68  48 00 03 41 */	bl getRupee__11daObjMATO_cFi
/* 80C91E6C  3C 60 80 C9 */	lis r3, lit_3843@ha
/* 80C91E70  38 83 2D 20 */	addi r4, r3, lit_3843@l
/* 80C91E74  80 64 00 00 */	lwz r3, 0(r4)
/* 80C91E78  80 04 00 04 */	lwz r0, 4(r4)
/* 80C91E7C  90 61 00 08 */	stw r3, 8(r1)
/* 80C91E80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C91E84  80 04 00 08 */	lwz r0, 8(r4)
/* 80C91E88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C91E8C  7F 63 DB 78 */	mr r3, r27
/* 80C91E90  38 81 00 08 */	addi r4, r1, 8
/* 80C91E94  7F 85 E3 78 */	mr r5, r28
/* 80C91E98  4B FF FC C1 */	bl setAction__11daObjMATO_cFM11daObjMATO_cFPCvPvi_vi
lbl_80C91E9C:
/* 80C91E9C  3B 9C 00 01 */	addi r28, r28, 1
/* 80C91EA0  3B FF 01 C0 */	addi r31, r31, 0x1c0
lbl_80C91EA4:
/* 80C91EA4  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 80C91EA8  A0 03 00 00 */	lhz r0, 0(r3)
/* 80C91EAC  7C 1C 00 00 */	cmpw r28, r0
/* 80C91EB0  41 80 FF 64 */	blt lbl_80C91E14
lbl_80C91EB4:
/* 80C91EB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C91EB8  4B 6D 03 68 */	b _restgpr_27
/* 80C91EBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C91EC0  7C 08 03 A6 */	mtlr r0
/* 80C91EC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C91EC8  4E 80 00 20 */	blr 
