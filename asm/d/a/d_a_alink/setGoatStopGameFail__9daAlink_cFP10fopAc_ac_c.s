lbl_800E9210:
/* 800E9210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E9214  7C 08 02 A6 */	mflr r0
/* 800E9218  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E921C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E9220  93 C1 00 08 */	stw r30, 8(r1)
/* 800E9224  7C 7E 1B 78 */	mr r30, r3
/* 800E9228  AB E4 00 08 */	lha r31, 8(r4)
/* 800E922C  2C 1F 00 21 */	cmpwi r31, 0x21
/* 800E9230  40 82 00 14 */	bne lbl_800E9244
/* 800E9234  A0 04 0A 48 */	lhz r0, 0xa48(r4)
/* 800E9238  60 00 00 04 */	ori r0, r0, 4
/* 800E923C  B0 04 0A 48 */	sth r0, 0xa48(r4)
/* 800E9240  48 00 00 28 */	b lbl_800E9268
lbl_800E9244:
/* 800E9244  2C 1F 01 06 */	cmpwi r31, 0x106
/* 800E9248  40 82 00 14 */	bne lbl_800E925C
/* 800E924C  A0 04 05 68 */	lhz r0, 0x568(r4)
/* 800E9250  60 00 00 04 */	ori r0, r0, 4
/* 800E9254  B0 04 05 68 */	sth r0, 0x568(r4)
/* 800E9258  48 00 00 10 */	b lbl_800E9268
lbl_800E925C:
/* 800E925C  88 04 05 8D */	lbz r0, 0x58d(r4)
/* 800E9260  60 00 00 04 */	ori r0, r0, 4
/* 800E9264  98 04 05 8D */	stb r0, 0x58d(r4)
lbl_800E9268:
/* 800E9268  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800E926C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800E9270  41 82 00 20 */	beq lbl_800E9290
/* 800E9274  7F C3 F3 78 */	mr r3, r30
/* 800E9278  4B FF 9B 4D */	bl cancelMagneBootsOn__9daAlink_cFv
/* 800E927C  7F C3 F3 78 */	mr r3, r30
/* 800E9280  48 02 EA 11 */	bl resetSpecialEvent__9daAlink_cFv
/* 800E9284  7F C3 F3 78 */	mr r3, r30
/* 800E9288  4B FC CD F5 */	bl checkAutoJumpAction__9daAlink_cFv
/* 800E928C  48 00 00 A0 */	b lbl_800E932C
lbl_800E9290:
/* 800E9290  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800E9294  3C 63 00 01 */	addis r3, r3, 1
/* 800E9298  38 03 80 00 */	addi r0, r3, -32768
/* 800E929C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800E92A0  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 800E92A4  28 00 00 2A */	cmplwi r0, 0x2a
/* 800E92A8  40 82 00 14 */	bne lbl_800E92BC
/* 800E92AC  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800E92B0  64 00 00 20 */	oris r0, r0, 0x20
/* 800E92B4  90 1E 05 70 */	stw r0, 0x570(r30)
/* 800E92B8  48 00 00 54 */	b lbl_800E930C
lbl_800E92BC:
/* 800E92BC  7F C3 F3 78 */	mr r3, r30
/* 800E92C0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800E92C4  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800E92C8  7D 89 03 A6 */	mtctr r12
/* 800E92CC  4E 80 04 21 */	bctrl 
/* 800E92D0  2C 03 00 00 */	cmpwi r3, 0
/* 800E92D4  40 82 00 1C */	bne lbl_800E92F0
/* 800E92D8  2C 1F 00 21 */	cmpwi r31, 0x21
/* 800E92DC  40 82 00 14 */	bne lbl_800E92F0
/* 800E92E0  7F C3 F3 78 */	mr r3, r30
/* 800E92E4  38 80 00 02 */	li r4, 2
/* 800E92E8  4B FE E1 91 */	bl setDamagePointNormal__9daAlink_cFi
/* 800E92EC  48 00 00 18 */	b lbl_800E9304
lbl_800E92F0:
/* 800E92F0  2C 1F 01 06 */	cmpwi r31, 0x106
/* 800E92F4  41 82 00 10 */	beq lbl_800E9304
/* 800E92F8  7F C3 F3 78 */	mr r3, r30
/* 800E92FC  38 80 00 01 */	li r4, 1
/* 800E9300  4B FE E1 79 */	bl setDamagePointNormal__9daAlink_cFi
lbl_800E9304:
/* 800E9304  7F C3 F3 78 */	mr r3, r30
/* 800E9308  48 02 E9 89 */	bl resetSpecialEvent__9daAlink_cFv
lbl_800E930C:
/* 800E930C  7F C3 F3 78 */	mr r3, r30
/* 800E9310  38 80 FF FF */	li r4, -1
/* 800E9314  38 A0 00 01 */	li r5, 1
/* 800E9318  38 C0 00 00 */	li r6, 0
/* 800E931C  38 E0 00 00 */	li r7, 0
/* 800E9320  39 00 00 00 */	li r8, 0
/* 800E9324  39 20 00 00 */	li r9, 0
/* 800E9328  4B FF 03 B5 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
lbl_800E932C:
/* 800E932C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E9330  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E9334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E9338  7C 08 03 A6 */	mtlr r0
/* 800E933C  38 21 00 10 */	addi r1, r1, 0x10
/* 800E9340  4E 80 00 20 */	blr 
