lbl_80CDBED4:
/* 80CDBED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDBED8  7C 08 02 A6 */	mflr r0
/* 80CDBEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDBEE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDBEE4  7C 7F 1B 78 */	mr r31, r3
/* 80CDBEE8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CDBEEC  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80CDBEF0  98 03 05 E8 */	stb r0, 0x5e8(r3)
/* 80CDBEF4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CDBEF8  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80CDBEFC  54 00 10 3A */	slwi r0, r0, 2
/* 80CDBF00  3C 80 80 CE */	lis r4, l_arcName@ha /* 0x80CDCCE4@ha */
/* 80CDBF04  38 84 CC E4 */	addi r4, r4, l_arcName@l /* 0x80CDCCE4@l */
/* 80CDBF08  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CDBF0C  4B 35 0F B1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CDBF10  7C 60 1B 78 */	mr r0, r3
/* 80CDBF14  2C 00 00 04 */	cmpwi r0, 4
/* 80CDBF18  40 82 00 74 */	bne lbl_80CDBF8C
/* 80CDBF1C  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80CDBF20  54 00 10 3A */	slwi r0, r0, 2
/* 80CDBF24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDBF28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDBF2C  3C 63 00 02 */	addis r3, r3, 2
/* 80CDBF30  3C 80 80 CE */	lis r4, l_arcName@ha /* 0x80CDCCE4@ha */
/* 80CDBF34  38 84 CC E4 */	addi r4, r4, l_arcName@l /* 0x80CDCCE4@l */
/* 80CDBF38  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CDBF3C  3C A0 80 CE */	lis r5, l_dzb@ha /* 0x80CDCCF4@ha */
/* 80CDBF40  38 A5 CC F4 */	addi r5, r5, l_dzb@l /* 0x80CDCCF4@l */
/* 80CDBF44  7C A5 00 2E */	lwzx r5, r5, r0
/* 80CDBF48  38 63 C2 F8 */	addi r3, r3, -15624
/* 80CDBF4C  4B 36 07 6D */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80CDBF50  7C 65 1B 78 */	mr r5, r3
/* 80CDBF54  7F E3 FB 78 */	mr r3, r31
/* 80CDBF58  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80CDBF5C  54 00 10 3A */	slwi r0, r0, 2
/* 80CDBF60  3C 80 80 CE */	lis r4, l_arcName@ha /* 0x80CDCCE4@ha */
/* 80CDBF64  38 84 CC E4 */	addi r4, r4, l_arcName@l /* 0x80CDCCE4@l */
/* 80CDBF68  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CDBF6C  38 C0 00 00 */	li r6, 0
/* 80CDBF70  38 E0 16 60 */	li r7, 0x1660
/* 80CDBF74  39 00 00 00 */	li r8, 0
/* 80CDBF78  4B 39 C8 45 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CDBF7C  7C 60 1B 78 */	mr r0, r3
/* 80CDBF80  2C 00 00 05 */	cmpwi r0, 5
/* 80CDBF84  40 82 00 08 */	bne lbl_80CDBF8C
/* 80CDBF88  48 00 00 08 */	b lbl_80CDBF90
lbl_80CDBF8C:
/* 80CDBF8C  7C 03 03 78 */	mr r3, r0
lbl_80CDBF90:
/* 80CDBF90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDBF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDBF98  7C 08 03 A6 */	mtlr r0
/* 80CDBF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDBFA0  4E 80 00 20 */	blr 
