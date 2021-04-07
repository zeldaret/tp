lbl_80D3F9F0:
/* 80D3F9F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F9F4  7C 08 02 A6 */	mflr r0
/* 80D3F9F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F9FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3FA00  7C 7F 1B 78 */	mr r31, r3
/* 80D3FA04  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D3FA08  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80D3FA0C  98 03 0E 30 */	stb r0, 0xe30(r3)
/* 80D3FA10  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D3FA14  88 1F 0E 30 */	lbz r0, 0xe30(r31)
/* 80D3FA18  54 00 10 3A */	slwi r0, r0, 2
/* 80D3FA1C  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D40398@ha */
/* 80D3FA20  38 84 03 98 */	addi r4, r4, l_arcName@l /* 0x80D40398@l */
/* 80D3FA24  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3FA28  4B 2E D4 95 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D3FA2C  7C 60 1B 78 */	mr r0, r3
/* 80D3FA30  2C 00 00 04 */	cmpwi r0, 4
/* 80D3FA34  40 82 00 80 */	bne lbl_80D3FAB4
/* 80D3FA38  88 1F 0E 30 */	lbz r0, 0xe30(r31)
/* 80D3FA3C  54 00 10 3A */	slwi r0, r0, 2
/* 80D3FA40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3FA44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3FA48  3C 63 00 02 */	addis r3, r3, 2
/* 80D3FA4C  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D40398@ha */
/* 80D3FA50  38 84 03 98 */	addi r4, r4, l_arcName@l /* 0x80D40398@l */
/* 80D3FA54  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3FA58  3C A0 80 D4 */	lis r5, l_dzbName@ha /* 0x80D403B0@ha */
/* 80D3FA5C  38 A5 03 B0 */	addi r5, r5, l_dzbName@l /* 0x80D403B0@l */
/* 80D3FA60  7C A5 00 2E */	lwzx r5, r5, r0
/* 80D3FA64  38 63 C2 F8 */	addi r3, r3, -15624
/* 80D3FA68  4B 2F CC 51 */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80D3FA6C  7C 65 1B 78 */	mr r5, r3
/* 80D3FA70  88 FF 0E 30 */	lbz r7, 0xe30(r31)
/* 80D3FA74  7F E3 FB 78 */	mr r3, r31
/* 80D3FA78  54 E0 10 3A */	slwi r0, r7, 2
/* 80D3FA7C  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D40398@ha */
/* 80D3FA80  38 84 03 98 */	addi r4, r4, l_arcName@l /* 0x80D40398@l */
/* 80D3FA84  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3FA88  38 C0 00 00 */	li r6, 0
/* 80D3FA8C  54 E0 08 3C */	slwi r0, r7, 1
/* 80D3FA90  3C E0 80 D4 */	lis r7, estimateSizeTbl@ha /* 0x80D402A4@ha */
/* 80D3FA94  38 E7 02 A4 */	addi r7, r7, estimateSizeTbl@l /* 0x80D402A4@l */
/* 80D3FA98  7C E7 02 2E */	lhzx r7, r7, r0
/* 80D3FA9C  39 00 00 00 */	li r8, 0
/* 80D3FAA0  4B 33 8D 1D */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D3FAA4  7C 60 1B 78 */	mr r0, r3
/* 80D3FAA8  2C 00 00 05 */	cmpwi r0, 5
/* 80D3FAAC  40 82 00 08 */	bne lbl_80D3FAB4
/* 80D3FAB0  48 00 00 08 */	b lbl_80D3FAB8
lbl_80D3FAB4:
/* 80D3FAB4  7C 03 03 78 */	mr r3, r0
lbl_80D3FAB8:
/* 80D3FAB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3FABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3FAC0  7C 08 03 A6 */	mtlr r0
/* 80D3FAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3FAC8  4E 80 00 20 */	blr 
