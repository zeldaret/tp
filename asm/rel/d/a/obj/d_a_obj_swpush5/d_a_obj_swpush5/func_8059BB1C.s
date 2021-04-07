lbl_8059BB1C:
/* 8059BB1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BB20  7C 08 02 A6 */	mflr r0
/* 8059BB24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BB28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059BB2C  7C 7F 1B 78 */	mr r31, r3
/* 8059BB30  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8059BB34  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8059BB38  40 82 00 28 */	bne lbl_8059BB60
/* 8059BB3C  28 1F 00 00 */	cmplwi r31, 0
/* 8059BB40  41 82 00 14 */	beq lbl_8059BB54
/* 8059BB44  4B AD CA E1 */	bl __ct__16dBgS_MoveBgActorFv
/* 8059BB48  3C 60 80 5A */	lis r3, __vt__10daObjSw5_c@ha /* 0x8059C840@ha */
/* 8059BB4C  38 03 C8 40 */	addi r0, r3, __vt__10daObjSw5_c@l /* 0x8059C840@l */
/* 8059BB50  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_8059BB54:
/* 8059BB54  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8059BB58  60 00 00 08 */	ori r0, r0, 8
/* 8059BB5C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8059BB60:
/* 8059BB60  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 8059BB64  3C 80 80 5A */	lis r4, l_arcName@ha /* 0x8059C6FC@ha */
/* 8059BB68  38 84 C6 FC */	addi r4, r4, l_arcName@l /* 0x8059C6FC@l */
/* 8059BB6C  80 84 00 00 */	lwz r4, 0(r4)
/* 8059BB70  4B A9 13 4D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8059BB74  7C 60 1B 78 */	mr r0, r3
/* 8059BB78  2C 00 00 04 */	cmpwi r0, 4
/* 8059BB7C  40 82 00 40 */	bne lbl_8059BBBC
/* 8059BB80  7F E3 FB 78 */	mr r3, r31
/* 8059BB84  3C 80 80 5A */	lis r4, l_arcName@ha /* 0x8059C6FC@ha */
/* 8059BB88  38 84 C6 FC */	addi r4, r4, l_arcName@l /* 0x8059C6FC@l */
/* 8059BB8C  80 84 00 00 */	lwz r4, 0(r4)
/* 8059BB90  3C A0 80 5A */	lis r5, l_dzbIdx@ha /* 0x8059C6A4@ha */
/* 8059BB94  38 A5 C6 A4 */	addi r5, r5, l_dzbIdx@l /* 0x8059C6A4@l */
/* 8059BB98  80 A5 00 04 */	lwz r5, 4(r5)
/* 8059BB9C  38 C0 00 00 */	li r6, 0
/* 8059BBA0  38 E0 10 60 */	li r7, 0x1060
/* 8059BBA4  39 00 00 00 */	li r8, 0
/* 8059BBA8  4B AD CC 15 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 8059BBAC  7C 60 1B 78 */	mr r0, r3
/* 8059BBB0  2C 00 00 05 */	cmpwi r0, 5
/* 8059BBB4  40 82 00 08 */	bne lbl_8059BBBC
/* 8059BBB8  48 00 00 08 */	b lbl_8059BBC0
lbl_8059BBBC:
/* 8059BBBC  7C 03 03 78 */	mr r3, r0
lbl_8059BBC0:
/* 8059BBC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059BBC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059BBC8  7C 08 03 A6 */	mtlr r0
/* 8059BBCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8059BBD0  4E 80 00 20 */	blr 
