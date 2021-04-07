lbl_801399C4:
/* 801399C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801399C8  7C 08 02 A6 */	mflr r0
/* 801399CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801399D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801399D4  7C 7F 1B 78 */	mr r31, r3
/* 801399D8  38 80 01 1B */	li r4, 0x11b
/* 801399DC  4B F8 85 91 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 801399E0  7F E3 FB 78 */	mr r3, r31
/* 801399E4  4B F7 9F 21 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 801399E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801399EC  41 82 00 10 */	beq lbl_801399FC
/* 801399F0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 801399F4  60 00 00 01 */	ori r0, r0, 1
/* 801399F8  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_801399FC:
/* 801399FC  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAttack_c0@ha /* 0x8038F7A4@ha */
/* 80139A00  38 63 F7 A4 */	addi r3, r3, m__22daAlinkHIO_wlAttack_c0@l /* 0x8038F7A4@l */
/* 80139A04  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80139A08  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80139A0C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtLock_c0@ha /* 0x8038F6F4@ha */
/* 80139A10  38 63 F6 F4 */	addi r3, r3, m__22daAlinkHIO_wlAtLock_c0@l /* 0x8038F6F4@l */
/* 80139A14  A8 03 00 28 */	lha r0, 0x28(r3)
/* 80139A18  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 80139A1C  38 00 00 1E */	li r0, 0x1e
/* 80139A20  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 80139A24  38 00 00 00 */	li r0, 0
/* 80139A28  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 80139A2C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80139A30  B0 1F 2F E4 */	sth r0, 0x2fe4(r31)
/* 80139A34  7F E3 FB 78 */	mr r3, r31
/* 80139A38  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010037@ha */
/* 80139A3C  38 84 00 37 */	addi r4, r4, 0x0037 /* 0x00010037@l */
/* 80139A40  4B F8 56 79 */	bl voiceStartLevel__9daAlink_cFUl
/* 80139A44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80139A48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80139A4C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80139A50  64 00 40 00 */	oris r0, r0, 0x4000
/* 80139A54  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80139A58  38 60 00 01 */	li r3, 1
/* 80139A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80139A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80139A64  7C 08 03 A6 */	mtlr r0
/* 80139A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80139A6C  4E 80 00 20 */	blr 
