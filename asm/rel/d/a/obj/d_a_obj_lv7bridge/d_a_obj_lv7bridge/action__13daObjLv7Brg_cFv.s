lbl_80C86E68:
/* 80C86E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C86E6C  7C 08 02 A6 */	mflr r0
/* 80C86E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C86E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C86E78  93 C1 00 08 */	stw r30, 8(r1)
/* 80C86E7C  7C 7F 1B 78 */	mr r31, r3
/* 80C86E80  3C 60 80 C8 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C87A34@ha */
/* 80C86E84  38 C3 7A 34 */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x80C87A34@l */
/* 80C86E88  3C 60 80 C8 */	lis r3, data_80C87BB8@ha /* 0x80C87BB8@ha */
/* 80C86E8C  38 A3 7B B8 */	addi r5, r3, data_80C87BB8@l /* 0x80C87BB8@l */
/* 80C86E90  88 05 00 00 */	lbz r0, 0(r5)
/* 80C86E94  7C 00 07 75 */	extsb. r0, r0
/* 80C86E98  40 82 00 40 */	bne lbl_80C86ED8
/* 80C86E9C  80 66 00 6C */	lwz r3, 0x6c(r6)
/* 80C86EA0  80 06 00 70 */	lwz r0, 0x70(r6)
/* 80C86EA4  90 66 00 84 */	stw r3, 0x84(r6)
/* 80C86EA8  90 06 00 88 */	stw r0, 0x88(r6)
/* 80C86EAC  80 06 00 74 */	lwz r0, 0x74(r6)
/* 80C86EB0  90 06 00 8C */	stw r0, 0x8c(r6)
/* 80C86EB4  38 86 00 84 */	addi r4, r6, 0x84
/* 80C86EB8  80 66 00 78 */	lwz r3, 0x78(r6)
/* 80C86EBC  80 06 00 7C */	lwz r0, 0x7c(r6)
/* 80C86EC0  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C86EC4  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C86EC8  80 06 00 80 */	lwz r0, 0x80(r6)
/* 80C86ECC  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C86ED0  38 00 00 01 */	li r0, 1
/* 80C86ED4  98 05 00 00 */	stb r0, 0(r5)
lbl_80C86ED8:
/* 80C86ED8  7F E3 FB 78 */	mr r3, r31
/* 80C86EDC  88 1F 0A 7D */	lbz r0, 0xa7d(r31)
/* 80C86EE0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C86EE4  39 86 00 84 */	addi r12, r6, 0x84
/* 80C86EE8  7D 8C 02 14 */	add r12, r12, r0
/* 80C86EEC  4B 6D B1 99 */	bl __ptmf_scall
/* 80C86EF0  60 00 00 00 */	nop 
/* 80C86EF4  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80C86EF8  3C 60 80 C8 */	lis r3, lit_3697@ha /* 0x80C879CC@ha */
/* 80C86EFC  C0 03 79 CC */	lfs f0, lit_3697@l(r3)  /* 0x80C879CC@l */
/* 80C86F00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C86F04  40 80 00 28 */	bge lbl_80C86F2C
/* 80C86F08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C86F0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C86F10  3B C3 23 3C */	addi r30, r3, 0x233c
/* 80C86F14  7F C3 F3 78 */	mr r3, r30
/* 80C86F18  38 9F 08 00 */	addi r4, r31, 0x800
/* 80C86F1C  4B 5D DC 8D */	bl Set__4cCcSFP8cCcD_Obj
/* 80C86F20  7F C3 F3 78 */	mr r3, r30
/* 80C86F24  38 9F 09 3C */	addi r4, r31, 0x93c
/* 80C86F28  4B 5D DC 81 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80C86F2C:
/* 80C86F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C86F30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C86F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C86F38  7C 08 03 A6 */	mtlr r0
/* 80C86F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C86F40  4E 80 00 20 */	blr 
