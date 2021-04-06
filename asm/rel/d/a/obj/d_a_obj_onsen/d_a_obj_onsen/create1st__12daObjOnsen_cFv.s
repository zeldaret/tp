lbl_80CA7E44:
/* 80CA7E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA7E48  7C 08 02 A6 */	mflr r0
/* 80CA7E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA7E54  7C 7F 1B 78 */	mr r31, r3
/* 80CA7E58  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CA7E5C  98 03 05 B4 */	stb r0, 0x5b4(r3)
/* 80CA7E60  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CA7E64  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80CA7E68  54 00 10 3A */	slwi r0, r0, 2
/* 80CA7E6C  3C 80 80 CB */	lis r4, l_arcName@ha /* 0x80CA815C@ha */
/* 80CA7E70  38 84 81 5C */	addi r4, r4, l_arcName@l /* 0x80CA815C@l */
/* 80CA7E74  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CA7E78  4B 38 50 45 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CA7E7C  7C 60 1B 78 */	mr r0, r3
/* 80CA7E80  2C 00 00 04 */	cmpwi r0, 4
/* 80CA7E84  40 82 00 50 */	bne lbl_80CA7ED4
/* 80CA7E88  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80CA7E8C  54 00 10 3A */	slwi r0, r0, 2
/* 80CA7E90  7F E3 FB 78 */	mr r3, r31
/* 80CA7E94  3C 80 80 CB */	lis r4, l_arcName@ha /* 0x80CA815C@ha */
/* 80CA7E98  38 84 81 5C */	addi r4, r4, l_arcName@l /* 0x80CA815C@l */
/* 80CA7E9C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CA7EA0  3C A0 80 CB */	lis r5, l_dzb@ha /* 0x80CA8134@ha */
/* 80CA7EA4  38 A5 81 34 */	addi r5, r5, l_dzb@l /* 0x80CA8134@l */
/* 80CA7EA8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80CA7EAC  38 C0 00 00 */	li r6, 0
/* 80CA7EB0  3C E0 80 CB */	lis r7, l_heap_size@ha /* 0x80CA813C@ha */
/* 80CA7EB4  38 E7 81 3C */	addi r7, r7, l_heap_size@l /* 0x80CA813C@l */
/* 80CA7EB8  7C E7 00 2E */	lwzx r7, r7, r0
/* 80CA7EBC  39 00 00 00 */	li r8, 0
/* 80CA7EC0  4B 3D 08 FD */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CA7EC4  7C 60 1B 78 */	mr r0, r3
/* 80CA7EC8  2C 00 00 05 */	cmpwi r0, 5
/* 80CA7ECC  40 82 00 08 */	bne lbl_80CA7ED4
/* 80CA7ED0  48 00 00 08 */	b lbl_80CA7ED8
lbl_80CA7ED4:
/* 80CA7ED4  7C 03 03 78 */	mr r3, r0
lbl_80CA7ED8:
/* 80CA7ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA7EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7EE0  7C 08 03 A6 */	mtlr r0
/* 80CA7EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7EE8  4E 80 00 20 */	blr 
