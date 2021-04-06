lbl_80BD6ED4:
/* 80BD6ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6ED8  7C 08 02 A6 */	mflr r0
/* 80BD6EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD6EE4  7C 7F 1B 78 */	mr r31, r3
/* 80BD6EE8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BD6EEC  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BD6EF0  98 03 0F 11 */	stb r0, 0xf11(r3)
/* 80BD6EF4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BD6EF8  88 1F 0F 11 */	lbz r0, 0xf11(r31)
/* 80BD6EFC  54 00 10 3A */	slwi r0, r0, 2
/* 80BD6F00  3C 80 80 BE */	lis r4, l_arcName@ha /* 0x80BDA0E0@ha */
/* 80BD6F04  38 84 A0 E0 */	addi r4, r4, l_arcName@l /* 0x80BDA0E0@l */
/* 80BD6F08  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BD6F0C  4B 45 5F B1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BD6F10  7C 60 1B 78 */	mr r0, r3
/* 80BD6F14  2C 00 00 04 */	cmpwi r0, 4
/* 80BD6F18  40 82 00 50 */	bne lbl_80BD6F68
/* 80BD6F1C  88 1F 0F 11 */	lbz r0, 0xf11(r31)
/* 80BD6F20  54 00 10 3A */	slwi r0, r0, 2
/* 80BD6F24  7F E3 FB 78 */	mr r3, r31
/* 80BD6F28  3C 80 80 BE */	lis r4, l_arcName@ha /* 0x80BDA0E0@ha */
/* 80BD6F2C  38 84 A0 E0 */	addi r4, r4, l_arcName@l /* 0x80BDA0E0@l */
/* 80BD6F30  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BD6F34  3C A0 80 BE */	lis r5, l_dzb@ha /* 0x80BD9FBC@ha */
/* 80BD6F38  38 A5 9F BC */	addi r5, r5, l_dzb@l /* 0x80BD9FBC@l */
/* 80BD6F3C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80BD6F40  38 C0 00 00 */	li r6, 0
/* 80BD6F44  3C E0 80 BE */	lis r7, l_heap_size@ha /* 0x80BD9FC4@ha */
/* 80BD6F48  38 E7 9F C4 */	addi r7, r7, l_heap_size@l /* 0x80BD9FC4@l */
/* 80BD6F4C  7C E7 00 2E */	lwzx r7, r7, r0
/* 80BD6F50  39 00 00 00 */	li r8, 0
/* 80BD6F54  4B 4A 18 69 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BD6F58  7C 60 1B 78 */	mr r0, r3
/* 80BD6F5C  2C 00 00 05 */	cmpwi r0, 5
/* 80BD6F60  40 82 00 08 */	bne lbl_80BD6F68
/* 80BD6F64  48 00 00 08 */	b lbl_80BD6F6C
lbl_80BD6F68:
/* 80BD6F68  7C 03 03 78 */	mr r3, r0
lbl_80BD6F6C:
/* 80BD6F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD6F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6F74  7C 08 03 A6 */	mtlr r0
/* 80BD6F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6F7C  4E 80 00 20 */	blr 
