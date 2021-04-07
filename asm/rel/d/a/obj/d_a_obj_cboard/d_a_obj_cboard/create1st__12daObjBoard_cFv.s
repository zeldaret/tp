lbl_8057BA78:
/* 8057BA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BA7C  7C 08 02 A6 */	mflr r0
/* 8057BA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BA84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BA88  7C 7F 1B 78 */	mr r31, r3
/* 8057BA8C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 8057BA90  3C 80 80 58 */	lis r4, l_arcName@ha /* 0x8057BE20@ha */
/* 8057BA94  38 84 BE 20 */	addi r4, r4, l_arcName@l /* 0x8057BE20@l */
/* 8057BA98  80 84 00 00 */	lwz r4, 0(r4)
/* 8057BA9C  4B AB 14 21 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8057BAA0  7C 60 1B 78 */	mr r0, r3
/* 8057BAA4  2C 00 00 04 */	cmpwi r0, 4
/* 8057BAA8  40 82 00 B4 */	bne lbl_8057BB5C
/* 8057BAAC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8057BAB0  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 8057BAB4  2C 00 00 05 */	cmpwi r0, 5
/* 8057BAB8  40 80 00 18 */	bge lbl_8057BAD0
/* 8057BABC  2C 00 00 03 */	cmpwi r0, 3
/* 8057BAC0  40 80 00 24 */	bge lbl_8057BAE4
/* 8057BAC4  2C 00 00 01 */	cmpwi r0, 1
/* 8057BAC8  40 80 00 14 */	bge lbl_8057BADC
/* 8057BACC  48 00 00 28 */	b lbl_8057BAF4
lbl_8057BAD0:
/* 8057BAD0  2C 00 00 09 */	cmpwi r0, 9
/* 8057BAD4  40 80 00 20 */	bge lbl_8057BAF4
/* 8057BAD8  48 00 00 14 */	b lbl_8057BAEC
lbl_8057BADC:
/* 8057BADC  38 00 00 01 */	li r0, 1
/* 8057BAE0  48 00 00 18 */	b lbl_8057BAF8
lbl_8057BAE4:
/* 8057BAE4  38 00 00 02 */	li r0, 2
/* 8057BAE8  48 00 00 10 */	b lbl_8057BAF8
lbl_8057BAEC:
/* 8057BAEC  38 00 00 04 */	li r0, 4
/* 8057BAF0  48 00 00 08 */	b lbl_8057BAF8
lbl_8057BAF4:
/* 8057BAF4  38 00 00 00 */	li r0, 0
lbl_8057BAF8:
/* 8057BAF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057BAFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057BB00  3C 63 00 02 */	addis r3, r3, 2
/* 8057BB04  3C 80 80 58 */	lis r4, l_arcName@ha /* 0x8057BE20@ha */
/* 8057BB08  38 84 BE 20 */	addi r4, r4, l_arcName@l /* 0x8057BE20@l */
/* 8057BB0C  80 84 00 00 */	lwz r4, 0(r4)
/* 8057BB10  54 00 10 3A */	slwi r0, r0, 2
/* 8057BB14  3C A0 80 58 */	lis r5, l_dzbName@ha /* 0x8057BE24@ha */
/* 8057BB18  38 A5 BE 24 */	addi r5, r5, l_dzbName@l /* 0x8057BE24@l */
/* 8057BB1C  7C A5 00 2E */	lwzx r5, r5, r0
/* 8057BB20  38 63 C2 F8 */	addi r3, r3, -15624
/* 8057BB24  4B AC 0B 95 */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 8057BB28  7C 65 1B 78 */	mr r5, r3
/* 8057BB2C  7F E3 FB 78 */	mr r3, r31
/* 8057BB30  3C 80 80 58 */	lis r4, l_arcName@ha /* 0x8057BE20@ha */
/* 8057BB34  38 84 BE 20 */	addi r4, r4, l_arcName@l /* 0x8057BE20@l */
/* 8057BB38  80 84 00 00 */	lwz r4, 0(r4)
/* 8057BB3C  38 C0 00 00 */	li r6, 0
/* 8057BB40  38 E0 02 00 */	li r7, 0x200
/* 8057BB44  39 00 00 00 */	li r8, 0
/* 8057BB48  4B AF CC 75 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 8057BB4C  7C 60 1B 78 */	mr r0, r3
/* 8057BB50  2C 00 00 05 */	cmpwi r0, 5
/* 8057BB54  40 82 00 08 */	bne lbl_8057BB5C
/* 8057BB58  48 00 00 08 */	b lbl_8057BB60
lbl_8057BB5C:
/* 8057BB5C  7C 03 03 78 */	mr r3, r0
lbl_8057BB60:
/* 8057BB60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057BB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BB68  7C 08 03 A6 */	mtlr r0
/* 8057BB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BB70  4E 80 00 20 */	blr 
