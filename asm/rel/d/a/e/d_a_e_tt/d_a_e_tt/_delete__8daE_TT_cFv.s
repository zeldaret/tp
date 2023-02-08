lbl_807C1164:
/* 807C1164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C1168  7C 08 02 A6 */	mflr r0
/* 807C116C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C1170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C1174  7C 7F 1B 78 */	mr r31, r3
/* 807C1178  3C 60 80 7C */	lis r3, m_attack_tt@ha /* 0x807C2404@ha */
/* 807C117C  84 03 24 04 */	lwzu r0, m_attack_tt@l(r3)  /* 0x807C2404@l */
/* 807C1180  7C 00 F8 40 */	cmplw r0, r31
/* 807C1184  40 82 00 0C */	bne lbl_807C1190
/* 807C1188  38 00 00 00 */	li r0, 0
/* 807C118C  90 03 00 00 */	stw r0, 0(r3)
lbl_807C1190:
/* 807C1190  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807C1194  80 9F 06 E4 */	lwz r4, 0x6e4(r31)
/* 807C1198  4B 86 BE 71 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807C119C  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 807C11A0  3C 80 80 7C */	lis r4, d_a_e_tt__stringBase0@ha /* 0x807C20B0@ha */
/* 807C11A4  38 84 20 B0 */	addi r4, r4, d_a_e_tt__stringBase0@l /* 0x807C20B0@l */
/* 807C11A8  4B 86 BE 61 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807C11AC  88 1F 0A CC */	lbz r0, 0xacc(r31)
/* 807C11B0  28 00 00 00 */	cmplwi r0, 0
/* 807C11B4  41 82 00 10 */	beq lbl_807C11C4
/* 807C11B8  38 00 00 00 */	li r0, 0
/* 807C11BC  3C 60 80 7C */	lis r3, struct_807C23DC+0x1@ha /* 0x807C23DD@ha */
/* 807C11C0  98 03 23 DD */	stb r0, struct_807C23DC+0x1@l(r3)  /* 0x807C23DD@l */
lbl_807C11C4:
/* 807C11C4  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807C11C8  28 00 00 00 */	cmplwi r0, 0
/* 807C11CC  41 82 00 18 */	beq lbl_807C11E4
/* 807C11D0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 807C11D4  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 807C11D8  81 8C 00 08 */	lwz r12, 8(r12)
/* 807C11DC  7D 89 03 A6 */	mtctr r12
/* 807C11E0  4E 80 04 21 */	bctrl 
lbl_807C11E4:
/* 807C11E4  38 60 00 01 */	li r3, 1
/* 807C11E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C11EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C11F0  7C 08 03 A6 */	mtlr r0
/* 807C11F4  38 21 00 10 */	addi r1, r1, 0x10
/* 807C11F8  4E 80 00 20 */	blr 
